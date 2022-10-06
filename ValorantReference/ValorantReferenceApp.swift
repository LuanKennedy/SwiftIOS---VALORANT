//
//  ValorantReferenceApp.swift
//  ValorantReference
//
//  Created by Luan Kennedy on 06/10/22.
//

import SwiftUI

@main
struct ValorantReferenceApp: App {
    var agents: [Agent] = [
        Agent(name: "Brimstone", type: .controller, origin: "United States", abilities: ["Incendiary",
                                                                                         "Stim Beacon",
                                                                                         "Sky Smoke",
                                                                                         "Orbital Strike"]),
        Agent(name: "Viper", type: .controller, origin: "United States", abilities: ["Snake Bite",
                                                                                     "Poison Cloud",
                                                                                     "Toxic Screen",
                                                                                     "Viper's Pit"]),
        Agent(name: "Omen", type: .controller, origin: "Unknown", abilities: ["Shrouded Step",
                                                                              "Paranoia",
                                                                              "Dark Cover",
                                                                              "From the Shadows"]),
        Agent(name: "Killjoy", type: .sentinel, origin: "Germany", abilities: ["Alarmbot",
                                                                               "Nanoswarm",
                                                                               "Turret",
                                                                               "Lockdown"]),
        Agent(name: "Cypher", type: .sentinel, origin: "Morocco", abilities: ["Trapwire",
                                                                              "Cyber Cage",
                                                                              "Spycam",
                                                                              "Neural Theft"]),
        Agent(name: "Sova", type: .initiator, origin: "Russia", abilities: ["Owl Drone",
                                                                            "Shock Bolt",
                                                                            "Recon Bolt",
                                                                            "Hunter's Fury"]),
        Agent(name: "Sage", type: .sentinel, origin: "China", abilities: ["Barrier Orb",
                                                                          "Slow Orb",
                                                                          "Healing Orb",
                                                                          "Resurrection"]),
        Agent(name: "Phoenix", type: .duelist, origin: "United Kingdom", abilities: ["Blaze",
                                                                                     "Curveball",
                                                                                     "Hot Hands",
                                                                                     "Run it Back"]),
        Agent(name: "Jett", type: .duelist, origin: "South Korea", abilities: ["Cloudburst",
                                                                               "Updraft",
                                                                               "Tailwind",
                                                                               "Blade Storm"]),
        Agent(name: "Reyna", type: .duelist, origin: "Mexico", abilities: ["Leer",
                                                                           "Devour",
                                                                           "Dismiss",
                                                                           "Empress"]),
        Agent(name: "Raze", type: .duelist, origin: "Brazil", abilities: ["Boom Bot",
                                                                          "Blast Pack",
                                                                          "Paint Shells",
                                                                          "Showstopper"]),
        Agent(name: "Breach", type: .initiator, origin: "Sweden", abilities: ["Aftershock",
                                                                              "Flashpoint",
                                                                              "Fault Line",
                                                                              "Rolling Thunder"]),
        Agent(name: "Skye", type: .initiator, origin: "Australia", abilities: ["Regrowth",
                                                                               "Trailblazer",
                                                                               "Guiding Light",
                                                                               "Seekers"]),
        Agent(name: "Yoru", type: .duelist, origin: "Japan", abilities: ["Fakeout",
                                                                         "Blindside",
                                                                         "Gatecrash",
                                                                         "Dimensional Drift"]),
        Agent(name: "Astra", type: .controller, origin: "Ghana", abilities: ["Gravity Well",
                                                                             "Nova Pulse",
                                                                             "Nebula/Dissipate",
                                                                             "Astral Form"]),
        Agent(name: "KAYO", type: .initiator, origin: "AT Earth", abilities: ["FRAG/ment",
                                                                              "FLASH/drive",
                                                                              "ZERO/point",
                                                                              "NULL/cmd"]),
        Agent(name: "Chamber", type: .sentinel, origin: "France", abilities: ["Trademark",
                                                                              "Headhunter",
                                                                              "Rendezvous",
                                                                              "Tour De Force"]),
        Agent(name: "Neon", type: .duelist, origin: "Philippines", abilities: ["Fast Lane",
                                                                               "Relay Bolt",
                                                                               "High Gear",
                                                                               "Overdrive"]),
        Agent(name: "Fade", type: .initiator, origin: "Turkey", abilities: ["Prowler",
                                                                            "Seize",
                                                                            "Haunt",
                                                                            "Nightfall"])
        
    ]
    var body: some Scene {
        WindowGroup {
            NavigationStack{
                ContentView(agents: agents)
            }
        }
    }
}
