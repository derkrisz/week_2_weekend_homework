class Room

attr_reader :name, :guests

  def initialize(name, guests)
    @name = name
    @guests = guests
    @songs = []
    @capacity = 4
  end

  def guests_in_room
    return @guests.length
  end

  def check_in_guest(guest)
    if guests_in_room < 4
    @guests.push(guest)
    else
      return "Sorry this room is full"
    end
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
