class LocksController < ApplicationController
  def update
    @lock = Lock.first
    @lock.update_attributes(lock_params)
    
    binding.pry
    render json: { message: "updated" }, status: 200
  end
  
  private
  
  def lock_params
    params.require("lock").permit(:turned_on, :color, :disable_transition)
  end
end
