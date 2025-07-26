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
    var body: some View {
        VStack(spacing:10){
            
            HeaderVew(title: "LazyVStack", subtitle: "Introduction" , desc: "When using the LazyVStack by itself, you won't notice much of a difference from the Vstack")
            Text("LazyVstack")
            LazyVStack(alignment:.leading,spacing:10){
                Image(systemName: "1.circle")
                Image(systemName: "2.circle")
                Image(systemName: "3.circle")
            }.border(Color.red,width:2)
            LazyVStack(alignment:.trailing,spacing:10){
                Image(systemName: "1.circle")
                Image(systemName: "2.circle")
                Image(systemName: "3.circle")
            }.border(Color.red,width:2)
            VStack(spacing:10){
                Image(systemName: "1.circle")
                Image(systemName: "2.circle")
                Image(systemName: "3.circle")
            }.border(.red,width:2)
            Text("Notice the laszyvstyakc pushes out horziontally.(No spacers being used here)").frame(maxWidth:.infinity).padding().background(.yellow)
        }.font( .title)
    }
}

#Preview {
    ContentView()
}
