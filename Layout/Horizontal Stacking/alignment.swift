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


struct ContentView: View {
    
    var body: some View {
        
        HeaderVew(title: "Hstack", subtitle: "Veritcal Alignment", desc: "By default views in hstack are center alugned in veritcal direction",back:.orange)
       
        HStack{
            
            Rectangle().foregroundStyle(.orange).frame(width:25)
            Text("Leading")
            Spacer()
            Text("Trailing")
            Spacer()
            Text("Center").padding(.trailing)
        }.border(Color.orange)
        HStack(alignment:.top){
            Rectangle().foregroundStyle(.orange).frame(width:25)
            Text("Leading")
            Spacer()
            Text("Trailing")
            Spacer()
            Text("Center").padding(.trailing)
        }.border(Color.orange)
        HStack(alignment:.bottom){
            Rectangle().foregroundStyle(.orange).frame(width:25)
            Text("Leading")
            Spacer()
            Text("Trailing")
            Spacer()
            Text("Center").padding(.trailing)
        }
        .border(Color.orange)
    }
    
}

#Preview {
    ContentView()
}
