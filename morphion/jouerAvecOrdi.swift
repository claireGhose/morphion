//
//  jouerAvecOrdi.swift
//  morphion
//
//  Created by claire on 12/08/2020.
//  Copyright © 2020 claire. All rights reserved.
//

import SwiftUI

struct jouerAvecOrdi: View {
    
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
        @State var randomCase = ["A1", "A2", "A3", "B1", "B2", "B3", "C1", "C2", "C3"]
        @State var empty = ""
    
    
        @State var scorePlayer = 0
        @State var scoreComputer = 0
        
        
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
                self.scorePlayer = 0
                self.scoreComputer = 0
                }
            }
             Spacer()
            // jeton (lapin,tortue)
                
            HStack {
                
                VStack{
                   
                Text("  Player")
                    .font(.title)
                    .fontWeight(.heavy)
                    .foregroundColor(Color.black)
                    Image (systemName: monTour1)
                    
                    }.padding()
                   
                
          
                
                VStack {
                Text("        Computer")
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
                   if self.A1 == self.monTour1 || self.A1 == self.sonTour2 {
                    let indice = Int.random(in: 0...2)
                    self.sonTour2 = self.randomCase[indice]
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
                        self.scorePlayer += 1
                    }
                    
                    if self.A1 == self.monTour1 && self.B1 == self.monTour1 && self.C1 == self.monTour1{
                        self.gagnant = "CONGRATULATION \(self.monTour1)YOU WON!"
                        self.scorePlayer += 1
                    }
                    
                    if self.A1 == self.monTour1 && self.B2 == self.monTour1 && self.C3 == self.monTour1{
                        self.gagnant = "CONGRATULATION \(self.monTour1)YOU WON!"
                        self.scorePlayer += 1
                    }
                    
                    if self.A1 == self.sonTour2 && self.A2 == self.sonTour2 && self.A3 == self.sonTour2{
                        self.gagnant = "CONGRATULATION \(self.sonTour2)YOU WON!"
                        self.scoreComputer += 1
                    }
                                  
                    if self.A1 == self.sonTour2 && self.B1 == self.sonTour2 && self.C1 == self.sonTour2{
                        self.gagnant = "CONGRATULATION \(self.sonTour2)YOU WON!"
                        self.scoreComputer += 1
                    }
                                  
                    if self.A1 == self.sonTour2 && self.B2 == self.sonTour2 && self.C3 == self.sonTour2{
                        self.gagnant = "CONGRATULATION \(self.sonTour2)YOU WON!"
                        self.scoreComputer += 1
                    }

                }) {
                Image(A1)
                    .frame(width: 100, height: 100)
                    .foregroundColor(Color.black)
                }
                
                
        //button A2
                Button(action: {
                    if self.A2 == self.monTour1 || self.A2 == self.sonTour2 {
                        //fait rien
                        let indice = Int.random(in: 0...2)
                        self.sonTour2 = self.randomCase[indice]
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
                        self.scorePlayer += 1
                    }
                    if self.A2 == self.monTour1 && self.B2 == self.monTour1 && self.C2 == self.monTour1{
                        self.gagnant = "CONGRATULATION \(self.monTour1)YOU WON!"
                        self.scorePlayer += 1
                    }
                    
                    if self.A2 == self.sonTour2 && self.A1 == self.sonTour2 && self.A3 == self.sonTour2{
                        self.gagnant = "CONGRATULATION \(self.sonTour2)YOU WON!"
                        self.scoreComputer += 1
                        
                    }
                    
                    if self.A2 == self.sonTour2 && self.B2 == self.sonTour2 && self.C2 == self.sonTour2{
                        self.gagnant = "CONGRATULATION \(self.sonTour2)YOU WON!"
                        self.scoreComputer += 1
                    }
                    
                           }) {
                Image(A2)
                    .frame(width: 100, height: 100)
                    .foregroundColor(Color.black)
                }
                
        //button A3
                Button(action: {
                    if self.A3 == self.monTour1 || self.A3 == self.sonTour2 {
                    //fait rien
                        let indice = Int.random(in: 0...2)
                        self.sonTour2 = self.randomCase[indice]
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
                        self.scorePlayer += 1
                    }
                    
                    if self.A3 == self.monTour1 && self.B3 == self.monTour1 && self.C3 == self.monTour1{
                        self.gagnant = "CONGRATULATION \(self.monTour1)YOU WON!"
                        self.scorePlayer += 1
                    }
                    
                    if self.A3 == self.monTour1 && self.B2 == self.monTour1 && self.C1 == self.monTour1{
                        self.gagnant = "CONGRATULATION \(self.monTour1)YOU WON!"
                        self.scorePlayer += 1
                    }
                    
                    if self.A3 == self.sonTour2 && self.A2 == self.sonTour2 && self.A1 == self.sonTour2{
                        self.gagnant = "CONGRATULATION \(self.sonTour2)YOU WON!"
                        self.scoreComputer += 1
                    }
                    
                    if self.A3 == self.sonTour2 && self.B3 == self.sonTour2 && self.C3 == self.sonTour2{
                        self.gagnant = "CONGRATULATION \(self.sonTour2)YOU WON!"
                        self.scoreComputer += 1
                    }
                    
                    if self.A3 == self.sonTour2 && self.B2 == self.sonTour2 && self.C1 == self.sonTour2{
                        self.gagnant = "CONGRATULATION \(self.sonTour2)YOU WON!"
                        self.scoreComputer += 1
                    }
                    
                       }) {
                Image(A3)
                    .frame(width: 100, height: 100)
                    .foregroundColor(Color.black)
            }
            } //HStack
               
            HStack {
        //button B1
                 Button(action: {
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
                        self.scorePlayer += 1
                    }
                    
                    if self.B1 == self.monTour1 && self.A1 == self.monTour1 && self.C1 == self.monTour1{
                        self.gagnant = "CONGRATULATION \(self.monTour1)YOU WON!"
                        self.scorePlayer += 1
                    }
                    
                    if self.B1 == self.sonTour2  && self.B2 == self.sonTour2  && self.B3 == self.sonTour2 {
                        self.gagnant = "CONGRATULATION \(self.sonTour2 )YOU WON!"
                        self.scoreComputer += 1
                        
                    }
                                   
                    if self.B1 == self.sonTour2  && self.A1 == self.sonTour2  && self.C1 == self.sonTour2 {
                        self.gagnant = "CONGRATULATION \(self.sonTour2)YOU WON!"
                        self.scoreComputer += 1
                    }
                    
                    }) {
                    Image(B1)
                        .frame(width: 100, height: 100)
                        .foregroundColor(Color.black)
                    }
                
         //button B2
                Button(action: {
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
                        self.scorePlayer += 1
                    }
                    
                    if self.B2 == self.monTour1 && self.A2 == self.monTour1 && self.C2 == self.monTour1{
                        self.gagnant = "CONGRATULATION \(self.monTour1)YOU WON!"
                        self.scorePlayer += 1
                    }
                    
                    if self.B2 == self.monTour1 && self.A1 == self.monTour1 && self.C3 == self.monTour1{
                        self.gagnant = "CONGRATULATION \(self.monTour1)YOU WON!"
                        self.scorePlayer += 1
                    }
                    
                    if self.B2 == self.monTour1 && self.A3 == self.monTour1 && self.C1 == self.monTour1{
                        self.gagnant = "CONGRATULATION \(self.monTour1)YOU WON!"
                        self.scorePlayer += 1
                    }
                    
                    if self.B2 == self.sonTour2 && self.B1 == self.sonTour2 && self.B3 == self.sonTour2{
                        self.gagnant = "CONGRATULATION \(self.sonTour2)YOU WON!"
                        self.scoreComputer += 1
                    }
                    
                    if self.B2 == self.sonTour2 && self.A2 == self.sonTour2 && self.C2 == self.sonTour2{
                        self.gagnant = "CONGRATULATION \(self.sonTour2)YOU WON!"
                        self.scoreComputer += 1
                    }
                    
                    if self.B2 == self.sonTour2 && self.A1 == self.sonTour2 && self.C3 == self.sonTour2{
                        self.gagnant = "CONGRATULATION \(self.sonTour2)YOU WON!"
                        self.scoreComputer += 1
                    }
                    
                    if self.B2 == self.sonTour2 && self.A3 == self.sonTour2 && self.C1 == self.sonTour2{
                        self.gagnant = "CONGRATULATION \(self.sonTour2)YOU WON!"
                        self.scoreComputer += 1
                    }
                 
                    }) {
                    Image(B2)
                        .frame(width: 100, height: 100)
                        .foregroundColor(Color.black)
                    }
                
         //button B3
                 Button(action: {
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
                        self.scorePlayer += 1
                    }
                    
                    if self.B3 == self.monTour1 && self.A3 == self.monTour1 && self.C3 == self.monTour1{
                        self.gagnant = "CONGRATULATION \(self.monTour1)YOU WON!"
                        self.scorePlayer += 1
                    }
                    
                    if self.B3 == self.sonTour2 && self.B2 == self.sonTour2 && self.B1 == self.sonTour2{
                        self.gagnant = "CONGRATULATION \(self.sonTour2)YOU WON!"
                        self.scoreComputer += 1
                    }
                                   
                    if self.B3 == self.sonTour2 && self.A3 == self.sonTour2 && self.C3 == self.sonTour2{
                        self.gagnant = "CONGRATULATION \(self.sonTour2)YOU WON!"
                        self.scoreComputer += 1
                    }
                    
                    }) {
                    Image(B3)
                        .frame(width: 100, height: 100)
                        .foregroundColor(Color.black)
                           }
            } //HStack
              
            HStack {
                
        //button C1
                 Button(action: {
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
                        self.scorePlayer += 1
                    }
                    
                    if self.C1 == self.monTour1 && self.B1 == self.monTour1 && self.A1 == self.monTour1{
                        self.gagnant = "CONGRATULATION \(self.monTour1)YOU WON!"
                        self.scorePlayer += 1
                    }
                    
                    if self.C1 == self.monTour1 && self.B2 == self.monTour1 && self.A3 == self.monTour1{
                        self.gagnant = "CONGRATULATION \(self.monTour1)YOU WON!"
                        self.scorePlayer += 1
                    }
                    
                    if self.C1 == self.sonTour2 && self.C2 == self.sonTour2 && self.C3 == self.sonTour2{
                        self.gagnant = "CONGRATULATION \(self.sonTour2)YOU WON!"
                        self.scoreComputer += 1
                    }
                    
                    if self.C1 == self.sonTour2 && self.B1 == self.sonTour2 && self.A1 == self.sonTour2{
                        self.gagnant = "CONGRATULATION \(self.sonTour2)YOU WON!"
                        self.scoreComputer += 1
                    }
                    
                    if self.C1 == self.sonTour2 && self.B2 == self.sonTour2 && self.A3 == self.sonTour2{
                        self.gagnant = "CONGRATULATION \(self.sonTour2)YOU WON!"
                        self.scoreComputer += 1
                    }
                    
                    }) {
                Image(C1)
                    .frame(width: 100, height: 100)
                    .foregroundColor(Color.black)
                }
                
         //button C2
                Button(action: {
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
                        self.scorePlayer += 1
                    }
                    
                    if self.C2 == self.monTour1 && self.B2 == self.monTour1 && self.A2 == self.monTour1{
                        self.gagnant = "CONGRATULATION \(self.monTour1)YOU WON!"
                        self.scorePlayer += 1
                    }
                    
                    if self.C2 == self.sonTour2 && self.C1 == self.sonTour2 && self.C3 == self.sonTour2{
                        self.gagnant = "CONGRATULATION \(self.sonTour2)YOU WON!"
                        self.scoreComputer += 1
                    }
                    
                    if self.C2 == self.sonTour2 && self.B2 == self.sonTour2 && self.A2 == self.sonTour2{
                        self.gagnant = "CONGRATULATION \(self.sonTour2)YOU WON!"
                        self.scoreComputer += 1
                    }
                    
                    }) {
                Image(C2)
                    .frame(width: 100, height: 100)
                    .foregroundColor(Color.black)
                }
                
         //button C3
                 Button(action: {
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
                        self.scorePlayer += 1
                    }
                    
                    if self.C3 == self.monTour1 && self.B3 == self.monTour1 && self.A3 == self.monTour1{
                        self.gagnant = "CONGRATULATION \(self.monTour1)YOU WON!"
                        self.scorePlayer += 1
                    }
                    
                    if self.C3 == self.monTour1 && self.B2 == self.monTour1 && self.A1 == self.monTour1{
                        self.gagnant = "CONGRATULATION \(self.monTour1)YOU WON!"
                        self.scorePlayer += 1
                    }
                    
                    if self.C3 == self.sonTour2 && self.C2 == self.sonTour2 && self.C1 == self.sonTour2{
                        self.gagnant = "CONGRATULATION \(self.sonTour2)YOU WON!"
                        self.scoreComputer += 1
                    }
                    
                    if self.C3 == self.sonTour2 && self.B3 == self.sonTour2 && self.A3 == self.sonTour2{
                        self.gagnant = "CONGRATULATION \(self.sonTour2)YOU WON!"
                        self.scoreComputer += 1
                    }
                    
                    if self.C3 == self.sonTour2 && self.B2 == self.sonTour2 && self.A1 == self.sonTour2{
                        self.gagnant = "CONGRATULATION \(self.sonTour2)YOU WON!"
                        self.scoreComputer += 1
                    }
                    
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
                    Text (String(self.scorePlayer))
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
                    Text (String(self.scoreComputer))
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
            } //Zstack
            } // NavigationView {
        } //var view
    } //Content view

struct jouerAvecOrdi_Previews: PreviewProvider {
    static var previews: some View {
        jouerAvecOrdi()
    }
}
