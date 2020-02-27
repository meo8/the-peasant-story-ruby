class Story
  def initialize(choice1, choice2, choice3, choice4)
    @story_beginning = "You are a lowly peasant on your way home from a wild night at the local tavern. On your trip home, you somehow lose your way and stumbled upon a cave fabled by locals to be full of danger and possible riches... unbeknownst to you. As you stumble into the cave mistakenly believing it's your home, the cave crumbles behind you. Leaving just a faint glow of a nearby torch as your only light."
    @story_item_choices = "Leaning against the wall, you see four items. A sword, a broom, something shiny, and a smooth rock. WHICH ITEM DO YOU CHOOSE?"
    @choice1 = "1: #{choice1}"
    @choice2 = "2: #{choice2}"
    @choice3 = "3: #{choice3}"
    @choice4 = "4: #{choice4}"
    @choice5 = "5: URL?"
  end

  def get_story_beginning
    puts @story_beginning
  end

  def get_story_items
    puts @story_item_choices
  end

  def get_choices
    puts [@choice1, @choice2, @choice3, @choice4]
  end

end

test = Story.new("choose me!","no, me!","cool down",4)
test.get_choices
