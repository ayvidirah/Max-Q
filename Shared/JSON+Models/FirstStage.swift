// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let firstStage = try FirstStage(json)

import Foundation

// MARK: - FirstStage
public struct FirstStage: Codable {
    public var cores: [Core]?

    public init(cores: [Core]?) {
        self.cores = cores
    }
}

// MARK: FirstStage convenience initializers and mutators

public extension FirstStage {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(FirstStage.self, from: data)
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
        cores: [Core]?? = nil
    ) -> FirstStage {
        return FirstStage(
            cores: cores ?? self.cores
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}
