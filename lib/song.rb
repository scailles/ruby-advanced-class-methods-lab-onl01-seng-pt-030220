class Song
  attr_accessor :name, :artist_name, :filename
  @@all = []


  def self.all
    @@all
  end
  
   def self.create
    song = self.new
   self.all << song
   song
  end
  
  def self.new_by_name(name)
    song = self.new
    song.name = name
    song
  end
  
  def self.create_by_name(name)
    song = self.create
    song.name = name
    song
  end
  
  def self.find_by_name(name)
    @@all.find { |song| song.name == name }
  end
  
  def self.find_or_create_by_name(name)
    if self.find_by_name(name)
      self.find_by_name(name)
    else
      self.create_by_name(name)
    end
  end
  
  def self.alphabetical
    @@all.sort_by { |song| song.name }
  end
    
  def self.new_from_filename(filename)
    filename_array = filename.split(" - ")
    filename_song = filename_array[1].chomp(".mp3")
    filename_artist = filename_array[0]
    song = self.new
    song.name = filename_song
    song.artist_name = filename_artist
    song
  end
    
    def self.create_from_filename(filename)
      song = self.new_from_filename(filename)
      song.name = filename_song
      self.all << has_and_belongs_to_many
    end

    
    
    


end
