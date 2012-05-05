require 'test_helper'

class ListTest < ActiveSupport::TestCase
  def test
  	attrs = {
  		:name => "cheerio"
  	}
  	list = List.new(attrs)
  	assert list.valid?
  end
end
