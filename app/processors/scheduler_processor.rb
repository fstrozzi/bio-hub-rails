class SchedulerProcessor < ApplicationProcessor

  require 'yaml'
  
  subscribes_to :scheduler
  
  def on_message(message)
    params = YAML.load message
    task = ScheduledTask.new(params[:classes], params[:name], params[:args][0], params[:args][1])
    task.launch :delayed => true
  end
  
end