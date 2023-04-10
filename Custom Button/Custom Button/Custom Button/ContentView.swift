//
//  ContentView.swift
//  Custom Button
//
//  Created by Kavsoft on 08/10/19.
//  Copyright © 2019 Balaji. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        customButton()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct customButton : View {
    
    @State var count = 0
    
    var body : some View{
        
        
        ZStack{
            
            Button(action: {
                
                print("clicked")
                self.count += 1
                
            }) {
                
                Image(systemName: "bell.fill").resizable().frame(width: 30, height: 30)
            }
            .padding()
            .foregroundColor(Color.white)
            .background(Color.green)
            .clipShape(Circle())
            
            if count != 0{
                
            Text("\(count)").padding(6).background(Color.black).clipShape(Circle()).foregroundColor(.white).offset(x: 17, y: -25)
                
            }
            
            
        }.animation(.spring())
        
    }
}
