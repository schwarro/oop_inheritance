require 'minitest/autorun'
require 'minitest/pride'
require './multilinguist.rb'

class TestMultilinguist < MiniTest::Test

  def setup
    @speaker = Multilinguist.new
  end

  def test_language_in_german
    assert_equal(@speaker.language_in('Germany'), 'de')
  end

  def test_language_in_french
    assert_equal(@speaker.language_in('France'), 'fr')
  end

  def test_language_in_russian
    assert_equal(@speaker.language_in('Japan'), 'ja')
  end

end
