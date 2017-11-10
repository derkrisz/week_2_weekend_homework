class Room

attr_reader :name

  def initialize(name)
    @name = name
    @guests = []
    @songs = []
  end

  def guests_in_room
    return @guests.length
  end

  def check_in_guest(guest)
    @guests.push(guest)
  end

  def check_out_guest(guest)
    @guests.delete(guest)
  end

  def song_running
    @songs
  end

  def check_in_song(song)
    @songs.push(song)
  end
end
