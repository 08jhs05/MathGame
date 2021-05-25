class Player
  def initialize(name)
    @name = name
    @life = 3
  end

  attr_reader :life
  attr_reader :name

  def loselife
    @life = @life - 1
  end

  def isalive
    @life > 0
  end

end