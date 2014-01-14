% May 20, 2011 TIME STAMP 

%Program Name: Vegas BlackJack
%Date: May 20, 2011
%Program Description: This program allows the user to bet and play BlackJack against an AI(Artifical Intelligence) dealer. The user
% can hit to be dealt cards, and stand to stay, and the computer would then deal cards to itself and would automatically stand on 17 or higher.
% The values of the cards are then compared, and the winner is determined, and either the user wins the bet or loses it. The game ends when the
% user's account has $0 remaining. It would then appear as "Game Over! Thank you for playing."
%
%All Rights Reserved 2011 (C) David Zhang, Jeff Jun, Jason Lam
%

%           http://compsci.ca/holtsoft/doc/gui.html
import GUI
include "Part 4 - Variables.t" % All variables are included
include "Part 2 - Cards.t" % All card pictures are included 
var font1, font2,font3, gamebackground, instructionsfont : int
font1 := Font.New ("Comicsans:140:bold,italic") % Font of "Vegas": 140 size, bold, italic 
font2 := Font.New ("Comicsans:70:bold,italic")  % Font of "BlackJack": 70 size, bold, italic
font3 :=Font.New ("Comicsans:15:bold,italic")  
instructionsfont := Font.New ("Comicsans:20:bold,italic")% Font of instructions title: 70 size, bold, italic
gamebackground := Pic.FileNew ("Black+Jack+Table.bmp")


%var userBet : int := 0
%var userAccount : int := 0

var chips : int := Pic.FileNew ("menupic.bmp")
%var cards : int := Pic.FileNew ("menupage.bmp")
var background : int := Pic.FileNew ("Casino 1.jpg")
var buttoncover : int := Pic.FileNew ("Back to Menu Button Cover Upper.jpg")

setscreen ("graphics:700;600")

proc playgame
cls
include "Part 3 - Main.t" 
 GUI.Quit    

end playgame

proc qiut
    GUI.Quit
    x := x + 1
end qiut


proc instructions
    cls
    GUI.ResetQuit
    locate (5, 1)
    put "The goal of the game is to get as close to 21 as possible without going over."
    put ""
    put "For those who don't know how to play black jack, you are competing against the dealer to be as close to 21 without going over"
    put "if you go over 21, you lose."
    put "if you the sum of your cards is higher than the dealers without going over 21, then you win"
    put ""
    put "face cards are worth 10, aces are worth 1 or 11, and all other cards are worth their face value"
    put ""
    put "the dealer stands on when his cards add up to 17"
    put ""
    put "The table limit is 5000."
    put ""
    put "To play the game, go back to the menu and press play game, and enter how much money you want to play with"
    put "You can either hit or stand."
    put ""
    put "--Hit deals you one more card. You can hit as you like."
    put "--Stand ends your turn."
    put ""
    put "Whenever the sum of your cards reaches 21, it is called a Black Jack"
    put "Whenever you win against the dealer, you win double of what you bet."
    Font.Draw ("Instructions", 270, 560, instructionsfont, 240)
    var button4 : int := GUI.CreateButton (530, 40, 100, "Back to Main Menu", GUI.Quit)
    loop
	exit when GUI.ProcessEvent
    end loop
end instructions

% Buttons of the Main Menu %%%%%%%%%%%%%%%%%%%%%%%%%%%%

proc mainmenubuttons
    var button : int := GUI.CreateButton (310, 130, 100, "Play Game", playgame)
    var button1 : int := GUI.CreateButton (310, 100, 100, "Instructions", instructions)
    var button2 : int := GUI.CreateButton (310, 70, 100, "Quit", qiut)
end mainmenubuttons

% Displays the Background of the Main Menu %%%%%%%%%%%%%%%%%%%%%%%%%%%%

proc mainmenupics
    Pic.Draw (background, 0, 0, 0)
    %drawfillbox (0, 253, maxx, maxy, 2)
    Font.Draw ("Vegas ", 70, 460, font1, 14)
    Font.Draw ("Black Jack", 110, 350, font2, 14)
    %Pic.Draw (chips, 7, 0, 0)
    %Pic.Draw (cards, 420, 20, 0)
end mainmenupics

% Runs the Game %%%%%%%%%%%%%%%%%%%%%%%%%%%%

proc gameplay
    mainmenubuttons 
    mainmenupics
    GUI.Refresh
    Pic.Draw (buttoncover, 473, 0, 0)
    loop
	exit when GUI.ProcessEvent
    end loop

end gameplay

%%%%%%%%%%%%%%%%%%%%%%%%%%%%% The gameplay is a loop so that the user can go back to the main menu

loop
    cls
    GUI.ResetQuit
    gameplay
    exit when x = 1
end loop
cls
put "Thank you for playing Vegas BlackJack!"
delay (2000)
GUI.CloseWindow (windowID)
