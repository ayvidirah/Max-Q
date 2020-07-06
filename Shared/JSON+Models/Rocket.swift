// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let rocket = try Rocket(json)

import Foundation

// MARK: - Rocket
public struct Rocket: Codable {
    public var rocketID, rocketName, rocketType: String?
    public var firstStage: FirstStage?
    public var secondStage: SecondStage?
    public var fairings: Fairings?

    enum CodingKeys: String, CodingKey {
        case rocketID = "rocket_id"
        case rocketName = "rocket_name"
        case rocketType = "rocket_type"
        case firstStage = "first_stage"
        case secondStage = "second_stage"
        case fairings
    }

    public init(rocketID: String?, rocketName: String?, rocketType: String?, firstStage: FirstStage?, secondStage: SecondStage?, fairings: Fairings?) {
        self.rocketID = rocketID
        self.rocketName = rocketName
        self.rocketType = rocketType
        self.firstStage = firstStage
        self.secondStage = secondStage
        self.fairings = fairings
    }
}

// MARK: Rocket convenience initializers and mutators

public extension Rocket {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(Rocket.self, from: data)
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
        rocketID: String?? = nil,
        rocketName: String?? = nil,
        rocketType: String?? = nil,
        firstStage: FirstStage?? = nil,
        secondStage: SecondStage?? = nil,
        fairings: Fairings?? = nil
    ) -> Rocket {
        return Rocket(
            rocketID: rocketID ?? self.rocketID,
            rocketName: rocketName ?? self.rocketName,
            rocketType: rocketType ?? self.rocketType,
            firstStage: firstStage ?? self.firstStage,
            secondStage: secondStage ?? self.secondStage,
            fairings: fairings ?? self.fairings
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}
