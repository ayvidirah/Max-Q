//
//  RemoteImage.swift
//  MaxQ
//
//  Created by Hariharan Murugesan on 07/07/20.
//

import SwiftUI
import Combine

#if os(iOS)
typealias HMImage = UIImage
#elseif os(macOS)
typealias HMImage = NSImage
#endif

#if os(iOS)
    import UIKit
    public typealias CPImage = UIImage
#elseif os(OSX)
    import AppKit
    public typealias CPImage = NSImage
#endif

extension CPImage {
    
    var coreImage: CIImage? {
        #if os(iOS)
        guard let cgImage = self.cgImage else {
            return nil
        }
        return CIImage(cgImage: cgImage)
        #elseif os(macOS)
        guard
            let tiffData = tiffRepresentation,
            let ciImage = CIImage(data: tiffData)
            else {
                return nil
        }
        return ciImage
        #endif
    }
}

extension CGImage {
    
    var cpImage: CPImage {
        #if os(iOS)
        return UIImage(cgImage: self)
        #elseif os(OSX)
        return NSImage(cgImage: self, size: .init(width: width, height: height))
        #endif
    }
}

extension Image {
    
    init(cpImage: CPImage) {
        #if os(iOS)
        self.init(uiImage: cpImage)
        #elseif os(OSX)
        self.init(nsImage: cpImage)
        #endif
    }
}

enum ImageState{
    case error(_ error: Error)
    case image(_ image: CPImage)
    case loading
}

public class ImageService: ObservableObject{
    private var         cancellable: AnyCancellable?
    static let cache = NSCache<NSURL, CPImage>()
    var state: ImageState = .loading{
        didSet {
            objectWillChange.send()
        }
    }
    
    public let objectWillChange = PassthroughSubject<Void, Never>()
    
    func fetch(_ url: URL){
                cancellable?.cancel()
        if let image = ImageService.cache.object(forKey: url as NSURL){
            state = .image(image)
            return
        }
        
        let session = URLSession.shared
        let request = URLRequest(url: url)
        
        cancellable = session.dataTaskPublisher(for: request)
            .map{CPImage(data: $0.data)}
            .receive(on: RunLoop.main)
            .sink(receiveCompletion: { completion in
                switch completion{
                case .failure(let failure):
                    self.state = .error(failure)
                default: ()
                }
            }) { image in
                if let image = image {
                    ImageService.cache.setObject(image, forKey: url as NSURL)
                    self.state = .image(image)
                } else {
                   //error
                }
                
            }
    }
}

struct RemoteImage<ErrorView: View, ImageView: View, LoadingView: View>: View {
    private let url: URL
    private let errorView: (Error) -> ErrorView
    private let imageView: (Image) -> ImageView
    private let loadingView: () -> LoadingView
    @ObservedObject private var service: ImageService = ImageService()
    
    var body: AnyView {
        switch service.state {
            case .error(let error):
                return AnyView(
                    errorView(error)
                )
            case .image(let image):
                return AnyView(
                    self.imageView(Image(cpImage: image))

                )
            case .loading:
                return AnyView(
                    loadingView()
                    .onAppear {
                        self.service.fetch(self.url)
                    }
                )
        }
    }
    
    init(url: URL, @ViewBuilder errorView: @escaping (Error) -> ErrorView, @ViewBuilder imageView: @escaping (Image) -> ImageView, @ViewBuilder loadingView: @escaping () -> LoadingView) {
        self.url = url
        self.errorView = errorView
        self.imageView = imageView
        self.loadingView = loadingView
    }
}
