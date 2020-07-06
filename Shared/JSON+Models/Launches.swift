// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let launches = try Launches(json)

import SwiftUI

// MARK: - Launches
public struct Launches: Codable, Identifiable {
    public var id: Int?
    public var flightNumber: Int?
    public var missionName: String?
    public var missionID: [JSONAny]?
    public var launchYear: String?
    public var launchDateUnix: Int?
    public var launchDateUTC: String?
    public var launchDateLocal: String?
    public var isTentative: Bool?
    public var tentativeMaxPrecision: String?
    public var tbd: Bool?
    public var launchWindow: Int?
    public var rocket: Rocket?
    public var ships: [String]?
    public var launchSite: LaunchSite?
    public var launchSuccess: Bool?
    public var links: Links?
    public var details: String?
    public var upcoming: Bool?
    public var staticFireDateUTC: String?
    public var staticFireDateUnix: Int?
    public var lastDateUpdate, lastLlLaunchDate, lastLlUpdate, lastWikiLaunchDate: String?
    public var lastWikiRevision, lastWikiUpdate, launchDateSource: String?

    enum CodingKeys: String, CodingKey {
        case flightNumber = "flight_number"
        case missionName = "mission_name"
        case missionID = "mission_id"
        case launchYear = "launch_year"
        case launchDateUnix = "launch_date_unix"
        case launchDateUTC = "launch_date_utc"
        case launchDateLocal = "launch_date_local"
        case isTentative = "is_tentative"
        case tentativeMaxPrecision = "tentative_max_precision"
        case tbd
        case launchWindow = "launch_window"
        case rocket, ships
        case launchSite = "launch_site"
        case launchSuccess = "launch_success"
        case links, details, upcoming
        case staticFireDateUTC = "static_fire_date_utc"
        case staticFireDateUnix = "static_fire_date_unix"
        case lastDateUpdate = "last_date_update"
        case lastLlLaunchDate = "last_ll_launch_date"
        case lastLlUpdate = "last_ll_update"
        case lastWikiLaunchDate = "last_wiki_launch_date"
        case lastWikiRevision = "last_wiki_revision"
        case lastWikiUpdate = "last_wiki_update"
        case launchDateSource = "launch_date_source"
    }

    public init(flightNumber: Int?, missionName: String?, missionID: [JSONAny]?, launchYear: String?, launchDateUnix: Int?, launchDateUTC: String?, launchDateLocal: String?, isTentative: Bool?, tentativeMaxPrecision: String?, tbd: Bool?, launchWindow: Int?, rocket: Rocket?, ships: [String]?, launchSite: LaunchSite?, launchSuccess: Bool?, links: Links?, details: String?, upcoming: Bool?, staticFireDateUTC: String?, staticFireDateUnix: Int?, lastDateUpdate: String?, lastLlLaunchDate: String?, lastLlUpdate: String?, lastWikiLaunchDate: String?, lastWikiRevision: String?, lastWikiUpdate: String?, launchDateSource: String?) {
        self.flightNumber = flightNumber
        self.missionName = missionName
        self.missionID = missionID
        self.launchYear = launchYear
        self.launchDateUnix = launchDateUnix
        self.launchDateUTC = launchDateUTC
        self.launchDateLocal = launchDateLocal
        self.isTentative = isTentative
        self.tentativeMaxPrecision = tentativeMaxPrecision
        self.tbd = tbd
        self.launchWindow = launchWindow
        self.rocket = rocket
        self.ships = ships
        self.launchSite = launchSite
        self.launchSuccess = launchSuccess
        self.links = links
        self.details = details
        self.upcoming = upcoming
        self.staticFireDateUTC = staticFireDateUTC
        self.staticFireDateUnix = staticFireDateUnix
        self.lastDateUpdate = lastDateUpdate
        self.lastLlLaunchDate = lastLlLaunchDate
        self.lastLlUpdate = lastLlUpdate
        self.lastWikiLaunchDate = lastWikiLaunchDate
        self.lastWikiRevision = lastWikiRevision
        self.lastWikiUpdate = lastWikiUpdate
        self.launchDateSource = launchDateSource
    }
}

// MARK: Launches convenience initializers and mutators

public extension Launches {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(Launches.self, from: data)
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
        flightNumber: Int?? = nil,
        missionName: String?? = nil,
        missionID: [JSONAny]?? = nil,
        launchYear: String?? = nil,
        launchDateUnix: Int?? = nil,
        launchDateUTC: String?? = nil,
        launchDateLocal: String?? = nil,
        isTentative: Bool?? = nil,
        tentativeMaxPrecision: String?? = nil,
        tbd: Bool?? = nil,
        launchWindow: Int?? = nil,
        rocket: Rocket?? = nil,
        ships: [String]?? = nil,
        launchSite: LaunchSite?? = nil,
        launchSuccess: Bool?? = nil,
        links: Links?? = nil,
        details: String?? = nil,
        upcoming: Bool?? = nil,
        staticFireDateUTC: String?? = nil,
        staticFireDateUnix: Int?? = nil,
        lastDateUpdate: String?? = nil,
        lastLlLaunchDate: String?? = nil,
        lastLlUpdate: String?? = nil,
        lastWikiLaunchDate: String?? = nil,
        lastWikiRevision: String?? = nil,
        lastWikiUpdate: String?? = nil,
        launchDateSource: String?? = nil
    ) -> Launches {
        return Launches(
            flightNumber: flightNumber ?? self.flightNumber,
            missionName: missionName ?? self.missionName,
            missionID: missionID ?? self.missionID,
            launchYear: launchYear ?? self.launchYear,
            launchDateUnix: launchDateUnix ?? self.launchDateUnix,
            launchDateUTC: launchDateUTC ?? self.launchDateUTC,
            launchDateLocal: launchDateLocal ?? self.launchDateLocal,
            isTentative: isTentative ?? self.isTentative,
            tentativeMaxPrecision: tentativeMaxPrecision ?? self.tentativeMaxPrecision,
            tbd: tbd ?? self.tbd,
            launchWindow: launchWindow ?? self.launchWindow,
            rocket: rocket ?? self.rocket,
            ships: ships ?? self.ships,
            launchSite: launchSite ?? self.launchSite,
            launchSuccess: launchSuccess ?? self.launchSuccess,
            links: links ?? self.links,
            details: details ?? self.details,
            upcoming: upcoming ?? self.upcoming,
            staticFireDateUTC: staticFireDateUTC ?? self.staticFireDateUTC,
            staticFireDateUnix: staticFireDateUnix ?? self.staticFireDateUnix,
            lastDateUpdate: lastDateUpdate ?? self.lastDateUpdate,
            lastLlLaunchDate: lastLlLaunchDate ?? self.lastLlLaunchDate,
            lastLlUpdate: lastLlUpdate ?? self.lastLlUpdate,
            lastWikiLaunchDate: lastWikiLaunchDate ?? self.lastWikiLaunchDate,
            lastWikiRevision: lastWikiRevision ?? self.lastWikiRevision,
            lastWikiUpdate: lastWikiUpdate ?? self.lastWikiUpdate,
            launchDateSource: launchDateSource ?? self.launchDateSource
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}
