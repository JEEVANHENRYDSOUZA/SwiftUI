struct ContentView: View {
    
    
    var body: some View {
        ZStack{
            Color.gray.ignoresSafeArea()

            VStack(spacing: 30){
                Text("Zstack").font(.largeTitle)
                Text("Introduction").foregroundStyle(.white)
                Text("Zstack are great for setting a background color").frame(maxWidth:.infinity).padding().background(.green)
                Text("But notice the Color stops at the safe Areas(whit areas on top and bottm)").frame(maxWidth:.infinity).padding().background(.green)
                
                Spacer()
            }.font(.title)
        }    }
}

#Preview {
    ContentView()
}
