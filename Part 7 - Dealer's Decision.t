%May 20,2011 TIME STAMP 

%Program Name: Vegas BlackJack
%Date: May 20, 2011
%Program Description: This program allows the user to bet and play BlackJack against an AI(Artifical Intelligence) dealer. The user
% can hit to be dealt cards, and stand to stay, and the computer would then deal cards to itself and would automatically stand on 17 or higher.
% The values of the cards are then compared, and the winner is determined, and either the user wins the bet or loses it. The game ends when the
% user's account has $0 remaining. It would then appear as "Game Over! Thank you for playing."
%
%All Rights Reserved 2011 (C) David Zhang, Jeff Jun, Jason Lam



Pic.Draw (cardpics (randomNumber2 (2)), 320, 450, 0)  %unveils dealer's second card
hitsum2 := cards (randomNumber2 (1)) + cards (randomNumber2 (2)) 
locate (11, 1)
put "                                          ", hitsum2
locate (31, 1)
put "____________________"
put "Dealer's Turn"
delay (2000)
place2 := 320

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%Dealer's decisions when dealer gets aces
loop
    if randomNumber2 (1) >= 1 and randomNumber2 (1) <= 4 and randomNumber2 (2) > 4 and boolean4 = true then
	if hitsum2 + 10 = 21 then
	    hitsum2 := hitsum2 + 10
	    locate (11, 1)
	    put "                                          ", hitsum2
	    exit when hitsum2 = 21
	elsif hitsum2 + 10 >= 17 and hitsum2 + 10 < 21 then
	    hitsum2 := hitsum2 + 10
	    locate (11, 1)
	    put "                                          ", hitsum2
	    exit when hitsum2 >= 17
	else
	    hitsum2 := hitsum2
	    boolean4 := false
	end if
    elsif randomNumber2 (2) >= 1 and randomNumber2 (2) <= 4 and randomNumber2 (1) > 4 and boolean4 = true then
	if hitsum2 + 10 = 21 then
	    hitsum2 := hitsum2 + 10
	    locate (11, 1)
	    put "                                          ", hitsum2
	    exit when hitsum2 = 21
	elsif hitsum2 + 10 >= 17 and hitsum2 + 10 < 21 then
	    hitsum2 := hitsum2 + 10
	    locate (11, 1)
	    put "                                          ", hitsum2
	    exit when hitsum2 >= 17
	else
	    hitsum2 := hitsum2
	    boolean4 := false
	end if
    elsif randomNumber2 (2) >= 1 and randomNumber2 (2) <= 4 and randomNumber2 (1) >= 1 and randomNumber2 (1) <= 4 and boolean4 = true then
	randint (Ace, 1, 2)
	if Ace = 1 then
	    hitsum2 := hitsum2
	    boolean4 := false
	    locate (11, 1)
	    put "                                          ", hitsum2
	else
	    hitsum2 := hitsum2 + 10
	    boolean4 := false
	    locate (11, 1)
	    put "                                          ", hitsum2
	end if
    elsif randomNumber2 (num2) >= 1 and randomNumber2 (num2) <= 4 and num2 >= 3 then
	hitsum2 := hitsum2
	locate (11, 1)
	put "                                          ", hitsum2
    end if
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%outputs user's sum
    locate (11, 1)
    put "                                          ", hitsum2
    locate (31, 1)
    put "____________________"
    put "Dealer's Turn"
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%dealer stops hitting when the sum is higher than 17 and game ends when sum is higher than 17
    exit when hitsum2 >= 17
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%Dealer's new cards are decided and it they are outputed on to interface
    num2 := num2 + 1
    loop
	randint (randomNumber2 (num2), 1, 52)
	exit when randomNumber2 (num2) not= randomNumber2 (num2 - 2) and randomNumber2 (num2) not= randomNumber2 (num2 - 1)
    end loop
    place2 := place2 + 20
    hitsum2 := hitsum2 + cards (randomNumber2 (num2))
    delay (1000)
    Pic.Draw (cardpics (randomNumber2 (num2)), place2, 450, 0)
    locate (11, 1)
    put "                                          ", hitsum2
    %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%dealer stops hitting when the sum is higher than 17 and game ends when sum is higher than 17
    exit when hitsum2 >= 17
end loop
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%Outputs dealer's result
delay (2000)
locate (31, 1)
put "____________________"
put "Dealer's Turn"
if hitsum2 < 21 then
    put "Safe"
elsif hitsum2 = 21 then
    put "Black Jack"
else
    put "Busted"
end if
delay (1500)
