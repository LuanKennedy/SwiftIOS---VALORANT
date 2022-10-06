//
//  Agent.swift
//  ValorantReference
//
//  Created by Aluno Mack on 03/10/22.
//

import Foundation

struct Agent:Hashable{
    let name: String
    let type: AgentType
    let origin: String
    let abilities: [String]
}

enum AgentType:String{
    case controller = "Controller"
    case sentinel = "Sentinel"
    case initiator = "Initiator"
    case duelist = "Duelist"
}
