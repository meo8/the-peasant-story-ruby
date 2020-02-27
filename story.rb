class Story
  def initialize(choice1, choice2, choice3, choice4)
    @story_beginning = "You are a lowly peasant on your way home from a wild night at the local tavern. On your trip home, you somehow lose your way and stumbled upon a cave fabled by locals to be full of danger and possible riches... unbeknownst to you. As you stumble into the cave mistakenly believing it's your home, the cave crumbles behind you. Leaving just a faint glow of a nearby torch as your only light."
    @story_item_choices = "Leaning against the wall, you see four items. A sword, a broom, something shiny, and a smooth rock. WHICH ITEM DO YOU CHOOSE? Pick between 1 - 4."
    @choice1 = "1: #{choice1}"
    @choice2 = "2: #{choice2}"
    @choice3 = "3: #{choice3}"
    @choice4 = "4: #{choice4}"
    @choice5 = "5: URL?"
    @end_story = "You chose poorly! T____T. Play again!"
  end

  def get_story_beginning
    puts @story_beginning
  end

  def get_story_items
    puts @story_item_choices
  end

  def end_story
    puts @end_story
    # retry for loops to start game over again
  end

  def get_choices
    puts [@choice1, @choice2, @choice3, @choice4]
    answer = gets.chomp.to_i
    if answer == 1 || answer == 2 || answer == 3
      end_story
    elsif answer == 4
      # story 3
    elsif answer == 5
      # JOHN CEEEEEEENA
      puts "John Cena bust through the cave walls to save your booty."
    else
      puts "Pick a number between 1 - 4!"
      puts get_choices
    end
  end
end

test = Story.new("Sword","Broom","Something shiny", "Smooth rock")

# test.get_story_beginning
# test.get_story_items
test.get_choices
