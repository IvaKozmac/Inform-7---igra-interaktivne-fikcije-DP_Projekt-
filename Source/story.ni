"Igra interaktivne fikcije" by Iva Kozmac

When play begins:
say "[italic type]You wake up in a Bedroom. You don't know the place or why are you here. Follow the riddles and find your way out.[roman type]".

[Pocetna soba]
Bedroom is a room. Bedroom is north of Bedroom door. "There is one bed, one desk and one chair. On the desk you can see the old Book about animals.".


Bedroom door is a door. Bedroom door is unlocked. Bedroom door is north of Hallway. Bedroom door is south of the Bedroom. The description is "Doors looks normal."



[Hodnik]
Hallway is a room. Hallway is west of Black door. The description is "A long, narrow room, with one old wardrobe and one Black door with a Riddle on it. Riddle is: I can fly but I’m not a helicopter. I’m an insect but I’m not an ant. I’m yellow and black but I’m not a butterfly. I can sting but I’m not a wasp."

Black door is a door. Black door is east of Hallway and west of Dinning room. Black door is unlocked. 
Bee is animal in Dinning room.

[Blagovaonica]

Dinning room is a room. Dinning room is east of Black door. Dinning room is south of Red door. The description is "In the room are a chest and a Key. In the Chest is Riddle about animal you need rescue. But first use something to put Bee to sleep or they will attack you."

Red door is a door. Red door is north of Dinning room. Red door is south of Kitchen. 

The Bug spray is here. The description is "A Bug spray".

Bee is an animal in Dinning room.

Understand the command "use" as something new. Understand "use [something] on [something]" as using it on. Using it on is an action applying to two visible things.

Carry out using something on something:
	if the noun is the Bug spray:
		if the player carries the Bug spray:
			if the second noun is the Bee or the second noun is Player:
				say "You put [the second noun] in sleep with the Bug spray. You can continue your action.";
			otherwise:
				say "You can't attack that with a Bug spray.";
		otherwise:
			say "You aren't carrying the Bug spray.";
	otherwise:
		say "other instances of using here.".

Key is in Dinning room. The description is "Key can open chest.".

Chest is in the Dinning room. Chest is a locked container. Key unlocks the Chest. 

After opening Chest:
	say "I'm colorful but I'm not a rainbow. I'm sometimes found on a shoulder but I'm not a bag strap. I have two legs but Im not an ostrich. I can talk but I'm not a person. I can fly but I'm not an airplane."

		
[Kuhinja]

Kitchen is a room. Kitchen is north of Red door. Kitchen is west of Mirror. The description is "In the kitchen you can see big Kitchen table with some food and little conrol panel. Also, there is a lot of kitchen elements and a big Mirror."

The Mirror is a door. The Mirror is closed and openable. 

An control panel is a device in the Kitchen.
After switching on the panel:
	say "Mirror is moving and reveal secret passage!";
	now the Mirror is open.
After switching off the panel:
	say "The Mirror closes again.";
	now the Mirror is closed.

[Secret passage]

Secret passage is a room. Secret passage is east of Mirror. Secret passage is west of Colorful door. The description is "You can't see because its dark here. Turn on the light and continue your action."

The light switch is a thing in the Secret passage. The light switch can be on or off. The light switch is off.

Instead of pushing the light switch:
	if the light switch is off:
		now the light switch is on;
		now Secret passage is lit;
		if Secret passage is lighted:
			say "You can now see your way.";
	otherwise:
		now the light switch is off;
		if light switch is off:
			say "You can't see anything again.";


Colorful door is door. Colorful door is unlocked. Colorful door is east of Secret passage. Colorful door is west of Secret room.

[Prostorija nakon skrivenog prolaza]

The Secret room is room. Secret room is east of Colorful door. The description is "Secret room is big room with a lot of things in it. There are some toys, cockroaches, big closets, two desks, some bags, old key and one animal. If you want save animal, take a food and it will follow you. You can only escape if you go through Back door."

Back door is a door. Back door is east of Secret room. The Back door can be openable. The Back door can be open. Back door is locked. Old key unlocks Back door.

Old key is in Secret room. The description is "Key can open chest.".

Seed mix is in Secret room.
Carrot is in Secret room.
Apple is in Secret room. 

Parrot is a portable animal in Secret room. Parrot is either convinced or unconvinced. Parrot is unconvinced.

After taking the Seed mix:
	if the player is not carrying Parrot
	begin;
		say “You are carrying the Parrot.”;
	move Parrot to player;
	end if.
	
After dropping the Seed mix:
	if the player is carrying Parrot
	begin;
		say “You aren't carrying the Parrot.”;
	move Parrot to Secret room;
	end if.
	
After taking the Carrot, say "You choose wrong food, try again."
After taking the Apple, say "You choose wrong food, try again."

After going through Back door:
		say "This is the end, you saved animal. Good job. ";
		end the story saying "You can go back to reality.";

Yard is a room. Yard is east of Back door. The description is "There are the grass and some trees."

Release along with an interpreter.
