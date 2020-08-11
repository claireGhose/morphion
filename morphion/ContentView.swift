//
//  ContentView.swift
//  morphion
//
//  Created by claire on 05/08/2020.
//  Copyright © 2020 claire. All rights reserved.
//

import SwiftUI

struct ContentView: View {
   
    @State var monTour1 = "hare.fill"
    @State var sonTour2 = "tortoise"
    @State var A1 = ""
    @State var A2 = ""
    @State var turn = "hare.fill"
    
    @State var scorePlayer1 = 0
    @State var scorePlayer2 = 0
    
    
    var body: some View {
    
        ZStack {
            Image("plage")
            .resizable()
            .edgesIgnoringSafeArea(.all)
             .opacity(0.82)
            
            Path { path in
                path.move(to: CGPoint(x: 132, y: 220))
                path.addLine(to: CGPoint(x: 132, y: 540))
                
                path.move(to: CGPoint(x: 240, y: 220))
                path.addLine(to: CGPoint(x: 240, y: 540))
                
                path.move(to: CGPoint(x: 25, y: 330))
                path.addLine(to: CGPoint(x: 350, y: 330))
                
                path.move(to: CGPoint(x: 25, y: 430))
                path.addLine(to: CGPoint(x: 350, y: 430))
                
            }.stroke(Color.green, lineWidth: 6)
            
        
          
            
    VStack {
        
        Spacer().frame(height: 40)
        HStack {
            
            Text("TIC TAC TOE")
                .font(.largeTitle)
                .fontWeight(.heavy)
                .foregroundColor(Color.black)
        }
        Spacer().frame(height: 40)
           
        // jeton
            
        HStack {
            VStack{
            Text("player 1")
                .font(.title)
                .fontWeight(.heavy)
                .foregroundColor(Color.black)
                Image (systemName: monTour1)
                    
            }.padding()
              Spacer()
            VStack {
            Text("Player 2")
                .font(.title)
                .fontWeight(.heavy)
                .foregroundColor(Color.black)
            Image(systemName: sonTour2)
        }.padding()
        }
        Spacer()

            
            // case jeux x3
        HStack {
            
    //button A1
            
            Button(action: {
                if self.turn == self.monTour1 {
                    self.A1 = self.monTour1
                    self.turn = self.sonTour2
                } else {
                    self.A1 = self.sonTour2
                    self.turn = self.monTour1
                }
                
                //to do
            }) {
            Image(A1)
                .frame(width: 100, height: 100)
                
            }
    //button A2
            Button(action: {
                if self.A2 == self.monTour1 || self.A2 == self.sonTour2 {
                    //fait rien
                } else {
                
                           if self.turn == self.monTour1 {
                               self.A2 = self.monTour1
                               self.turn = self.sonTour2
                           } else {
                               self.A2 = self.sonTour2
                               self.turn = self.monTour1
                           }
                }
                           //to do
                       }) {
            Image(A2)
                .frame(width: 100, height: 100)
            }
    //button A3
            Text("A3")
                .frame(width: 100, height: 100)
               
        }
           
        HStack {
    //button B1
            Text("B1")
                .frame(width: 100, height: 100)
            
     //button B2
            Text("B2")
                .frame(width: 100, height: 100)
            
     //button B3
            Text("B3")
                .frame(width: 100, height: 100)
        }
          
        HStack {
            
    //button C1
            Text("C1")
                .frame(width: 100, height: 100)
            
     //button C2
            Text("C2")
                .frame(width: 100, height: 100)
            
     //button C3
            Text("C3")
                .frame(width: 100, height: 100)
 
        }
        
//fin case jeux
    
       Spacer()
        
// MARK : score, reset
        
        HStack {
            
            VStack {
                Text("SCORE")
                    .font(.headline)
                    .fontWeight(.heavy)
                    .foregroundColor(Color.black)
                Text (String(self.scorePlayer1))
                    .font(.title)
                    .fontWeight(.heavy)
                    .foregroundColor(Color.black)
            }.padding()
            
            Spacer()
            
            
            Text("  RESET  ")
                .font(.headline)
                .foregroundColor(Color.black)
                .fontWeight(.heavy)
                .padding()
                .background(Color.green)
                .cornerRadius(30)
                .opacity(0.9)
            Spacer()
            
            VStack {
                Text("SCORE")
                    .font(.headline)
                    .fontWeight(.heavy)
                    .foregroundColor(Color.black)
                Text (String(self.scorePlayer2))
                    .font(.title)
                    .fontWeight(.heavy)
                    .foregroundColor(Color.black)
            }.padding()
        
        } //HSack
       .padding()
      
// fin score et reset
       
           
   
        
        } //Vstack
        } //Zstack
    } //var view
} //Content view

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
