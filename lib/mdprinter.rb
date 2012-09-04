require "mdprinter/version"
#require 'rubygems'
#require 'pry'

module MDprinter
  class << self
    def surround str, by, time = 1
      "#{by * time}#{str}#{by * time}"
    end

    def prefix str, pre, time = 1
      "#{pre * time}#{str}"
    end

    def indent(str, char, count)
      (char * count) + str.gsub(/(\n+)/) { $1 + (char * count) }
    end

    def italic str
      surround str, '_'
    end

    def bold str
      surround str, '_', 2
    end

    alias em italic
    alias strong bold

    def hr
      '* * *'
    end

    def br
      '  '
    end

    def code str
      surround str, '`'
    end

    def code_block str
      indent str, ' ', 4
    end

    def link label, link, text
      "[#{label}](#{link}) \"#{text}\""
    end

    def img label, link, text
      prefix link(label, link, text), "!"
    end

    def global_indent
      @global_indent
    end

    def global_indent=(indent)
      @global_indent = indent
    end

    def method_missing(meth, *args, &blk)
      method_name = meth.to_s # to compatible with ruby 1.8
      method_name_array = method_name.scan(/./) #still for ruby 1.8
      if (method_name =~ /h[1-4]/)
        global_indent = 0 unless global_indent
        return surround(surround(args[0], ' '), '#', method_name_array[1].to_i + self.global_indent)
      end
      if (method_name =~ /b[1-9]/)
        return prefix(prefix(args[0], '> '), '> ', method_name_array[1].to_i - 1)
      end
      if (method_name =~ /l[1-9]/)
        return prefix(prefix(args[0], '*  '), '   ', method_name_array[1].to_i - 1)
      end
      if (method_name =~ /n[1-9]/)
        return prefix(prefix(args[0], '1. '), '   ', method_name_array[1].to_i - 1)
      end
    end

  end

end
