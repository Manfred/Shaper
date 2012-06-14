class Shaper
  module HTML
    UNWANTED = { '<' => '&lt;', '>' => '&gt;', '&' => '&amp;' }
    UNWANTED_RE = /#{UNWANTED.keys.map { |l| Regexp.escape(l) }.join('|')}/
    
    def escape_content(content)
      content.gsub(UNWANTED_RE) { |m| UNWANTED[m] }
    end
    
    def escape_attribute(value)
      content.gsub(/"/, '&quot;')
    end
    
    def attributes(attributes)
      if c = attributes[:class]
        " class=\"#{c.respond_to?(:join) ? c.join(' ') : c.to_s}\""
      end
    end
    
    def tag(name, *arguments)
      if arguments.last.kind_of?(Hash)
        options = arguments.pop
      else
        options = {}
      end
      content = arguments.first
      
      out = "<#{name}#{attributes(options)}>"
      out << "#{escape_content(content)}</#{name}>" if content
      out
    end
  end
end