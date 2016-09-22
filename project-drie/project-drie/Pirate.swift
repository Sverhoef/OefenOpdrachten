//
//  Pirate.swift
//  project-drie
//
//  Created by Sjors Verhoef on 20-09-16.
//  Copyright © 2016 Fontys. All rights reserved.
//

import Foundation

class Pirate{
    
    var name:String!
    var life:String
    var years_active:String
    var country_of_origin:String
    var comments:String
    
    init(name:String!, life:String, yearsActive:String, countryOfOrigin:String, comments:String){
        self.name = name!
        self.life = life
        self.years_active = yearsActive
        self.country_of_origin = countryOfOrigin
        self.comments = comments
        
    }

}
