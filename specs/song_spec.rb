require('minitest/autorun')
require('minitest/rg')
require_relative('../song.rb')

class TestSong < MiniTest::Test


  def setup
    @song = Song.new("One", "Metallica")
  end

  def test_get_song_title
    assert_equal("One", @song.title)
  end

  def test_get_song_artist
    assert_equal("Metallica", @song.artist)
  end

  # def test_get_song_title_and_artist
  #   assert_equal("One Metallica", @song.title + " " + @song.artist)
  # end

end
