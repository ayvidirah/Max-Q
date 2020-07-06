// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let orbitParams = try OrbitParams(json)

import Foundation

// MARK: - OrbitParams
public struct OrbitParams: Codable {
    public var referenceSystem, regime: String?
    public var semiMajorAxisKM, eccentricity, periapsisKM, apoapsisKM: Double?
    public var inclinationDeg, periodMin: Double?
    public var lifespanYears: Double?
    public var epoch: String?
    public var meanMotion, raan, argOfPericenter, meanAnomaly: Double?

    enum CodingKeys: String, CodingKey {
        case referenceSystem = "reference_system"
        case regime
        case semiMajorAxisKM = "semi_major_axis_km"
        case eccentricity
        case periapsisKM = "periapsis_km"
        case apoapsisKM = "apoapsis_km"
        case inclinationDeg = "inclination_deg"
        case periodMin = "period_min"
        case lifespanYears = "lifespan_years"
        case epoch
        case meanMotion = "mean_motion"
        case raan
        case argOfPericenter = "arg_of_pericenter"
        case meanAnomaly = "mean_anomaly"
    }

    public init(referenceSystem: String?, regime: String?, semiMajorAxisKM: Double?, eccentricity: Double?, periapsisKM: Double?, apoapsisKM: Double?, inclinationDeg: Double?, periodMin: Double?, lifespanYears: Double?, epoch: String?, meanMotion: Double?, raan: Double?, argOfPericenter: Double?, meanAnomaly: Double?) {
        self.referenceSystem = referenceSystem
        self.regime = regime
        self.semiMajorAxisKM = semiMajorAxisKM
        self.eccentricity = eccentricity
        self.periapsisKM = periapsisKM
        self.apoapsisKM = apoapsisKM
        self.inclinationDeg = inclinationDeg
        self.periodMin = periodMin
        self.lifespanYears = lifespanYears
        self.epoch = epoch
        self.meanMotion = meanMotion
        self.raan = raan
        self.argOfPericenter = argOfPericenter
        self.meanAnomaly = meanAnomaly
    }
}

// MARK: OrbitParams convenience initializers and mutators

public extension OrbitParams {
    init(data: Data) throws {
        self = try newJSONDecoder().decode(OrbitParams.self, from: data)
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
        referenceSystem: String?? = nil,
        regime: String?? = nil,
        semiMajorAxisKM: Double?? = nil,
        eccentricity: Double?? = nil,
        periapsisKM: Double?? = nil,
        apoapsisKM: Double?? = nil,
        inclinationDeg: Double?? = nil,
        periodMin: Double?? = nil,
        lifespanYears: Double?? = nil,
        epoch: String?? = nil,
        meanMotion: Double?? = nil,
        raan: Double?? = nil,
        argOfPericenter: Double?? = nil,
        meanAnomaly: Double?? = nil
    ) -> OrbitParams {
        return OrbitParams(
            referenceSystem: referenceSystem ?? self.referenceSystem,
            regime: regime ?? self.regime,
            semiMajorAxisKM: semiMajorAxisKM ?? self.semiMajorAxisKM,
            eccentricity: eccentricity ?? self.eccentricity,
            periapsisKM: periapsisKM ?? self.periapsisKM,
            apoapsisKM: apoapsisKM ?? self.apoapsisKM,
            inclinationDeg: inclinationDeg ?? self.inclinationDeg,
            periodMin: periodMin ?? self.periodMin,
            lifespanYears: lifespanYears ?? self.lifespanYears,
            epoch: epoch ?? self.epoch,
            meanMotion: meanMotion ?? self.meanMotion,
            raan: raan ?? self.raan,
            argOfPericenter: argOfPericenter ?? self.argOfPericenter,
            meanAnomaly: meanAnomaly ?? self.meanAnomaly
        )
    }

    func jsonData() throws -> Data {
        return try newJSONEncoder().encode(self)
    }

    func jsonString(encoding: String.Encoding = .utf8) throws -> String? {
        return String(data: try self.jsonData(), encoding: encoding)
    }
}
