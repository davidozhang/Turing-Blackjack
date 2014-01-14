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



randint (randomNumber2 (1), 1, 52) % A random number is generated between 1 to 52 for the value of the first card dealt to the computer.
loop
    randint (randomNumber2 (2), 1, 52) % A random number is generated between 1 to 52 for the value of the second card dealt to the computer. 
    % This loop helps check to make sure the two cards are not of the same kind or value. 
    exit when randomNumber2 (2) not= randomNumber2 (1)
end loop
randint (randomNumber (1), 1, 52) % A random number is generated between 1 to 52 for the value of the first card dealt to the user.
loop
    randint (randomNumber (2), 1, 52) % A random number is generated between 1 to 52 for the value of the second card dealt to the user. 
    % This loop helps check to make sure the two cards are not of the same kind or value 
    exit when randomNumber (2) not= randomNumber (1)
end loop
% locate (2,1)
% put "                                    Dealer's Cards"
%Font.Draw ("                                    Dealer's Cards",2,1,font3,0) 

%%
% The initial cards are being dealt here. 
Pic.Draw (cardpics (randomNumber2 (1)), 300, 450, 0) % First the computer
delay (1000)
Pic.Draw (cardpics (randomNumber (1)), 300, 200, 0) % Then the user 
delay (1000)
Pic.Draw (Unknown_Card, 320, 450, 0) % Then the computer again
delay (1000)
Pic.Draw (cardpics (randomNumber (2)), 320, 200, 0) % Then the user again 
delay (1000)

hitsum := cards (randomNumber (1)) + cards (randomNumber (2)) % 'hitsum' is the sum of the all cards; right now, its value is the sum between the first and second card. 
if randomNumber (1) >= 1 and randomNumber (1) <= 4 and hitsum <= 10 then % If the first card is an ace then it would display both sums; one when ace's value is 1, and
% the other being the value of 11 
    locate (28, 1)
    put "                                      ", hitsum, " or ", hitsum + 10
elsif randomNumber (2) >= 1 and randomNumber (2) <= 4 and hitsum <= 10 then% If the second card is an ace then it would display both sums; one when ace's value is 1, and
% the other being the value of 11 
    locate (28, 1)
    put "                                      ", hitsum, " or ", hitsum + 10
else % If neither are aces, then the normal sum would be displayed 
    locate (28, 1)
    put "                                          ", hitsum
end if
locate (31, 1)
put "__________________________"
