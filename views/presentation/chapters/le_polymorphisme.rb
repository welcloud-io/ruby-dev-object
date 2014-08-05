#encoding: utf-8

$slides += [
Slide.new( 
  :subtitle => "Le polymorphisme", 
  :section_p => [			
  "Appeler la méthode", 
  "<span class='help_variable'>to_s</span>",
  "de l'objet <span class='help_variable'>word</span>",      
  "<font color='red'>puis</font>",				
  "Surchagez la méthodes", 
  "<span class='help_variable'>to_s</span>",
  "pour retourner la propriété <span class='help_property'>@word_string</span>",             
  ],			
),
]