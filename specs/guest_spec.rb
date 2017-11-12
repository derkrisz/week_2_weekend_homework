require('minitest/autorun')
require('minitest/rg')
require_relative('../guest.rb')

class TestGuest < MiniTest::Test

  def setup
    @guest = Guest.new("Andrew", 50)
  end

  def test_get_guest_name
    assert_equal("Andrew", @guest.name)
  end

  def test_get_guest_wallet
    assert_equal(50, @guest.wallet)
  end
end
