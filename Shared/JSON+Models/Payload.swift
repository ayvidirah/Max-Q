// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let payload = try Payload(json)

import Foundation

// MARK: - Payload
public struct Payload: Codable {
    public var payloadID: String?
    public var noradID: [Int]?
    public var reused: Bool?
    public var customers: [String]?
    public var nationality, manufacturer, payloadType: String?
    public var payloadMassKg: Double?
    public var payloadMassLbs: Double?
    public var orbit: String?
    public var orbitParams: OrbitParams?

    enum CodingKeys: String, CodingKey {
        case payloadID = "payload_id"
        case noradID = "norad_id"
        case reused, customers, nationality, manufacturer
        case payloadType = "payload_type"
        case payloadMassKg = "payload_mass_kg"
        case payloadMassLbs = "payload_mass_lbs"
        case orbit
        case orbitParams = "orbit_params"
    }

    public init(payloadID: String?, noradID: [Int]?, reused: Bool?, customers: [String]?, nationality: String?, manufacturer: String?, payloadType: String?, payloadMassKg: Double?, payloadMassLbs: Double?, orbit: String?, orbitParams: OrbitParams?) {
        self.payloadID = payloadID
        self.noradID = noradID
        self.reused = reused
        self.customers = customers
        self.nationality = nationality
        self.manufacturer = manufacturer
        self.payloadType = payloadType
        self.payloadMassKg = payloadMassKg
        self.payloadMassLbs = payloadMassLbs
        self.orbit = orbit
        self.orbitParams = orbitParams
    }
}

// MARK: Payload convenience initializers and mutators

public extension Payload {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(Payload.self, from: data)
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
        payloadID: String?? = nil,
        noradID: [Int]?? = nil,
        reused: Bool?? = nil,
        customers: [String]?? = nil,
        nationality: String?? = nil,
        manufacturer: String?? = nil,
        payloadType: String?? = nil,
        payloadMassKg: Double?? = nil,
        payloadMassLbs: Double?? = nil,
        orbit: String?? = nil,
        orbitParams: OrbitParams?? = nil
    ) -> Payload {
        return Payload(
            payloadID: payloadID ?? self.payloadID,
            noradID: noradID ?? self.noradID,
            reused: reused ?? self.reused,
            customers: customers ?? self.customers,
            nationality: nationality ?? self.nationality,
            manufacturer: manufacturer ?? self.manufacturer,
            payloadType: payloadType ?? self.payloadType,
            payloadMassKg: payloadMassKg ?? self.payloadMassKg,
            payloadMassLbs: payloadMassLbs ?? self.payloadMassLbs,
            orbit: orbit ?? self.orbit,
            orbitParams: orbitParams ?? self.orbitParams
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}
