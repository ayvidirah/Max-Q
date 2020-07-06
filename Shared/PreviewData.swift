//
//  PreviewData.swift
//  MaxQ
//
//  Created by Hariharan Murugesan on 05/07/20.
//

import SwiftUI

let previewJSON = """

  {
    "flight_number": 60,
    "mission_name": "TESS",
    "mission_id": [],
    "launch_year": "2018",
    "launch_date_unix": 1524091860,
    "launch_date_utc": "2018-04-18T22:51:00.000Z",
    "launch_date_local": "2018-04-18T18:51:00-04:00",
    "is_tentative": false,
    "tentative_max_precision": "hour",
    "tbd": false,
    "launch_window": 30,
    "rocket": {
      "rocket_id": "falcon9",
      "rocket_name": "Falcon 9",
      "rocket_type": "FT",
      "first_stage": {
        "cores": [
          {
            "core_serial": "B1045",
            "flight": 1,
            "block": 4,
            "gridfins": true,
            "legs": true,
            "reused": false,
            "land_success": true,
            "landing_intent": true,
            "landing_type": "ASDS",
            "landing_vehicle": "OCISLY"
          }
        ]
      },
      "second_stage": {
        "block": 4,
        "payloads": [
          {
            "payload_id": "TESS",
            "norad_id": [
              43435
            ],
            "reused": false,
            "customers": [
              "NASA"
            ],
            "nationality": "United States",
            "manufacturer": "Orbital ATK",
            "payload_type": "Satellite",
            "payload_mass_kg": 350,
            "payload_mass_lbs": 772,
            "orbit": "HEO",
            "orbit_params": {
              "reference_system": "highly-elliptical",
              "regime": "high-earth",
              "longitude": null,
              "semi_major_axis_km": 143549.447,
              "eccentricity": 0.943685,
              "periapsis_km": 1705.852,
              "apoapsis_km": 272636.772,
              "inclination_deg": 28.6882,
              "period_min": 9021.152,
              "lifespan_years": 10,
              "epoch": "2018-04-25T05:40:13.000Z",
              "mean_motion": 0.15962484,
              "raan": 36.536,
              "arg_of_pericenter": 230.9609,
              "mean_anomaly": 356.5485
            }
          }
        ]
      },
      "fairings": {
        "reused": false,
        "recovery_attempt": false,
        "recovered": false,
        "ship": null
      }
    },
    "ships": [
      "GOPURSUIT",
      "GOQUEST",
      "HAWK",
      "OCISLY"
    ],
    "telemetry": {
      "flight_club": "https://www.flightclub.io/results/?code=TESS"
    },
    "launch_site": {
      "site_id": "ccafs_slc_40",
      "site_name": "CCAFS SLC 40",
      "site_name_long": "Cape Canaveral Air Force Station Space Launch Complex 40"
    },
    "launch_success": true,
    "links": {
      "mission_patch": "https://images2.imgbox.com/7d/2c/pYXpOVCz_o.png",
      "mission_patch_small": "https://images2.imgbox.com/ca/54/EEGqRRto_o.png",
      "reddit_campaign": "https://www.reddit.com/r/spacex/comments/88l46q/tess_launch_campaign_thread/",
      "reddit_launch": "https://www.reddit.com/r/spacex/comments/8cm61o/rspacex_tess_official_launch_discussion_updates/",
      "reddit_recovery": null,
      "reddit_media": "https://www.reddit.com/r/spacex/comments/8cmzop/rspacex_tess_media_thread_videos_images_gifs/",
      "presskit": "http://www.spacex.com/sites/spacex/files/tesspresskitfinal417.pdf",
      "article_link": "https://spaceflightnow.com/2018/04/19/all-sky-surveyor-launched-from-cape-canaveral-on-the-hunt-for-exoplanets/",
      "wikipedia": "https://en.wikipedia.org/wiki/Transiting_Exoplanet_Survey_Satellite",
      "video_link": "https://www.youtube.com/watch?v=aY-0uBIYYKk",
      "youtube_id": "aY-0uBIYYKk",
      "flickr_images": [
        "https://farm1.staticflickr.com/799/27684194488_0d9a703c1c_o.jpg",
        "https://farm1.staticflickr.com/854/41512967372_0c37360126_o.jpg",
        "https://farm1.staticflickr.com/832/41512968122_20c2e31de3_o.jpg",
        "https://farm1.staticflickr.com/803/27684194678_c1ccd0680b_o.jpg",
        "https://farm1.staticflickr.com/902/41512967962_74913ef5b0_o.jpg"
      ]
    },
    "details": "Part of the Explorers program, this space telescope is intended for wide-field search of exoplanets transiting nearby stars. It is the first NASA high priority science mission launched by SpaceX. It was the first time SpaceX launched a scientific satellite not primarily intended for Earth observations. The second stage placed it into a high-Earth elliptical orbit, after which the satellite's own booster will perform complex maneuvers including a lunar flyby, and over the course of two months, reach a stable, 2:1 resonant orbit with the Moon. In January 2018, SpaceX received NASA's Launch Services Program Category 2 certification of its Falcon 9 'Full Thrust', certification which is required for launching medium risk missions like TESS. It was the last launch of a new Block 4 booster, and marked the 24th successful recovery of the booster. An experimental water landing was performed in order to attempt fairing recovery.",
    "upcoming": false,
    "static_fire_date_utc": "2018-04-11T18:30:00.000Z",
    "static_fire_date_unix": 1523471400,
    "timeline": {
      "webcast_liftoff": 1195,
      "go_for_prop_loading": -2280,
      "rp1_loading": -2100,
      "stage1_lox_loading": -2100,
      "stage2_lox_loading": -960,
      "engine_chill": -420,
      "prelaunch_checks": -60,
      "propellant_pressurization": -60,
      "go_for_launch": -45,
      "ignition": -3,
      "liftoff": 0,
      "maxq": 76,
      "meco": 149,
      "stage_sep": 152,
      "second_stage_ignition": 159,
      "fairing_deploy": 181,
      "first_stage_entry_burn": 389,
      "first_stage_landing": 476,
      "seco-1": 500,
      "second_stage_restart": 2590,
      "seco-2": 2643,
      "payload_deploy": 2975
    },
    "crew": null
  }


"""

let Preview = try! Launches(previewJSON)
