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
            HeaderVew(title:"Disclosure Group",subtitle: "Introduction",desc: "Use disclosure group when you want to expand or collapse views",back:.brown)
            
            VStack{
                DisclosureGroup("More Info"){
                    Text("Tap to open closed by default")
                }
                
                DisclosureGroup(content: {
                    Image("Image").resizable().frame(width:200,height:200)
                    Text("You can use another intialzer to customize")
                },label:{
                    Text("More Info 1").bold()
                }).tint(.orange)
                
                
                HStack {
                    DisclosureGroup(isExpanded: $disclosure) {
                        VStack {
                            DisclosureGroup("Sun", isExpanded: $sunExpanded) {
                                HStack(spacing: 40) {
                                    Image(systemName: "sunrise.fill")
                                    Image(systemName: "sun.min.fill")
                                    Image(systemName: "sun.max.fill")
                                    Image(systemName: "sunset.fill") // ✅ fixed typo
                                }
                                .padding(.vertical)
                            }
                            
                            DisclosureGroup("Clouds", isExpanded: $sunExpanded) {
                                HStack(spacing: 40) {
                                    Image(systemName: "clouds.fill")
                                    Image(systemName: "clouds.min.fill")
                                    Image(systemName: "clouds.max.fill")
                                    Image(systemName: "clouds.fill") // ✅ fixed typo
                                }
                                .padding(.vertical)
                            }
                            
                            
                            
                        }
                    } label: {
                        HStack (spacing:20){
                            Image(systemName: "sunrise")
                            Text("Weather")
                        }
                        
                        
                        
                        
                        
                        
                    }.padding().font(.title).background(RoundedRectangle(cornerRadius: 20).fill(Color.orange).opacity(0.1))
                }
                
                
            }
            
        }
        
    }
    
    
    
    
    
}







#Preview {
    ContentView()
}
