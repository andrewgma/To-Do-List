class Task < ActiveRecord::Base
  validates :email, :presence => true
  validates :task_id, :presence => true, :uniqueness => true
  validates :task_name, :presence => true
end
