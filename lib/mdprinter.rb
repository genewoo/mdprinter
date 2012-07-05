require "mdprinter/version"

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
      indent str, ' ', 8
    end

    def link label, link, text
      "[#{label}](#{link}) \"#{text}\""
    end

    def img label, link, text
      prefix link(label, link, text), "!"
    end

    def method_missing(meth, *args, &blk)
      if (meth =~ /h[1-4]/)
        return surround(surround(args[0], ' '), '#', meth[1].to_i)
      end
      if (meth =~ /b[1-9]/)
        return prefix(prefix(args[0], '> '), '> ', meth[1].to_i - 1)
      end
      if (meth =~ /l[1-9]/)
        return prefix(prefix(args[0], '*  '), '   ', meth[1].to_i - 1)
      end
      if (meth =~ /n[1-9]/)
        return prefix(prefix(args[0], '1. '), '   ', meth[1].to_i - 1)
      end
    end

  end

end
