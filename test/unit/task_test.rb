require 'test_helper'

class TaskTest < ActiveSupport::TestCase
  def test1
  	listAttrs = {
  		:name => "cheerio"
  	}
  	list = List.new(listAttrs)
  	assert list.valid?
    attrs = { 
      :task_name => "haha",
      :description => "woot",
      :list => list
    }
    task = Task.new(attrs)
    assert task.valid?
  end

  def test2
  	listAttrs = {
  		:name => "cheerio"
  	}
  	list = List.new(listAttrs)
  	assert list.valid?
    attrs = { 
      :task_name => "",
      :description => "woot",
      :list => list
    }
    task = Task.new(attrs)
    assert !task.valid?
  end

end
