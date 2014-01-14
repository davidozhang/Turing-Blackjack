% May 20, 2011 TIME STAMP

%Program Name: Vegas BlackJack
%Date: May 20, 2011
%Program Description: This program allows the user to bet and play BlackJack against an AI(Artifical Intelligence) dealer. The user
% can hit to be dealt cards, and stand to stay, and the computer would then deal cards to itself and would automatically stand on 17 or higher.
% The values of the cards are then compared, and the winner is determined, and either the user wins the bet or loses it. The game ends when the
% user's account has $0 remaining. It would then appear as "Game Over! Thank you for playing."
%
%All Rights Reserved 2011 (C) David Zhang, Jeff Jun, Jason Lam



setscreen ("graphics:700;600") % Determines the size of the run screen. Currently, it is set to 700:600
include "Part 4 - Variables.t" % All the variables used in the program are put together in this file, which is imported into the program.
include "Part 2 - Cards.t" % All the card pictures are stored in this file, and also includes the image of the card back. The card pictures are
% extracted from the folder of cards.
put "WELCOME TO VEGAS BLACKJACK!"
randint (randomNumber3, 100000, 999999)
put ""
put "Your Secure Account Number is: ", randomNumber3
put ""
put "In order to protect you better, we advise you to charge a value of less than $10000 to your account."
put ""
loop
    put "Please enter the amount you wish to charge to your account: $" ..
    get userAccount % The user enters his preferable amount into his account, which would accompany him/her through the entire game.
    if userAccount > 10000 then
	put ""
	put "Please enter a value less than or equal to $10000" %Informs the user of charging too much money
	put ""
	delay (1000)
    elsif userAccount <= 10000 then
	put ""
	put "Confirm the amount of $", userAccount, "? (Y/y, N/n)" % Prompts the user to confirm the amount
	get userInput1
	exit when userInput1 = "Y" or userInput1 = "y"
	if userInput1 not= "Y" and userInput1 not= "y" and userInput1 not= "N" and userInput1 not= "n" then
	    put "Please enter a valid response." % Checks for invalid inputs of the user input
	end if
    end if
end loop
loop
    cls
    place := 320 % The place value for the user card's positions are initialized to y-position 320
    place2 := 320 % The place value of the computer card's positions are initialized to y position 320
    put "ACCOUNT BALANCE: $", userAccount % Displays account balance.
    put ""
    put "Enter your Bet:  $" .. % Prompts the user to enter his bet.
    get userBet
    delay (1000)
    if userBet > userAccount then % Checks for invalid input.
	put "Invalid Bet. Please enter another number."
	delay (1000)
    elsif userBet = 0 then
	put "Please enter bet that is higher than 0"
	delay (1000)
    else
	cls
	if userInput1 = "Y" or userInput1 = "y" then
	    locate (8, 1)
	    hitsum := 0 % The sum of the user's cards is reset to 0
	    hitsum2 := 0 % The sum of the computer's cards is reset to 0
	    num2 := 2
	    Pic.Draw (gamebackground, 0, 180, 0) % All the game files are imported into this program. Commenting is provided
	    % on each file, so it is not commented here.
	    include "Part 5 - Initial Dealing.t"
	    include "Part 6 - User Decision.t"
	    if hitsum <= 21 then
		include "Part 7 - Dealer's Decision.t"
	    end if
	    include "Part 8 - Winner Determination.t"
	end if
    end if
    exit when userAccount = 0
end loop

