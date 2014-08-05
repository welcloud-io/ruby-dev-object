#encoding: utf-8

$slides += [
Slide.new(  
  :subtitle => "L'encapsulation", 
  :section_p => [				
  "Initialisez l'objet", 
  "<span class='help_variable'>word</span>",				
  "avec la valeur", 		
  "<span class='help_string'>\"RUBY\"</span>",
  "en créant une propriété <span class='help_property'>@word_string</span>",       
  "et affichez cet objet",       
  "<font color='red'>avec puts, puis avec p</font>",            
  ],			
),
Slide.new(  
  :subtitle => "L'encapsulation", 
  :section_p => [				
  "Affichez le contenu de propriété", 
  "<span class='help_property'>@word_string</span>",      
  ],			
),
Slide.new(  
  :subtitle => "L'encapsulation", 
  :section_p => [			
  "Changez la valeur de la propriété", 
  "<span class='help_property'>@word_string</span>",				
  "avec la valeur <span class='help_string'>\"Sinatra\"</span>",   
  ],			
),
]