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
    @State var A3 = ""
    @State var B1 = ""
    @State var B2 = ""
    @State var B3 = ""
    @State var C1 = ""
    @State var C2 = ""
    @State var C3 = ""
    @State var turn = "hare.fill"
    @State var gagnant = ""
        
    @State var scorePlayer1 = 0
    @State var scorePlayer2 = 0
    
    
    var body: some View {
        NavigationView {
    
        ZStack {
            Image("plage")
            .resizable()
            .edgesIgnoringSafeArea(.all)
             .opacity(0.82)
            
            Path { path in
                path.move(to: CGPoint(x: 132, y: 160))
                path.addLine(to: CGPoint(x: 132, y: 500))
                
                path.move(to: CGPoint(x: 240, y: 160))
                path.addLine(to: CGPoint(x: 240, y: 500))
                
                path.move(to: CGPoint(x: 25, y: 270))
                path.addLine(to: CGPoint(x: 350, y: 270))
                
                path.move(to: CGPoint(x: 25, y: 380))
                path.addLine(to: CGPoint(x: 350, y: 380))
                
            }.stroke(Color.green, lineWidth: 6)
            Spacer().frame(height: 90)
            
            
           Text(gagnant)
            .font(.largeTitle)
            .fontWeight(.heavy)
            .foregroundColor(Color.red)
            .multilineTextAlignment(.center)
            .padding()
            .offset(y: 50)
            .offset(x: -20)
            .rotationEffect(Angle(degrees: -20))
            
    VStack {
        
     
       
 
        
        HStack {
            Text ("   New Game   ")
            .font(.headline)
            .foregroundColor(Color.black)
            .fontWeight(.heavy)
            .padding()
            .background(Color.green)
            .cornerRadius(30)
            .opacity(0.8)
            .onTapGesture {
            self.A1 = ""
            self.A2 = ""
            self.A3 = ""
            self.B1 = ""
            self.B2 = ""
            self.B3 = ""
            self.C1 = ""
            self.C2 = ""
            self.C3 = ""
            self.gagnant = ""
            self.scorePlayer1 = 0
            self.scorePlayer2 = 0
            }
            }
        Spacer()
         
        // jeton (lapin,tortue)
            
        HStack {
            
            VStack{
               
            Text("Player 1")
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
            
        } // Hstack
    
    // case jeux x3
        HStack {
            
    //button A1
            
            Button(action: {
                if self.gagnant != "" {
                    //fait rien
                } else {
                
               if self.A1 == self.monTour1 || self.A1 == self.sonTour2 {
                   //fait rien
               } else {
                    if self.turn == self.monTour1 {
                        self.A1 = self.monTour1
                        self.turn = self.sonTour2
                    } else {
                        self.A1 = self.sonTour2
                        self.turn = self.monTour1
                    }
               }
             
                //to do for win
                
                if self.A1 == self.monTour1 && self.A2 == self.monTour1 && self.A3 == self.monTour1{
                    self.gagnant = "CONGRATULATION \(self.monTour1)YOU WON!"
                    self.scorePlayer1 += 1
                }
                
                if self.A1 == self.monTour1 && self.B1 == self.monTour1 && self.C1 == self.monTour1{
                    self.gagnant = "CONGRATULATION \(self.monTour1)YOU WON!"
                    self.scorePlayer1 += 1
                }
                
                if self.A1 == self.monTour1 && self.B2 == self.monTour1 && self.C3 == self.monTour1{
                    self.gagnant = "CONGRATULATION \(self.monTour1)YOU WON!"
                    self.scorePlayer1 += 1
                }
                
                if self.A1 == self.sonTour2 && self.A2 == self.sonTour2 && self.A3 == self.sonTour2{
                    self.gagnant = "CONGRATULATION \(self.sonTour2)YOU WON!"
                    self.scorePlayer2 += 1
                }
                              
                if self.A1 == self.sonTour2 && self.B1 == self.sonTour2 && self.C1 == self.sonTour2{
                    self.gagnant = "CONGRATULATION \(self.sonTour2)YOU WON!"
                    self.scorePlayer2 += 1
                }
                              
                if self.A1 == self.sonTour2 && self.B2 == self.sonTour2 && self.C3 == self.sonTour2{
                    self.gagnant = "CONGRATULATION \(self.sonTour2)YOU WON!"
                    self.scorePlayer2 += 1
                }
                    
                } // check gagnant existe

            }) {
            Image(A1)
                .frame(width: 100, height: 100)
                .foregroundColor(Color.black)
            }
            
            
    //button A2
            Button(action: {
                if self.gagnant != "" {
                    //fait rien
                } else {
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
                
                 //to do for win
                if self.A2 == self.monTour1 && self.A1 == self.monTour1 && self.A3 == self.monTour1{
                    self.gagnant = "CONGRATULATION \(self.monTour1)YOU WON!"
                    self.scorePlayer1 += 1
                }
                if self.A2 == self.monTour1 && self.B2 == self.monTour1 && self.C2 == self.monTour1{
                    self.gagnant = "CONGRATULATION \(self.monTour1)YOU WON!"
                    self.scorePlayer1 += 1
                }
                
                if self.A2 == self.sonTour2 && self.A1 == self.sonTour2 && self.A3 == self.sonTour2{
                    self.gagnant = "CONGRATULATION \(self.sonTour2)YOU WON!"
                    self.scorePlayer2 += 1
                    
                }
                
                if self.A2 == self.sonTour2 && self.B2 == self.sonTour2 && self.C2 == self.sonTour2{
                    self.gagnant = "CONGRATULATION \(self.sonTour2)YOU WON!"
                    self.scorePlayer2 += 1
                }
                } // check gagnant existe
                       }) {
            Image(A2)
                .frame(width: 100, height: 100)
                .foregroundColor(Color.black)
            }
            
    //button A3
            Button(action: {
                if self.gagnant != "" {
                    //fait rien
                } else {
                if self.A3 == self.monTour1 || self.A3 == self.sonTour2 {
                //fait rien
                } else {
                if self.turn == self.monTour1 {
                    self.A3 = self.monTour1
                    self.turn = self.sonTour2
                } else {
                    self.A3 = self.sonTour2
                    self.turn = self.monTour1
                }
                } //to do for win
                if self.A3 == self.monTour1 && self.A2 == self.monTour1 && self.A1 == self.monTour1{
                    self.gagnant = "CONGRATULATION \(self.monTour1)YOU WON!"
                    self.scorePlayer1 += 1
                }
                
                if self.A3 == self.monTour1 && self.B3 == self.monTour1 && self.C3 == self.monTour1{
                    self.gagnant = "CONGRATULATION \(self.monTour1)YOU WON!"
                    self.scorePlayer1 += 1
                }
                
                if self.A3 == self.monTour1 && self.B2 == self.monTour1 && self.C1 == self.monTour1{
                    self.gagnant = "CONGRATULATION \(self.monTour1)YOU WON!"
                    self.scorePlayer1 += 1
                }
                
                if self.A3 == self.sonTour2 && self.A2 == self.sonTour2 && self.A1 == self.sonTour2{
                    self.gagnant = "CONGRATULATION \(self.sonTour2)YOU WON!"
                    self.scorePlayer2 += 1
                }
                
                if self.A3 == self.sonTour2 && self.B3 == self.sonTour2 && self.C3 == self.sonTour2{
                    self.gagnant = "CONGRATULATION \(self.sonTour2)YOU WON!"
                    self.scorePlayer2 += 1
                }
                
                if self.A3 == self.sonTour2 && self.B2 == self.sonTour2 && self.C1 == self.sonTour2{
                    self.gagnant = "CONGRATULATION \(self.sonTour2)YOU WON!"
                    self.scorePlayer2 += 1
                }
                } // check gagnant existe
                   }) {
            Image(A3)
                .frame(width: 100, height: 100)
                .foregroundColor(Color.black)
        }
        } //HStack
           
        HStack {
    //button B1
             Button(action: {
                if self.gagnant != "" {
                    //fait rien
                } else {
                if self.B1 == self.monTour1 || self.B1 == self.sonTour2 {
                //fait rien
                } else {
                if self.turn == self.monTour1 {
                    self.B1 = self.monTour1
                    self.turn = self.sonTour2
                } else {
                    self.B1 = self.sonTour2
                    self.turn = self.monTour1
                }
                }
                
                //to do for win
                if self.B1 == self.monTour1 && self.B2 == self.monTour1 && self.B3 == self.monTour1{
                    self.gagnant = "CONGRATULATION \(self.monTour1)YOU WON!"
                    self.scorePlayer1 += 1
                }
                
                if self.B1 == self.monTour1 && self.A1 == self.monTour1 && self.C1 == self.monTour1{
                    self.gagnant = "CONGRATULATION \(self.monTour1)YOU WON!"
                    self.scorePlayer1 += 1
                }
                
                if self.B1 == self.sonTour2  && self.B2 == self.sonTour2  && self.B3 == self.sonTour2 {
                    self.gagnant = "CONGRATULATION \(self.sonTour2 )YOU WON!"
                    self.scorePlayer2 += 1
                    
                }
                               
                if self.B1 == self.sonTour2  && self.A1 == self.sonTour2  && self.C1 == self.sonTour2 {
                    self.gagnant = "CONGRATULATION \(self.sonTour2)YOU WON!"
                    self.scorePlayer2 += 1
                }
                } // check gagnant existe
                }) {
                Image(B1)
                    .frame(width: 100, height: 100)
                    .foregroundColor(Color.black)
                }
            
     //button B2
            Button(action: {
                if self.gagnant != "" {
                    //fait rien
                } else {
                if self.B2 == self.monTour1 || self.B2 == self.sonTour2 {//fait rien
                } else {
                if self.turn == self.monTour1 {
                    self.B2 = self.monTour1
                    self.turn = self.sonTour2
                } else {
                    self.B2 = self.sonTour2
                    self.turn = self.monTour1
                }
                }
                
                //to do for win
                if self.B2 == self.monTour1 && self.B1 == self.monTour1 && self.B3 == self.monTour1{
                    self.gagnant = "CONGRATULATION \(self.monTour1)YOU WON!"
                    self.scorePlayer1 += 1
                }
                
                if self.B2 == self.monTour1 && self.A2 == self.monTour1 && self.C2 == self.monTour1{
                    self.gagnant = "CONGRATULATION \(self.monTour1)YOU WON!"
                    self.scorePlayer1 += 1
                }
                
                if self.B2 == self.monTour1 && self.A1 == self.monTour1 && self.C3 == self.monTour1{
                    self.gagnant = "CONGRATULATION \(self.monTour1)YOU WON!"
                    self.scorePlayer1 += 1
                }
                
                if self.B2 == self.monTour1 && self.A3 == self.monTour1 && self.C1 == self.monTour1{
                    self.gagnant = "CONGRATULATION \(self.monTour1)YOU WON!"
                    self.scorePlayer1 += 1
                }
                
                if self.B2 == self.sonTour2 && self.B1 == self.sonTour2 && self.B3 == self.sonTour2{
                    self.gagnant = "CONGRATULATION \(self.sonTour2)YOU WON!"
                    self.scorePlayer2 += 1
                }
                
                if self.B2 == self.sonTour2 && self.A2 == self.sonTour2 && self.C2 == self.sonTour2{
                    self.gagnant = "CONGRATULATION \(self.sonTour2)YOU WON!"
                    self.scorePlayer2 += 1
                }
                
                if self.B2 == self.sonTour2 && self.A1 == self.sonTour2 && self.C3 == self.sonTour2{
                    self.gagnant = "CONGRATULATION \(self.sonTour2)YOU WON!"
                    self.scorePlayer2 += 1
                }
                
                if self.B2 == self.sonTour2 && self.A3 == self.sonTour2 && self.C1 == self.sonTour2{
                    self.gagnant = "CONGRATULATION \(self.sonTour2)YOU WON!"
                    self.scorePlayer2 += 1
                }
             } // check gagnant existe
                }) {
                Image(B2)
                    .frame(width: 100, height: 100)
                    .foregroundColor(Color.black)
                }
            
     //button B3
             Button(action: {
                if self.gagnant != "" {
                    //fait rien
                } else {
                if self.B3 == self.monTour1 || self.B3 == self.sonTour2
                {//fait rien
                } else {
                if self.turn == self.monTour1 {
                    self.B3 = self.monTour1
                    self.turn = self.sonTour2
                } else {
                    self.B3 = self.sonTour2
                    self.turn = self.monTour1
                }
                }
                
                //to do for win
                if self.B3 == self.monTour1 && self.B2 == self.monTour1 && self.B1 == self.monTour1{
                    self.gagnant = "CONGRATULATION \(self.monTour1)YOU WON!"
                    self.scorePlayer1 += 1
                }
                
                if self.B3 == self.monTour1 && self.A3 == self.monTour1 && self.C3 == self.monTour1{
                    self.gagnant = "CONGRATULATION \(self.monTour1)YOU WON!"
                    self.scorePlayer1 += 1
                }
                
                if self.B3 == self.sonTour2 && self.B2 == self.sonTour2 && self.B1 == self.sonTour2{
                    self.gagnant = "CONGRATULATION \(self.sonTour2)YOU WON!"
                    self.scorePlayer2 += 1
                }
                               
                if self.B3 == self.sonTour2 && self.A3 == self.sonTour2 && self.C3 == self.sonTour2{
                    self.gagnant = "CONGRATULATION \(self.sonTour2)YOU WON!"
                    self.scorePlayer2 += 1
                }
                } // check gagnant existe
                }) {
                Image(B3)
                    .frame(width: 100, height: 100)
                    .foregroundColor(Color.black)
                       }
        } //HStack
          
        HStack {
            
    //button C1
             Button(action: {
                if self.gagnant != "" {
                    //fait rien
                } else {
                if self.C1 == self.monTour1 || self.C1 == self.sonTour2 {//fait rien
                } else {
                if self.turn == self.monTour1 {
                    self.C1 = self.monTour1
                    self.turn = self.sonTour2
                } else {
                    self.C1 = self.sonTour2
                    self.turn = self.monTour1
                }
                }
                
                //to do for win
                if self.C1 == self.monTour1 && self.C2 == self.monTour1 && self.C3 == self.monTour1{
                    self.gagnant = "CONGRATULATION \(self.monTour1)YOU WON!"
                    self.scorePlayer1 += 1
                }
                
                if self.C1 == self.monTour1 && self.B1 == self.monTour1 && self.A1 == self.monTour1{
                    self.gagnant = "CONGRATULATION \(self.monTour1)YOU WON!"
                    self.scorePlayer1 += 1
                }
                
                if self.C1 == self.monTour1 && self.B2 == self.monTour1 && self.A3 == self.monTour1{
                    self.gagnant = "CONGRATULATION \(self.monTour1)YOU WON!"
                    self.scorePlayer1 += 1
                }
                
                if self.C1 == self.sonTour2 && self.C2 == self.sonTour2 && self.C3 == self.sonTour2{
                    self.gagnant = "CONGRATULATION \(self.sonTour2)YOU WON!"
                    self.scorePlayer2 += 1
                }
                
                if self.C1 == self.sonTour2 && self.B1 == self.sonTour2 && self.A1 == self.sonTour2{
                    self.gagnant = "CONGRATULATION \(self.sonTour2)YOU WON!"
                    self.scorePlayer2 += 1
                }
                
                if self.C1 == self.sonTour2 && self.B2 == self.sonTour2 && self.A3 == self.sonTour2{
                    self.gagnant = "CONGRATULATION \(self.sonTour2)YOU WON!"
                    self.scorePlayer2 += 1
                }
                } // check gagnant existe
                }) {
            Image(C1)
                .frame(width: 100, height: 100)
                .foregroundColor(Color.black)
            }
            
     //button C2
                
            Button(action: {
                if self.gagnant != "" {
                    //fait rien
                } else {
                if self.C2 == self.monTour1 || self.C2 == self.sonTour2 {//fait rien
                } else {
                if self.turn == self.monTour1 {
                    self.C2 = self.monTour1
                    self.turn = self.sonTour2
                } else {
                    self.C2 = self.sonTour2
                    self.turn = self.monTour1
                }
                }
                
                //to do for win
                if self.C2 == self.monTour1 && self.C1 == self.monTour1 && self.C3 == self.monTour1{
                    self.gagnant = "CONGRATULATION \(self.monTour1)YOU WON!"
                    self.scorePlayer1 += 1
                }
                
                if self.C2 == self.monTour1 && self.B2 == self.monTour1 && self.A2 == self.monTour1{
                    self.gagnant = "CONGRATULATION \(self.monTour1)YOU WON!"
                    self.scorePlayer1 += 1
                }
                
                if self.C2 == self.sonTour2 && self.C1 == self.sonTour2 && self.C3 == self.sonTour2{
                    self.gagnant = "CONGRATULATION \(self.sonTour2)YOU WON!"
                    self.scorePlayer2 += 1
                }
                
                if self.C2 == self.sonTour2 && self.B2 == self.sonTour2 && self.A2 == self.sonTour2{
                    self.gagnant = "CONGRATULATION \(self.sonTour2)YOU WON!"
                    self.scorePlayer2 += 1
                }
                } // check gagnant existe
                }) {
            Image(C2)
                .frame(width: 100, height: 100)
                .foregroundColor(Color.black)
            }
            
     //button C3
             Button(action: {
                if self.gagnant != "" {
                    //fait rien
                } else {
                if self.C3 == self.monTour1 || self.C3 == self.sonTour2 {//fait rien
                } else {
                if self.turn == self.monTour1 {
                    self.C3 = self.monTour1
                    self.turn = self.sonTour2
                } else {
                    self.C3 = self.sonTour2
                    self.turn = self.monTour1
                }
                }
                
                //to do for win
                if self.C3 == self.monTour1 && self.C2 == self.monTour1 && self.C1 == self.monTour1{
                    self.gagnant = "CONGRATULATION \(self.monTour1)YOU WON!"
                    self.scorePlayer1 += 1
                }
                
                if self.C3 == self.monTour1 && self.B3 == self.monTour1 && self.A3 == self.monTour1{
                    self.gagnant = "CONGRATULATION \(self.monTour1)YOU WON!"
                    self.scorePlayer1 += 1
                }
                
                if self.C3 == self.monTour1 && self.B2 == self.monTour1 && self.A1 == self.monTour1{
                    self.gagnant = "CONGRATULATION \(self.monTour1)YOU WON!"
                    self.scorePlayer1 += 1
                }
                
                if self.C3 == self.sonTour2 && self.C2 == self.sonTour2 && self.C1 == self.sonTour2{
                    self.gagnant = "CONGRATULATION \(self.sonTour2)YOU WON!"
                    self.scorePlayer2 += 1
                }
                
                if self.C3 == self.sonTour2 && self.B3 == self.sonTour2 && self.A3 == self.sonTour2{
                    self.gagnant = "CONGRATULATION \(self.sonTour2)YOU WON!"
                    self.scorePlayer2 += 1
                }
                
                if self.C3 == self.sonTour2 && self.B2 == self.sonTour2 && self.A1 == self.sonTour2{
                    self.gagnant = "CONGRATULATION \(self.sonTour2)YOU WON!"
                    self.scorePlayer2 += 1
                }
                } // check gagnant existe
                }) {
            Image(C3)
                .frame(width: 100, height: 100)
                .foregroundColor(Color.black)
            }
 
        } //HStack
        
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
  
    //boutton Reset
           Text("    RESET    ")
           
                .font(.headline)
                .foregroundColor(Color.black)
                .fontWeight(.heavy)
                .padding()
                .background(Color.green)
                .cornerRadius(30)
                .opacity(0.9)
            .onTapGesture {
                self.A1 = ""
                self.A2 = ""
                self.A3 = ""
                self.B1 = ""
                self.B2 = ""
                self.B3 = ""
                self.C1 = ""
                self.C2 = ""
                self.C3 = ""
                self.gagnant = ""
               
             }
            
        
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
    Spacer()
    Spacer()
       
// fin score et reset
   
        } //Vstack
            } //NavigationView {
        } //Zstack
    } //var view
} //Content view

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
