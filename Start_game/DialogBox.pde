void LoadAllDialogs(){
  //character 0 doesnt exist
  ArrayList<String> empty = new ArrayList<String>();
  empty.add("this is a test text");
  
  //ALIEN dialog GOOD 1
  ArrayList<String> alienDiaGood = new ArrayList<String>();
  alienDiaGood.add("Well,");
  alienDiaGood.add("at least the stars seem to be");
  alienDiaGood.add("shining brighter in here than in my office");
  
  //ALIEN dialog BAD 11
  ArrayList<String> alienDiaBad = new ArrayList<String>();
  alienDiaBad.add("Typical.");
  alienDiaBad.add("Even in the universe's best clubs,");
  alienDiaBad.add("there's still paperwork to get through.");
  alienDiaBad.add("Fine,");
  alienDiaBad.add("I'll find somewhere else to try and unwind");
  
  
  //SNAKE dialog GOOD 2
  ArrayList<String> snakeDiaGood = new ArrayList<String>();
  snakeDiaGood.add("Thank you kindly!");
  snakeDiaGood.add("Time to show these scales a good time.");
  snakeDiaGood.add("Let's see what this universe-renowned club has to offer");
  
  //SNAKE dialog BAD 12
  ArrayList<String> snakeDiaBad = new ArrayList<String>();
  snakeDiaBad.add("Well,");
  snakeDiaBad.add("that's a shame.");
  snakeDiaBad.add("I guess my reptilian charm didn't work its magic this time.");
  snakeDiaBad.add("No hard feelings,");
  snakeDiaBad.add("maybe next time the stars align for me");
  
  
  //GOBLIN dialog GOOD 3
  ArrayList<String> goblinDiaGood = new ArrayList<String>();
  //Finally, someone with brains. Let's see if this joint lives up to the hype
  goblinDiaGood.add("Finally,");
  goblinDiaGood.add("someone with brains.");
  goblinDiaGood.add("Let's see if this joint lives up to the hype");
  
  //GOBLIN dialog BAD 13
  ArrayList<String> goblinDiaBad = new ArrayList<String>();
  //You've got a problem, pal? I didn't come lightyears for some overgrown bouncer to tell me I can't get in. You better rethink this unless you want trouble on your hands.
  goblinDiaBad.add("You've got a problem, pal?");
  goblinDiaBad.add("I didn't come lightyears for some overgrown bouncer to");
  goblinDiaBad.add("tell me I can't get in.");
  goblinDiaBad.add("You better rethink this unless you want trouble on your hands.");

  
  //FISH dialog GOOD 4
  ArrayList<String> fishDiaGood = new ArrayList<String>();
  //Water you waiting for? Thanks for taking the plunge! Let's see what kind of currents swirl around in this club
  fishDiaGood.add("Water you waiting for?");
  fishDiaGood.add("Thanks for taking the plunge!");
  fishDiaGood.add("Let's see what kind of currents swirl around in this club");
  
  //FISH dialog BAD 14
  ArrayList<String> fishDiaBad = new ArrayList<String>();
  //Guess they're not ready for a head filled with aquatic wonders. Oh well, I'll just keep swimming along to find my own rhythm elsewhere
  fishDiaBad.add("Guess they're not ready for");
  fishDiaBad.add("a head filled with aquatic wonders.");
  fishDiaBad.add("Oh well,");
  fishDiaBad.add("I'll just keep swimming along to find my own rhythm elsewhere");
  
  
  //FROG dialog GOOD
  ArrayList<String> frogDiaGood = new ArrayList<String>();
  //good - Hnrm, hpmf! content froggy noises
  frogDiaGood.add("Hnrm, hpmf!");
  frogDiaGood.add("*content froggy noises*");
  
  //FROG dialog BAD
  //bad - Hnrm... dejected frog sounds.
  ArrayList<String> frogDiaBad = new ArrayList<String>();
  frogDiaBad.add("Hnrm...");
  frogDiaBad.add("*dejected frog sounds*");
  
  //COWGIRL dialog GOOD
  ArrayList<String> cowgirlDiaGood = new ArrayList<String>();
  //Well, bless your heart! You just made my day a whole lot easier. If you ever find yourself in a tight spot, remember the name. I owe you one
  cowgirlDiaGood.add("Well,");
  cowgirlDiaGood.add("bless your heart!");
  cowgirlDiaGood.add("You just made my day a whole lot easier.");
  cowgirlDiaGood.add("If you ever find yourself in a tight spot,");
  cowgirlDiaGood.add("remember the name.");
  cowgirlDiaGood.add("I owe you one");
  
  //COWGIRL dialog BAD
  ArrayList<String> cowgirlDiaBad = new ArrayList<String>();
  //bad - Well, sugar, you might've just missed out on the chance for some real excitement tonight. But don't you worry, I'll find another way in, you'll regret not letting me through. The hunt never stops
  cowgirlDiaBad.add("Well, sugar,");
  cowgirlDiaBad.add("you might've just missed out on the chance");
  cowgirlDiaBad.add("for some real excitement tonight.");
  cowgirlDiaBad.add("But don't you worry,");
  cowgirlDiaBad.add("I'll find another way in,");
  cowgirlDiaBad.add("you'll regret not letting me through.");
  cowgirlDiaBad.add("The hunt never stops");
  
  //SPIDER dialog
  ArrayList<String> spiderDiaGood = new ArrayList<String>();
  //good - Took you long enough. Now, watch as I weave my way into the heart of this party. Don't get caught in my web, darling
  spiderDiaGood.add("Took you long enough.");
  spiderDiaGood.add("Now,");
  spiderDiaGood.add("watch as I weave my way into the");
  spiderDiaGood.add("heart of this party.");
  spiderDiaGood.add("Don't get caught in my web, darling");
  
  //SPIDER dialog BAD
  ArrayList<String> spiderDiaBad = new ArrayList<String>();
  //bad - Unbelievable! This is an insult. You just missed out on the chance to have the most captivating creature at your so-called 'best' club. Enjoy your mundane clientele
  spiderDiaBad.add("Unbelievable!");
  spiderDiaBad.add("This is an insult.");
  spiderDiaBad.add("You just missed out on the chance to have");
  spiderDiaBad.add("the most captivating creature");
  spiderDiaBad.add("at your so-called 'best' club.");
  spiderDiaBad.add("Enjoy your mundane clientele");
  
  //CELESTIAL dialog
  ArrayList<String> celestialDiaGood = new ArrayList<String>();
  //good - Ah, you have wisely acknowledged the greatness before you. Let the festivities commence, for where I tread, revelry and splendor follow!
  celestialDiaGood.add("Ah, you have wisely acknowledged");
  celestialDiaGood.add("the greatness before you.");
  celestialDiaGood.add("Let the festivities commence,");
  celestialDiaGood.add("for where I tread,");
  celestialDiaGood.add("revelry and splendor follow");
  
  //CELESTIAL dialog BAD
  ArrayList<String> celestialDiaBad = new ArrayList<String>();
  //bad - Clearly, your feeble establishment is not ready to accommodate a deity of my caliber. I shall find a more worthy venue that understands the true essence of divine presence. Farewell, mortals!
  celestialDiaBad.add("Clearly, your feeble establishment");
  celestialDiaBad.add("is not ready to accommodate a deity of my caliber.");
  celestialDiaBad.add("I shall find a more worthy venue");
  celestialDiaBad.add("that understands the true essence of divine presence.");
  celestialDiaBad.add("Farewell, mortals!");
  
  //FLY dialog GOOD
  ArrayList<String> flyDiaGood = new ArrayList<String>();
  
  //FLY dialog BAD
  ArrayList<String> flyDiaBad = new ArrayList<String>();
  
  //CHONKER dialog
  //
  //FLY dialog
  //good - Whoa, you're the bee's knees! Or, well, the fly's wings, I guess! Time to dance my way into the night, thanks a million, pal!
  //bad - What? Seriously? I'm like, the life of the party! You're missing out on some major buzz. Whatever, I'll find another place that appreciates the fly, man
  
  
  allCustomerDialogs.add(empty); //0
  
  //good dialogs
  allCustomerDialogs.add(alienDiaGood); //1
  allCustomerDialogs.add(snakeDiaGood);
  allCustomerDialogs.add(goblinDiaGood); //3
  allCustomerDialogs.add(empty); //4 idk why
  allCustomerDialogs.add(fishDiaGood); //5
  allCustomerDialogs.add(frogDiaGood);
  allCustomerDialogs.add(cowgirlDiaGood); //7
  allCustomerDialogs.add(celestialDiaGood);
  allCustomerDialogs.add(flyDiaGood); //9
  allCustomerDialogs.add(spiderDiaGood);
  allCustomerDialogs.add(empty);
  allCustomerDialogs.add(empty); //13
  allCustomerDialogs.add(empty);
  allCustomerDialogs.add(empty); //14
  allCustomerDialogs.add(empty); //15
  
  //bad dialogs
  allCustomerDialogs.add(alienDiaBad); //16
  allCustomerDialogs.add(snakeDiaBad);
  allCustomerDialogs.add(goblinDiaBad); //18
  allCustomerDialogs.add(empty); //19
  allCustomerDialogs.add(fishDiaBad); //20
  allCustomerDialogs.add(frogDiaBad);
  allCustomerDialogs.add(cowgirlDiaBad); //22
  allCustomerDialogs.add(celestialDiaBad);
  allCustomerDialogs.add(flyDiaBad); //24
  allCustomerDialogs.add(spiderDiaBad);
  
  allCustomerDialogs.add(empty);
  allCustomerDialogs.add(empty);
  allCustomerDialogs.add(empty);
  allCustomerDialogs.add(empty);
  allCustomerDialogs.add(empty);
  
  
}
