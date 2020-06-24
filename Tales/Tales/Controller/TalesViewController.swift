//
//  ViewController.swift
//  Tales
//
//  Created by Hanoudi on 6/24/20.
//  Copyright © 2020 Hanan. All rights reserved.
//

import UIKit

class TalesViewController: UIViewController {
    
    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var optionOneButton: UIButton!
    @IBOutlet weak var optionTwoButton: UIButton!
    
    var taleMind = TaleMind()
    
    @IBAction func choiceMade(_ sender: UIButton) {
        
        taleMind.nextTale(userChoice: sender.currentTitle!)
        
        updateUI()
     
    }
    
    func updateUI() {
        storyLabel.text = taleMind.getTaleMain()
        optionOneButton.setTitle(taleMind.getOptionOne(), for: .normal)
        optionTwoButton.setTitle(taleMind.getOptionTwo(), for: .normal)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }


}

