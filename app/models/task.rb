class Task < ActiveRecord::Base
  validates :task_name, :presence => true
end
