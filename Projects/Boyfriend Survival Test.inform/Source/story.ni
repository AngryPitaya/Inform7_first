"Boyfriend Survival Test" by "AngryPitaya"

Use scoring.

The Starting Room is a room. "This is a simple starting room where the Boyfriend Survival Test begins."

When play begins:
	say "This game is for entertainment purposes only.";
	now the score is 0;
	say "[line break]Welcome to the Boyfriend Survival Test! Each correct answer will earn you 10 points. Maximum score: 50 points.[line break]";
	move the player to Question Room 1.

A number called attempts is initially 0.

Question Room 1 is a room. "Question 1: When you're at a club and a girl keeps rubbing against you, what do you do?[line break]A. Keep a distance from her.[line break]B. Why would I go clubbing? Who will wash my clothes and clean the floor?[line break]C. When I start dancing, I'm like the wind. She can't even touch me."

After reading a command when the player is in Question Room 1:
	if the player's command matches "A" or the player's command matches "B" or the player's command matches "C":
		now attempts is attempts + 1;
		if the player's command matches "B":
			increase the score by 10;
			say "Correct! You’re a great boyfriend!";
			now attempts is 0;
			move the player to Question Room 2;
		otherwise if attempts is 1:
			say "Incorrect.";
		otherwise if attempts is 2:
			say "Hint: There’s a trap in this question! The real focus is to avoid clubbing.";
			say "Moving on to the next question.";
			now attempts is 0;
			move the player to Question Room 2;
	otherwise:
		say "Please answer the question by typing A, B, or C.";

Question Room 2 is a room. "Question 2: Do you have a favorite girl on Instagram?[line break]A. I'll have one when you start using Instagram.[line break]B. Yes, I follow a few nice ones.[line break]C. No, I prefer some TikTok streamers."

After reading a command when the player is in Question Room 2:
	if the player's command matches "A" or the player's command matches "B" or the player's command matches "C":
		now attempts is attempts + 1;
		if the player's command matches "A":
			increase the score by 10;
			say "Correct! You’re a great boyfriend!";
			now attempts is 0;
			move the player to Question Room 3;
		otherwise if attempts is 1:
			say "Incorrect.";
		otherwise if attempts is 2:
			say "Hint: Thinking of other women? Bad boyfriend!";
			say "Moving on to the next question.";
			now attempts is 0;
			move the player to Question Room 3;
	otherwise:
		say "Please answer the question by typing A, B, or C.";

Question Room 3 is a room. "Question 3: If we fight and I run away from home, would you contact me first?[line break]A. Depends on whose fault it is.[line break]B. I'd call you like crazy. I’d worry about you alone out there.[line break]C. Fighting doesn’t exist; I'd never give you a reason to be angry."

After reading a command when the player is in Question Room 3:
	if the player's command matches "A" or the player's command matches "B" or the player's command matches "C":
		now attempts is attempts + 1;
		if the player's command matches "C":
			increase the score by 10;
			say "Correct! You’re a great boyfriend!";
			now attempts is 0;
			move the player to Question Room 4;
		otherwise if attempts is 1:
			say "Incorrect.";
		otherwise if attempts is 2:
			say "Hint: Why let a fight happen at all? Let her vent her anger in small ways!";
			say "Moving on to the next question.";
			now attempts is 0;
			move the player to Question Room 4;
	otherwise:
		say "Please answer the question by typing A, B, or C.";

Question Room 4 is a room. "Question 4: A female colleague wants to drink with you and gets drunk. She asks you to take her home. What do you do?[line break]A. She's a colleague, so I'll make sure she’s safe and take her to her door.[line break]B. Haha, she wants to ask me out? No way![line break]C. I'd call her friend to come pick her up."

After reading a command when the player is in Question Room 4:
	if the player's command matches "A" or the player's command matches "B" or the player's command matches "C":
		now attempts is attempts + 1;
		if the player's command matches "B":
			increase the score by 10;
			say "Correct! You’re a great boyfriend!";
			now attempts is 0;
			move the player to Question Room 5;
		otherwise if attempts is 1:
			say "Incorrect.";
		otherwise if attempts is 2:
			say "Hint: Why go drinking with a female colleague? Is your girlfriend not fun enough?";
			say "Moving on to the next question.";
			now attempts is 0;
			move the player to Question Room 5;
	otherwise:
		say "Please answer the question by typing A, B, or C.";

Question Room 5 is a room. "Question 5: Your girlfriend is peeling crawfish, and some oil drips onto your brand new designer suit. What do you do?[line break]A. No problem, just wash it for me at home.[line break]B. It's okay; it's a fake designer suit.[line break]C. As long as I have hands, I'll never let you peel crawfish alone."

After reading a command when the player is in Question Room 5:
	if the player's command matches "A" or the player's command matches "B" or the player's command matches "C":
		now attempts is attempts + 1;
		if the player's command matches "C":
			increase the score by 10;
			say "Correct! You’re a great boyfriend!";
			say "[score] points! [feedback]";
			end the story finally;
		otherwise if attempts is 1:
			say "Incorrect.";
		otherwise if attempts is 2:
			say "Hint: Don’t focus on the oil or designer suit. Help her with the crawfish instead!";
		say "[score] points! [feedback]";
		now attempts is 0;
		end the story finally;
	otherwise:
		say "Please answer the question by typing A, B, or C.";

To say feedback:
	if the score is 50:
		say "Excellent!";
	otherwise if the score is 40:
		say "Good job!";
	otherwise if the score is 30:
		say "Pass, but you could improve.";
	otherwise:
		say "Not qualified.".
