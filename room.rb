class Room

  attr_reader :name, :guests

  def initialize(name, guests, songs)
    @name = name
    @guests = guests
    @songs = songs
    @capacity = 4
    @entry_fee = 5
  end

  def guests_in_room
    return @guests.length
  end

  def check_in_guest(guest)
    if guests_in_room < @capacity
      @guests.push(guest)
      guest.wallet -= @entry_fee
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

  def favourite_song(guest, song)
    if guest.song == song.title
      return "YEAH I love this song!"
    end
  end


end
