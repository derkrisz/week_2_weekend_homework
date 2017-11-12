require('minitest/autorun')
require('minitest/rg')
require_relative('../room.rb')
require_relative('../guest.rb')
require_relative('../song.rb')

class TestRoom < MiniTest::Test

  def setup

    @guest1 = Guest.new('Andrew', 100)
    @guest2 = Guest.new('John', 110)
    @guest3 = Guest.new('William', 120)
    @guest4 = Guest.new('Jake', 90)
    @guest5 = Guest.new('Tina', 200)
    @guests = [@guest1, @guest2, @guest3]
    @song1 = Song.new('One', 'Metallica')
    @song2 = Song.new('Duke Nukem', 'Megadeth')
    @song3 = Song.new('Davidian', 'Machine Head')
    @room1 = Room.new('Rock', [])
    @room2 = Room.new('Pop', @guests)
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

  def test_room_is_full
    @room2.check_in_guest(@guest4)
    @room2.check_in_guest(@guest5)
    assert_equal("Sorry this room is full", @room2.check_in_guest(@guest5))
  end

  def test_room_entry_fee
  @room1.check_in_guest(@guest5)
  @room1.check_in_guest(@guest4)
  assert_equal(195, @guest5.wallet)
  assert_equal(85, @guest4.wallet)
  end



end
