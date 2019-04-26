class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

def self.create(name)
    s = self.new
    s.name = name
    @@all << s
end

end
