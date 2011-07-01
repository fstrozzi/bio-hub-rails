class SchedulerProcessor < ApplicationProcessor

  subscribes_to :scheduler

  def on_message(message)
    logger.debug "Processor received: " + message
  end
  
end