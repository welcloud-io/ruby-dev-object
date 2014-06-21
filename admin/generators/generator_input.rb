#encoding: utf-8

STYLE =
%Q{
.slide {
background-color: #fff;
}
section {
color: #000000;
margin-left: 1%;
margin-right: 1%;
margin-bottom: 1%;
}
.code_result {

font-size: 0.6em;
background-color: #332;      
color: yellow;      
}
.code_helper.current {
background-color: #fff;
}
div.slide > h1 {
color: #000000;  
}
div.slide > h2 {
color: #ffffff;
background-color: orange;
}
div.code_helper > h2 {  
color: #ffffff;
background-color: orange;
}
span.help_output {
color: yellow;
background-color: black;
}
span.help_string {
color: lime;
background-color: black;
}
span.help_variable {
color: white;
background-color: black;
}
span.help_integer {
color: yellowgreen;
background-color: black;
}
}

EDITOR_CONFIG = 
%Q{
<script src="ace-builds/src-min-noconflict/ace.js" type="text/javascript" charset="utf-8"></script>
<script>
var code_editor = ace.edit(document.getElementById('code_input'));
Editor.prototype.updateEditor = function (code) { code_editor.setValue(code, -1); };
Editor.prototype.content = function () { return code_editor.getValue();  };
code_editor.setTheme('ace/theme/vibrant_ink');
code_editor.getSession().setMode('ace/mode/ruby');
code_editor.setFontSize('14px');
</script>
}

PREVENT_DEFAULT_KEYS =
%Q{
<script>
preventDefaultKeys = function(e) {
  if (e.keyCode == F5) e.preventDefault();
  if (e.keyCode == BACK_SPACE) e.preventDefault();    
  if (e.ctrlKey && e.which == R) e.preventDefault();
}
</script>
}

CONNEXION_SLIDE = "
<h3 style='text-align:center'>INTRODUCTION A RUBY</h3>
<h3 style='color: red; text-align:center'>CONNECTEZ VOUS SUR :</h3>
<h4 style='color: blue; font-size: 1.3em; text-align:center'>http://ruby-dev-intro.herokuapp.com</h4>
"

DICTIONARY =
%Q{
class Dictionary
  
  attr_accessor :verb, :articles, :nouns, :adjectives
  
  def initialize(verb, adjectives, nouns)
    
    @articles = {
    "un" => { :number => :singular}, 
    "une" => { :number => :singular}, 
    "le" => { :number => :singular}, 
    "la" => { :number => :singular}, 
    "les" => { :number => :plural},
    "des" => { :number => :plural }
    }  
    
    @articles_words = @articles.keys

    @verb = {
      'je' => verb[0],
      'tu' => verb[1],
      'il' => verb[2],
      'elle' => verb[2],
      'nous' => verb[3],
      'vous' => verb[4],
      'ils' => verb[5],
      'elles' => verb[5]
    }
    
    @pronouns_words = @verb.keys
    
    @verb[:singular] = verb[2]
    @verb[:plural] = verb[5]
    
    @verb_words = @verb.values.uniq
    
    @adjectives = {}
    
    adjectives.each do |adjective|
      (0..3).each do |index|
        @adjectives[adjective[index]] = { 
          :masculin => { 
            :singular => adjective[0], 
            :plural => adjective[1]}, 
          :feminin => { 
            :singular => adjective[2], 
            :plural => adjective[3]} 
        }
      end
    end
    
    @adjective_words = @adjectives.keys

    @nouns = {}
    
    nouns.each do |noun|
      @nouns[noun[1]] = { 
      :gender => noun[0].to_sym, 
      :singular => noun[1], 
      :plural => noun[2] }
      @nouns[noun[2]] = { 
      :gender => noun[0].to_sym, 
      :singular => noun[1], 
      :plural => noun[2] }
    end  
    
    @noun_words = @nouns.keys
  end
  
  def adjective?(word)
    @adjective_words.include?(word)
  end
  
  def verb?(word)
    @verb_words.include?(word)
  end 

  def noun?(word)
    @noun_words.include?(word)
  end 
  
  def pronoun?(word)
    @pronouns_words.include?(word)
  end
  
  def article?(word)
    @articles_words.include?(word)
  end
  
end
}

TESTS_PRONOUN_AND_VERB = 
%Q{

require 'test/unit'

class TestsPronounAndVerb < Test::Unit::TestCase

  def test01
	  
    verb = ['mange', 'manges', 'mange', 'mangeons', 'mangez', 'mangent']
    adjectives = []
    nouns = []
    
    assert_equal       "je mange", 
    corrected_sentence("je manges", verb, adjectives, nouns), "je manges"
    
  end
      
  def test02
	  
    verb = ['mange', 'manges', 'mange', 'mangeons', 'mangez', 'mangent']
    adjectives = []
    nouns = []
    
    assert_equal       "tu manges", 
    corrected_sentence("tu mangent", verb, adjectives, nouns)
    
  end   

  def test03
	  
    verb = ['mange', 'manges', 'mange', 'mangeons', 'mangez', 'mangent']
    adjectives = []
    nouns = []
    
    assert_equal       "il mange", 
    corrected_sentence("il mangent", verb, adjectives, nouns)
    
  end  
  
  def test04
	  
    verb = ['mange', 'manges', 'mange', 'mangeons', 'mangez', 'mangent']
    adjectives = []
    nouns = []
    
    assert_equal       "elle mange", 
    corrected_sentence("elle manges", verb, adjectives, nouns)
    
  end  

  def test05
	  
    verb = ['mange', 'manges', 'mange', 'mangeons', 'mangez', 'mangent']
    adjectives = []
    nouns = []
    
    assert_equal       "nous mangeons", 
    corrected_sentence("nous mangez", verb, adjectives, nouns)
    
  end  
  
  def test06
	  
    verb = ['mange', 'manges', 'mange', 'mangeons', 'mangez', 'mangent']
    adjectives = []
    nouns = []
    
    assert_equal       "vous mangez", 
    corrected_sentence("vous mangeons", verb, adjectives, nouns)
    
  end   
  
  def test07
	  
    verb = ['mange', 'manges', 'mange', 'mangeons', 'mangez', 'mangent']
    adjectives = []
    nouns = []
    
    assert_equal       "ils mangent", 
    corrected_sentence("ils mange", verb, adjectives, nouns)
    
  end  

  def test08
	  
    verb = ['mange', 'manges', 'mange', 'mangeons', 'mangez', 'mangent']
    adjectives = []
    nouns = []
    
    assert_equal       "ils mangent", 
    corrected_sentence("ils mange", verb, adjectives, nouns)
    
  end
  
  def test09
	  
    verb = ['mange', 'manges', 'mange', 'mangeons', 'mangez', 'mangent']
    adjectives = []
    nouns = []
    
    assert_equal       "elles mangent", 
    corrected_sentence("elles manges", verb, adjectives, nouns)
    
  end

end

}

TESTS_NOMINAL_GROUP_AND_VERB = 
%Q{

require 'test/unit'

class TestsNominalGroupAndVerb < Test::Unit::TestCase
  
  def test10
	  
    verb = ['mange', 'manges', 'mange', 'mangeons', 'mangez', 'mangent']
    adjectives = [ ]
    nouns = [ ['feminin', 'coccinelle', 'coccinelles'] ]
    
    assert_equal       "la coccinelle mange", 
    corrected_sentence("la coccinelle manges", verb, adjectives, nouns), "la coccinelle manges"
    
  end  

  def test11
	  
    verb = ['mange', 'manges', 'mange', 'mangeons', 'mangez', 'mangent']
    adjectives = [ ]
    nouns = [ ['masculin', 'renard', 'renards'] ]
    
    assert_equal       "un renard mange", 
    corrected_sentence("un renard mangent", verb, adjectives, nouns)
    
  end
  
  def test12
	  
    verbe = ['mange', 'manges', 'mange', 'mangeons', 'mangez', 'mangent']
    adjectifs = [ ['petit', 'petits', 'petite', 'petites'] ]
    noms = [ ['feminin', 'coccinelle', 'coccinelles'] ]
    
    assert_equal       "une coccinelle mange", 
    corrected_sentence("une coccinelles manges", verbe, adjectifs, noms)
    
  end  

end

}


TESTS_SUBJECT_VERB_COMPLEMENT = 
%Q{

require 'test/unit'

class TestsSubjectVerbComplement < Test::Unit::TestCase

  def test13
	  
    verbe = ['mange', 'manges', 'mange', 'mangeons', 'mangez', 'mangent']
    adjectifs = [ ['petit', 'petits', 'petite', 'petites'] ]
    noms = [ ['masculin', 'renard', 'renards'], ['masculin', 'fruit', 'fruits'] ]
    
    assert_equal       "un renard mange des fruits", 
    corrected_sentence("un renard mange des fruit", verbe, adjectifs, noms)
    
  end

end
}  
  

TESTS_SUBJECT_WITH_ONE_ADJECTIVE =  
%Q{

require 'test/unit'

class TestsSubjectWithOneAdjective < Test::Unit::TestCase

  def test14
	  
    verbe = ['mange', 'manges', 'mange', 'mangeons', 'mangez', 'mangent']
    adjectifs = [ ['petit', 'petits', 'petite', 'petites'] ]
    noms = [ ['masculin', 'renard', 'renards'], ['masculin', 'fruit', 'fruits'] ]
    
    assert_equal       "un petit renard mange", 
    corrected_sentence("un petit renard mangent", verbe, adjectifs, noms)
    
  end
  
  def test15
	  
    verbe = ['mange', 'manges', 'mange', 'mangeons', 'mangez', 'mangent']
    adjectifs = [ ['petit', 'petits', 'petite', 'petites'] ]
    noms = [ ['feminin', 'coccinelle', 'coccinelles'] ]
    
    assert_equal       "une petite coccinelle mange", 
    corrected_sentence("une petits coccinelle manges", verbe, adjectifs, noms)
    
  end 

  def test16
	  
    verbe = ['vole', 'voles', 'vole', 'volons', 'volez', 'volent']
    adjectifs = [ ['petit', 'petits', 'petite', 'petites'] ]
    noms = [ ['feminin', 'coccinelle', 'coccinelles'] ]
    
    assert_equal       "les petites coccinelles volent", 
    corrected_sentence("les petit coccinelles voles", verbe, adjectifs, noms)
    
  end 

  def test17
	  
    verbe = ['mange', 'manges', 'mange', 'mangeons', 'mangez', 'mangent']
    adjectifs = [ ['vert', 'verts', 'verte', 'vertes'] ]
    noms = [ ['feminin', 'coccinelle', 'coccinelles'] ]
    
    assert_equal       "la coccinelle verte mange", 
    corrected_sentence("la coccinelles vertes mangent", verbe, adjectifs, noms)
    
  end
  
end
}


TESTS_SUBJECT_AND_COMPLEMENT_WITH_MANY_ADJECTIVES =
%Q{
require 'test/unit'

class TestsSubjectAndComplementWithManyAdjectives < Test::Unit::TestCase

  def test18
	  
    verbe = ['mange', 'manges', 'mange', 'mangeons', 'mangez', 'mangent']
    adjectifs = [ ['petit', 'petits', 'petite', 'petites'],  ['joli', 'jolis', 'jolie', 'jolies'], ['vert', 'verts', 'verte', 'vertes'] ]
    noms = [ ['feminin', 'coccinelle', 'coccinelles'] ]
    
    assert_equal       "la jolie petite coccinelle verte mange", 
    corrected_sentence("la jolis petit coccinelles vert manges", verbe, adjectifs, noms)
    
  end 
  
  def test19
	  
    verbe = ['mange', 'manges', 'mange', 'mangeons', 'mangez', 'mangent']
    adjectifs = [ ['petit', 'petits', 'petite', 'petites'] ]
    noms = [ ['masculin', 'fruit', 'fruits'] ]
    
    assert_equal       "ils mangent des petits fruits", 
    corrected_sentence("ils mange des petit fruit", verbe, adjectifs, noms)
    
  end  
  
  def test20
	  
    verbe = ['mange', 'manges', 'mange', 'mangeons', 'mangez', 'mangent']
    adjectifs = [ ['petit', 'petits', 'petite', 'petites'] ]
    noms = [ ['masculin', 'fruit', 'fruits'] ]
    
    assert_equal       "je mange un petit fruit", 
    corrected_sentence("je manges un petits fruits", verbe, adjectifs, noms)
    
  end
  
  def test21
	  
    verbe = ['mange', 'manges', 'mange', 'mangeons', 'mangez', 'mangent']
    adjectifs = [ ['petit', 'petits', 'petite', 'petites'] ]
    noms = [ ['feminin', 'orange', 'oranges'] ]
    
    assert_equal       "ils mangent des petites oranges", 
    corrected_sentence("ils mange des petit orange", verbe, adjectifs, noms)
    
  end

  def test22
	  
    verbe = ['mange', 'manges', 'mange', 'mangeons', 'mangez', 'mangent']
    adjectifs = [ ['petit', 'petits', 'petite', 'petites'], ['vert', 'verts', 'verte', 'vertes'] ]
    noms = [ ['masculin', 'fruit', 'fruits'] ]
    
    assert_equal       "ils mangent un petit fruit vert", 
    corrected_sentence("ils manges un petits fruits verte", verbe, adjectifs, noms)
    
  end   
  
  def test23
	  
    verbe = ['mange', 'manges', 'mange', 'mangeons', 'mangez', 'mangent']
    adjectifs = [ ['petit', 'petits', 'petite', 'petites'] ]
    noms = [ ['feminin', 'coccinelle', 'coccinelles'], ['feminin', 'orange', 'oranges'] ]
    
    assert_equal       "les petites coccinelles mangent une petite orange", 
    corrected_sentence("les petits coccinelle manges une petits oranges", verbe, adjectifs, noms)
    
  end

  def test24
	  
    verbe = ['mange', 'manges', 'mange', 'mangeons', 'mangez', 'mangent']
    adjectifs = [ ['petit', 'petits', 'petite', 'petites'],  ['joli', 'jolis', 'jolie', 'jolies'], ['vert', 'verts', 'verte', 'vertes'] ]
    noms = [ ['feminin', 'coccinelle', 'coccinelles'], ['masculin', 'kiwi', 'kiwis'] ]
    
    assert_equal       "les jolies petites coccinelles vertes mangent des jolis petits kiwis verts", 
    corrected_sentence("les joli petits coccinelle vert manges des jolie petite kiwi verte", verbe, adjectifs, noms)
    
  end

end

}

TITLE = 'RUBY - Programmation Orientée Objet'    
SLIDES = [
{			:Section => [
			"<h3 style='text-align:center'>INTRODUCTION A RUBY</h3>",
			"<h3 style='color: red; text-align:center'>CONNECTEZ VOUS SUR :</h3>",
			"<h4 style='color: blue; font-size: 1.3em; text-align:center'>http://ruby-dev-object.herokuapp.com</h4>",
			'<div class="code_to_display"> puts "BIENVENUE A LA FORMATION RUBY & ORIENTE OBJET"</div>',
			],			
},
{ :Subtitle => "Les objets", 
			:Section => [	
			"</p>",
			"Affichez sur la sur la sortie standard",
			"</p>",
			"<p>",				
			"<font color='red'>15 fois de suite la chaine de caractères</font>", 
			"</p>", 
			"<p>",      
      "<span class='help_string'>\"RUBY !\"</span>",    
			"</p>",      
			],			
},
{ :Subtitle => "Les objets", 
			:Section => [
			"<p>",				
			"Affichez sur la sur la sortie standard",
			"</p>",
			"<p>",				
			"<font color='red'>15 fois de suite la chaine de caractères</font>", 
			"</p>", 
      "<p>",
			"<font color='red'>\"EN APPELANT\" la methode '*' de l'objet chaine</font>",
      "</p>",
			],			
},
{ :Subtitle => "Les objets", 
			:Section => [
			"<p>",				
			"Affichez",
			"</p>",
			"<font color='red'>les méthodes</font>",       
			"<p>",				
			"de l'objet",
			"</p>",  				
      "<span class='help_string'>\"RUBY !\"</span>",  
			"</p>",
			],			
},
{ :Subtitle => "Les objets", 
			:Section => [
			"<p>",				
			"Affichez",
			"</p>",
			"<font color='red'>en \"petite casse\"</font>",       
			"<p>",				
			"la chaine",
			"</p>",  				
      "<span class='help_string'>\"RUBY !\"</span>",  
			"</p>",
			],			
},
{ :Subtitle => "Les objets", 
			:Section => [
			"<p>",				
			"Affichez",
			"</p>",
			"<font color='red'>le nombre de méthodes</font>",       
			"<p>",				
			"de la chaine",
			"</p>",  				
      "<span class='help_string'>\"RUBY !\"</span>",  
			"</p>",
			],			
},
{ :Subtitle => "Les classes", 
			:Section => [
			"<p>",				
			"Affichez",
			"</p>",
			"<font color='red'>la classe</font>",       
			"<p>",				
			"de l'objet",
			"</p>",      
			"<p>",				
      "<span class='help_string'>\"RUBY !\"</span>",  
			"</p>",     
			],			
},
{ :Subtitle => "Les classes", 
			:Section => [
			"<p>",				
			"Déclarez une variable", 
			"</p>",
			"<p>",				
			"<span class='help_variable'>chaine</span>",
			"</p>",
			"<p>",				
			"Initialisez la avec le mot", 
			"</p>",
			"<p>",				
			"<span class='help_string'>\"RUBY !\"</span>",
			"</p>",
			"</p>",
			"<font color='red'>en utilisant la classe String</font>",       
			"<p>",      
			"<p>",				
			"Affichez la sur la sortie standard",
			"</p>"     
			],			
},
{ :Subtitle => "Les classes", 
			:Section => [
			"<p>",				
			"Affichez", 
			"</p>",
			"</p>",
			"<font color='red'>les méthodes</font>",       
			"<p>", 
			"<p>",				
			"de la classe", 
			"</p>",      
			"</p>",
			"<font color='red'>String</font>",       
			"<p>",     
			],			
},
{ :Subtitle => "Les classes", 
			:Section => [
			"<p>",				
			"Affichez", 
			"</p>",
			"</p>",
			"<font color='red'>le nombre de méthodes</font>",       
			"<p>", 
			"<p>",				
			"de la classe", 
			"</p>",      
			"</p>",
			"<font color='red'>String</font>",       
			"<p>",     
			],			
},
{ :Subtitle => "Les classes", 
			:Section => [
			"<p>",				
			"Créez une classe", 
			"</p>",
			"</p>",
			"<font color='red'>Word</font>",       
			"<p>", 
			"<p>",				
			"et affichez", 
			"</p>",
			"</p>",
			"<font color='red'>les méthodes</font>",       
			"<p>", 
			"<p>",				
			"de la classe", 
			"</p>",      
			],			
},
{ :Subtitle => "Les classes", 
			:Section => [
			"<p>",				
			"Affichez",
			"</p>",
			"<font color='red'>le nombre de méthodes</font>",       
			"<p>",				
			"de la classe",
			"</p>",  				
			"<p>",
			"<font color='red'>Word</font>",       
			"</p>", 
			],			
},
{ :Subtitle => "Les méthodes", 
			:Section => [
			"<p>",				
			"Créez une instance de la classe Word", 
			"</p>",
			"</p>",
			"<font color='red'>(un objet) word</font>",       
			"<p>", 
			"<p>",				
			"et affichez",
			"</p>",
			"</p>",
			"<font color='red'>les méthodes</font>",       
			"<p>", 
			"<p>",				
			"de l'objet", 
			"</p>",      
			],			
},
{ :Subtitle => "Les classes", 
			:Section => [
			"<p>",				
			"Affichez",
			"</p>",
			"<font color='red'>le nombre de méthodes</font>",       
			"<p>",				
			"de l'objet",
			"</p>",  				
			"<p>",
			"<font color='red'>word</font>",       
			"</p>", 
			],			
},
{ :Subtitle => "Les classes", 
			:Section => [
			"<p>",				
			"Affichez",
			"</p>",
			"<font color='red'>la différence entre le nombre de méthodes</font>",       
			"<p>",				
			"de l'objet",
			"</p>",  				
			"<p>",
			"<font color='red'>word</font>",       
			"</p>", 
      "<p>et</p>",
			"<p>",				
			"de la classe",
			"</p>",  				
			"<p>",
			"<font color='red'>Word</font>",       
			"</p>",       
			],			
},
{ :Subtitle => "Les méthodes", 
			:Section => [
			"<p>",				
			"Créez une méthode", 
			"</p>",
			"</p>",
			"<font color='red'>zz</font>",       
			"<p>", 
			"<p>",				
			"et affichez",
			"</p>",
			"</p>",
			"<font color='red'>les méthodes</font>",       
			"<p>", 
			"<p>",				
			"de l'objet", 
			"</p>",      
			],			
},
{ :Subtitle => "Les méthodes", 
			:Section => [
			"<p>",				
			"Créez une méthode", 
			"</p>",
			"</p>",
			"<font color='red'>zz</font>",       
			"<p>", 
			"<p>",				
			"qui affiche",
			"</p>",
			"</p>",
			"<span class='help_string'>\"I am the zz method\"</span>",       
			"<p>", 
      "et appelez",
			"</p>",
			"<p>",       
			"<font color='red'>cette méthode</font>",
			"</p>",		
			],			
},
{ :Subtitle => "Les méthodes", 
			:Section => [
			"<p>",				
			"Créer un objet", 
			"</p>",
			"<p>",
			"<span class='help_variable'>word</span>",
			"</p>", 
			"<p>",				
			"avec la valeur", 
			"</p>",      
			"<p>",				
			"<span class='help_string'>\"RUBY\"</span>",
			"</p>",      
			],			
},
{ :Subtitle => "Les méthodes", 
			:Section => [
			"<p>",				
			"Afichez la valeur de l'objet", 
			"</p>",
			"<p>",
			"<span class='help_variable'>word</span>",
			"</p>",
			"</p>",
			"<font color='red'>avec puts, puis avec p</font>",       
			"<p>",      
			],			
},
{ :Subtitle => "Les méthodes", 
			:Section => [
			"<p>",				
			"Afichez la valeur de l'objet", 
			"</p>",
			"<p>",
			"<span class='help_variable'>word</span>",
			"</p>",
			"</p>",
			"<font color='red'>avec puts et avec p</font>",       
			"<p>",      
			],			
},
{ :Subtitle => "Les méthodes", 
			:Section => [
			"<p>",				
			"Surchagez la méthodes", 
			"</p>",
			"<p>",
			"<span class='help_variable'>to_s</span>",
			"</p>",
			"</p>",
			"<font color='red'>pour retourner la valeur de l'objet</font>",       
			"<p>",      
			],			
},
{ :Subtitle => "Les méthodes", 
			:Section => [
			"<p>",				
			"Créer la méthode", 
			"</p>",
			"<p>",
			"<span class='help_variable'>*</span>",
			"</p>",
			"<p>",				
			"Avec la variable", 
			"</p>",      
			"<p>",
			"<span class='help_variable'>x</span>",
			"</p>",      
			"</p>",
			"<font color='red'>qui retourne x fois la valeur du mot</font>",       
			"<p>", 
			"</p>",
			"<font color='red'>en utilisant une boucle for</font>",       
			"<p>",      
			],			
},
{ :Subtitle => "Les méthodes", 
			:Section => [
			"<p>",				
			"Créer la méthode", 
			"</p>",
			"<p>",
			"<span class='help_variable'>*</span>",
			"</p>",
			"<p>",				
			"Avec la variable", 
			"</p>",      
			"<p>",
			"<span class='help_variable'>x</span>",
			"</p>",      
			"</p>",
			"<font color='red'>qui retourne x fois la valeur du mot</font>",       
			"<p>", 
			"</p>",
			"<font color='red'>en utilisant un bloc</font>",       
			"<p>",      
			],			
},
{ :Subtitle => "Les méthodes", 
			:Section => [
			"<p>",				
			"Créer la méthode", 
			"</p>",
			"<p>",
			"<span class='help_variable'>*</span>",
			"</p>",
			"<p>",				
			"Avec la variable", 
			"</p>",      
			"<p>",
			"<span class='help_variable'>x</span>",
			"</p>",      
			"</p>",
			"<font color='red'>qui retourne x fois la valeur du mot</font>",       
			"<p>", 
			"</p>",
			"<font color='red'>en utilisant un bloc</font>",       
			"<p>",      
			],			
},
{ :Subtitle => "Les méthodes", 
			:Section => [
			"<p>",				
			"Changer la valeur du mot", 
			"</p>",
			"<p>",
			"<span class='help_variable'>word</span>",
			"</p>", 
			"<p>",				
			"avec cette valeur", 
			"</p>",      
			"<p>",				
			"<span class='help_string'>\"BLOC\"</span>",
			"</p>",      
			],			
},
{ :Subtitle => "Les méthodes", 
			:Section => [
			"<p>",				
			"Définissez la methode \"setter\"", 
			"</p>",
			"<p>",
			"<span class='help_variable'>word_string=</span>",
			"</p>",      
			],			
},
{ :Subtitle => "Les méthodes", 
			:Section => [
			"<p>",				
			"Utilsez attr_accessor pour remplacer", 
			"</p>",
			"<p>",
			"<span class='help_variable'>word_string=</span>",
			"</p>",      
			],			
},
{ :Subtitle => "Mise en oeuvre : Le dictionnaire", 
			:Section => [
      "<p>",
			"Utilsez le dictionnaire...",
      "</p>",
      "<p>",
			"Pour vérifier si le mot 'mange' est un verbe",
      "</p>"      
			],	
      :Helper => [
      "<p>",
			"Utilsez le dictionnaire...",
      "</p>",
      "<p>",
			"Pour vérifier si le mot 'mange' est un verbe",
      "</p>" ,      
      "<div class='code_to_display'> 
      #{ DICTIONARY } 
      dictionary = Dictionary.new(
        ['mange', 'manges', 'mange', 'mangeons', 'mangez', 'mangent'],
        [ ['petit', 'petits', 'petite', 'petites'] ],
        [ ['feminin', 'coccinelle', 'coccinelles'], ['feminin', 'orange', 'oranges'] ]
      )      
    </div>",
      ],      
},
{ :Subtitle => "Mise en oeuvre : Le dictionnaire", 
			:Section => [
      "<p>",
			"Utilsez le dictionnaire...",
      "</p>",
      "<p>",
			"Pour vérifier si le mot 'petits' est un adjectif",
      "</p>"      
			]     
},
{ :Subtitle => "Mise en oeuvre : Le dictionnaire", 
			:Section => [
      "<p>",
			"Utilsez le dictionnaire...",
      "</p>",
      "<p>",
			"Pour vérifier si le mot 'coccinelle' est un nom",
      "</p>"      
			]     
},
{ :Subtitle => "Mise en oeuvre : Le dictionnaire", 
			:Section => [
      "<p>",
			"Utilsez le dictionnaire...",
      "</p>",
      "<p>",
			"Pour donner le genre de l'adjectif 'orange'",
      "</p>"      
			]     
},
{ :Subtitle => "Mise en oeuvre : Le dictionnaire", 
			:Section => [
      "<p>",
			"Utilsez le dictionnaire...",
      "</p>",
      "<p>",
			"Pour donner féminin pluirel de l'adjectif 'petit'",
      "</p>"      
			]     
},
{ :Subtitle => "Mise en oeuvre : Le dictionnaire", 
			:Section => [
      "<p>",
			"Utilsez le dictionnaire...",
      "</p>",
      "<p>",
			"Pour donner la conjugaison de 'mange' à la 2ème personne du pluriel",
      "</p>"      
			]     
},
{ :Subtitle => "Correcteur orthographique", 
			:Section => [     
			],
      :Helper => [    
      "<div class='code_to_display'> #{ DICTIONARY } </div>",
      "<div class='code_to_add'> #{ TESTS_PRONOUN_AND_VERB } </div>",
      ],    
},
{ :Subtitle => "Correcteur orthographique", 
			:Section => [    
			],
      :Helper => [    
      "<div class='code_to_display'> #{ DICTIONARY } </div>",
      "<div class='code_to_add'> #{ TESTS_PRONOUN_AND_VERB + TESTS_NOMINAL_GROUP_AND_VERB } </div>",
      ],    
},
{ :Subtitle => "Correcteur orthographique", 
			:Section => [     
			],
      :Helper => [    
      "<div class='code_to_display'> #{ DICTIONARY } </div>",
      "<div class='code_to_add'> #{ TESTS_PRONOUN_AND_VERB + TESTS_NOMINAL_GROUP_AND_VERB + TESTS_SUBJECT_VERB_COMPLEMENT} </div>",
      ],    
},
{ :Subtitle => "Correcteur orthographique", 
			:Section => [      
			],
      :Helper => [    
      "<div class='code_to_display'> #{ DICTIONARY } </div>",
      "<div class='code_to_add'> #{ TESTS_PRONOUN_AND_VERB + TESTS_NOMINAL_GROUP_AND_VERB + TESTS_SUBJECT_VERB_COMPLEMENT + TESTS_SUBJECT_WITH_ONE_ADJECTIVE } </div>",
      ],    
},
{ :Subtitle => "Correcteur orthographique", 
			:Section => [      
			],
      :Helper => [    
      "<div class='code_to_display'> #{ DICTIONARY } </div>",
      "<div class='code_to_add'> #{ TESTS_PRONOUN_AND_VERB + TESTS_NOMINAL_GROUP_AND_VERB + TESTS_SUBJECT_VERB_COMPLEMENT + TESTS_SUBJECT_WITH_ONE_ADJECTIVE + TESTS_SUBJECT_AND_COMPLEMENT_WITH_MANY_ADJECTIVES} </div>",
      ],    
},
]

