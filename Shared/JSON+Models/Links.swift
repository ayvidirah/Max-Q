// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let links = try Links(json)

import SwiftUI

// MARK: - Links
public struct Links: Codable, Identifiable {
    public var id: Int?
    public var missionPatch, missionPatchSmall: String?
    public var redditCampaign, redditLaunch, redditRecovery, redditMedia: String?
    public var presskit: String?
    public var articleLink, wikipedia, videoLink: String?
    public var youtubeID: String?
    public var flickrImages: [String]?

    enum CodingKeys: String, CodingKey {
        case missionPatch = "mission_patch"
        case missionPatchSmall = "mission_patch_small"
        case redditCampaign = "reddit_campaign"
        case redditLaunch = "reddit_launch"
        case redditRecovery = "reddit_recovery"
        case redditMedia = "reddit_media"
        case presskit
        case articleLink = "article_link"
        case wikipedia
        case videoLink = "video_link"
        case youtubeID = "youtube_id"
        case flickrImages = "flickr_images"
    }

    public init(missionPatch: String?, missionPatchSmall: String?, redditCampaign: String?, redditLaunch: String?, redditRecovery: String?, redditMedia: String?, presskit: String?, articleLink: String?, wikipedia: String?, videoLink: String?, youtubeID: String?, flickrImages: [String]?) {
        self.missionPatch = missionPatch
        self.missionPatchSmall = missionPatchSmall
        self.redditCampaign = redditCampaign
        self.redditLaunch = redditLaunch
        self.redditRecovery = redditRecovery
        self.redditMedia = redditMedia
        self.presskit = presskit
        self.articleLink = articleLink
        self.wikipedia = wikipedia
        self.videoLink = videoLink
        self.youtubeID = youtubeID
        self.flickrImages = flickrImages
    }
}

// MARK: Links convenience initializers and mutators

public extension Links {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(Links.self, from: data)
    }

    init(_ json: String, using encoding: String.Encoding = .utf8) throws {
        guard let data = json.data(using: encoding) else {
            throw NSError(domain: "JSONDecoding", code: 0, userInfo: nil)
        }
        try self.init(data: data)
    }

    init(fromURL url: URL) throws {
        try self.init(data: try Data(contentsOf: url))
    }

    func with(
        missionPatch: String?? = nil,
        missionPatchSmall: String?? = nil,
        redditCampaign: String?? = nil,
        redditLaunch: String?? = nil,
        redditRecovery: String?? = nil,
        redditMedia: String?? = nil,
        presskit: String?? = nil,
        articleLink: String?? = nil,
        wikipedia: String?? = nil,
        videoLink: String?? = nil,
        youtubeID: String?? = nil,
        flickrImages: [String]?? = nil
    ) -> Links {
        return Links(
            missionPatch: missionPatch ?? self.missionPatch,
            missionPatchSmall: missionPatchSmall ?? self.missionPatchSmall,
            redditCampaign: redditCampaign ?? self.redditCampaign,
            redditLaunch: redditLaunch ?? self.redditLaunch,
            redditRecovery: redditRecovery ?? self.redditRecovery,
            redditMedia: redditMedia ?? self.redditMedia,
            presskit: presskit ?? self.presskit,
            articleLink: articleLink ?? self.articleLink,
            wikipedia: wikipedia ?? self.wikipedia,
            videoLink: videoLink ?? self.videoLink,
            youtubeID: youtubeID ?? self.youtubeID,
            flickrImages: flickrImages ?? self.flickrImages
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}
