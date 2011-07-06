class JobsController < ApplicationController


  def scheduled
    @jobs = Job.find(:all)
  end

end
