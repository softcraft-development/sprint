require File.dirname(__FILE__) + '/test_helper.rb'
require 'shoulda'

class TestSprint < Test::Unit::TestCase

  def setup
  end
  
  context "The run command" do
    context "when executing 'echo Test'" do
      setup do
        @results = sprint "echo Test"
      end

      should "return the word 'Test' as its execution results" do
        assert_equal "Test", @results.output.strip
      end

      should "indicate success" do
        assert_equal true, @results.success?
      end

      should "have a zero status" do
        assert_equal 0, @results.return_code
      end
    end
  end
end
