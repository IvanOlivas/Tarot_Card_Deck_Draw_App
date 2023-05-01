iOS Tarot Card Deck Draw App Project

What are tarot cards?
•A deck of tarot cards consists of 78 cards
•There are 22 “Major Arcana” cards, which are representative of the karmic and spiritual lessons we learn in life
•There are 56 “Minor Arcana” which represent the trials and tribulations we experience in our day-to-day life
•The Minor Arcana are organized into 4 suits, 10 cards each, which represent the situations we encounter, and 16 of them represent personality characteristics
•Tarot Cards are used more for guidance, rather than “predicting” the future


What do the arcana cards represent?
Major arcana:
“Trump Cards”
Represent overall themes and lessons in your life
A drawing with majority Major cards implies life changing/long term events occurring
A minority drawing of Major cards represents day-to-day, short term issues

Minor arcana:
Cups Suit – feelings, emotions, intuition, and creativity
Pentacles Suit – Finances, work, and material possessions
Swords Suit – Thoughts, words, and actions
Wands Suit – Energy, motivation, and passion

iOS App:
This app uses the “Three Card Spread”, representing the past, present and future – in that order. 
The app also includes all 78 cards and their description, allowing you to immediately get your answers instead of searching for an internet guide. 
Once a user selects to draw, three cards will be presented, the user will have the option of selecting each card and seeing further details of the card (name, card, and card description)
Based on the card details it is upon the user to think of how they want to interpret what the cards is telling them.

How the app works:
The name of each image of each card is stored in an array
When a user presses “Draw” :
Three random unique integers between 0 and 77 , inclusive, are generated
Those numbers are used as the index to display the card on the screen using the card name array
Each card, since it’s a button, can then be tapped to display the meaning in a segway
The three buttons have a tag number, in order to keep track of which image button was pressed
All three image buttons are connected to the same function in order to display the other view controller
Present Modally
In the other view controller, there is an array that has all the card descriptions of each card at the same index of the card name array
