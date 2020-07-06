// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let fairings = try Fairings(json)

import Foundation

// MARK: - Fairings
public struct Fairings: Codable {
    public var reused, recoveryAttempt, recovered: Bool?
    public var ship: String?

    enum CodingKeys: String, CodingKey {
        case reused
        case recoveryAttempt = "recovery_attempt"
        case recovered, ship
    }

    public init(reused: Bool?, recoveryAttempt: Bool?, recovered: Bool?, ship: String?) {
        self.reused = reused
        self.recoveryAttempt = recoveryAttempt
        self.recovered = recovered
        self.ship = ship
    }
}

// MARK: Fairings convenience initializers and mutators

public extension Fairings {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(Fairings.self, from: data)
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
        reused: Bool?? = nil,
        recoveryAttempt: Bool?? = nil,
        recovered: Bool?? = nil,
        ship: String?? = nil
    ) -> Fairings {
        return Fairings(
            reused: reused ?? self.reused,
            recoveryAttempt: recoveryAttempt ?? self.recoveryAttempt,
            recovered: recovered ?? self.recovered,
            ship: ship ?? self.ship
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}
