require 'test_helper'

class ClumpTest < ActiveSupport::TestCase
  test "clump attributes must not be empty" do
    clump = Clump.new
  end
end
