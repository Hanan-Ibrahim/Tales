//
//  Tale.swift
//  Tales
//
//  Created by Hanoudi on 6/24/20.
//  Copyright © 2020 Hanan. All rights reserved.
//
//--------------------------------------------------------------------------//
//  This is the structure of the tale to be narrated.
//  Has a main and two choices
//  Need to keep track which choice was chosen to narrate whats next.

import Foundation

struct Tale {
    
    let main: String
    
    let optionOne: String
    let optionOneFate: Int
    
    let optionTwo: String
    let optionTwoFate: Int

}
