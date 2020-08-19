//
//  accueil.swift
//  morphion
//
//  Created by claire on 10/08/2020.
//  Copyright © 2020 claire. All rights reserved.
//

import SwiftUI

struct accueil: View {
    var body: some View {
        NavigationView {
     
      ZStack {
        Image("plage")
        .resizable()
        .edgesIgnoringSafeArea(.all)
         .opacity(0.82)
        
        VStack {
          
            Spacer()
            HStack {
                Text ("TIC TAC TOE")
                    .font(.largeTitle)
                    .fontWeight(.heavy)
            }
            Spacer()
            
            Spacer()
            HStack {
                
                NavigationLink(destination: ContentView()){
                Text ("   1 PLAYER   ")
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .padding()
                    .background(Color.white)
                    .cornerRadius(30)
                    .opacity(0.85)
                }
            }
            Spacer()
            HStack {
                
                NavigationLink(destination: jouerAvecOrdi()){
                Text ("   2 PLAYERS   ")
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .padding()
                    .background(Color.white)
                    .cornerRadius(30)
                    .opacity(0.85)
                }
            }
            
           
           Spacer()
           Spacer()
            Spacer()
        } // VStack
        
            
        } // ZStack
        } .navigationBarTitle("accueil")
    } //accueil view
} // body View

struct accueil_Previews: PreviewProvider {
    static var previews: some View {
        accueil()
    }
}
