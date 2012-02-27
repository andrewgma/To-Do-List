class History < ActiveRecord::Base
  validates :task_id, :presence => true
end
