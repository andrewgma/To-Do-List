class TrashController < ApplicationController
	protect_from_forgery
	before_filter :authenticate_user!
  def index
  	@tasks = current_user.tasks.order(:due_date)
  end
end
