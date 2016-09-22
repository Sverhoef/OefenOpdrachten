//
//  main.swift
//  Hellglow World
//
//  Created by Sjors Verhoef on 02-09-16.
//  Copyright © 2016 Fontys. All rights reserved.
//

import Foundation

//print ("Hellglow  World!")


var blueLightAct = GlowAct(name: "The Bluelight act", rating: 8, time: "22:20")
var redLightAct = GlowAct(name: "The Bluelight act", rating: 8, time: "22:20")

var weert = City(name: "Weert", population: 10000)

weert.newAct(blueLightAct)
weert.newAct(redLightAct)

weert.ShowInfo()

