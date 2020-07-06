//
//  SearchBar.swift
//  MaxQ
//
//  Created by Hariharan Murugesan on 05/07/20.
//

import SwiftUI

struct SearchBar: View {
    @Binding var text: String
    @State private var isEditing = false
    
    var body: some View {
        HStack {
            
            TextField("Search for missions", text: $text)
                .padding(7)
                .padding(.horizontal, 5)
                .cornerRadius(20)
                .padding(.horizontal, 5)
                .onTapGesture {
                    self.isEditing = true
                    
                }
            
            if isEditing {
                Button(action: {
                    self.isEditing = false
                    self.text = ""

                }) {
                    Text("Cancel")
                }
                .padding(.trailing, 10)
                .transition(.move(edge: .trailing))
                .animation(.none)
            }
        }

    }
}

//    struct SearchBar_Previews: PreviewProvider {
//        static var previews: some View {
//            SearchBar(text: <#Binding<String>#>)
//        }
//    }
