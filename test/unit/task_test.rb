require 'test_helper'

class TaskTest < ActiveSupport::TestCase
  def test1
  	# listAttrs = {
  	# 	:name => "TEST"
  	# }
  	# list = List.new(listAttrs)
    attrs = { 
      :task_name => "haha",
      :description => "woot",
      :list => "TEST"
    }
    task = Task.new(attrs)
    assert task.valid?
  end
end
