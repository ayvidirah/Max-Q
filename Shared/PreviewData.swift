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

let allCoresString = """


[
  {
    "core_serial": "Merlin1A",
    "block": null,
    "status": "lost",
    "original_launch": "2006-03-24T22:30:00.000Z",
    "original_launch_unix": 1143239400,
    "missions": [
      {
        "name": "FalconSat",
        "flight": 1
      }
    ],
    "reuse_count": 0,
    "rtls_attempts": 0,
    "rtls_landings": 0,
    "asds_attempts": 0,
    "asds_landings": 0,
    "water_landing": false,
    "details": "Engine failure at T+33 seconds resulted in loss of vehicle"
  },
  {
    "core_serial": "Merlin2A",
    "block": null,
    "status": "lost",
    "original_launch": "2007-03-21T01:10:00.000Z",
    "original_launch_unix": 1174439400,
    "missions": [
      {
        "name": "DemoSat",
        "flight": 2
      }
    ],
    "reuse_count": 0,
    "rtls_attempts": 0,
    "rtls_landings": 0,
    "asds_attempts": 0,
    "asds_landings": 0,
    "water_landing": false,
    "details": "Successful first-stage burn and transition to second stage, maximal altitude 289 km. Harmonic oscillation at T+5 minutes Premature engine shutdown at T+7 min 30 s. Failed to reach orbit."
  },
  {
    "core_serial": "Merlin1C",
    "block": null,
    "status": "lost",
    "original_launch": "2008-08-03T03:34:00.000Z",
    "original_launch_unix": 1217734440,
    "missions": [
      {
        "name": "Trailblazer",
        "flight": 3
      }
    ],
    "reuse_count": 0,
    "rtls_attempts": 0,
    "rtls_landings": 0,
    "asds_attempts": 0,
    "asds_landings": 0,
    "water_landing": false,
    "details": "Residual stage-1 thrust led to collision between stage 1 and stage 2."
  },
  {
    "core_serial": "Merlin2C",
    "block": null,
    "status": "lost",
    "original_launch": "2008-09-28T23:15:00.000Z",
    "original_launch_unix": 1222643700,
    "missions": [
      {
        "name": "RatSat",
        "flight": 4
      }
    ],
    "reuse_count": 0,
    "rtls_attempts": 0,
    "rtls_landings": 0,
    "asds_attempts": 0,
    "asds_landings": 0,
    "water_landing": false,
    "details": "Initially scheduled for 23–25 Sep, carried dummy payload – mass simulator, 165 kg (originally intended to be RazakSAT."
  },
  {
    "core_serial": "Merlin3C",
    "block": null,
    "status": "lost",
    "original_launch": "2009-07-13T03:35:00.000Z",
    "original_launch_unix": 1247456100,
    "missions": [
      {
        "name": "RazakSat",
        "flight": 5
      }
    ],
    "reuse_count": 0,
    "rtls_attempts": 0,
    "rtls_landings": 0,
    "asds_attempts": 0,
    "asds_landings": 0,
    "water_landing": false,
    "details": null
  },
  {
    "core_serial": "B0003",
    "block": 1,
    "status": "lost",
    "original_launch": "2010-06-04T18:45:00.000Z",
    "original_launch_unix": 1275677100,
    "missions": [
      {
        "name": "Falcon 9 Test Flight",
        "flight": 6
      }
    ],
    "reuse_count": 0,
    "rtls_attempts": 0,
    "rtls_landings": 0,
    "asds_attempts": 0,
    "asds_landings": 0,
    "water_landing": false,
    "details": "Stage Expended"
  },
  {
    "core_serial": "B0004",
    "block": 1,
    "status": "lost",
    "original_launch": "2010-12-08T15:43:00.000Z",
    "original_launch_unix": 1291822980,
    "missions": [
      {
        "name": "COTS 1",
        "flight": 7
      }
    ],
    "reuse_count": 0,
    "rtls_attempts": 0,
    "rtls_landings": 0,
    "asds_attempts": 0,
    "asds_landings": 0,
    "water_landing": false,
    "details": "First flight of Dragon"
  },
  {
    "core_serial": "B0005",
    "block": 1,
    "status": "lost",
    "original_launch": "2012-05-22T07:44:00.000Z",
    "original_launch_unix": 1335944640,
    "missions": [
      {
        "name": "COTS 2",
        "flight": 8
      }
    ],
    "reuse_count": 0,
    "rtls_attempts": 0,
    "rtls_landings": 0,
    "asds_attempts": 0,
    "asds_landings": 0,
    "water_landing": false,
    "details": null
  },
  {
    "core_serial": "B0006",
    "block": 1,
    "status": "lost",
    "original_launch": "2012-10-08T00:35:00.000Z",
    "original_launch_unix": 1349656500,
    "missions": [
      {
        "name": "CRS-1",
        "flight": 9
      }
    ],
    "reuse_count": 0,
    "rtls_attempts": 0,
    "rtls_landings": 0,
    "asds_attempts": 0,
    "asds_landings": 0,
    "water_landing": false,
    "details": "Suffered engine out at T+1:19 but primary mission successful"
  },
  {
    "core_serial": "B0007",
    "block": 1,
    "status": "lost",
    "original_launch": "2013-03-01T19:10:00.000Z",
    "original_launch_unix": 1362165000,
    "missions": [
      {
        "name": "CRS-2",
        "flight": 10
      }
    ],
    "reuse_count": 0,
    "rtls_attempts": 0,
    "rtls_landings": 0,
    "asds_attempts": 0,
    "asds_landings": 0,
    "water_landing": false,
    "details": null
  },
  {
    "core_serial": "B1003",
    "block": 1,
    "status": "lost",
    "original_launch": "2013-09-29T16:00:00.000Z",
    "original_launch_unix": 1380470400,
    "missions": [
      {
        "name": "CASSIOPE",
        "flight": 11
      }
    ],
    "reuse_count": 0,
    "rtls_attempts": 0,
    "rtls_landings": 0,
    "asds_attempts": 0,
    "asds_landings": 0,
    "water_landing": true,
    "details": "First flight of Falcon 9 v1.1 upgrade, first Spacex flight from Vandenberg"
  },
  {
    "core_serial": "B1004",
    "block": 1,
    "status": "lost",
    "original_launch": "2013-12-03T22:41:00.000Z",
    "original_launch_unix": 1386110460,
    "missions": [
      {
        "name": "SES-8",
        "flight": 12
      }
    ],
    "reuse_count": 0,
    "rtls_attempts": 0,
    "rtls_landings": 0,
    "asds_attempts": 0,
    "asds_landings": 0,
    "water_landing": false,
    "details": null
  },
  {
    "core_serial": "B1005",
    "block": 1,
    "status": "lost",
    "original_launch": "2014-01-06T18:06:00.000Z",
    "original_launch_unix": 1389031560,
    "missions": [
      {
        "name": "Thaicom 6",
        "flight": 13
      }
    ],
    "reuse_count": 0,
    "rtls_attempts": 0,
    "rtls_landings": 0,
    "asds_attempts": 0,
    "asds_landings": 0,
    "water_landing": false,
    "details": null
  },
  {
    "core_serial": "B1006",
    "block": 1,
    "status": "lost",
    "original_launch": "2014-04-18T19:25:00.000Z",
    "original_launch_unix": 1397849100,
    "missions": [
      {
        "name": "CRS-3",
        "flight": 14
      }
    ],
    "reuse_count": 0,
    "rtls_attempts": 0,
    "rtls_landings": 0,
    "asds_attempts": 0,
    "asds_landings": 0,
    "water_landing": true,
    "details": "Broke up after sucessful water landing"
  },
  {
    "core_serial": "B1007",
    "block": 1,
    "status": "lost",
    "original_launch": "2014-07-14T15:15:00.000Z",
    "original_launch_unix": 1405350900,
    "missions": [
      {
        "name": "OG-2 Mission 1",
        "flight": 15
      }
    ],
    "reuse_count": 0,
    "rtls_attempts": 0,
    "rtls_landings": 0,
    "asds_attempts": 0,
    "asds_landings": 0,
    "water_landing": true,
    "details": "Broke up after sucessful water landing"
  },
  {
    "core_serial": "B1008",
    "block": 1,
    "status": "lost",
    "original_launch": "2014-08-05T08:00:00.000Z",
    "original_launch_unix": 1407225600,
    "missions": [
      {
        "name": "AsiaSat 8",
        "flight": 16
      }
    ],
    "reuse_count": 0,
    "rtls_attempts": 0,
    "rtls_landings": 0,
    "asds_attempts": 0,
    "asds_landings": 0,
    "water_landing": false,
    "details": null
  },
  {
    "core_serial": "B1011",
    "block": 1,
    "status": "lost",
    "original_launch": "2014-09-07T05:00:00.000Z",
    "original_launch_unix": 1410066000,
    "missions": [
      {
        "name": "AsiaSat 6",
        "flight": 17
      }
    ],
    "reuse_count": 0,
    "rtls_attempts": 0,
    "rtls_landings": 0,
    "asds_attempts": 0,
    "asds_landings": 0,
    "water_landing": false,
    "details": null
  },
  {
    "core_serial": "B1010",
    "block": 1,
    "status": "lost",
    "original_launch": "2014-09-21T05:52:00.000Z",
    "original_launch_unix": 1411278720,
    "missions": [
      {
        "name": "CRS-4",
        "flight": 18
      }
    ],
    "reuse_count": 0,
    "rtls_attempts": 0,
    "rtls_landings": 0,
    "asds_attempts": 0,
    "asds_landings": 0,
    "water_landing": true,
    "details": "Broke up after sucessful water landing"
  },
  {
    "core_serial": "B1012",
    "block": 1,
    "status": "lost",
    "original_launch": "2015-01-10T09:47:00.000Z",
    "original_launch_unix": 1420883220,
    "missions": [
      {
        "name": "CRS-5",
        "flight": 19
      }
    ],
    "reuse_count": 0,
    "rtls_attempts": 0,
    "rtls_landings": 0,
    "asds_attempts": 1,
    "asds_landings": 0,
    "water_landing": false,
    "details": "Destroyed on impact with droneship, grid fin hydraulic fluid depleted"
  },
  {
    "core_serial": "B1013",
    "block": 1,
    "status": "lost",
    "original_launch": "2015-02-11T23:03:00.000Z",
    "original_launch_unix": 1423695780,
    "missions": [
      {
        "name": "DSCOVR",
        "flight": 20
      }
    ],
    "reuse_count": 0,
    "rtls_attempts": 0,
    "rtls_landings": 0,
    "asds_attempts": 0,
    "asds_landings": 0,
    "water_landing": true,
    "details": "Broke up after sucessful water landing"
  },
  {
    "core_serial": "B1014",
    "block": 1,
    "status": "lost",
    "original_launch": "2015-03-02T03:50:00.000Z",
    "original_launch_unix": 1425268200,
    "missions": [
      {
        "name": "ABS-3A / Eutelsat 115W B",
        "flight": 21
      }
    ],
    "reuse_count": 0,
    "rtls_attempts": 0,
    "rtls_landings": 0,
    "asds_attempts": 0,
    "asds_landings": 0,
    "water_landing": false,
    "details": null
  },
  {
    "core_serial": "B1015",
    "block": 1,
    "status": "lost",
    "original_launch": "2015-04-14T20:10:00.000Z",
    "original_launch_unix": 1429042200,
    "missions": [
      {
        "name": "CRS-6",
        "flight": 22
      }
    ],
    "reuse_count": 0,
    "rtls_attempts": 0,
    "rtls_landings": 0,
    "asds_attempts": 1,
    "asds_landings": 0,
    "water_landing": false,
    "details": "Destroyed on impact with droneship due to excess lateral velocity - throttle stiction"
  },
  {
    "core_serial": "B1016",
    "block": 1,
    "status": "lost",
    "original_launch": "2015-04-27T23:03:00.000Z",
    "original_launch_unix": 1430175780,
    "missions": [
      {
        "name": "TürkmenÄlem 52°E / MonacoSAT",
        "flight": 23
      }
    ],
    "reuse_count": 0,
    "rtls_attempts": 0,
    "rtls_landings": 0,
    "asds_attempts": 0,
    "asds_landings": 0,
    "water_landing": false,
    "details": null
  },
  {
    "core_serial": "B1018",
    "block": 1,
    "status": "lost",
    "original_launch": "2015-06-28T14:21:00.000Z",
    "original_launch_unix": 1435501260,
    "missions": [
      {
        "name": "CRS-7",
        "flight": 24
      }
    ],
    "reuse_count": 0,
    "rtls_attempts": 0,
    "rtls_landings": 0,
    "asds_attempts": 0,
    "asds_landings": 0,
    "water_landing": false,
    "details": "RUD at T + 139s - second stage overpressure event due to defective COPV strut heim joint"
  },
  {
    "core_serial": "B1019",
    "block": 1,
    "status": "inactive",
    "original_launch": "2015-12-22T01:29:00.000Z",
    "original_launch_unix": 1450747740,
    "missions": [
      {
        "name": "OG-2 Mission 2",
        "flight": 25
      }
    ],
    "reuse_count": 0,
    "rtls_attempts": 1,
    "rtls_landings": 1,
    "asds_attempts": 0,
    "asds_landings": 0,
    "water_landing": false,
    "details": "Retired; permanently displayed at Hawthorne headquarters. "
  },
  {
    "core_serial": "B1017",
    "block": 1,
    "status": "lost",
    "original_launch": "2016-01-17T15:42:00.000Z",
    "original_launch_unix": 1453045320,
    "missions": [
      {
        "name": "Jason 3",
        "flight": 26
      }
    ],
    "reuse_count": 0,
    "rtls_attempts": 0,
    "rtls_landings": 0,
    "asds_attempts": 1,
    "asds_landings": 0,
    "water_landing": false,
    "details": "Destroyed after drone ship landing due to landing leg failure"
  },
  {
    "core_serial": "B1020",
    "block": 1,
    "status": "lost",
    "original_launch": "2016-03-04T23:35:00.000Z",
    "original_launch_unix": 1457134500,
    "missions": [
      {
        "name": "SES-9",
        "flight": 27
      }
    ],
    "reuse_count": 0,
    "rtls_attempts": 0,
    "rtls_landings": 0,
    "asds_attempts": 1,
    "asds_landings": 0,
    "water_landing": false,
    "details": "Destroyed on Impact with DroneShip (OCISLY) - Excess Velocity, Possible Fuel Exhaustion"
  },
  {
    "core_serial": "B1021",
    "block": 2,
    "status": "inactive",
    "original_launch": "2016-04-08T20:43:00.000Z",
    "original_launch_unix": 1460148180,
    "missions": [
      {
        "name": "CRS-8",
        "flight": 28
      },
      {
        "name": "SES-10",
        "flight": 38
      }
    ],
    "reuse_count": 1,
    "rtls_attempts": 0,
    "rtls_landings": 0,
    "asds_attempts": 2,
    "asds_landings": 2,
    "water_landing": false,
    "details": "Retired; stored in Hangar E at CCAFS until put on permanent display "
  },
  {
    "core_serial": "B1022",
    "block": 2,
    "status": "inactive",
    "original_launch": "2016-05-06T05:21:00.000Z",
    "original_launch_unix": 1462512060,
    "missions": [
      {
        "name": "JCSAT-2B",
        "flight": 29
      }
    ],
    "reuse_count": 0,
    "rtls_attempts": 0,
    "rtls_landings": 0,
    "asds_attempts": 1,
    "asds_landings": 1,
    "water_landing": false,
    "details": "Removed from active fleet for Δ Qualification Testing. Retired after eight to ten test cycles.  Currently partially disassembled at McGregor."
  },
  {
    "core_serial": "B1023",
    "block": 2,
    "status": "inactive",
    "original_launch": "2016-05-27T21:39:00.000Z",
    "original_launch_unix": 1464385140,
    "missions": [
      {
        "name": "Thaicom 8",
        "flight": 30
      },
      {
        "name": "Falcon Heavy Test Flight",
        "flight": 55
      }
    ],
    "reuse_count": 1,
    "rtls_attempts": 1,
    "rtls_landings": 1,
    "asds_attempts": 1,
    "asds_landings": 1,
    "water_landing": false,
    "details": "*At LZ1 as 2018/02/06 "
  },
  {
    "core_serial": "B1024",
    "block": 2,
    "status": "lost",
    "original_launch": "2016-06-15T14:29:00.000Z",
    "original_launch_unix": 1466000940,
    "missions": [
      {
        "name": "ABS-2A / Eutelsat 117W B",
        "flight": 31
      }
    ],
    "reuse_count": 0,
    "rtls_attempts": 0,
    "rtls_landings": 0,
    "asds_attempts": 1,
    "asds_landings": 0,
    "water_landing": false,
    "details": "RUD on deck of droneship (OCISLY)"
  },
  {
    "core_serial": "B1025",
    "block": 2,
    "status": "inactive",
    "original_launch": "2016-07-18T04:45:00.000Z",
    "original_launch_unix": 1468817100,
    "missions": [
      {
        "name": "CRS-9",
        "flight": 32
      },
      {
        "name": "Falcon Heavy Test Flight",
        "flight": 55
      }
    ],
    "reuse_count": 1,
    "rtls_attempts": 2,
    "rtls_landings": 2,
    "asds_attempts": 0,
    "asds_landings": 0,
    "water_landing": false,
    "details": "*At LZ2 as 2018/02/06 "
  },
  {
    "core_serial": "B1026",
    "block": 2,
    "status": "inactive",
    "original_launch": "2016-08-14T05:26:00.000Z",
    "original_launch_unix": 1471152360,
    "missions": [
      {
        "name": "JCSAT-16",
        "flight": 33
      }
    ],
    "reuse_count": 0,
    "rtls_attempts": 0,
    "rtls_landings": 0,
    "asds_attempts": 1,
    "asds_landings": 1,
    "water_landing": false,
    "details": "Permanently scrapped.  "
  },
  {
    "core_serial": "B1028",
    "block": 3,
    "status": "lost",
    "original_launch": "2016-09-01T13:07:00.000Z",
    "original_launch_unix": 1472735220,
    "missions": [
      {
        "name": "Amos-6",
        "flight": 34
      }
    ],
    "reuse_count": 0,
    "rtls_attempts": 0,
    "rtls_landings": 0,
    "asds_attempts": 0,
    "asds_landings": 0,
    "water_landing": false,
    "details": "---"
  },
  {
    "core_serial": "B1029",
    "block": 3,
    "status": "inactive",
    "original_launch": "2017-01-14T17:54:00.000Z",
    "original_launch_unix": 1484416440,
    "missions": [
      {
        "name": "Iridium NEXT Mission 1",
        "flight": 35
      },
      {
        "name": "BulgariaSat-1",
        "flight": 42
      }
    ],
    "reuse_count": 1,
    "rtls_attempts": 0,
    "rtls_landings": 0,
    "asds_attempts": 2,
    "asds_landings": 2,
    "water_landing": false,
    "details": "Will be given to KSC Visitors Center. "
  },
  {
    "core_serial": "B1031",
    "block": 3,
    "status": "inactive",
    "original_launch": "2017-02-19T14:39:00.000Z",
    "original_launch_unix": 1487515140,
    "missions": [
      {
        "name": "CRS-10",
        "flight": 36
      },
      {
        "name": "SES-11 / Echostar 105",
        "flight": 49
      }
    ],
    "reuse_count": 1,
    "rtls_attempts": 1,
    "rtls_landings": 1,
    "asds_attempts": 1,
    "asds_landings": 1,
    "water_landing": false,
    "details": "Stored outside at McGregor, partially disassembled (missing engines). "
  },
  {
    "core_serial": "B1030",
    "block": 3,
    "status": "lost",
    "original_launch": "2017-03-16T06:00:00.000Z",
    "original_launch_unix": 1489644000,
    "missions": [
      {
        "name": "EchoStar 23",
        "flight": 37
      }
    ],
    "reuse_count": 0,
    "rtls_attempts": 0,
    "rtls_landings": 0,
    "asds_attempts": 0,
    "asds_landings": 0,
    "water_landing": false,
    "details": "Stage Expended"
  },
  {
    "core_serial": "B1032",
    "block": 3,
    "status": "lost",
    "original_launch": "2017-05-01T11:15:00.000Z",
    "original_launch_unix": 1493637300,
    "missions": [
      {
        "name": "NROL-76",
        "flight": 39
      },
      {
        "name": "SES-16 / GovSat-1",
        "flight": 54
      }
    ],
    "reuse_count": 1,
    "rtls_attempts": 1,
    "rtls_landings": 1,
    "asds_attempts": 0,
    "asds_landings": 0,
    "water_landing": true,
    "details": "Survived water landing, SpaceX couldn't tug it back to port, so they hired a company to destroy it.  "
  },
  {
    "core_serial": "B1034",
    "block": 3,
    "status": "lost",
    "original_launch": "2017-05-15T23:21:00.000Z",
    "original_launch_unix": 1494890460,
    "missions": [
      {
        "name": "Inmarsat-5 F4",
        "flight": 40
      }
    ],
    "reuse_count": 0,
    "rtls_attempts": 0,
    "rtls_landings": 0,
    "asds_attempts": 0,
    "asds_landings": 0,
    "water_landing": false,
    "details": "Stage Expended"
  },
  {
    "core_serial": "B1035",
    "block": 3,
    "status": "inactive",
    "original_launch": "2017-06-03T21:07:00.000Z",
    "original_launch_unix": 1496524020,
    "missions": [
      {
        "name": "CRS-11",
        "flight": 41
      },
      {
        "name": "CRS-13",
        "flight": 51
      }
    ],
    "reuse_count": 1,
    "rtls_attempts": 2,
    "rtls_landings": 2,
    "asds_attempts": 0,
    "asds_landings": 0,
    "water_landing": false,
    "details": "Retired; permanently displayed at Space Center Houston. "
  },
  {
    "core_serial": "B1036",
    "block": 3,
    "status": "lost",
    "original_launch": "2017-06-25T20:25:00.000Z",
    "original_launch_unix": 1498422300,
    "missions": [
      {
        "name": "Iridium NEXT Mission 2",
        "flight": 43
      },
      {
        "name": "Iridium NEXT Mission 4",
        "flight": 52
      }
    ],
    "reuse_count": 1,
    "rtls_attempts": 0,
    "rtls_landings": 0,
    "asds_attempts": 1,
    "asds_landings": 1,
    "water_landing": true,
    "details": "Broke Up After Successful Water Landing"
  },
  {
    "core_serial": "B1037",
    "block": 3,
    "status": "lost",
    "original_launch": "2017-07-05T23:35:00.000Z",
    "original_launch_unix": 1499297700,
    "missions": [
      {
        "name": "Intelsat 35e",
        "flight": 44
      }
    ],
    "reuse_count": 0,
    "rtls_attempts": 0,
    "rtls_landings": 0,
    "asds_attempts": 0,
    "asds_landings": 0,
    "water_landing": false,
    "details": "Stage Expended"
  },
  {
    "core_serial": "B1039",
    "block": 4,
    "status": "lost",
    "original_launch": "2017-08-14T16:31:00.000Z",
    "original_launch_unix": 1502728260,
    "missions": [
      {
        "name": "CRS-12",
        "flight": 45
      },
      {
        "name": "CRS-14",
        "flight": 59
      }
    ],
    "reuse_count": 1,
    "rtls_attempts": 1,
    "rtls_landings": 1,
    "asds_attempts": 0,
    "asds_landings": 0,
    "water_landing": false,
    "details": "Stage Expended"
  },
  {
    "core_serial": "B1038",
    "block": 3,
    "status": "lost",
    "original_launch": "2017-08-24T18:50:00.000Z",
    "original_launch_unix": 1503600600,
    "missions": [
      {
        "name": "FormoSat-5",
        "flight": 46
      },
      {
        "name": "Paz / Starlink Demo",
        "flight": 56
      }
    ],
    "reuse_count": 1,
    "rtls_attempts": 0,
    "rtls_landings": 0,
    "asds_attempts": 1,
    "asds_landings": 1,
    "water_landing": false,
    "details": "Stage Expended"
  },
  {
    "core_serial": "B1040",
    "block": 4,
    "status": "lost",
    "original_launch": "2017-09-07T13:50:00.000Z",
    "original_launch_unix": 1504792200,
    "missions": [
      {
        "name": "Boeing X-37B OTV-5",
        "flight": 47
      },
      {
        "name": "SES-12",
        "flight": 63
      }
    ],
    "reuse_count": 1,
    "rtls_attempts": 1,
    "rtls_landings": 1,
    "asds_attempts": 0,
    "asds_landings": 0,
    "water_landing": false,
    "details": "Stage Expended"
  },
  {
    "core_serial": "B1041",
    "block": 4,
    "status": "lost",
    "original_launch": "2017-10-09T12:37:00.000Z",
    "original_launch_unix": 1507552620,
    "missions": [
      {
        "name": "Iridium NEXT Mission 3",
        "flight": 48
      },
      {
        "name": "Iridium NEXT Mission 5",
        "flight": 58
      }
    ],
    "reuse_count": 1,
    "rtls_attempts": 0,
    "rtls_landings": 0,
    "asds_attempts": 1,
    "asds_landings": 1,
    "water_landing": false,
    "details": "Stage Expended"
  },
  {
    "core_serial": "B1042",
    "block": 4,
    "status": "inactive",
    "original_launch": "2017-10-30T19:34:00.000Z",
    "original_launch_unix": 1509392040,
    "missions": [
      {
        "name": "KoreaSat 5A",
        "flight": 50
      }
    ],
    "reuse_count": 0,
    "rtls_attempts": 0,
    "rtls_landings": 0,
    "asds_attempts": 1,
    "asds_landings": 1,
    "water_landing": false,
    "details": "Retired. "
  },
  {
    "core_serial": "B1043",
    "block": 4,
    "status": "lost",
    "original_launch": "2018-01-08T01:00:00.000Z",
    "original_launch_unix": 1515373200,
    "missions": [
      {
        "name": "ZUMA",
        "flight": 53
      },
      {
        "name": "Iridium NEXT Mission 6",
        "flight": 62
      }
    ],
    "reuse_count": 1,
    "rtls_attempts": 1,
    "rtls_landings": 1,
    "asds_attempts": 0,
    "asds_landings": 0,
    "water_landing": false,
    "details": "Stage Expended"
  },
  {
    "core_serial": "B1033",
    "block": 3,
    "status": "lost",
    "original_launch": "2018-02-06T20:45:00.000Z",
    "original_launch_unix": 1517949900,
    "missions": [
      {
        "name": "Falcon Heavy Test Flight",
        "flight": 55
      }
    ],
    "reuse_count": 0,
    "rtls_attempts": 0,
    "rtls_landings": 0,
    "asds_attempts": 1,
    "asds_landings": 0,
    "water_landing": false,
    "details": "Two of the outer engines didn't re-ignite for the landing burn, ran out of TEA/TEB igniters. "
  },
  {
    "core_serial": "B1044",
    "block": 4,
    "status": "lost",
    "original_launch": "2018-03-06T05:33:00.000Z",
    "original_launch_unix": 1520314380,
    "missions": [
      {
        "name": "Hispasat 30W-6",
        "flight": 57
      }
    ],
    "reuse_count": 0,
    "rtls_attempts": 0,
    "rtls_landings": 0,
    "asds_attempts": 0,
    "asds_landings": 0,
    "water_landing": false,
    "details": "Stage Expended"
  },
  {
    "core_serial": "B1045",
    "block": 4,
    "status": "lost",
    "original_launch": "2018-04-18T22:51:00.000Z",
    "original_launch_unix": 1524091860,
    "missions": [
      {
        "name": "TESS",
        "flight": 60
      },
      {
        "name": "CRS-15",
        "flight": 64
      }
    ],
    "reuse_count": 1,
    "rtls_attempts": 0,
    "rtls_landings": 0,
    "asds_attempts": 1,
    "asds_landings": 1,
    "water_landing": false,
    "details": "Stage Expended"
  },
  {
    "core_serial": "B1046",
    "block": 5,
    "status": "lost",
    "original_launch": "2018-05-11T20:14:00.000Z",
    "original_launch_unix": 1526069640,
    "missions": [
      {
        "name": "Bangabandhu-1",
        "flight": 61
      },
      {
        "name": "Merah Putih",
        "flight": 67
      },
      {
        "name": "SSO-A",
        "flight": 71
      },
      {
        "name": "Crew Dragon In Flight Abort Test",
        "flight": 88
      }
    ],
    "reuse_count": 3,
    "rtls_attempts": 0,
    "rtls_landings": 0,
    "asds_attempts": 3,
    "asds_landings": 3,
    "water_landing": false,
    "details": "Stage Expended"
  },
  {
    "core_serial": "B1047",
    "block": 5,
    "status": "lost",
    "original_launch": "2018-07-22T05:50:00.000Z",
    "original_launch_unix": 1532238600,
    "missions": [
      {
        "name": "Telstar 19V",
        "flight": 65
      },
      {
        "name": "Es’hail 2",
        "flight": 70
      },
      {
        "name": "Amos-17",
        "flight": 83
      }
    ],
    "reuse_count": 2,
    "rtls_attempts": 0,
    "rtls_landings": 0,
    "asds_attempts": 2,
    "asds_landings": 2,
    "water_landing": false,
    "details": "Stage Expended"
  },
  {
    "core_serial": "B1048",
    "block": 5,
    "status": "lost",
    "original_launch": "2018-07-25T11:39:26.000Z",
    "original_launch_unix": 1532518766,
    "missions": [
      {
        "name": "Iridium NEXT Mission 7",
        "flight": 66
      },
      {
        "name": "SAOCOM 1A",
        "flight": 69
      },
      {
        "name": "Nusantara Satu (PSN-6) / S5 / Beresheet",
        "flight": 75
      },
      {
        "name": "Starlink 1",
        "flight": 84
      },
      {
        "name": "Starlink 5",
        "flight": 92
      }
    ],
    "reuse_count": 4,
    "rtls_attempts": 1,
    "rtls_landings": 1,
    "asds_attempts": 4,
    "asds_landings": 3,
    "water_landing": false,
    "details": "Landing burn not performed after premature engine shutdown during ascent"
  },
  {
    "core_serial": "B1049",
    "block": 5,
    "status": "unknown",
    "original_launch": "2018-09-10T04:45:00.000Z",
    "original_launch_unix": 1536554700,
    "missions": [
      {
        "name": "Telstar 18V",
        "flight": 68
      },
      {
        "name": "Iridium NEXT Mission 8",
        "flight": 74
      },
      {
        "name": "Starlink v0.9",
        "flight": 79
      },
      {
        "name": "Starlink 2",
        "flight": 87
      },
      {
        "name": "Starlink 7",
        "flight": 95
      }
    ],
    "reuse_count": 4,
    "rtls_attempts": 0,
    "rtls_landings": 0,
    "asds_attempts": 5,
    "asds_landings": 5,
    "water_landing": false,
    "details": "Returning to the Cape after JRTI recovery as of Jun 10, 2020. "
  },
  {
    "core_serial": "B1050",
    "block": 5,
    "status": "inactive",
    "original_launch": "2018-12-05T18:16:00.000Z",
    "original_launch_unix": 1544033760,
    "missions": [
      {
        "name": "CRS-16",
        "flight": 72
      }
    ],
    "reuse_count": 0,
    "rtls_attempts": 1,
    "rtls_landings": 0,
    "asds_attempts": 0,
    "asds_landings": 0,
    "water_landing": true,
    "details": "Towed to Port of Canaveral; cannibalized for parts to build Starhopper. "
  },
  {
    "core_serial": "B1054",
    "block": 5,
    "status": "lost",
    "original_launch": "2018-12-23T13:51:00.000Z",
    "original_launch_unix": 1545573060,
    "missions": [
      {
        "name": "GPS III SV01",
        "flight": 73
      }
    ],
    "reuse_count": 0,
    "rtls_attempts": 0,
    "rtls_landings": 0,
    "asds_attempts": 0,
    "asds_landings": 0,
    "water_landing": false,
    "details": "Stage Expended"
  },
  {
    "core_serial": "B1051",
    "block": 5,
    "status": "active",
    "original_launch": "2019-03-02T07:45:00.000Z",
    "original_launch_unix": 1551512700,
    "missions": [
      {
        "name": "CCtCap Demo Mission 1",
        "flight": 76
      },
      {
        "name": "RADARSAT Constellation",
        "flight": 80
      },
      {
        "name": "Starlink 3",
        "flight": 89
      },
      {
        "name": "Starlink 6",
        "flight": 93
      }
    ],
    "reuse_count": 3,
    "rtls_attempts": 1,
    "rtls_landings": 1,
    "asds_attempts": 3,
    "asds_landings": 3,
    "water_landing": false,
    "details": "At LC-39A awaiting launch."
  },
  {
    "core_serial": "B1052",
    "block": 5,
    "status": "unknown",
    "original_launch": "2019-04-11T22:35:00.000Z",
    "original_launch_unix": 1555022100,
    "missions": [
      {
        "name": "ArabSat 6A",
        "flight": 77
      },
      {
        "name": "STP-2",
        "flight": 81
      }
    ],
    "reuse_count": 1,
    "rtls_attempts": 2,
    "rtls_landings": 2,
    "asds_attempts": 0,
    "asds_landings": 0,
    "water_landing": false,
    "details": "Landed at LZ-1 as of Jun 25, 2019. "
  },
  {
    "core_serial": "B1053",
    "block": 5,
    "status": "unknown",
    "original_launch": "2019-04-11T22:35:00.000Z",
    "original_launch_unix": 1555022100,
    "missions": [
      {
        "name": "ArabSat 6A",
        "flight": 77
      },
      {
        "name": "STP-2",
        "flight": 81
      }
    ],
    "reuse_count": 1,
    "rtls_attempts": 2,
    "rtls_landings": 2,
    "asds_attempts": 0,
    "asds_landings": 0,
    "water_landing": false,
    "details": "Landed at LZ-2 as of Jun 25, 2019. "
  },
  {
    "core_serial": "B1055",
    "block": 5,
    "status": "lost",
    "original_launch": "2019-04-11T22:35:00.000Z",
    "original_launch_unix": 1555022100,
    "missions": [
      {
        "name": "ArabSat 6A",
        "flight": 77
      }
    ],
    "reuse_count": 0,
    "rtls_attempts": 0,
    "rtls_landings": 0,
    "asds_attempts": 1,
    "asds_landings": 1,
    "water_landing": false,
    "details": "Toppled by rough seas and broken in two after safely landing aboard OCISLY"
  },
  {
    "core_serial": "B1056",
    "block": 5,
    "status": "lost",
    "original_launch": "2019-05-04T06:48:00.000Z",
    "original_launch_unix": 1556952480,
    "missions": [
      {
        "name": "CRS-17",
        "flight": 78
      },
      {
        "name": "CRS-18",
        "flight": 82
      },
      {
        "name": "JCSat 18 / Kacific 1",
        "flight": 86
      },
      {
        "name": "Starlink 4",
        "flight": 90
      }
    ],
    "reuse_count": 3,
    "rtls_attempts": 1,
    "rtls_landings": 1,
    "asds_attempts": 3,
    "asds_landings": 2,
    "water_landing": false,
    "details": "Missed the droneship and made successful water landing; apparently scuttled at sea afterward. "
  },
  {
    "core_serial": "B1057",
    "block": 5,
    "status": "lost",
    "original_launch": "2019-06-25T03:30:00.000Z",
    "original_launch_unix": 1561433400,
    "missions": [
      {
        "name": "STP-2",
        "flight": 81
      }
    ],
    "reuse_count": 0,
    "rtls_attempts": 0,
    "rtls_landings": 0,
    "asds_attempts": 1,
    "asds_landings": 0,
    "water_landing": false,
    "details": "Exploded upon ocean impact a safe distance from OCISLY"
  },
  {
    "core_serial": "B1059",
    "block": 5,
    "status": "unknown",
    "original_launch": "2019-12-05T17:29:23.000Z",
    "original_launch_unix": 1575566963,
    "missions": [
      {
        "name": "CRS-19",
        "flight": 85
      },
      {
        "name": "CRS-20",
        "flight": 91
      },
      {
        "name": "Starlink-8 & SkySat 16-18",
        "flight": 96
      }
    ],
    "reuse_count": 2,
    "rtls_attempts": 1,
    "rtls_landings": 1,
    "asds_attempts": 2,
    "asds_landings": 2,
    "water_landing": false,
    "details": "Landed on OCISLY as of Jun 13, 2020 "
  },
  {
    "core_serial": "B1058",
    "block": 5,
    "status": "active",
    "original_launch": "2020-05-30T19:22:00.000Z",
    "original_launch_unix": 1590866520,
    "missions": [
      {
        "name": "CCtCap Demo Mission 2",
        "flight": 94
      }
    ],
    "reuse_count": 0,
    "rtls_attempts": 0,
    "rtls_landings": 0,
    "asds_attempts": 1,
    "asds_landings": 1,
    "water_landing": false,
    "details": "At LC-39A awaiting launch."
  },
  {
    "core_serial": "B1060",
    "block": 5,
    "status": "unknown",
    "original_launch": "2020-06-30T19:55:00.000Z",
    "original_launch_unix": 1593546900,
    "missions": [
      {
        "name": "GPS III SV03 (Columbus)",
        "flight": 97
      }
    ],
    "reuse_count": 0,
    "rtls_attempts": 0,
    "rtls_landings": 0,
    "asds_attempts": 1,
    "asds_landings": 1,
    "water_landing": false,
    "details": "Landed on JRTI as of Jun 30, 2020. "
  }
]
"""

let singleCorePreviewString = """


    "core_serial": "B1046",
    "block": 5,
    "status": "lost",
    "original_launch": "2018-05-11T20:14:00.000Z",
    "original_launch_unix": 1526069640,
    "missions": [
      {
        "name": "Bangabandhu-1",
        "flight": 61
      },
      {
        "name": "Merah Putih",
        "flight": 67
      },
      {
        "name": "SSO-A",
        "flight": 71
      },
      {
        "name": "Crew Dragon In Flight Abort Test",
        "flight": 88
      }
    ],
    "reuse_count": 3,
    "rtls_attempts": 0,
    "rtls_landings": 0,
    "asds_attempts": 3,
    "asds_landings": 3,
    "water_landing": false,
    "details": "Stage Expended"
  }

"""

let Preview = try! Launches(previewJSON)
let CorePreview = try! Cores(singleCorePreviewString)
