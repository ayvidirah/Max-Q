// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let cores = try Cores(json)

import Foundation

// MARK: - Cores
struct Cores: Codable {
    var coreSerial: String?
    var block: Int?
    var status, originalLaunch: String?
    var originalLaunchUnix: Int?
    var missions: [Mission]?
    var reuseCount, rtlsAttempts, rtlsLandings, asdsAttempts: Int?
    var asdsLandings: Int?
    var waterLanding: Bool?
    var details: String?

    enum CodingKeys: String, CodingKey {
        case coreSerial = "core_serial"
        case block, status
        case originalLaunch = "original_launch"
        case originalLaunchUnix = "original_launch_unix"
        case missions
        case reuseCount = "reuse_count"
        case rtlsAttempts = "rtls_attempts"
        case rtlsLandings = "rtls_landings"
        case asdsAttempts = "asds_attempts"
        case asdsLandings = "asds_landings"
        case waterLanding = "water_landing"
        case details
    }
}

// MARK: Cores convenience initializers and mutators

extension Cores {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(Cores.self, from: data)
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
        coreSerial: String?? = nil,
        block: Int?? = nil,
        status: String?? = nil,
        originalLaunch: String?? = nil,
        originalLaunchUnix: Int?? = nil,
        missions: [Mission]?? = nil,
        reuseCount: Int?? = nil,
        rtlsAttempts: Int?? = nil,
        rtlsLandings: Int?? = nil,
        asdsAttempts: Int?? = nil,
        asdsLandings: Int?? = nil,
        waterLanding: Bool?? = nil,
        details: String?? = nil
    ) -> Cores {
        return Cores(
            coreSerial: coreSerial ?? self.coreSerial,
            block: block ?? self.block,
            status: status ?? self.status,
            originalLaunch: originalLaunch ?? self.originalLaunch,
            originalLaunchUnix: originalLaunchUnix ?? self.originalLaunchUnix,
            missions: missions ?? self.missions,
            reuseCount: reuseCount ?? self.reuseCount,
            rtlsAttempts: rtlsAttempts ?? self.rtlsAttempts,
            rtlsLandings: rtlsLandings ?? self.rtlsLandings,
            asdsAttempts: asdsAttempts ?? self.asdsAttempts,
            asdsLandings: asdsLandings ?? self.asdsLandings,
            waterLanding: waterLanding ?? self.waterLanding,
            details: details ?? self.details
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}

// MARK: - Mission
struct Mission: Codable, Identifiable {
    var id: Int?
    var name: String?
    var flight: Int?
}

// MARK: Mission convenience initializers and mutators

extension Mission {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(Mission.self, from: data)
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
        name: String?? = nil,
        flight: Int?? = nil
    ) -> Mission {
        return Mission(
            name: name ?? self.name,
            flight: flight ?? self.flight
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}
