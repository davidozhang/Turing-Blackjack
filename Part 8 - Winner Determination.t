% May 20, 2011 TIME STAMP

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


var userInput3 : string
cls
if hitsum <= 21 and hitsum2 <= 21 then  %The condition when both sums are smaller than 21
    if hitsum > hitsum2 then % If the user's sum is larger than the computer's sum, then a message indicated "You WON!" is displayed
	put "You WON!"
	userAccount := userAccount + userBet % The winning bet is added to the account
	put "$ +", userBet % The increase in the account is shown
	put "Your account currently has: $", userAccount % An account balance is shown to the user
	Music.PlayFile ("Win.WAV") % A winning sound is played.
	put ""
	put "Enter any key to continue (Enter Quit/quit to quit and collect your money)" % The user is prompted to enter anything to acknowledge the results and continue on to next round
	get userInput2
    elsif hitsum < hitsum2 then % If the user's sum is smaller than the computer's sum, then a message indicated "Dealer WON!" is displayed
	put "Dealer WON!"
	userAccount := userAccount - userBet
	put "$ -", userBet
	put "Your account currently has: $", userAccount
	Music.PlayFile ("Lose.WAV")
	put ""
	put "Enter any key to continue (Enter Quit/quit to quit and collect your money)"
	get userInput2
    else
	put "PUSH!"
	put ""
	put "Enter any key to continue (Enter Quit/quit to quit and collect your money)"
	get userInput2
    end if
elsif hitsum <= 21 and hitsum2 > 21 then
    put "User Wins!!!!"
    userAccount := userAccount + userBet
    put "$ +", userBet
    put "Your account currently has: $", userAccount
    Music.PlayFile ("Win.WAV")
    put ""
    put "Enter any key to continue (Enter Quit/quit to quit and collect your money)"
    get userInput2
elsif hitsum > 21 and hitsum2 <= 21 then
    put "Dealer Wins!!!!"
    userAccount := userAccount - userBet
    put "$ -", userBet
    put "Your account currently has: $", userAccount
    Music.PlayFile ("Lose.WAV")
    put ""
    put "Enter any key to continue (Enter Quit/quit to quit and collect your money)"
    get userInput2
else
    put "PUSH!"
    put ""
    put "Enter any key to continue (Enter Quit/quit to quit and collect your money)"
    get userInput2
end if
if userInput2 = "quit" or userInput2 = "Quit" then
    cls
    put "ACCOUNT STATUS FOR: ", randomNumber3
    put "Your Account Currently has $", userAccount, "." 
    put ""
    put "Enter anything to continue"
    get userInput3
    exit when userInput2 = "quit" or userInput2 = "Quit"
end if
cls
