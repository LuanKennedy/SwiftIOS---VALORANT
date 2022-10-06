//
//  ContentView.swift
//  ValorantReference
//
//  Created by Luan Kennedy on 06/10/22.
//

import SwiftUI

struct ContentView: View {
    var agents: [Agent]
    
    var body: some View {
        List(agents, id: \.self) {
            agent in
            NavigationLink {
                AgentDetailView(agent: agent)
            } label: {
                Label{
                    Text(agent.name)
                }icon: {
                    Image(agent.name + "_Icon")
                        .resizable()
                        .frame(width: 50, height: 50)
                }
            }
        }
        .navigationTitle("Agents")
    }
}

struct AgentDetailView:View{
    var agent: Agent
    var body: some View{
        
        VStack{
            ZStack{
                Image(agent.origin.replacing(" ", with:"_"))
                    .resizable()
                    .aspectRatio(CGSize(width: 16, height: 10), contentMode: .fit)
                    .frame(height: 250)
                CircleImageView(path: agent.name.replacing(" ", with:"_") + "_Icon")
                    .frame(width: 200, height: 200)
                    .offset(y: 100)
            }
            .padding(.top, 50)
            .padding(.bottom, 100)
            VStack{
                Label {
                    Text(agent.type.rawValue)
                } icon: {
                    Image(agent.type.rawValue)
                        .resizable()
                        .renderingMode(.template)
                        .frame(width: 50, height: 50)
                }
                List(agent.abilities, id:\.self){
                    ability in
                    Label {
                        Text(ability)
                    } icon: {
                        Image(ability.replacing(" ", with:"_").replacing("/", with: "-"))
                            .resizable()
                            .renderingMode(.template)
                            .foregroundColor(.primary)
                            .frame(width:50, height: 50)
                    }

                }
                .listStyle(.inset)
                .scrollDisabled(true)
            }
            .ignoresSafeArea(edges: [.top])
            .navigationTitle(agent.name)
            .navigationBarTitleDisplayMode(.inline)
            .toolbarBackground(.visible, for: .navigationBar)

        }
    }
}

struct CircleImageView:View{
    var path: String
    var body: some View{
        ZStack{
            Color.white
            Image(path)
                .resizable()
                .aspectRatio(1, contentMode: .fit)
        }
        .clipShape(Circle())
        .overlay{
            Circle().stroke(.white, lineWidth: 4)
        }
        .shadow(radius: 7)
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack{
            ContentView(agents:[Agent(name: "Astra", type:.controller, origin: "Ghana", abilities: ["Incendiary", "Stim Beacon"])])
        }
    }
}
