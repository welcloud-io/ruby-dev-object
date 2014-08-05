#encoding: utf-8

DICTIONARY =
%Q{
class Dictionary
  attr_accessor :verb, :articles, :nouns, :adjectives
  
  def initialize(verb, adjectives, nouns)
    @articles = formated_articles
    @verb = formated_verb(verb)
    @adjectives = formated_adjectives(adjectives)
    @nouns = formated_nouns(nouns)
  end
  
  def formated_articles
    @articles = @articles || {
    "un" => { :number => :singular}, 
    "une" => { :number => :singular}, 
    "le" => { :number => :singular}, 
    "la" => { :number => :singular}, 
    "les" => { :number => :plural},
    "des" => { :number => :plural }
    }    
  end
  
  def formated_verb(verb)
    @verb = @verb || {
    'je' => verb[0],
    'tu' => verb[1],
    'il' => verb[2],
    'elle' => verb[2],
    'nous' => verb[3],
    'vous' => verb[4],
    'ils' => verb[5],
    'elles' => verb[5]
    }
  end
  
  def formated_adjectives(adjectives)
    return @adjectives if @adjectives
    @adjectives = {}
    adjectives.each do |adjective|
      (0..3).each do |index|
        @adjectives[adjective[index]] = { 
        :masculine => { 
          :singular => adjective[0], 
          :plural => adjective[1]}, 
        :feminine => { 
          :singular => adjective[2], 
          :plural => adjective[3]} 
        }
      end
    end
    @adjectives
  end
  
  def formated_nouns(nouns)
    return @nouns if @nouns
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
    @nouns
  end
  
  def adjective?(word)
    @adjectives.keys.include?(word)
  end
  
  def verb?(word)
    @verb.values.uniq.include?(word)
  end 

  def noun?(word)
    @nouns.keys.include?(word)
  end 
  
  def pronoun?(word)
    @verb.keys.include?(word)
  end
  
  def article?(word)
    @articles.keys.include?(word)
  end
end
}

DICTIONARY_EXAMPLE =
%Q{
dictionary = Dictionary.new(
  ['mange', 'manges', 'mange', 'mangeons', 'mangez', 'mangent'],
  [ ['petit', 'petits', 'petite', 'petites'] ],
  [ [:feminine, 'coccinelle', 'coccinelles'], [:feminine, 'orange', 'oranges'] ]
)
}

SUBJECT_VERB_COMPLEMENT_SOLUTION =
%Q{
class Word
   def initialize(word_string, context, dictionary)
    @word_string = word_string 
    @context = context
    @dictionary = dictionary
  end
end

class Verb < Word
  def corrected
    if @context.subject.pronoun then
        return @dictionary.verb[@context.subject.pronoun.corrected]
    end
    if @context.subject.article then
        return @dictionary.verb[@context.subject.article.pronoun.corrected]        
    end
  end
end

class Article < Word
  def number
    @dictionary.articles[@word_string][:number]
  end
  
  def pronoun
    return Pronoun.new("il", self, @dictionary) if self.number == :singular
    return Pronoun.new("ils", self, @dictionary) if self.number == :plural    
  end
  
  def corrected
    @word_string
  end
end

class Noun < Word
  def corrected
    @dictionary.nouns[@word_string][@context.article.number]
  end
end

class Pronoun < Word
  def corrected
    @word_string
  end
end

class NominalGroup
    
  def initialize(nominal_string, dictionary)
    @nominal_string = nominal_string
    @dictionary = dictionary
    @words = nominal_string.split.map do |word_string|
        case
        when @dictionary.article?(word_string) then Article.new(word_string, self, @dictionary)
        when @dictionary.noun?(word_string) then Noun.new(word_string, self, @dictionary)
        when @dictionary.pronoun?(word_string) then Pronoun.new(word_string, self, @dictionary)
        end
    end    
  end
  
  def article
    first_word = @nominal_string.split.first      
    Article.new(first_word, self, @dictionary) if @dictionary.article?(first_word)
  end    
  
  def pronoun
    first_word = @nominal_string.split.first
    Pronoun.new(first_word, self, @dictionary) if @dictionary.pronoun?(first_word)
  end 
  
  def noun
    @nominal_string.split.each { |word| return Noun.new(word, self, @dictionary) if @dictionary.noun?(word) }
  end
  
  def corrected
    @words.map do |word|
      word.corrected
    end.join(' ')
  end
    
end

class Subject < NominalGroup
end

class Complement < NominalGroup
end

class Sentence
  def initialize(sentence_string, dictionary)
    @sentence_string = sentence_string
    @dictionary = dictionary
  end
  
  def subject
    subject_string = @sentence_string.split[0..verb_index-1].join(' ')
    Subject.new(subject_string, @dictionary)    
  end
  
  def verb_index
    @sentence_string.split.each.with_index do |word, index| 
      return index if @dictionary.verb?(word)
    end
  end  

  def verb
    verb_string = @sentence_string.split[verb_index]
    Verb.new(verb_string, self, @dictionary)
  end
  
  def complement
    complement_string = @sentence_string.split[verb_index+1..-1].join(' ')
    Complement.new(complement_string, @dictionary)
  end  
  
  def corrected
    (subject.corrected + " " + verb.corrected + " " + complement.corrected).strip
  end
end

def corrected_sentence(sentence_string, verb, adjectives, nouns)
  dictionary = Dictionary.new(verb, adjectives,nouns)
  Sentence.new(sentence_string, dictionary).corrected
end
}

SUBJECT_VERB_SOLUTION =
%Q{
class Verb
  def initialize(context, dictionary)
    @context = context
    @dictionary = dictionary
  end
    
  def corrected
    if @context.subject.pronoun then
        return @dictionary.verb[@context.subject.pronoun.corrected]
    end
    if @context.subject.article then
        return @dictionary.verb[@context.subject.article.pronoun.corrected]        
    end
  end
end

class Article
  def initialize(word_string, context, dictionary)
    @word_string = word_string 
    @context = context
    @dictionary = dictionary
  end
  
  def number
    @dictionary.articles[@word_string][:number]
  end
  
  def pronoun
    return Pronoun.new("il", self, @dictionary) if self.number == :singular
    return Pronoun.new("ils", self, @dictionary) if self.number == :plural    
  end
  
  def corrected
    @word_string
  end
end

class Noun
  def initialize(word_string, context, dictionary)
    @word_string = word_string  
    @context = context
    @dictionary = dictionary
  end 
  
  def corrected
    @dictionary.nouns[@word_string][@context.article.number]
  end
end

class Pronoun
  def initialize(word_string, context, dictionary)
    @word_string = word_string  
    @context = context
    @dictionary = dictionary
  end
  
  def corrected
    @word_string
  end
end

class Subject
  def initialize(subject_string, dictionary)
    @subject_string = subject_string
    @dictionary = dictionary
    @words = subject_string.split.map do |word_string|
        case
        when @dictionary.article?(word_string) then Article.new(word_string, self, @dictionary)
        when @dictionary.pronoun?(word_string) then Pronoun.new(word_string, self, @dictionary)
        end
    end     
  end
  
  def article
    first_word = @subject_string.split.first      
    Article.new(first_word, self, @dictionary) if @dictionary.article?(first_word)
  end    
  
  def pronoun
    first_word = @subject_string.split.first
    Pronoun.new(first_word, self, @dictionary) if @dictionary.pronoun?(first_word)
  end 
  
  def noun
    @subject_string.split.each { |word| return Noun.new(word, self, @dictionary) if @dictionary.noun?(word) }
  end
  
  def corrected
    return article.corrected + " " + noun.corrected if article and noun
    return pronoun.corrected if pronoun
  end
end

class Sentence
  def initialize(sentence_string, dictionary)
    @sentence_string = sentence_string
    @dictionary = dictionary
  end
  
  def subject
    subject_string = @sentence_string.split[0..verb_index-1].join(' ')
    Subject.new(subject_string, @dictionary)    
  end
  
  def verb_index
    @sentence_string.split.each.with_index do |word, index| 
      return index if @dictionary.verb?(word)
    end
  end  

  def verb
    Verb.new(self, @dictionary)
  end
  
  def corrected
    subject.corrected + " " + verb.corrected
  end
end

def corrected_sentence(sentence_string, verb, adjectives, nouns)
  dictionary = Dictionary.new(verb, adjectives,nouns)
  Sentence.new(sentence_string, dictionary).corrected
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
    nouns = [ [:feminine, 'coccinelle', 'coccinelles'] ]
    
    assert_equal       "la coccinelle mange", 
    corrected_sentence("la coccinelle manges", verb, adjectives, nouns), "la coccinelle manges"
    
  end  

  def test11
	  
    verb = ['mange', 'manges', 'mange', 'mangeons', 'mangez', 'mangent']
    adjectives = [ ]
    nouns = [ [:masculine, 'renard', 'renards'] ]
    
    assert_equal       "un renard mange", 
    corrected_sentence("un renard mangent", verb, adjectives, nouns)
    
  end
  
  def test12
	  
    verbe = ['mange', 'manges', 'mange', 'mangeons', 'mangez', 'mangent']
    adjectifs = [ ['petit', 'petits', 'petite', 'petites'] ]
    noms = [ [:feminine, 'coccinelle', 'coccinelles'] ]
    
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
    noms = [ [:masculine, 'renard', 'renards'], [:masculine, 'fruit', 'fruits'] ]
    
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
    noms = [ [:masculine, 'renard', 'renards'], [:masculine, 'fruit', 'fruits'] ]
    
    assert_equal       "un petit renard mange", 
    corrected_sentence("un petit renard mangent", verbe, adjectifs, noms)
    
  end
  
  def test15
	  
    verbe = ['mange', 'manges', 'mange', 'mangeons', 'mangez', 'mangent']
    adjectifs = [ ['petit', 'petits', 'petite', 'petites'] ]
    noms = [ [:feminine, 'coccinelle', 'coccinelles'] ]
    
    assert_equal       "une petite coccinelle mange", 
    corrected_sentence("une petits coccinelle manges", verbe, adjectifs, noms)
    
  end 

  def test16
	  
    verbe = ['vole', 'voles', 'vole', 'volons', 'volez', 'volent']
    adjectifs = [ ['petit', 'petits', 'petite', 'petites'] ]
    noms = [ [:feminine, 'coccinelle', 'coccinelles'] ]
    
    assert_equal       "les petites coccinelles volent", 
    corrected_sentence("les petit coccinelles voles", verbe, adjectifs, noms)
    
  end 

  def test17
	  
    verbe = ['mange', 'manges', 'mange', 'mangeons', 'mangez', 'mangent']
    adjectifs = [ ['vert', 'verts', 'verte', 'vertes'] ]
    noms = [ [:feminine, 'coccinelle', 'coccinelles'] ]
    
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
    noms = [ [:feminine, 'coccinelle', 'coccinelles'] ]
    
    assert_equal       "la jolie petite coccinelle verte mange", 
    corrected_sentence("la jolis petit coccinelles vert manges", verbe, adjectifs, noms)
    
  end 
  
  def test19
	  
    verbe = ['mange', 'manges', 'mange', 'mangeons', 'mangez', 'mangent']
    adjectifs = [ ['petit', 'petits', 'petite', 'petites'] ]
    noms = [ [:masculine, 'fruit', 'fruits'] ]
    
    assert_equal       "ils mangent des petits fruits", 
    corrected_sentence("ils mange des petit fruit", verbe, adjectifs, noms)
    
  end  
  
  def test20
	  
    verbe = ['mange', 'manges', 'mange', 'mangeons', 'mangez', 'mangent']
    adjectifs = [ ['petit', 'petits', 'petite', 'petites'] ]
    noms = [ [:masculine, 'fruit', 'fruits'] ]
    
    assert_equal       "je mange un petit fruit", 
    corrected_sentence("je manges un petits fruits", verbe, adjectifs, noms)
    
  end
  
  def test21
	  
    verbe = ['mange', 'manges', 'mange', 'mangeons', 'mangez', 'mangent']
    adjectifs = [ ['petit', 'petits', 'petite', 'petites'] ]
    noms = [ [:feminine, 'orange', 'oranges'] ]
    
    assert_equal       "ils mangent des petites oranges", 
    corrected_sentence("ils mange des petit orange", verbe, adjectifs, noms)
    
  end

  def test22
	  
    verbe = ['mange', 'manges', 'mange', 'mangeons', 'mangez', 'mangent']
    adjectifs = [ ['petit', 'petits', 'petite', 'petites'], ['vert', 'verts', 'verte', 'vertes'] ]
    noms = [ [:masculine, 'fruit', 'fruits'] ]
    
    assert_equal       "ils mangent un petit fruit vert", 
    corrected_sentence("ils manges un petits fruits verte", verbe, adjectifs, noms)
    
  end   
  
  def test23
	  
    verbe = ['mange', 'manges', 'mange', 'mangeons', 'mangez', 'mangent']
    adjectifs = [ ['petit', 'petits', 'petite', 'petites'] ]
    noms = [ [:feminine, 'coccinelle', 'coccinelles'], [:feminine, 'orange', 'oranges'] ]
    
    assert_equal       "les petites coccinelles mangent une petite orange", 
    corrected_sentence("les petits coccinelle manges une petits oranges", verbe, adjectifs, noms)
    
  end

  def test24
	  
    verbe = ['mange', 'manges', 'mange', 'mangeons', 'mangez', 'mangent']
    adjectifs = [ ['petit', 'petits', 'petite', 'petites'],  ['joli', 'jolis', 'jolie', 'jolies'], ['vert', 'verts', 'verte', 'vertes'] ]
    noms = [ [:feminine, 'coccinelle', 'coccinelles'], [:masculine, 'kiwi', 'kiwis'] ]
    
    assert_equal       "les jolies petites coccinelles vertes mangent des jolis petits kiwis verts", 
    corrected_sentence("les joli petits coccinelle vert manges des jolie petite kiwi verte", verbe, adjectifs, noms)
    
  end

end

}

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