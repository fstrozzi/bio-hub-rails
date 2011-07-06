class JobsController < ApplicationController


  def scheduled
    @jobs = Job.find(:all)
    p @jobs[0].handler
  end

end
