class FrontController < ApplicationController
	protect_from_forgery
	before_filter :authenticate_user!
  def index
  	@tasks = Task.order(:due_date)
  end
  def deleteTask task
  	task.update_attribute(:isDeleted, true)
  end
end