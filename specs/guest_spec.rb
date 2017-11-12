require('minitest/autorun')
require('minitest/rg')
require_relative('../guest.rb')

class TestGuest < MiniTest::Test

  def setup
    @guest = Guest.new("Andrew", 50, 'Davidian')
  end

  def test_get_guest_name
    assert_equal("Andrew", @guest.name)
  end

  def test_get_guest_wallet
    assert_equal(50, @guest.wallet)
  end

  def test_get_guest_song
    assert_equal('Davidian', @guest.song)
  end
end
