class Shaper
  attr_accessor :object_name, :object, :template, :options, :proc
  
  def initialize(object_name, object, template, options, &proc)
    @object_name, @object, @template, @options, @proc = object_name, object, template, options, proc
    @default_options = @options ? @options.slice(:index) : {}
  end
end