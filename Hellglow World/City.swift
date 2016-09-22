//
//  City.swift
//  Hellglow World
//
//  Created by Sjors Verhoef on 02-09-16.
//  Copyright © 2016 Fontys. All rights reserved.
//

import Foundation

class City {
    var name:String
    var population:Int32
    var glowActs = [GlowAct]()
  
    
    func ShowInfo (){

        print("In the city of \(name) there are currently living \(population) people")
        
 
            for GlowAct in glowActs {
                GlowAct.ShowInfo()
                
            }
        
    }
    
    func newAct(act:GlowAct){
        self.glowActs.append(act)
    }
    
    init(name:String, population:Int32){
        self.name = name
        self.population = population

            
        
    
    }
}