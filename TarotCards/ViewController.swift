//
//  ViewController.swift
//  TarotCards
//
//  Created by Ivan Olivas & Ethan Raby on 11/17/20.
//  Copyright © 2020 Ivan Olivas & Ethan Raby. All rights reserved.

import UIKit

class ViewController: UIViewController {
    
    var currentSelectedCardIndex = 0
    
    @IBOutlet weak var drawButton: UIButton!
    
    //global variables
    var numPastIndex = 0
    var numPresentIndex = 0
    var numFutureIndex = 0
    var draw = false
    
    //card labels
    @IBOutlet weak var PastLabel: UILabel!
    @IBOutlet weak var Future: UILabel!
    @IBOutlet weak var Present: UILabel!
    
    //cards as buttons
    @IBOutlet weak var pastCard: UIButton!
    @IBOutlet weak var futureCard: UIButton!
    @IBOutlet weak var presentCard: UIButton!
    
    //array of the name of all the tarot cards
    let tarotCards = ["The Magician", "The High Priestess", "The Empress", "The Emperor", "The Hierophant", "The Lovers", "The Chariot", "Strength", "The Hermit", "Wheel Of Fortune", "Justice", "The Hanged Man", "Death", "The Temperance", "The Devil", "The Tower", "The Star", "The Moon", "The Sun", "Judgement", "The World", "The Fool", "Ace Of Wands", "Two Of Wands", "Three Of Wands", "Four Of Wands", "Five Of Wands", "Six Of Wands", "Seven Of Wands", "Eight Of Wands", "Nine Of Wands", "Ten Of Wands", "Page Of Wands", "Knight Of Wands", "Queen Of Wands", "King Of Wands", "Ace Of Pentacles", "Two Of Pentacles", "Three Of Pentacles", "Four Of Pentacles", "Five Of Pentacles", "Six Of Pentacles", "Seven Of Pentacles", "Eight Of Pentacles", "Nine Of Pentacles", "Ten Of Pentacles", "Page Of Pentacles", "Knight Of Pentacles", "Queen Of Pentacles", "King Of Pentacles", "Ace Of Cups", "Two Of Cups", "Three Of Cups", "Four Of Cups", "Five Of Cups", "Six Of Cups", "Seven Of Cups", "Eight Of Cups", "Nine Of Cups", "Ten Of Cups", "Page Of Cups", "Knight Of Cups", "Queen Of Cups", "King Of Cups", "Ace Of Swords", "Two Of Swords", "Three Of Swords", "Four Of Swords", "Five Of Swords", "Six Of Swords", "Seven Of Swords", "Eight Of Swords", "Nine Of Swords", "Ten Of Swords", "Page Of Swords", "Knight Of Swords", "Queen Of Swords", "King Of Swords"]
    
    //function to get to a different window
    @IBAction func cardDetails(_ sender: UIButton) {
        setCardDetails(with: sender.tag)
        
        if (draw) {
            performSegue(withIdentifier: "toCardDetails", sender: self) //get to CardDetailsViewController.
        }
        else {
            let alert = UIAlertController(title: "How To Play", message: "Please select draw first! ", preferredStyle: .alert)
            let defaultaction = UIAlertAction(title: "Ok", style: .default, handler: nil)
            alert.addAction(defaultaction)
            present(alert, animated: true, completion: nil)
        }
    }

    //funtcion to pass the right data from the right card
    func setCardDetails(with tag: Int){
        
        switch tag {
            case 0: //Past Card
                currentSelectedCardIndex = numPastIndex
            case 1: //Present Card
                currentSelectedCardIndex = numPresentIndex
            default://Future Card
                currentSelectedCardIndex = numFutureIndex
        }
    }
    
    //function for when user presses draw button
    @IBAction func drawButtonPressed(_ sender: UIButton) {
        
        draw = true     //boolean changes to true to allow user to click on cards for more information
        
        //get random numbers to use as index for picking a card within the array
        var numPast = Int.random(in: 0...77)
        var numPresent = Int.random(in: 0...77)
        var numFuture = Int.random(in: 0...77)
        
        //check if all numbers are unique
        if(numPast == numPresent || numPast == numFuture) {
            numPast = Int.random(in: 0...77)
        }
        if(numPresent == numFuture) {
            numPresent = Int.random(in: 0...77)
        }
        
        //set numbers generated to global variables to use in other view controller
        numPastIndex = numPast
        numPresentIndex = numPresent
        numFutureIndex = numFuture
        
        //change card depending on the index
        pastCard.setBackgroundImage(UIImage(named: "\(tarotCards[numPast])"), for: .normal)
        presentCard.setBackgroundImage(UIImage(named: "\(tarotCards[numPresent])"), for: .normal)
        futureCard.setBackgroundImage(UIImage(named: "\(tarotCards[numFuture])"), for: .normal)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //customize draw button
        drawButton.layer.cornerRadius = 25
        drawButton.layer.borderWidth = 1
        drawButton.layer.borderColor = UIColor.black.cgColor
    }


}

