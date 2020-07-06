// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let core = try Core(json)

import Foundation

// MARK: - Core
public struct Core: Codable {
    public var coreSerial: String?
    public var flight, block: Int?
    public var gridfins, legs, reused, landSuccess: Bool?
    public var landingIntent: Bool?
    public var landingType, landingVehicle: String?

    enum CodingKeys: String, CodingKey {
        case coreSerial = "core_serial"
        case flight, block, gridfins, legs, reused
        case landSuccess = "land_success"
        case landingIntent = "landing_intent"
        case landingType = "landing_type"
        case landingVehicle = "landing_vehicle"
    }

    public init(coreSerial: String?, flight: Int?, block: Int?, gridfins: Bool?, legs: Bool?, reused: Bool?, landSuccess: Bool?, landingIntent: Bool?, landingType: String?, landingVehicle: String?) {
        self.coreSerial = coreSerial
        self.flight = flight
        self.block = block
        self.gridfins = gridfins
        self.legs = legs
        self.reused = reused
        self.landSuccess = landSuccess
        self.landingIntent = landingIntent
        self.landingType = landingType
        self.landingVehicle = landingVehicle
    }
}

// MARK: Core convenience initializers and mutators

public extension Core {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(Core.self, from: data)
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
        flight: Int?? = nil,
        block: Int?? = nil,
        gridfins: Bool?? = nil,
        legs: Bool?? = nil,
        reused: Bool?? = nil,
        landSuccess: Bool?? = nil,
        landingIntent: Bool?? = nil,
        landingType: String?? = nil,
        landingVehicle: String?? = nil
    ) -> Core {
        return Core(
            coreSerial: coreSerial ?? self.coreSerial,
            flight: flight ?? self.flight,
            block: block ?? self.block,
            gridfins: gridfins ?? self.gridfins,
            legs: legs ?? self.legs,
            reused: reused ?? self.reused,
            landSuccess: landSuccess ?? self.landSuccess,
            landingIntent: landingIntent ?? self.landingIntent,
            landingType: landingType ?? self.landingType,
            landingVehicle: landingVehicle ?? self.landingVehicle
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}
