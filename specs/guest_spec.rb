require('minitest/autorun')
require('minitest/rg')
require_relative('../guest.rb')

class TestGuest < MiniTest::Test

  def setup
    @guest = Guest.new("Andrew")
  end

  def test_get_guest_name
    assert_equal("Andrew", @guest.name)
  end
end
