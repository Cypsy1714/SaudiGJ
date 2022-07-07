#region All Text

if(variation == 0) //Demo Text
{
	
	name[0] = "Name1";
	name[1] = "Name2";
	text[0] = "Text bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla"
	text[1] = "Text 2 bla bla bla."
	
	
}

if(variation == 1) //Intro Text
{
	#region Names
	name[0] = "";
	name[1] = "";
	name[2] = "";
	name[3] = "";
	name[4] = "";
	name[5] = "";
	//name[6] = "Narrator";
	#endregion
	#region Text
	text[0] = "David was a fine man. He was kind, honest and a trustworthy man.";
	text[1] = "He never missed a prayer, gave charity and always put others before himself.";
	text[2] = "He lived his life dedicated to deciphering the ancient history of objects,";
	text[3] = "and investigating ancient relics, some of those would be better of left alone...";
	text[4] = "He made a living out of trading antiques. And his obsession made him a fortune.";
	text[5] = "Until that day...";
	//text[6] = "Thus it was the end of his journey or was it just a new beggining?";
	#endregion
	
}

if(variation == 2) //Intro Imp Office
{
	
	open_vis = true;
	
	#region Names
	name[0] = "Impo";
	name[1] = "Impo";
	name[2] = "David";
	name[3] = "Impo";
	name[4] = "Impo";
	name[5] = "Impo";
	name[6] = "Impo";
	name[7] = "Impo";
	name[8] = "David";
	name[9] = "Impo";
	name[10] = "Impo";
	name[11] = "Impo";
	name[12] = "Impo";
	name[13] = "Impo";
	name[14] = "Impo";
	name[15] = "Impo";
	name[16] = "Impo";
	name[17] = "Impo";
	name[18] = "Impo";
	name[19] = "Impo";
	name[20] = "Impo";
	name[21] = "David";
	name[22] = "Impo";
	name[23] = "Impo";
	name[24] = "Impo";
	name[25] = "Impo";
	name[26] = "Impo";
	name[27] = "Impo";
	name[28] = "Impo";
	name[29] = "Impo";
	name[30] = "Impo";
	name[31] = "Impo";
	#endregion
	#region Text
	text[0] = "Hello there.";
	text[1] = "Welcome to Hell Inc my name is Impo you can call me just Imp hehehe.";
	text[2] = "Wha...";
	text[3] = "Before screaming in confusion let me clear a few things up my dear friend.";
	text[4] = "By the documents i have here it seems like you have the pass to go to heaven!";
	text[5] = "Congratulations for being a good person, but this is not heaven is it hehehe.";
	text[6] = "Unlike many, Death isnt the end for you.";
	text[7] = "Unfortunately your soul has been sold to us by one of your relatives which i can't name.";
	text[8] = "What! You can do that?";
	text[9] = "Of course, of course bussines is bussines after all doesn't matter who sells it hehehe.";
	text[10] = "It appears you have two options my good sir. Let me see...";
	text[11] = "You can either sign here to live eternity in hell,";
	text[12] = "but you wouldnt want that would you hehehehe nobody likes that.";
	text[13] = "I hate the heat, I go there to get some fine soul wine from Anybodys Souls Wines Inc";
	text[14] = "You want some, hehehe you humans will die from drinking this.";
	text[15] = "Anyways your other option is hmm let me see,";
	text[16] = "Oh I see an antiquarian are we wow I dont get those often,";
	text[17] = "It seems that you have I mean 'HAD' quite the interest for antique stuff, am I right? ";
	text[18] = "You could come in handy hehehehe.";
	text[19] = "How about you collect me some ancient artifacts I can sell on the white market?";
	text[20] = "You like it hehehe.";
	text[21] = "How am I gonna bring back the artifacts?";
	text[22] = "Of course I have this 'Magic Sack' anything you put in there teleports to my office.";
	text[23] = "But be sure to not put anything else than an artifact in there!";
	text[24] = "I dont want another arm just appearing in my office for the 756. time demon dammit!";
	text[25] = "Now I will give you a set of armour and be very carefull with it It was very expensive!";
	text[26] = "If you lose it you would need 500 eternity's of suffering in hell to pay me back,";
	text[27] = "and I dont think 1 person can suffer for 500 eternity's,";
	text[28] = "but we will see if it comes to that hehehe.";
	text[29] = "Okay you are all set come back sometimes,";
	text[30] = "I might just have the thing you need for your stealing sprees hehehe.";
	text[31] = "Just don't forget you will need to pay for them.";
	
	#endregion
	
}

#endregion

page = 0;
type_num = 0;
type_spd = 3;
type_counter = 0;

font_add_enable_aa(false);
munro = font_add("munro.ttf", 16, 0, 0, 32, 128);
draw_set_font(munro);

outline = 2;
outline_text_up = 17;
outline_text_width = 16;
text_sep = 20;

snap = false;

cutscene_1 = false;