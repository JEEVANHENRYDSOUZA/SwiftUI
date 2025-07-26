//
//  ContentView.swift
//  testiu
//
//  Created by Jeevan Henry Dsouza on 2025-07-25.
//

import SwiftUI

struct HeaderVew:View{
    var title : String
    var subtitle : String?
    var desc  : String?
    
    var body: some View{
        
        
        VStack(alignment:.center,spacing:20){
            Text(title).font(.largeTitle)

            
            
            
            
            
            if let subtitle = subtitle{
                
                
                Text(subtitle)
                    .font(.subheadline).foregroundStyle(.gray)
            }
            
            
            if let desc = desc{
                
                
                Text(desc)
                    .padding().frame(maxWidth:.infinity).background(.yellow)
            }
        }.font(.title)
    }
}


struct ContentView: View {
    
    @State private var teams = Data()
    var body: some View {
        VStack(spacing:10){
        HeaderVew(title: "LazyVStack", subtitle: "With ScrollView", desc: "The LazyVstack is best used with many views scroll of the screen.\"Lazy\" means that the views will only be created when they are visible on screen.")
            
            ScrollView{
                LazyVStack(spacing:5,pinnedViews: [.sectionFooters,.sectionHeaders]){
                   
                        
                        Section{
                            ForEach(teams.getTeams(),id:\.self){team in
                                
                                Image(systemName: team).resizable().frame(width: 300, height: 300).padding()
                                
                            }.border(.blue)
                            
                        }header: {
                            HStack{
                                Text("This is header").font(.largeTitle)
                                Image(systemName: "1.square.fill").font(.largeTitle)
                            }.frame(width:300,height:70).background(Rectangle().fill(Color.yellow)
                            )
                            
                        }footer:{
                            HStack{
                                Text("This is Footer").font(.largeTitle)
                                Image(systemName: "1.square.fill").font(.largeTitle)
                            }.frame(width:300,height:70).background(Rectangle().fill(Color.yellow)
                            )
                        }
                        
                    }
                }
            }
        }
    }

#Preview {
    ContentView()
}
