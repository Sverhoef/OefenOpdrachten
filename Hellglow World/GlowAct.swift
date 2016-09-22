//
//  GlowAct.swift
//  Hellglow World
//
//  Created by Sjors Verhoef on 02-09-16.
//  Copyright © 2016 Fontys. All rights reserved.
//

import Foundation

class GlowAct {
        var name:String
        var rating:Int32
        var startTime:String
        
        func ShowInfo (){
            print("The act is called \(name) and starts at \(startTime). It is given an average rating of \(rating)")
            
        }
    
    init(name:String, rating:Int32, time:String)
    {
        self.name = name
        self.rating = rating
        self.startTime = time
    }

}

