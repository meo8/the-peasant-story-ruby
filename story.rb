class Story
  def initialize(choice1, choice2, choice3, choice4)
    @story = "-- You are a lowly peasant on your way home from a wild night at the local tavern.\n As you attempt to find your way home, you somehow lose your way and stumble upon a cave fabled by locals to be full of danger and possible riches.\n You proceed to trip over yourself into the cave, like the idiot you are, believing it's your home and the cave entrance crumbles behind you.\n There is just a faint glow of a nearby torch as your only light.\n Leaning against the wall, you see four items. A sword, a broom, something shiny, and a smooth rock.\n WHAT DO YOU CHOOSE? (Pick a number between 1 - 4)"
    @choice1 = "1: #{choice1}"
    @choice2 = "2: #{choice2}"
    @choice3 = "3: #{choice3}"
    @choice4 = "4: #{choice4}"
    @choice5 = "5: SUDDENLY...\n JOHN CEEEEEENNNAAAA BREAKS THROUGH THE WALL, ASSESSES YOUR SITUATION AND THEN PICKS UP YOUR BABY LIKE BODY INTO HIS LARGE ARMS AND JUMPS OUT THE NEWLY CREATED HOLE IN THE WALL, RESCUING YOU FROM THIS TERRIBLE SITUATION. YOU MOST DEFINITELY WIN! BIG CONGRATS."
    @end_story = "You chose poorly! T____T.\nTry again!\n...\n..."
  end

  def get_story
    puts @story
  end

  def end_story(answer)
    endings = {
      1 => "-- You glare at the sword, remembering your kindergarten sword class you last took. OBVIOUSLY you are SUPER SKILLED after that ONE CLASS all those YEARS AGO. 'LETS ROCK AND ROLL' you say to yourself. You grasp for the swords hilt, but SUDDENLY the SWORD opens its MOUTH and BITES your HAND off. It was an OBVIOUS mimic. You bleed out and DIE. THE END. YOU LOSE",
      2 => "-- You decide this place needs a little TIDYING UP. You grab the broom handle and deftly sweep the floor of dirt. The handle breaks suddenly, because the WOOD is OLD. You suddenly impale yourself on the bottom half of the broom. THE END. YOU LOSE",
      3 => "-- You are transfixed by the SOMETHING SHINY and approach it. You are determined to MAKE IT YOURS and reach out to grasp it. The SOMETHING SHINY is actually the sparkle of a LIT PIECE OF DYNAMITE that EXPLODES! You are now a million different pieces. THE END. YOU LOSE",
    }
    puts endings[answer]
    puts "\n--YIKES, TRY AGAIN\n "
    get_story
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
    @story = "-- You regard the rather smooth rock with wide eyes, the obviously wise choice for your newly thrust journey.\n You decide to proceed deeper into the cave with your newly acquired item and quickly enter into the next opening where in the middle of the room stands a dark figure. Behind the figure is the exit of the cave.\n SUDDENLY the room fills with the figures booming voice as it turns to face you revealing its true self: A HUGE MINOTAUR!!!\n WHAT DO YOU DO? (choose a number between 1 and 4)"
  end

  def end_story(answer)
    endings = {
      1 => "-- You look down at your mighty weapon: The rock, and decide to throw it with all your strength. It flies through the air at surprising speed.. right over the head of the minotaur, who watches calmly as it hits the ground with a slight thud behind him. He then focuses his gaze on you and charges you with his axe in hand, instantly killing you upon impact. THE END. YOU LOSE.",
      2 => "-- ... You hold your breath and pass out. You wake up dead. THE END. YOU LOSE",
      4 => "-- Like the big man you are, you urinate all over yourself. The minotaur laughs himself to death. You also die from embarassment. THE END. YOU LOSE",
    }
    puts endings[answer]
    puts "\n--YIKES, TRY AGAIN\n "
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
      @story = "-- You look down at the rock in your hand and grip it tightly. Swinging your arm back, you swing it back over your head and THROW THE ROCK as hard as you can at the Minotaur.\n As The Rock is flying through the air, the rock TRANSFORMS into DWAYNE 'THE ROCK' JOHNSON who tackles THE MINOTAUR to the ground, quickly and masterfully performing a full-suplex on THE MINOTAUR.\n WHAT DO YOU DO? (Choose a number between 1 and 4)"
    end

    def end_story
      p @end_story = "-- You MAGICALLY make a SIGN appear and hold it up. The sign declares, like an idiot, that STONE COLD STEVE AUSTIN is the better wrestler. Both THE ROCK and THE MINOTAUR take massive offense to this and decide to team up on you. You never get the chance to tap out. THE END. YOU LOSE "
      get_story
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
    @story = "-- DWAYNE THE ROCK JOHNSON appreciates you SMELLING what he is COOKING. He looks down at the incapacitated MINOTAUR and performs THE PEOPLES ELBOW with enough force to send that JABRONI back through TIME, completely ERASING that CANDYASS from OUR TIMELINE.\n THE ROCK, gathers you into his arms and RUNS for the exit, out into the open air and like a HUMAN UBER delivers you home SAFELY. YOU WIN!!!!!"
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
begin_story = Story.new("Sword","Broom","Something shiny", "Smooth rock")
begin_story.get_story
begin_story.get_choices
