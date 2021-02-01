//
//  ContentView.swift
//  Shared
//
//  Created by dodi on 2021/02/01.
//

import SwiftUI

struct ContentView: View {
    var body: some View {

        ZStack {
                        
            VStack {
                
                Spacer()
                
                Text("SwiftUI Slots !")
                    .font(.largeTitle)
                    
                Spacer()
                
                HStack {
                    Text("Credits:")
                        .fontWeight(.thin)
                    Text(String(1000))
                }
                
                Spacer()
                
                HStack{
                    Spacer()
                    Image("apple").resizable().aspectRatio(contentMode: .fit)
                    Spacer()
                    Image("cherry").resizable().aspectRatio(contentMode: .fit)
                    Spacer()
                    Image("star").resizable().aspectRatio(contentMode: .fit)
                    Spacer()
                    
                }
            
                
                Spacer()
                
                Button("Spin") {
                    
                    print("Button is clicked")
                    
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
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
