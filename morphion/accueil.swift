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
                Text ("   1 PLAYER   ")
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .padding()
                    .background(Color.white)
                    .cornerRadius(30)
                    .opacity(0.85)
            }
            Spacer()
            
            HStack {
                Text ("   2 PLAYERS   ")
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .padding()
                    .background(Color.white)
                    .cornerRadius(30)
                    .opacity(0.85)
            }
            
           
            Spacer()
        } // VStack
        
        
        } // ZStack
    } //accueil view
} // body View

struct accueil_Previews: PreviewProvider {
    static var previews: some View {
        accueil()
    }
}
