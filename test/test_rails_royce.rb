require 'helper'

class TestRailsRoyce < Test::Unit::TestCase
  context Array do
    should "return a valid sphinx query" do
      assert_equal "(toto|titi)", ['toto','titi'].to_sphinx_query
    end
  end
  
  context Hash do
    should "return a valid sphinx query" do
      assert_equal({:a => "hello", :b => "1", :c => "(1|2|3)"}, {:a => "hello", :b => 1, :c => [1,2,3]}.to_sphinx_query)
    end
  end
  
  context String do
    should "return a valid sphinx query" do
      assert_equal("expected", "expected".to_sphinx_query)
    end
  end
end
