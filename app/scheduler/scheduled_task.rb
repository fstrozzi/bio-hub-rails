class ScheduledTask
  
  require 'thor/base'
  
  def initialize(classes,name,args,options)
    @klass = classes
    @name = name
    @args = args
    @options = options
    @options.delete(:background)
  end
  
  def launch(opts = {:delayed => false})
    task = @klass.gsub(/Thor::Sandbox::/,'').constantize
    if opts[:delayed]
      task.new.delay.invoke(@name, @args, @options)
    else
      task.new.invoke(@name, @args, @options)
    end
  end
  
end