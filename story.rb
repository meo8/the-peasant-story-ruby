class Story
  def initialize
    @story_beginning = "You are a lowly peasant on your way home from a wild night at the local tavern. On your trip home, you somehow lose your way and stumbled upon a cave fabled by locals to be full of danger and possible riches... unbeknownst to you. As you stumble into the cave mistakenly believing it's your home, the cave crumbles behind you. Leaving just a faint glow of a nearby torch as your only light."
    @story_item_choices = ""
  end

  def get_story_beginning
    puts @story_beginning
  end

end
