class Heroes
  
  attr_accessor :name, :power, :bio
  
  HEROES = []

  def initialize(args)
    @name = args[:name]
    @power = params[:power]
    @bio = params[:bio]
    @@all << self
  end
  
  def self.all
    HEROES
  end
  
end
  