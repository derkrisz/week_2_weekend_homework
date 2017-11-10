require('minitest/autorun')
require('minitest/rg')
require_relative('../room.rb')
require_relative('../guest.rb')
require_relative('../song.rb')

class TestRoom < MiniTest::Test

  def setup
    @room1 = Room.new('Rock')
    @room2 = Room.new('Pop')
    @guest1 = Guest.new('Andrew')
    @guest2 = Guest.new('John')
    @guest3 = Guest.new('William')
    @guest4 = Guest.new('Jake')
    @song1 = Song.new('One', 'Metallica')
    @song2 = Song.new('Duke Nukem', 'Megadeth')
    @song3 = Song.new('Davidian', 'Machine Head')
  end


  def test_get_room_name
    assert_equal('Rock', @room1.name)
  end

  def test_guests_in_room
    assert_equal(0, @room1.guests_in_room)
  end

  def test_check_in_guest
    @room1.check_in_guest(@guest1)
    assert_equal(1, @room1.guests_in_room)
  end

  def test_check_out_guest
    @room1.check_in_guest(@guest1)
    @room1.check_in_guest(@guest2)
    @room1.check_out_guest(@guest1)
    assert_equal(1, @room1.guests_in_room)
  end

  def test_check_in_song
    @room1.check_in_song(@song1)
    assert_equal(1, @room1.song_running.count)
  end

end
