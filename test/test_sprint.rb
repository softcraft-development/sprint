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
      
      should "have good output" do
        assert_nothing_raised do
          @results.good_output
        end
      end

      should "indicate success" do
        assert_equal true, @results.success?
      end

      should "have a zero status" do
        assert_equal 0, @results.return_code
      end
      
      should "be convertible to a string" do
        a_string = ("String: " + @results).strip
        assert_equal "String: Test", a_string
      end

      # Need to find a caller of to_int for an real-world test of int coercion
      # should "be convertible to an int" do
      #   an_int = 1 + @results
      #   assert_equal 1, an_int
      # end
    end

    context "when executing 'false'" do
      setup do
        @results = sprint "/usr/bin/env false"
      end

      should "have blank execution results" do
        assert_equal "", @results.output
      end
      
      should "not have good output" do
        assert_raise RuntimeError do
          @results.good_output
        end
      end

      should "indicate failure" do
        assert_equal false, @results.success?
      end

      should "have a nonzero status" do
        assert_not_equal 0, @results.return_code
      end
    end
  end
end
