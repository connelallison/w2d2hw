class River
  attr_reader :name, :fishies
  def initialize(name, fishies)
    @name = name
    @fishies = fishies
  end

  def fish_eaten()
    return @fishies.delete_at(rand(@fishies.length()))
  end

  def fish_count()
    return @fishies.count()
  end

end

class Bear
  attr_reader :name, :type, :stomach
  def initialize(name, type)
    @name = name
    @type = type
    @stomach = []
  end

  def eat_fish(river)
    @stomach.push(river.fish_eaten)
  end

  def roar()
    return "Rawr."
  end

  def stomach_count()
    return @stomach.count()
  end

end

class Fish
  attr_reader :name
  def initialize(name)
    @name = name
  end

end
