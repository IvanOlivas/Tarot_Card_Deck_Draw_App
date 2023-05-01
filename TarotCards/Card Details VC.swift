//
//  Card Details VC.swift
//  TarotCards
//
//  Created by Ivan Olivas & Ethan Raby on 11/18/20.
//  Copyright © 2020 Ivan Olivas & Ethan Raby. All rights reserved.
//

import UIKit

class Card_Details_VC: UIViewController {
    //variables to access the description and name
    var index = 0
    var cardName = ""
    
    @IBOutlet weak var doneButton: UIButton!
    @IBOutlet weak var tarotCardBig: UIImageView!
    @IBOutlet weak var cardNameLabel: UILabel!
    @IBOutlet weak var cardDetailsTextView: UITextView!
    
    //Data description for each card.
    let tarotDesciprtion = ["A sudden solution, as if by magic - but it may be just an illusion.", "Secrets and hidden circumstances stand in the way and need to be understood.", "The gentle power that still rules, almost unnoticed and rarely opposed.", "You're up against real power, so yield or suffer the consequences.", "The dependency on approval from an elevated dignity.", "Deeply felt mutual attraction - for as long as it lasts.", "Triumph - but beware of its consequences at length.", "Strength of a kind that's superior because of its clever application.", "The lesson and reward, but also misfortune, of solitude.", "An uncertain outcome, with an aftermath to be carefully considered.", "Justice without blindfold is not always fair.", "Great personal sacrifice that still doesn't hurt much.", "A costly loss - sometimes, but not always, the death of someone.", "Moderation in all is ultimate persistence.", "The pain and delight of giving in to temptation.", "A spectacular ambition that ends with disaster.", "Time to pause and reflect, contemplate what's precious and what's not.", "Longing for the sake of longing, and the hope of fulfillment.", "Great resources at your disposal, but constrain yourself since it's possible to have too much.", "Ultimate judgment, whether we welcome it or not.", "Success in anything worldly, but not for free.", "Blissful carelessness, the power of ignorance.", "Every Ace is sort of an exclamation mark. Something important, even remarkable, will take place - in the case of Wands regarding your material circumstances. It's neither good nor bad, but very significant, indeed, affecting your relation to material matters.", "Longing for the world and all it has to offer, although you may already have a decent share of it.", "Missing the world and all the good things it has offered. The card of having partaken in something rewarding, but now being passed by, as if obsolete.", "The celebration of a homecoming of sorts. Returning from the world, enriched and pleased, receiving the praise and rewards for it.", "Calamity that may be invigorating but can become costly. What seems easy at first turns complicated when ambitions collide.", "Success and great gain in material matters, making others want to join you. But don't forget to prepare for rainy days that may come.", "Struggle to hold on to what you have. Others try to take it from you.", "Possessions on the move, risking to get lost. Hard work that is costly but necessary, to overcome several concrete obstacles.", "Recovering after having been overwhelmed by too many disadvantages. You struggled hard, but everything was against you. You want to try again.", "Too much to carry. Your workload is unreasonable, and still there's no certain reward ahead. Are you being used for others' profit?", "Plenty of possibilities, so many that it's difficult to choose. Do something, and you will prosper. But wait no longer.", "You have grasped the opportunity and boldly move forward. Great promises of success, as long as you just sit tightly on your saddle.", "You have your possessions and know how to keep them, but do you know how to increase them? Don't settle with what you have, or it may wither.", "Wealth that is hard to keep. What's the point of prosperity if you don't trust that you can hold on to it? Envy is a poison also to the object of it.", "This card is like an exclamation mark. An idea is forming, demanding contemplation. It can lead to a lot of good things.", "Confusion. Your mind struggles with trying to make two seeming opposites combine. A paradox that appears insoluble, but it needs not be.", "Is it for real or not? You wonder about something essential, unable to know where to find the answer.", "A self-obsessed mind, caught by the brilliance of his own thinking. But thoughts can be shared without wasting them.", "Desolation. You have no idea how to get out of it, because you're stuck in old lines of thought.", "Generosity is easy when done with a surplus. Still, it does good if done with proper modesty.", "Time for contemplation, which will lead to splendid ideas, Once they're ripe, these ideas will create prosperity.", "Work on the plan, think things through. You'll prosper to the extent you take the trouble of being well prepared.", "Prosperity in so many ways. Time to lean back and enjoy the wealth, primarily the pride of having reached it.", "Intellectual stimulation. Wisdom, knowledge, and the exchange of those with inspirational people.", "Time to dream and let the fantasy go. That invigorates and opens for new possibilities. Be optimistic.", "Follow a course, stick to the plan, and you can reach even a far-fetched goal. You just need resolution.", "Pondering, unable to get out of it. It's all too serious. But such times are also needed, for personal growth.", "Thinking ahead is the way to ascertain what was gained in the past. The key to success is holding on to it.", "The Ace is an exclamation mark. Now, it's all about feelings. Solace. Bliss is around the corner.", "Partners, companions, lovers. Whatever the bond, there's great pleasure in sharing with another.", "Celebration in the merry company of dear friends. A time to remember.", "Dissatisfaction. When you've had enough, what can pleasure you next? The question that brings on melancholia.", "Despair. Life lost its taste, there's no remedy against gloom - but accepting it. It will dissolve, eventually.", "Joy and childish happiness. Nothing seems complicated, no threats are imminent. Cherish the moment.", "How to resist temptation, how to still the longing for everything in the world? That which you want is a mirage.", "Turning away in disgust from having discovered that what seemed so sweet had a bitter aftertaste. But it brings maturity.", "Gluttony inflates the mind as well as the body. So does complacency, the gluttony of the mind.", "The bliss of accomplishment, when benefitting all involved. The reward of the worthy.", "The irony of it all. Funny or sad, when looked at with open eyes anything is amusing. Expect to be surprised.", "Pride makes lousy armor, but we're all even more vulnerable without it. Make sure you do something to be proud of.", "Stuck in obsession, what the feelings use to trap the mind and vice versa. It's not worth it.", "Nothing wrong with being very pleased, except for flaunting it to induce jealousy. Take nothing for granted, not even yourself.", "This is an exclamation mark, here for the principle of stern action. There is imminent need of it. Do something.", "Where to go when both directions are risky and still haste is called for? You must decide although you can't be sure.", "Does everything work against you, is there no way to go without getting hurt? Take no step before heeding the warning.", "Not every hero won the battle, but it's still heroic. Treasure how your action will be remembered.", "Betrayal when the battle is over. Time to ask what the battle was really for.", "A most costly outcome of a big venture. Either bitter defeat or a Pyrrhic victory. Still, you will persevere.", "Betrayal right before the decisive battle. It may not lead to defeat, but victory is suddenly more distant.", "Helplessly in the hands of others, who seem to show little compassion. Cause for apprehension, but not panic.", "Regret of choices made and anxiety of choices urgently needed to be made. There's no way out of responsibility.", "Utter defeat, probably because of betrayal. You may suffer, but you're not to blame.", "Bravery to the point of being foolhardy, but there's so much more to win than to lose.", "Charging right ahead, whether that's wise or not. That's the spirit by which many battles are won - and lost.", "Mighty power and the knowledge of how to use it. Victorious even without going to battle.", "The power of what can't be changed, regardless the outcome of battles. Some things one must accept."]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setDetails()
        cardNameLabel.text = cardName
        cardDetailsTextView.text = "\(tarotDesciprtion[index])"
        //custom button
        doneButton.layer.cornerRadius = 25
        doneButton.layer.borderWidth = 1
        doneButton.layer.borderColor = UIColor.black.cgColor
    }
    
    func setDetails(){
        let vc = presentingViewController as! ViewController    //access the viewcontroller with the name(ViewController), lets you have acces to all the variables and fun ction
        index = vc.currentSelectedCardIndex
        cardName = vc.tarotCards[index]
        tarotCardBig.image = UIImage(named: vc.tarotCards[index])
        
    }
    
    @IBAction func dismissButton(_ sender: UIButton) {
        //dismmiss from current viewcontroller
        dismiss(animated: true, completion:  nil)
    }
    
    
}
