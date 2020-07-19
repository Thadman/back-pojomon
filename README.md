## R1 Description of your website

# Purpose

For the purpose of this project we wanted design and implement a virtual pet based on the old Digimon pets of the late 1990s and early 2000s. We wanted to create a virtual pet that invoked nostalgia from this particular era for adults, and also have children of today being able to play a similar iteration of the game on a cellphone application. These virtual pets have multiple use cases for today, especially with the current Covid climate. A child can use this as a chance to care for their pet and choose the different paths that are possible within the game, and an older user can use this as a nostalgic flashback, as well as getting one for their child and playing the game with them. 

# Functionality / Features

This web app will comprise of the ability to help in the survival and life longevity of a virtual pet. Each pet will comprise of attributes that allow you to keep the pet healthy, and if the pet has been neglected, then the user will have the ability to 'clean' the pet to make them healthy again. The user will be able to feed their pet should they be hungry with the click of a food icon, clean them up with a click of the health icon, be able to choose the life cycle/evolution of your pet, as well as the ability to restart the pet should you want to try a new evolution cycle or have accidentally let your pet die. The app will also consist of logic to determine when these 'bodily functions' take place. We can use this game logic to alert the user when they need to feed their pet, or if they have neglected their pet and they need to pay more attention to it. The web app will also have ability to create an account with password and email credentials, allowing the user to login and logout of their account, to ensure that they can keep their pets to themselves, and for the younger generation the ability to make sure that their virtual pet is not tampered with by other children. 

- Ability to feed your pet
- Ability to clean your pet 
- Ability to restart life cycle of your pet
- Ability to evolve through different life cycles of different oath options. 
- Ability to have your own pet through creating of account and having login credentials
- Game logic to determine the life cycle of the virtual pet
- Interactive evolution of life cycle 


# Target Audience

The target audience for this web application varies across many age brackets as well as catering for different demographics. The app can be used by children who are after a simple game, that requires their attention every so often to maintain the health of the virtual pet. Adults wanting a nice nostalgic flash back to play a game that they have enjoyed earlier in their life, simply using this application they can once again care for a virtual pet. Having the ability to feed and clean up after your pet, the same as it was previously designed will be implemented within this web app also. Also this demographic can include parents who want to introduce their children to the game as well, having played the game themselves and having an understanding of it can guide their children through the process. Using this web app as a distraction for parents is also a possibility during these times where parents are at home working and looking after their children at the same time due to Covid 19. 

# Tech Stack

For the Tech stack on this application we will use the following technologies:
Database : PostgreSQL
Models and Controllers: Ruby on Rails
View: React
Time Management: Trello
HTML Canvas: Sprite view , displaying monsters
Wireframes: Balsamiq
ERD diagram: DbDiagram
Dataflow Diagram: Draw.io
HTML: Markup
CSS: App styling
Javascript: Game logic and styling 


Game instructions 

POJOmon!

Application will land on the LOG-IN page.
Click on SIGN-UP if you do not have an account.

When logging in for the first-time, user will be presented with an egg that will hatch in 10 seconds 
After hatching your monster will be very hungry and have low strength

Select the STAT tab to see your monster’s statistics
Name: Monster-name 
Age: Age of monster in days 
Weight: Digimon weight in KG’s 
Hunger: Shows how hungry monster is (0-5) 
Strength: Shows how strong monster is (0-5) 
Evolution Timer: Countdown timer until next evolution

Select the FEED tab and select FOOD to restore 0/5 of monster’s HUNGER meter.
Hunger depletes approx. every 3-5 hours 
Select the FEED tab and select VITAMIN to restore 1/5 of monster’s STRENGTH meter.
Strength depletes approx. every 6-8 hours

Your monster eats and so it will poop! 💩💩💩💩
Approx. every 5-6 hours 
Press the POOP icon to clean up poop.
If you don’t clean up after you monster and it poops 4 times your monster will become SICK 

Select the BANDAID icon to cure your monster’s sickness
If your monster is SICK for too long it may DIE

When logging in you may be greeted with a TOMBSTONE instead of a monster this indicates you let your poor pet DIE…
Click on the RESET link to restart and get a new egg.
Your monster has hidden death value that when it reaches 0 your pet will DIE; you can never see what this value is and will only know it’s zero when you get a TOMBSTONE.
Causes of death:
Monster has empty HUNGER (0/5) meter for 1 hour	(-1 point)
Monster has empty STRENGTH (0/5) meter for 1 hour	(-1 point)
Monster get SICK					(-1 point)
Monster is SICK for 1 hour				(-1 point)
Note: Effects can stack 
Death value can not be recovered however when you monster EVOLVES to the next stage the value is reset, so even if your pet nearly dies in one form it will start fresh in the next evolution.

EVOLUTION happens if your monster does not die from neglect when you log into the game and the EVOLUTION TIMER counted down to zero.
A popup will show with a choice of available monsters for your monster to EVOLVE into, Press/Click on one of the choices to select it and complete the transformation!
Evolution order: Egg   ->   Baby   ->   In-Training   ->   Rookie   ->   Champion   ->   Ultimate
10sec   ->   1min   ->   1hour   ->   12hours   ->   24hours   ->   Final  

Click on SIGN OUT at the top of the app to sign out of the application.

# R2 Dataflow Diagram

![](Docs/DataflowDiagram.png)

# R3 Application Architecture Diagram

![](Docs/Architecture.png)

# R4 User Stories

Terry, 36, is after an web app that she is able to give to her children, for them to use while she is working at home during Covid 19. Terry would like the web app to have some security measures to ensure that the game is safe for her children, including such things as being able to have passwords so no one can access her children's accounts, and the ability to sign out off the web app as well, to make sure her other children cannot 'muck around' with each others accounts.  

1. As Terry, i want my children to be able to have their own pet so that my children aren't fighting over a single pet to play with.
2. As Terry, i want my children to be able to sign out of their accounts so that my other children cannot 'restart' their games. 
3. As Terry i want my children to be able to restart the pet, so that if they forget about the app they are able to restart a game.

Tommy, 8, wants to play a game while he is on school holidays that lets him have a virtual pet that can evolve and he can share his progress with his friends. Tommy wants his pet to be safe from his friends deleting it as a cruel joke, so there must be a login page where you can have a password for security. Tommy wants to know how his pet is doing and wants it to be able to evolve and also wants to make sure that there are penalties for being a bad carer, and also rewards (evolution) for correctly caring for your pet

4. As Tommy, i want my pet to be able to evolve so that i know i have been caring for to correctly.
5. As Tommy, i want to be able to feed my virtual pet to ensure that it stays alive and can evolve properly. 
6. As Tommy, i want to be able to clean up my pets poo, so that it stays healthy and does not die. 

Rob, 30, is wanting to relive the splendid days of his youth. He wants once again to play a game that requires him to care for a virtual pet. He wants the ability to login to his pet and check how it is going, he wants authentication on the app and wants to be able to sign out of the app and the progress is still being taken note of. He want to know when his pet is being taken care of properly (evolving) and wants to know when the pet has been neglected, and needs to be cleaned up. He also wants the ability to choose a path for the pet evolution. 

7. As Rob, i want to be able to create an account so that it only allows me to access it with email and password credentials. 
8. As Rob, i want to be able to sign out of my account so that i know no one else can access my virtual pet after i have logged out. 
9. As Rob, i want to be able to heal my virtual pet with a healing button so that the pet doesn't die.

With these personas complete with 'what' and 'why' accounts, we can ascertain the features that the app will compromise of to fulfill the needs of the personas:

-Create an account that has authentication abilities
-Sign up page with password and email verification
-Login page with email and password
-Sign out option once logged in
-Game logic to handle taking care and responding to neglecting of virtual pet
-Ability to restart a new pet, when either an old pet has died or when a user wants to start again


# R5 Wireframes for multiple standard screen sizes, created using industry standard software

![](Docs/Phone1.png)
![](Docs/Phone2.png)
![](Docs/Phone3.png)
![](Docs/Phone4.png)
![](Docs/Tablet1.png)
![](Docs/Tablet2.png)

# R6 Screenshots of your Trello board demonstrating use throughout the initial stages of the project

![](Docs/Trello1.png)
![](Docs/Trello2.png)
![](Docs/Trello3.png)
![](Docs/Trello4.png)
![](Docs/Trello5.png)

## R1 Description of your website

