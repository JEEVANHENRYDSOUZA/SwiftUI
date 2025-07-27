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


struct ContentView: View {
    
    @State private var data = [10,20,30,40,50]
    @State private var color: Color = .blue
    @State private var datee = Date()
    @State private var disclosure:Bool=false
    @State private var sunExpanded: Bool = false
    var body: some View {
        
        VStack{
            HeaderVew(title:"List",subtitle: "Static Data",desc: "You can shaw stativ views or data withing the List view.It does dont have to be bound with data",back:.green)
            
            List{
                Text("Line One")
                Text("Line two")
                Text("Line Three")
                Image("Image").resizable().frame(width:100,height:100)
                Button(action: {}){
                    Text("Click Here").foregroundStyle(.green)
                    HStack{
                        Spacer()
                        Text("Centerd Text")
                        Spacer()
                    }.padding()
                }
            }.font(.title)
                
        
        }
        
    }
    
    
    
    
    
}//list view is only veritcal scrollable







#Preview {
    ContentView()
}
