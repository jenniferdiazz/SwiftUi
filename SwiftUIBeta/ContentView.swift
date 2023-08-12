//
//  ContentView.swift
//  SwiftUIBeta
//
//  Created by Jennifer Diaz on 08-08-23.
//

import SwiftUI

struct ContentView: View {
    @State var counter: Int = 0
    var body: some View {
        VStack {
            VStack(alignment: .leading, spacing: 8) {
                Text("Siguiendo")
                    .font(.largeTitle)
                
                    .bold()
                Text("Canales recomendados")
                    .foregroundColor(.gray)
                HStack {
                    Rectangle()
                        .foregroundColor(.blue)
                    .frame(width: 118, height: 68)
                    VStack(alignment: .leading){
                        HStack {
                            Circle()
                                .foregroundColor(.blue)
                                .frame(width: 18, height: 18)
                            Text("username")
                                .font(.headline)
                        }
                        Text("streaming...")
                            .foregroundColor(.gray)
                        Text("Solo hablando")
                            .foregroundColor(.pink
                            )
                    }
                }
                
            }
            Text("suscribete")
                .font(.largeTitle)
                .bold()
                .foregroundColor(.red)
                .underline()
                .background(Color.black)
                .rotationEffect(.degrees(-20))
            HStack{
            Image("youtube")
                .renderingMode(.template)
                .resizable(resizingMode: .tile)
                .scaledToFit()
                .frame(width: 96, height: 68)
                .border(Color.blue)
                .foregroundColor(.purple)
            
                Image(systemName: "moon.stars.circle")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100)
                    .foregroundColor(.pink)
                VStack{
                    Text("counter \(counter)")
                    Button("incrementar valor"){
                        self.counter += 1
                        
                    }
                    
                    
                }
            }
            HStack{
                Label("hola probando label",
                systemImage: "hand.thumbsup.fill")
                .font(.largeTitle)
                .labelStyle(IconOnlyLabelStyle())
                
                Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua")
                
                    .underline()
                    .rotation3DEffect(Angle(degrees: 20), axis: (x:1, y:0, z:0))
                    .lineLimit(10)
                    .lineSpacing(10)
                    
                Text("hola mundo")
                    .font(.largeTitle)
                + Text("concadenacion")
                    .font(.body)
                
                
            }.padding()
            HStack{
                Text(Date(), style:  .date)
                Text(Date(), style:  .timer)
                Text(Date().addingTimeInterval(3600), style: .timer
                )
                Text(Date(), style: .time)
            }.padding()
            
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
