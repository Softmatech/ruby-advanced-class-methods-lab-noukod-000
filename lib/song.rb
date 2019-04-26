class Song
  attr_accessor :name, :artist_name
  @@all = []

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

def self.create
    song = Song.new
    @@all << song
    song
end

def self.new_by_name(name)
    song = Song.new(name)
end

def create_by_name(name)
    song = Song.new(name)
    @@all << song
    song
end

def self.find_by_name(name)
    @@all.find  { |song|  song.name(name)  }
end

def self.find_or_create_by_name(name)
    found = self.find_by_name(name)
    if !found
      found
    else
      self.create_by_name(name)
    end
end

def self.new_from_filename(filename)
    filename = filename.split(/ - /)
    artist_name = filename[0]
    song_name = filename[1].sub(/.mp3/,'')
    song = Song.new(song_name, artist_name)
    @@all << song
end

def self.destroy_all
    @@all = []
end

end
