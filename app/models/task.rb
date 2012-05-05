class Task < ActiveRecord::Base
  belongs_to :list
  validates :task_name, :presence => true
end
