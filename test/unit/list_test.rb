require 'test_helper'

class ListTest < ActiveSupport::TestCase
  def test1
  	attrs = {
  		:name => "cheerio"
  	}
  	list = List.new(attrs)
  	assert list.valid?
  end

  def test2
  	attrs = {
  		:name => ""
  	}
  	list = List.new(attrs)
  	assert !list.valid?
  end
end
