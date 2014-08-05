#encoding: utf-8

$slides += [
Slide.new(  
  :subtitle => "Mise en oeuvre : Le dictionnaire", 
  :section_p => [
  "Utilisez le dictionnaire...",
  "Pour vérifier si le mot 'mange' est un verbe",    
  ],	
  :code_to_display => DICTIONARY + DICTIONARY_EXAMPLE
),
Slide.new(  
  :subtitle => "Mise en oeuvre : Le dictionnaire", 
  :section_p => [
  "Utilisez le dictionnaire...",
  "Pour vérifier si le mot 'petits' est un adjectif",     
  ]     
),
Slide.new(  
  :subtitle => "Mise en oeuvre : Le dictionnaire", 
  :section_p => [
  "Utilisez le dictionnaire...",
  "Pour vérifier si le mot 'coccinelle' est un nom",      
  ]     
),
Slide.new(  
  :subtitle => "Mise en oeuvre : Le dictionnaire", 
  :section_p => [
  "Utilisez le dictionnaire...",
  "Pour donner le genre du nom 'orange'",     
  ]     
),
Slide.new(  
  :subtitle => "Mise en oeuvre : Le dictionnaire", 
  :section_p => [
  "Utilisez le dictionnaire...",
  "Pour donner le féminin pluriel de l'adjectif 'petit'",    
  ]     
),
Slide.new(  
  :subtitle => "Mise en oeuvre : Le dictionnaire", 
  :section_p => [
  "Utilisez le dictionnaire...",
  "Pour donner la conjugaison du verbe 'mange' à la 2ème personne du pluriel",     
  ]     
),
Slide.new(  
  :subtitle => "Correcteur orthographique </br> (Pronom + Verbe)", 
  :section_p => [     
  ],
  :code_to_display => DICTIONARY,
  :code_to_add => TESTS_PRONOUN_AND_VERB   
),
Slide.new(  
  :subtitle => "Correcteur orthographique </br> (Groupe Nominal + Verbe)", 
  :section_p => [    
  ],
  :code_to_display => DICTIONARY + SUBJECT_VERB_SOLUTION,
  :code_to_add => TESTS_PRONOUN_AND_VERB + TESTS_NOMINAL_GROUP_AND_VERB   
),
Slide.new(  
  :subtitle => "Correcteur orthographique </br> (Sujet + Verbe + Complement)", 
  :section_p => [     
  ],
  :code_to_display => DICTIONARY + SUBJECT_VERB_COMPLEMENT_SOLUTION,
  :code_to_add => TESTS_PRONOUN_AND_VERB + TESTS_NOMINAL_GROUP_AND_VERB + TESTS_SUBJECT_VERB_COMPLEMENT    
),
Slide.new(  
  :subtitle => "Correcteur orthographique </br> (Sujet + Adjectif  + Verbe + Complement)", 
  :section_p => [      
  ],
  :code_to_display => DICTIONARY + SUBJECT_VERB_COMPLEMENT_SOLUTION,
  :code_to_add => TESTS_PRONOUN_AND_VERB + TESTS_NOMINAL_GROUP_AND_VERB + TESTS_SUBJECT_VERB_COMPLEMENT + TESTS_SUBJECT_WITH_ONE_ADJECTIVE       
),
Slide.new(  
  :subtitle => "Correcteur orthographique </br> (Sujet + Adjectif  + Verbe + Complement + Adjectifs)", 
  :section_p => [      
  ],
  :code_to_add => TESTS_PRONOUN_AND_VERB + TESTS_NOMINAL_GROUP_AND_VERB + TESTS_SUBJECT_VERB_COMPLEMENT + TESTS_SUBJECT_WITH_ONE_ADJECTIVE + TESTS_SUBJECT_AND_COMPLEMENT_WITH_MANY_ADJECTIVES     
),
]