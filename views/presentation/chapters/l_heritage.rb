#encoding: utf-8

$slides += [
Slide.new(  
  :subtitle => "L'héritage", 
  :section_p => [				
  "Créez une classe", 
  "<span class='help_variable'>Noun</span>",       
  "<font color='red'>qui hérite de la classe Word</font>",       
  ],			
),
Slide.new(  
  :subtitle => "L'héritage", 
  :section_p => [
  "Implémenter la méthode",     
  "<span class='help_variable'>gender</span>",
  "qui retourne le symbol <span class='help_symbol'>:masculine</span>",             
  ],			
),
Slide.new(  
  :subtitle => "L'héritage", 
  :section_p => [    
  "L'initialisez un objet <span class='help_variable'>noun</span>",
  "avec la valeur <span class='help_string'>\"canard\"</span>",
  "et affichez le genre de l'objet",    
  ],			
),
Slide.new(  
  :subtitle => "L'héritage", 
  :section_p => [				
  "Créez une classe", 
  "<span class='help_variable'>Article</span>",       
  "<font color='red'>qui hérite de la classe <span class='help_variable'>Word</span></font>",       
  "et qui implémente la méthode",    
  "<span class='help_variable'>gender</span>",
  "qui retourne le symbol <span class='help_symbol'>:feminine</span>",       
  "L'initialiser avec la valeur",       				
  "<span class='help_string'>\"la\"</span>",     
  ],			
),
]