class Story
  def initialize(choice1, choice2, choice3, choice4)
    @story = "You are a lowly peasant on your way home from a wild night at the local tavern.\n On your trip home, you somehow lose your way and stumbled upon a cave fabled by locals to be full of danger and possible riches... unbeknownst to you.\n As you stumble into the cave mistakenly believing it's your home, the cave crumbles behind you.\n Leaving just a faint glow of a nearby torch as your only light.\n Leaning against the wall, you see four items. A sword, a broom, something shiny, and a smooth rock.\n WHAT DO YOU CHOOSE? (Pick a number between 1 - 4)"
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

  def end_story
    puts @end_story
    get_story
    get_choices
    # retry for loops to start game over again
  end

  def get_choices
    puts [@choice1, @choice2, @choice3, @choice4]
    answer = gets.chomp.to_i
    if answer == 1 || answer == 2 || answer == 3
      end_story
    elsif answer == 4
       puts story_branch2 = Story2.new("Do this", "Do that", "Do thing", "Do more thing")
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

class Story2 < Story
  def initialize (choice1, choice2, choice3, choice4)
    super(choice1, choice2, choice3, choice4)
  end
  def get_story
    @story = "A BRAND NEW WORLD"
  end

  def end_story
    puts @end_story
    get_story
    get_choices
    # retry for loops to start game over again
  end
    def get_choices
      puts [@choice1, @choice2, @choice3, @choice4]
      answer = gets.chomp.to_i
      if answer == 1 || answer == 2 || answer == 3
        end_story
      elsif answer == 4
         puts story_branch3 = Story3.new("Do this", "Do that", "Do thing", "Do more thing")
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



begin_story = Story.new("Sword","Broom","Something shiny", "Smooth rock")

begin_story.get_story
begin_story.get_choices
