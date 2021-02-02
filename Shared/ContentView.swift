//
//  ContentView.swift
//  Shared
//
//  Created by dodi on 2021/02/01.
//

import SwiftUI

struct ContentView: View {
    
   @State var credits = 1000
   @State var slot1 = 1
   @State var slot2 = 1
   @State var slot3 = 1
    
    var body: some View {
        
        VStack(spacing:20.0) {
                
                Spacer()
                
                Text("SwiftUI Slots !")
                    .font(.largeTitle)
                    
                Spacer()
                
                HStack {
                    Text("Credits:")
                        .fontWeight(.thin)
                    Text(String(credits))
                }
                
                Spacer()
                
                HStack{
                    Spacer()
                    Image("fruit\(slot1)").resizable().aspectRatio(contentMode: .fit)
                    Spacer()
                    Image("fruit\(slot2)").resizable().aspectRatio(contentMode: .fit)
                    Spacer()
                    Image("fruit\(slot3)").resizable().aspectRatio(contentMode: .fit)
                    Spacer()
                    
                }
            
                
                Spacer()
                
                Button("Spin") {
                  
                    slot1 = Int.random(in: 1...3)
                    slot2 = Int.random(in: 1...3)
                    slot3 = Int.random(in: 1...3)
                    
                    if slot1 == slot2  && slot2 == slot3 {
                        credits+=15
                    }
                    else {
                        credits-=5
                    }
                    
                }
                .padding()
                .padding([.leading,.trailing],40.0)
                .background(Color.pink)
                .cornerRadius(25.0)
                .foregroundColor(.white)
                .font(.system(size: 30,weight: .bold, design: .default ))
                
                Spacer()
                
            }
        }
        
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
