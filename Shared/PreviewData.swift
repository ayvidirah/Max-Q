//
//  PreviewData.swift
//  SpaceAppUI
//
//  Created by Hariharan Murugesan on 05/07/20.
//

import SwiftUI

let previewJSON = """
[
  {
    "flight_number": 100,
    "mission_name": "Starlink-10 (v1.0) & SkySat 19-21",
    "mission_id": [],
    "launch_year": "2020",
    "launch_date_unix": 1593561600,
    "launch_date_utc": "2020-07-01T00:00:00.000Z",
    "launch_date_local": "2020-06-30T20:00:00-04:00",
    "is_tentative": true,
    "tentative_max_precision": "month",
    "tbd": false,
    "launch_window": null,
    "rocket": {
      "rocket_id": "falcon9",
      "rocket_name": "Falcon 9",
      "rocket_type": "FT",
      "first_stage": {
        "cores": [
          {
            "core_serial": null,
            "flight": null,
            "block": 5,
            "gridfins": null,
            "legs": null,
            "reused": true,
            "land_success": null,
            "landing_intent": null,
            "landing_type": null,
            "landing_vehicle": null
          }
        ]
      },
      "second_stage": {
        "block": 5,
        "payloads": [
          {
            "payload_id": "Starlink-10",
            "norad_id": [],
            "reused": false,
            "customers": [
              "SpaceX"
            ],
            "nationality": "United States",
            "manufacturer": "SpaceX",
            "payload_type": "Satellite",
            "payload_mass_kg": 15400,
            "payload_mass_lbs": 33951.2,
            "orbit": "VLEO",
            "orbit_params": {
              "reference_system": "geocentric",
              "regime": "very-low-earth",
              "longitude": null,
              "semi_major_axis_km": null,
              "eccentricity": null,
              "periapsis_km": null,
              "apoapsis_km": null,
              "inclination_deg": null,
              "period_min": null,
              "lifespan_years": null,
              "epoch": null,
              "mean_motion": null,
              "raan": null,
              "arg_of_pericenter": null,
              "mean_anomaly": null
            }
          }
        ]
      },
      "fairings": {
        "reused": null,
        "recovery_attempt": null,
        "recovered": null,
        "ship": null
      }
    },
    "ships": [],
    "telemetry": {
      "flight_club": null
    },
    "launch_site": {
      "site_id": "ccafs_slc_40",
      "site_name": "CCAFS SLC 40",
      "site_name_long": "Cape Canaveral Air Force Station Space Launch Complex 40"
    },
    "launch_success": null,
    "links": {
      "mission_patch": "https://images2.imgbox.com/d2/3b/bQaWiil0_o.png",
      "mission_patch_small": "https://images2.imgbox.com/9a/96/nLppz9HW_o.png",
      "reddit_campaign": null,
      "reddit_launch": null,
      "reddit_recovery": null,
      "reddit_media": null,
      "presskit": null,
      "article_link": null,
      "wikipedia": null,
      "video_link": null,
      "youtube_id": null,
      "flickr_images": []
    },
    "details": null,
    "upcoming": true,
    "static_fire_date_utc": null,
    "static_fire_date_unix": null,
    "timeline": null,
    "crew": null,
    "last_date_update": "2020-06-27T21:47:29.000Z",
    "last_ll_launch_date": null,
    "last_ll_update": null,
    "last_wiki_launch_date": "2020-07-01T00:00:00.000Z",
    "last_wiki_revision": "cbbe8645-b8bf-11ea-afac-0ee4d49a1fc5",
    "last_wiki_update": "2020-06-27T21:47:29.000Z",
    "launch_date_source": "wiki"
  }
]

""".data(using: .utf8)
