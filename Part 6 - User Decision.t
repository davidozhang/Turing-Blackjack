% May 20,2011 TIME STAMP

%Program Name: Vegas BlackJack
%Date: May 20, 2011
%Program Description: This program allows the user to bet and play BlackJack against an AI(Artifical Intelligence) dealer. The user
% can hit to be dealt cards, and stand to stay, and the computer would then deal cards to itself and would automatically stand on 17 or higher.
% The values of the cards are then compared, and the winner is determined, and either the user wins the bet or loses it. The game ends when the
% user's account has $0 remaining. It would then appear as "Game Over! Thank you for playing."
%
%All Rights Reserved 2011 (C) David Zhang, Jeff Jun, Jason Lam


loop
    locate (28, 1)
    if randomNumber (1) >= 1 and randomNumber (1) <= 4 and randomNumber (2) > 4 and boolean3 = true then % Checking for any card that is Ace 
	put "                                       ", hitsum, " or ", hitsum + 10 % Displays both possible sums when there is an Ace
	if hitsum + 10 = 21 then
	    boolean2 := false
	    locate (28, 1)
	    hitsum := hitsum + 10 
	    put "                                          ", hitsum
	    exit when hitsum = 21
	end if
	loop
	    locate (31, 1)
	    put "Which number would you like to choose? ", hitsum, " or ", hitsum + 10 % Prompt the user to pick from one of the numbers
	    get decision            % The user picks a number and that number remains to be added upon.
	    if decision = hitsum + 10 then 
		hitsum := hitsum + 10
		boolean3 := false
		locate (28, 1)
		put "                                          ", hitsum
		exit when decision = hitsum
	    elsif decision = hitsum then
		hitsum := hitsum
		boolean3 := false
		locate (28, 1)
		put "                                          ", hitsum
		exit when decision = hitsum
	    else % Checks for invalid numbers.     
		put "Please enter one of the numbers that are listed."
	    end if
	end loop
    elsif randomNumber (2) >= 1 and randomNumber (2) <= 4 and randomNumber (1) > 4 and boolean3 = true then % Checks for any card that is an ace.
	put "                                       ", hitsum, " or ", hitsum + 10 % Displays both possible sums. 
	if hitsum + 10 = 21 then
	    boolean2 := false
	    hitsum := hitsum + 10 
	    locate (28, 1)
	    put "                                          ", hitsum
	    exit when hitsum = 21
	end if
	loop
	    locate (31, 1)
	    put "Which number would you like to choose? ", hitsum, " or ", hitsum + 10 %Prompts user to pick from one of them. 
	    get decision        % The user picks a number and that number is added upon.  
	    if decision = hitsum + 10 then
		hitsum := hitsum + 10
		boolean3 := false
		locate (28, 1)
		put "                                          ", hitsum
		exit when decision = hitsum
	    elsif decision = hitsum then
		hitsum := hitsum
		boolean3 := false
		locate (28, 1)
		put "                                          ", hitsum
		exit when decision = hitsum
	    else % Checks for invalid numbers. 
		put "Please enter one of the numbers that are listed."
	    end if
	end loop
    elsif randomNumber (2) >= 1 and randomNumber (2) <= 4 and randomNumber (1) >= 1 and randomNumber (1) <= 4 and boolean3 = true then %Prompts user to pick from one of them.
	put "                                       ", hitsum, " or ", hitsum + 10 % Displays both possible sums. 
	loop
	    locate (31, 1)
	    put "Which number would you like to choose? ", hitsum, " or ", hitsum + 10 %Prompts user to pick from one of them.
	    get decision
	    if decision = hitsum + 10 then
		hitsum := hitsum + 10
		boolean3 := false
		locate (28, 1)
		put "                                          ", hitsum
		exit when decision = hitsum
	    elsif decision = hitsum then
		hitsum := hitsum
		boolean3 := false
		locate (28, 1)
		put "                                          ", hitsum
		exit when decision = hitsum
	    else        % Checks for invalid numbers. 
		put "Please enter one of the numbers that are listed."
	    end if
	end loop
    elsif randomNumber (num) >= 1 and randomNumber (num) <= 4 then
	if hitsum < 21 and hitsum + 10 < 21 then
	    put "                                       ", hitsum, " or ", hitsum + 10
	    loop
		locate (31, 1)
		put "Which one of the pairs would you like to choose? ", hitsum, " or ", hitsum + 10 %Prompts user to pick from one of them.
		get decision
		if decision = hitsum + 10 then
		    hitsum := hitsum + 10
		    boolean3 := false
		    locate (28, 1)
		    put "                                          ", hitsum
		    exit when decision = hitsum
		elsif decision = hitsum then
		    hitsum := hitsum
		    boolean3 := false
		    locate (28, 1)
		    put "                                          ", hitsum
		    exit when decision = hitsum
		else %Checks for invalid numbers. 
		    put "Please enter one of the numbers that are listed." 
		end if
	    end loop
	elsif hitsum < 21 and hitsum + 10 > 21 then
	    locate (28, 1)
	    put "                                          ", hitsum
	elsif hitsum + 10 = 21 then
	    boolean2 := false
	    locate (28, 1)
	    put "                                          ", hitsum + 10
	    hitsum := hitsum + 10
	    exit when hitsum = 21
	elsif hitsum = 21 then
	    boolean2 := false
	    locate (28, 1)
	    put "                                          ", hitsum
	    hitsum := hitsum
	    exit when hitsum = 21
	end if
    else
	put "                                          ", hitsum
    end if
    locate (31, 1)
    put "____________________"   % Displays an active status for the rounds. 
    put "User's Turn"
    put "HIT(H/h), STAND(S/s)"
    get hit
    if hit = "h" or hit = "H" then
	num := num + 1
	loop
	    boolean1 := false
	    randint (randomNumber (num), 1, 52)
	    exit when randomNumber (num) not= randomNumber (num - 2) and randomNumber (num) not= randomNumber (num - 1)
	end loop
	place := place + 20
	Pic.Draw (cardpics (randomNumber (num)), place, 200, 0)
	hitsum := hitsum + cards (randomNumber (num))
	if boolean1 = true and hitsum <= 10 then
	    put hitsum, " or ", hitsum + 10
	end if
    end if
    exit when hitsum >= 21 or hit = "S" or hit = "s"
end loop
locate (28, 1)
put "                                          ", hitsum
delay (500)
locate (31, 1)
put "____________________" % Displays the results for each round. 
put "User's Turn"
if hitsum > 21 then
    put "Busted"
elsif hitsum = 21 then
    put "Black Jack!!"
else
    put "Safe"
end if
delay (2000)
