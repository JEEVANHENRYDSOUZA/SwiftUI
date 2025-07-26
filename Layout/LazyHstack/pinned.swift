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
                    .padding().frame(maxWidth:.infinity).background(back)
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
        }.frame(width:75,height:75).background(Rectangle().fill(Color.yellow).opacity(0.9))
    }
}

struct DescView:View{
    
    var desc:String
    var back:Color = .primary
    var body: some View{
        Text(desc)
            .padding().frame(maxWidth:.infinity).background(back).font(.title)
    }
}


struct ContentView: View {
    
    @State private var whatAppeared = ""
    
    var body: some View {
        VStack{
            HeaderVew(title: "LazyHStack",desc: "The lazyHstack is best used with many views that scroll off the screen.\"Lazy\" ",back: .orange)
        }
        
        Spacer()
        
        ScrollView(.horizontal){
            LazyHStack(spacing:20,pinnedViews: [.sectionFooters,.sectionHeaders]) {
                Section{
                    ForEach(0..<11){
                        item in
                        Image(systemName: "\(item).circle")
                    }
                    
                }header: {
                    TeamHeader()
                }footer: {
                    TeamFooter()
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
