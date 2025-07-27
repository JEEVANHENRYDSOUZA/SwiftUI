//
//  ContentView.swift
//  testiu
//
//  Created by Jeevan Henry Dsouza on 2025-07-25.
//

import SwiftUI
import Charts
struct HeaderVew:View{
    var title : String
    var subtitle : String?
    var desc  : String?
    var back : Color = .primary
    var body: some View{
        
        
        VStack(alignment:.center,spacing:20){
            Text(title).font(.largeTitle)
            
            
            
            
            
            
            if let subtitle = subtitle{
                
                
                Text(subtitle)
                    .font(.subheadline).foregroundStyle(.gray)
            }
            
            
            if let desc = desc{
                
                
                Text(desc)
                    .padding().frame(maxWidth:.infinity).background(back).foregroundStyle(.black)
            }
            
        }.font(.title)
    }
}

struct TeamHeader: View {
    var body: some View {
        VStack{
            Text("Team").font(.title2)
            Image(systemName: "1.square.fill")
        }.frame(width:75,height:75).background(Rectangle().fill(Color.yellow).opacity(0.9))
    }
}
struct TeamFooter: View {
    var body: some View {
        VStack{
            Text("Team").font(.title2)
            Image(systemName: "1.square.fill")
        }.frame(width:75,height:75).background(Rectangle().fill(Color.yellow).opacity(0.9)).foregroundStyle(.white)
    }
}

struct DescView:View{
    
    var desc:String
    var back:Color = .primary
    var body: some View{
        Text(desc)
            .padding().frame(maxWidth:.infinity).foregroundStyle(.white)
    }
}



struct customRow: View {
    var data:String
    var body: some View {
        HStack{
            Image(systemName: data)
            Text(data)
            Spacer()
        }.foregroundStyle(data == "person.circle" ? Color.green:Color.primary)
    }
}

struct ContentView: View {
    
    @State private var data:[String] = Data().getTeams()
    @State private var color: Color = .blue
    @State private var datee = Date()
    @State private var disclosure:Bool=false
    @State private var sunExpanded: Bool = false
    var body: some View {
        
        NavigationStack{
            
            ZStack{
                Color.green.opacity(0.25)
                Color.gray.opacity(0.25).ignoresSafeArea()
            }.navigationTitle("Navigation Stack Title").toolbarBackgroundVisibility(.visible,for:.navigationBar)
        }.font(.title)
        
    }
    
    //which ever color ignoresafearea is written that color is applied in the background
    //toolbar will reverse it back 
    
    
    
}







#Preview {
    ContentView()
}
