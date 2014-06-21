a= [ 'aa', 'ccc', 'bb', 'd' ]
p a.sort

p a.sort { |x, y|  x.size <=> y.size } 


## A REPRODUIRE EN JAVA POUR MIEUX COMPRENDRE

class Report
  
  attr_accessor :text
  
  def initialize(formatter)
    @text = 'TEXTE'
    @formatter = formatter
  end
  
  def output_report
    @formatter.output_report(text)
  end
  
  #~ def output_report
    #~ @formatter.output_report(self)
  #~ end  
  
end

class Formatter
  
  def output_report(text)
    raise 'abstract method call'
  end
  
end

class HTMLFormatter < Formatter
  
  def output_report(text)
    puts 'HTML : ' +  text
  end  
  
  #~ def output_report(context)
    #~ puts 'HTML : ' +  context.text
  #~ end
  
end


class PlainTextFormatter < Formatter

  def output_report(text)
    puts 'PlainText : ' +  text
  end  
  
  #~ def output_report(context)
    #~ puts 'PlainText : ' +  context.text
  #~ end    

end

Report.new(HTMLFormatter.new).output_report
Report.new(PlainTextFormatter.new).output_report

