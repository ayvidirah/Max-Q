// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let launchSite = try LaunchSite(json)

import Foundation

// MARK: - LaunchSite
public struct LaunchSite: Codable {
    public var siteID, siteName, siteNameLong: String?

    enum CodingKeys: String, CodingKey {
        case siteID = "site_id"
        case siteName = "site_name"
        case siteNameLong = "site_name_long"
    }

    public init(siteID: String?, siteName: String?, siteNameLong: String?) {
        self.siteID = siteID
        self.siteName = siteName
        self.siteNameLong = siteNameLong
    }
}

// MARK: LaunchSite convenience initializers and mutators

public extension LaunchSite {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(LaunchSite.self, from: data)
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
        siteID: String?? = nil,
        siteName: String?? = nil,
        siteNameLong: String?? = nil
    ) -> LaunchSite {
        return LaunchSite(
            siteID: siteID ?? self.siteID,
            siteName: siteName ?? self.siteName,
            siteNameLong: siteNameLong ?? self.siteNameLong
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}
