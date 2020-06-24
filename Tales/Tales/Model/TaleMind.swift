//
//  TaleMind.swift
//  Tales
//
//  Created by Hanoudi on 6/24/20.
//  Copyright © 2020 Hanan. All rights reserved.
//

import Foundation

struct TaleMind {
    
    var taleNumber = 0
    
    let tales = [
        Tale(
            main: "Your car has blown a tire on a winding road in the middle of nowhere with no cell phone reception. You decide to hitchhike. A rusty pickup truck rumbles to a stop next to you. A man with a wide brimmed hat with soulless eyes opens the passenger door for you and asks: 'Need a ride, boy?'.",
            optionOne: "I'll hop in. Thanks for the help!", optionOneFate: 2,
            optionTwo: "Better ask him if he's a murderer first.", optionTwoFate: 1
        ),
        Tale(
            main: "He nods slowly, unfazed by the question.",
            optionOne: "At least he's honest. I'll climb in.", optionOneFate: 2,
            optionTwo: "Wait, I know how to change a tire.", optionTwoFate: 3
        ),
        Tale(
            main: "As you begin to drive, the stranger starts talking about his relationship with his mother. He gets angrier and angrier by the minute. He asks you to open the glovebox. Inside you find a bloody knife, two severed fingers, and a cassette tape of Elton John. He reaches for the glove box.",
            optionOne: "I love Elton John! Hand him the cassette tape.", optionOneFate: 5,
            optionTwo: "It's him or me! You take the knife and stab him.", optionTwoFate: 4
        ),
        Tale(
            main: "What? Such a cop out! Did you know traffic accidents are the second leading cause of accidental death for most adult age groups?",
            optionOne: "The", optionOneFate: 0,
            optionTwo: "End", optionTwoFate: 0
        ),
        Tale(
            main: "As you smash through the guardrail and careen towards the jagged rocks below you reflect on the dubious wisdom of stabbing someone while they are driving a car you are in.",
            optionOne: "The", optionOneFate: 0,
            optionTwo: "End", optionTwoFate: 0
        ),
        Tale(
            main: "You bond with the murderer while crooning verses of 'Can you feel the love tonight'. He drops you off at the next town. Before you go he asks you if you know any good places to dump bodies. You reply: 'Try the pier.'",
            optionOne: "The", optionOneFate: 0,
            optionTwo: "End", optionTwoFate: 0
        )
    ]
    
    func getTaleMain() -> String {
        return tales[taleNumber].main
    }
    
    func getOptionOne() -> String {
        return tales[taleNumber].optionOne
    }
    
    func getOptionTwo() -> String {
        return tales[taleNumber].optionTwo
    }
    
    mutating func nextTale(userChoice: String) {
        
        let currentTale = tales[taleNumber]
        if userChoice == currentTale.optionOne {
            taleNumber = currentTale.optionOneFate
        } else if userChoice == currentTale.optionTwo {
            taleNumber = currentTale.optionTwoFate
        }
    }
    
}
