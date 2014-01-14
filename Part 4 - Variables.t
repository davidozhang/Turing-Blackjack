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




var Ace : int
var boolean1 : boolean % Reserved for AI judgement of cards.
var boolean2 : boolean := true % Reserved for AI judgement of cards.
var boolean3 : boolean := true % Reserved for AI judgement of cards.
var boolean4 : boolean := true % Reserved for AI judgement of cards.
var cards : array 1 .. 52 of int := init ( % This array represents the face value of each card, beginning from ace and end at the face cards
    1, 1, 1, 1, 2, 2, 2, 2, 3, 3, 3, 3, 4, 4, 4, 4, 5, 5, 5, 5, 6, 6, 6, 6, 7, 7, 7, 7, 8, 8, 8, 8, 9, 9, 9, 9, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10
    )
var decision : int
var hit : string %User's input as to whether hit or stand
var hitsum : int % The sum of all the cards dealt to the user.
var hitsum2 : int % The sum of all the cards dealt to the computer.
var num : int := 2 % Reserved for tracking the number of cards being dealt and shown to the user.
var num2 : int := 2 % Reserved for tracking the number of cards being dealt and shown to the computer.
var place : int := 320 % The placement of each consecutive cards.
var place2 : int := 320 % The placement of each consecutive cards.
var randomNumber : array 1 .. 52 of int % Reserved for generating random values for the users' cards.
var randomNumber2 : array 1 .. 52 of int % Reserved for generating random values for the computers' cards.
var randomNumber3 : int % Generates random account number
var userAccount : int % Keeps track of the user's account money.
var userBet : int % Stores the user's bet.
var userInput1 : string % Variable used to confirm the amount charged to user's account.
var userInput2 : string % Variable used for user to confirm the final result of each round.
var windowID : int
var x : int := 0
