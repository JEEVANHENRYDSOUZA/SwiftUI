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




struct DescView:View{
    
    var desc:String
    var back:Color = .primary
    var body: some View{
        Text(desc)
            .padding().frame(maxWidth:.infinity).background(back).font(.title)
    }
}


struct ContentView: View {
    
    var body: some View {
        VStack(spacing:20){
            HeaderVew(title: "Hstack", subtitle: "First & Last Baseline Alignment", desc: "The firstbaseline will align  the bottm of the text on the frst lines ",back:.orange)
            HStack(alignment:.firstTextBaseline){
                Text("Amazing Developer")
                Text("Really amazing developer").font(.largeTitle)
            }
            
            DescView( desc: "The lastbaseline will align  the bottm of the text on the frst last ",back: .orange)
            
            HStack(alignment:.lastTextBaseline){
                Text("Amazing Developer")
                Text("Really amazing developer").font(.largeTitle)
            }
        }
    }
}

#Preview {
    ContentView()
}
