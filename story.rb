



class Story
  def initialize(choice1, choice2, choice3, choice4)
    @story = "-- You are a lowly simpleton peasant on your way home from a wild night at the local tavern.\n -- As you attempt to find your way home, you somehow lose your way and find yourself in a cave.\n -- You proceed to trip over yourself as you enter deeper into the cave believing it's your home.\n -- You idiot.\n -- The cave entrance crumbles behind you.\n -- There is just a faint glow of a nearby torch as your only light and leaning against the wall, you see four items.\n -- A sword, a broom and a smooth rock.\n\nWHAT DO YOU CHOOSE? (Pick a number between 1 - 4)"
    @choice1 = "1: #{choice1}"
    @choice2 = "2: #{choice2}"
    @choice3 = "3: #{choice3}"
    @choice4 = "4: #{choice4}"
    @choice5 = "5: -- THE UNCENA CHOICE!\n\n-- SUDDENLY... YOU HEAR SEVERAL AIRHORNS JUST OUTSIDE THE WALLS!\n\n-- JOOOOOOHHHNNN CEEEEEENNNAAAA BREAKS THROUGH THE WALL\n\n-- HE ASSESSES YOUR SITUATION AND PICKS UP YOUR FRAGILE, BABY LIKE, BODY INTO HIS LARGE, WELL OILED ARMS AND JUMPS BACK OUT OF THE NEWLY CREATED HOLE IN THE WALL.\n\n-- JOHN CENA HAS RESCUED YOU FROM THIS TERRIBLE SITUATION. YOU MOST DEFINITELY WIN! BIG CONGRATS."
    @end_story = "You chose poorly! T____T.\nTry again!\n...\n..."
  end

  def get_story
    puts @story
  end

  def end_story(answer)
    endings = {
      1 => "-- You glare at the sword, remembering your kindergarten sword class you last took. OBVIOUSLY you are SUPER SKILLED after that ONE CLASS all those YEARS AGO.\n\n-- 'LETS ROCK AND ROLL!' you yell out. The sword yells out 'HELL YEAH BROTHER!'.\n\n-- This should have phased you. But, as mentioned. You're an idiot..\n\n-- SUDDENLY the MIMIC SWORD opens its MOUTH and BITES your HAND off. You bleed out and DIE. THE END. YOU LOSE",
      2 => "-- You decide this place needs a little TIDYING UP. You grab the broom handle and deftly sweep the floor of dirt. The handle breaks suddenly, because the WOOD is OLD. You suddenly impale yourself on the bottom half of the broom. THE END. YOU LOSE",
      3 => "-- Your head falls back, your mouth opens wide, you tilt your entire body backwards and breath in sharply yet deeply..\n\n-- You QUICKLY exhale as you flex your body forwards in a massive scream 'COOOOOOL ITTTTT!' which echoes out through the cave.....\n\n --'no u' is replied back quietly.\n\n -- k, cool, now what do you wanna do?",
    }
    puts endings[answer]
    puts "\nTRY AGAIN\n--------------"
    get_choices
  end


  def get_choices
    puts [@choice1, @choice2, @choice3, @choice4]
    answer = gets.chomp.to_i
    if answer == 1 || answer == 2 || answer == 3
      end_story(answer)
    elsif answer == 4
       puts story_branch2 = Story2.new("Throw the rock!", "Hold your breath until you pass out", "Throw the rock AT the minotaur", "Urinate thy loins")
       puts story_branch2.get_story
       puts story_branch2.get_choices
    elsif answer == 5
      puts @choice5
    else
      puts "Pick a number between 1 - 4!"
      puts get_choices
    end
  end
end




# Path 2
class Story2 < Story
  def initialize (choice1, choice2, choice3, choice4)
    super(choice1, choice2, choice3, choice4)
  end


  def get_story
    @story = "-- You regard the rather SMOOTH ROCK with WIDE eyes. It was the OBVIOUS and WISE choice for this journey.\n\n-- With your newly acquired item in hand, you proceed FOWARD and quickly enter into the next section of cave.\n\n-- You see a LARGE hulking figure standing in middle of the room\n\n-- Behind the figure is the exit of the cave. Its so close!\n\n-- SUDDENLY the room fills with the figures booming voice as it turns to face you, revealing its true self: A HUGE MINOTAUR!!!\n\nWHAT DO YOU DO? (Pick a number between 1 - 4)"
  end

  def end_story(answer)
    endings = {
      1 => "-- You look down at your mighty weapon: The rock. You decide to throw it with all your big stronk strenf.\n\n-- Right at the wall.\n\n-- The MINOTAUR kills you. THE END. YOU LOSE.",
      2 => "-- You make eye contact with the MINOTAUR to show DOMINANCE and inhale a shallow breath QUICKLY.\n\n-- You hold your BREATH. Your FACE gets RED, then PURPLE, then BLUE. You KEEP EYE CONTACT the ENTIRE time.\n\n-- You PASS OUT.\n\n-- The MINOTAUR is CONFUSED.\n\n-- You wake up DEAD. THE END. YOU LOSE",
      4 => "-- You know JUST the thing to DO!\n\n -- Like the big brained smarty pants you are, you choose to URINATE all over yourself.\n\n-- The MINOTAUR bursts\n\n-- You LAUGH.\n\n-- The MINOTAUR laughs again.\n\n-- You LAUGH again. \n\n-- The MINOTAUR stabs you.\n\nTHE END. YOU LOSE",
    }
    puts endings[answer]
    puts "\nTRY AGAIN\n--------------\n"
    get_story
    get_choices
  end

  def get_choices
    puts [@choice1, @choice2, @choice3, @choice4]
    answer = gets.chomp.to_i
    if answer == 1 || answer == 2 || answer == 4
      end_story(answer)
    elsif answer == 3
      puts story_branch3 = Story3.new("GASP!", "SWOON!", "Hold up a sign that says 'STONE COLD STEVE AUSTIN IS WAY COOLER'", "Cheer THE ROCK on!")
      puts story_branch3.get_story
      puts story_branch3.get_choices
    elsif answer == 5
      puts @choice5
    else
      puts "Pick a number between 1 - 4!"
      puts get_choices
    end
  end
end

#Branch 3
  class Story3 < Story
    def initialize (choice1, choice2, choice3, choice4)
      super(choice1, choice2, choice3, choice4)
    end
    def get_story
      @story = "-- You look down at the rock in your hand and grip it tightly. Swinging your arm back quickly, you LAUNCH the THE ROCK as hard as you can at the MINOTAUR.\n\n-- As THE ROCK is flying through the air, the rock TRANSFORMS into DWAYNE 'THE ROCK' JOHNSON who then tackles THE MINOTAUR to the GROUND.\n\n-- He QUICKLY and MASTERFULLY performs a SUPLEX on THE MINOTAUR.\n\n WHAT DO YOU DO? (Choose a number between 1 and 4)"
    end

    def end_story
      puts @end_story = "-- You MAGICALLY make a SIGN appear and hold it up above your HEAD.\n\n-- (its worth mentioning again here that you are INDEED an IDIOT)\n\n-- The sign declares that 'STONE COLD STEVE AUSTIN' is the better wrestler.\n\n-- Both THE ROCK and THE MINOTAUR take MASSIVE offense to this and decide to TEAM UP on you.\n\n-- You never get the chance to tap out. THE END. YOU LOSE "
      puts "\nTRY AGAIN\n--------------"
      get_choices
      # retry for loops to start game over again
    end

  def get_choices
    puts [@choice1, @choice2, @choice3, @choice4]
    answer = gets.chomp.to_i
    if answer == 1 || answer == 2 || answer == 4
      puts story_branch3 = Story4.new("Created by Meo", "Created by Shaker", "Created by Andee", "Select any of these to PLAY AGAIN")
      puts story_branch3.get_story
      puts story_branch3.get_choices
    elsif answer == 3
      end_story
    elsif answer == 5
      puts @choice5
    else
      puts "Pick a number between 1 - 4!"
      puts get_choices
    end
  end
end


#Branch 4 - Win
class Story4 < Story
  def initialize (choice1, choice2, choice3, choice4)
    super(choice1, choice2, choice3, choice4)
  end

  def get_story
    @story = "-- DWAYNE THE ROCK JOHNSON appreciates you SMELLING what he is COOKING.\n\n-- He looks down at the knocked out MINOTAUR and performs THE PEOPLES ELBOW with enough force to send that JABRONI back through TIME, completely ERASING that CANDYASS from OUR TIMELINE.\n\n-- THE ROCK then gathers you into his BIG arms and RUNS for the exit!\n\n-- Out into the open air and like a HUMAN UBER delivers you home SAFELY.\n\n\nYOU WIN!!!!!"
  end

  def get_choices
    puts [@choice1, @choice2, @choice3, @choice4]
    answer = gets.chomp.to_i
    if answer == 1 || answer == 2 || answer == 3 || answer == 4
      begin_story = Story.new("Sword","Broom","Something shiny", "Smooth rock")
      begin_story.get_story
      begin_story.get_choices
    elsif answer == 5
      puts @choice5
    else
      puts "Pick a number between 1 - 4!"
      puts get_choices
    end
  end
end




#Initialize our dope journey on first bootup
begin_story = Story.new("Sword","Broom","Tell the cave to 'COOL IT!!!!!'", "Smooth rock")
begin_story.get_story
begin_story.get_choices
