require 'test_helper'

class Rake::RoboFontTest < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::Rake::RoboFont::VERSION
  end
end
