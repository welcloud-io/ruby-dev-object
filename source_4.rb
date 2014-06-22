# ####################  #
#  PARTIE I   PRONOM + VERBE     #
# ####################  #

#
################
33################1403158141.949291
 
# ---------------------------------
# ---------------------------------
# ---------------------------------

def corrected_sentence(sentence_string, verb, adjectives, nouns)
  
end
 
#
################
33################1403158155.3687744

def corrected_sentence(sentence_string, verb, adjectives, nouns)
  "je mange"
end
 
#
################
33################1403158284.0309942

def corrected_sentence(sentence_string, verb, adjectives, nouns)
  pronoun = "je"
  verb = "mange"
  pronoun + " " + verb
end
 
#
################
33################1403158337.3114288

def corrected_sentence(sentence_string, verb, adjectives, nouns)
  pronoun = sentence_string.split.first
  verb = "mange"
  pronoun + " " + verb
end
 
#
################
33################1403158384.8171842

def corrected_sentence(sentence_string, verb, adjectives, nouns)
  pronoun = sentence_string.split.first
  corrected_verb = "mange"
  pronoun + " " + corrected_verb
end
 
#
################
33################1403158451.7659998


def corrected_sentence(sentence_string, verb, adjectives, nouns)
  dictionary = Dictionary.new
  pronoun = sentence_string.split.first
  corrected_verb = "mange"
  pronoun + " " + corrected_verb
end
 
#
################
33################1403158489.1109447

def corrected_sentence(sentence_string, verb, adjectives, nouns)
  dictionary = Dictionary.new(verb, adjectives,nouns)
  pronoun = sentence_string.split.first
  corrected_verb = "mange"
  pronoun + " " + corrected_verb
end
 
#
################
33################1403158519.998959

def corrected_sentence(sentence_string, verb, adjectives, nouns)
  dictionary = Dictionary.new(verb, adjectives,nouns)
  pronoun = sentence_string.split.first
  corrected_verb = dictionary.verb[pronoun]
  pronoun + " " + corrected_verb
end
 
#
################
33################1403159087.6769826

def corrected_sentence(sentence_string, verb, adjectives, nouns)
  dictionary = Dictionary.new(verb, adjectives,nouns)
  pronoun = sentence_string.split.first
  corrected_verb = dictionary.verb[pronoun]
  pronoun + " " + corrected_verb
end
 
#
################
33################1403180998.9129763

def corrected_sentence(sentence_string, verb, adjectives, nouns)
  dictionary = Dictionary.new(verb, adjectives,nouns)
  pronoun = sentence_string.split.first
  corrected_verb = dictionary.verb[pronoun]
  pronoun + " " + corrected_verb
end
 
#
################
33################1403181025.5776207

def corrected_sentence(sentence_string, verb, adjectives, nouns)
  dictionary = Dictionary.new(verb, adjectives,nouns)
  pronoun = sentence_string.split.first
  corrected_verb = dictionary.verb[pronoun]
  pronoun + " " + corrected_verb
end
 
#
################
33################1403181395.2510636
 
def corrected_sentence(sentence_string, verb, adjectives, nouns)
  dictionary = Dictionary.new(verb, adjectives,nouns)
  pronoun = sentence_string.split.first
  corrected_verb = dictionary.verb[pronoun]
  pronoun + " " + corrected_verb
end
 
#
################
33################1403182828.0991986

def corrected_sentence(sentence_string, verb, adjectives, nouns)
  dictionary = Dictionary.new(verb, adjectives,nouns)
  pronoun = sentence_string.split.first
  corrected_verb = dictionary.verb[pronoun]
  pronoun + " " + corrected_verb
end
 
#
################
33################1403188232.8680713

def corrected_sentence(sentence_string, verb, adjectives, nouns)
  dictionary = Dictionary.new(verb, adjectives,nouns)
  pronoun = sentence_string.split.first
  corrected_verb = dictionary.verb[pronoun]
  pronoun + " " + corrected_verb
end
 
#
################
33################1403190579.973799

def corrected_sentence(sentence_string, verb, adjectives, nouns)
  dictionary = Dictionary.new(verb, adjectives,nouns)
  pronoun = sentence_string.split.first
  corrected_verb = dictionary.verb[pronoun]
  pronoun + " " + corrected_verb
end
 
#
################
34################1403159165.2691686
 
def corrected_sentence(sentence_string, verb, adjectives, nouns)
  dictionary = Dictionary.new(verb, adjectives,nouns)
  pronoun = sentence_string.split.first
  corrected_verb = dictionary.verb[pronoun]
  pronoun + " " + corrected_verb
end

#
################
34################1403159374.6297076
 
class Verb
  
end

def corrected_sentence(sentence_string, verb, adjectives, nouns)
  dictionary = Dictionary.new(verb, adjectives,nouns)
  pronoun = sentence_string.split.first
  corrected_verb = dictionary.verb[pronoun]
  sentence.subject.pronoun + " " + sentence.verb.corrected
end

#
################
34################1403159409.7972012

class Verb
  
end

def corrected_sentence(sentence_string, verb, adjectives, nouns)
  dictionary = Dictionary.new(verb, adjectives,nouns)
  pronoun = sentence_string.split.first
  corrected_verb = dictionary.verb[pronoun]
  pronoun + " " + verb.corrected
end

#
################
34################1403159455.2655263
 

class Verb
    
  
end

def corrected_sentence(sentence_string, verb, adjectives, nouns)
  dictionary = Dictionary.new(verb, adjectives,nouns)
  pronoun = sentence_string.split.first
  corrected_verb = dictionary.verb[pronoun]
  verb = Verb.new
  pronoun + " " + verb.corrected
end

#
################
34################1403159586.463357

class Verb
    
  def initialize(dictionary)
    @dictionary = dictionary
  end
    
  def corrected(pronoun)
    @dictionary.verb[pronoun]
  end
  
end

def corrected_sentence(sentence_string, verb, adjectives, nouns)
  dictionary = Dictionary.new(verb, adjectives,nouns)
  pronoun = sentence_string.split.first
  corrected_verb = dictionary.verb[pronoun]
  verb = Verb.new(dictionnary)
  pronoun + " " + verb.corrected(pronoun)
end

#
################
34################1403159588.998302
 
class Verb
    
  def initialize(dictionary)
    @dictionary = dictionary
  end
    
  def corrected(pronoun)
    @dictionary.verb[pronoun]
  end
  
end

def corrected_sentence(sentence_string, verb, adjectives, nouns)
  dictionary = Dictionary.new(verb, adjectives,nouns)
  pronoun = sentence_string.split.first
  corrected_verb = dictionary.verb[pronoun]
  verb = Verb.new(dictionnary)
  pronoun + " " + verb.corrected(pronoun)
end

#
################
34################1403159593.9970853
 

class Verb
    
  def initialize(dictionary)
    @dictionary = dictionary
  end
    
  def corrected(pronoun)
    @dictionary.verb[pronoun]
  end
  
end

def corrected_sentence(sentence_string, verb, adjectives, nouns)
  dictionary = Dictionary.new(verb, adjectives,nouns)
  pronoun = sentence_string.split.first
  corrected_verb = dictionary.verb[pronoun]
  verb = Verb.new(dictionary)
  pronoun + " " + verb.corrected(pronoun)
end

#
################
34################1403159653.4199858
 

class Verb
    
  def initialize(dictionary)
    @dictionary = dictionary
  end
    
  def corrected(pronoun)
    @dictionary.verb[pronoun]
  end
  
end

def corrected_sentence(sentence_string, verb, adjectives, nouns)
  dictionary = Dictionary.new(verb, adjectives,nouns)
  pronoun = sentence_string.split.first
  verb = Verb.new(dictionary)
  sentence = Sentence.new(sentence_string)
  pronoun + " " + sentence.verb.corrected(pronoun)
end

#
################
34################1403159706.404841
 

class Verb
    
  def initialize(dictionary)
    @dictionary = dictionary
  end
    
  def corrected(pronoun)
    @dictionary.verb[pronoun]
  end
  
end

class Sentence

  def verb
    Verb.new(dictionary)
  end
    
end

def corrected_sentence(sentence_string, verb, adjectives, nouns)
  dictionary = Dictionary.new(verb, adjectives,nouns)
  pronoun = sentence_string.split.first
  
  sentence = Sentence.new(sentence_string)
  pronoun + " " + sentence.verb.corrected(pronoun)
end

#
################
34################1403159770.5327127
 

class Verb
    
  def initialize(dictionary)
    @dictionary = dictionary
  end
    
  def corrected(pronoun)
    @dictionary.verb[pronoun]
  end
  
end

class Sentence
    
    

  def verb
    Verb.new(dictionary)
  end
    
end

def corrected_sentence(sentence_string, verb, adjectives, nouns)
  dictionary = Dictionary.new(verb, adjectives,nouns)
  pronoun = sentence_string.split.first
  
  sentence = Sentence.new
  pronoun + " " + sentence.verb.corrected(pronoun)
end

#
################
34################1403159836.0224009
 

class Verb
    
  def initialize(dictionary)
    @dictionary = dictionary
  end
    
  def corrected(pronoun)
    @dictionary.verb[pronoun]
  end
  
end

class Sentence
    
  def initialize(dictionary)
    @dictionary = dictionary
  end

  def verb
    Verb.new(@dictionary)
  end
    
end

def corrected_sentence(sentence_string, verb, adjectives, nouns)
  dictionary = Dictionary.new(verb, adjectives,nouns)
  pronoun = sentence_string.split.first
  
  sentence = Sentence.new(dictionary)
  pronoun + " " + sentence.verb.corrected(pronoun)
end

#
################
34################1403159886.919414
 

class Verb
    
  def initialize(dictionary)
    @dictionary = dictionary
  end
    
  def corrected(pronoun)
    @dictionary.verb[pronoun]
  end
  
end

class Sentence
    
  def initialize(dictionary)
    @dictionary = dictionary
  end

  def verb
    Verb.new(@dictionary)
  end
    
end

def corrected_sentence(sentence_string, verb, adjectives, nouns)
  dictionary = Dictionary.new(verb, adjectives,nouns)
  pronoun = sentence_string.split.first
  
  sentence = Sentence.new(dictionary)
  sentence.pronoun + " " + sentence.verb.corrected(pronoun)
end

#
################
34################1403159934.7484536
 

class Verb
    
  def initialize(dictionary)
    @dictionary = dictionary
  end
    
  def corrected(pronoun)
    @dictionary.verb[pronoun]
  end
  
end

class Sentence
    
  def initialize(dictionary)
    @dictionary = dictionary
  end
  
  def pronoun
    sentence_string.split.first
  end  

  def verb
    Verb.new(@dictionary)
  end
  
end

def corrected_sentence(sentence_string, verb, adjectives, nouns)
  dictionary = Dictionary.new(verb, adjectives,nouns)

  
  sentence = Sentence.new(dictionary)
  sentence.pronoun + " " + sentence.verb.corrected(pronoun)
end

#
################
34################1403160009.2306557
 

class Verb
    
  def initialize(dictionary)
    @dictionary = dictionary
  end
    
  def corrected(pronoun)
    @dictionary.verb[pronoun]
  end
  
end

class Sentence
    
  def initialize(sentence_string, dictionary)
    @sentence_string = sentence_string
    @dictionary = dictionary
  end
  
  def pronoun
    @sentence_string.split.first
  end  

  def verb
    Verb.new(@dictionary)
  end
  
end

def corrected_sentence(sentence_string, verb, adjectives, nouns)
  dictionary = Dictionary.new(verb, adjectives,nouns)

  
  sentence = Sentence.new(sentence_string, dictionary)
  sentence.pronoun + " " + sentence.verb.corrected(pronoun)
end

#
################
34################1403160053.7192624
 

class Verb
    
  def initialize(dictionary)
    @dictionary = dictionary
  end
    
  def corrected(pronoun)
    @dictionary.verb[pronoun]
  end
  
end

class Sentence
    
  def initialize(sentence_string, dictionary)
    @sentence_string = sentence_string
    @dictionary = dictionary
  end
  
  def pronoun
    @sentence_string.split.first
  end  

  def verb
    Verb.new(@dictionary)
  end
  
end

def corrected_sentence(sentence_string, verb, adjectives, nouns)
  dictionary = Dictionary.new(verb, adjectives,nouns)

  
  sentence = Sentence.new(sentence_string, dictionary)
  sentence.pronoun + " " + sentence.verb.corrected(sentence.pronoun)
end

#
################
34################1403160121.2446766
 

class Verb
    
  def initialize(dictionary)
    @dictionary = dictionary
  end
    
  def corrected(pronoun)
    @dictionary.verb[pronoun]
  end
  
end

class Sentence
    
  def initialize(sentence_string, dictionary)
    @sentence_string = sentence_string
    @dictionary = dictionary
  end
  
  def pronoun
    @sentence_string.split.first
  end  

  def verb
    Verb.new(@dictionary)
  end

end

def corrected_sentence(sentence_string, verb, adjectives, nouns)
  dictionary = Dictionary.new(verb, adjectives,nouns)

  
  sentence = Sentence.new(sentence_string, dictionary)
  sentence.corrected
  #sentence.pronoun + " " + sentence.verb.corrected(sentence.pronoun)
end

#
################
34################1403160127.7588112
 

class Verb
    
  def initialize(dictionary)
    @dictionary = dictionary
  end
    
  def corrected(pronoun)
    @dictionary.verb[pronoun]
  end
  
end

class Sentence
    
  def initialize(sentence_string, dictionary)
    @sentence_string = sentence_string
    @dictionary = dictionary
  end
  
  def pronoun
    @sentence_string.split.first
  end  

  def verb
    Verb.new(@dictionary)
  end
  
end

def corrected_sentence(sentence_string, verb, adjectives, nouns)
  dictionary = Dictionary.new(verb, adjectives,nouns)

  
  sentence = Sentence.new(sentence_string, dictionary)
  sentence.corrected
  #sentence.pronoun + " " + sentence.verb.corrected(sentence.pronoun)
end

#
################
34################1403160171.325391
 

class Verb
    
  def initialize(dictionary)
    @dictionary = dictionary
  end
    
  def corrected(pronoun)
    @dictionary.verb[pronoun]
  end
  
end

class Sentence
    
  def initialize(sentence_string, dictionary)
    @sentence_string = sentence_string
    @dictionary = dictionary
  end
  
  def pronoun
    @sentence_string.split.first
  end  

  def verb
    Verb.new(@dictionary)
  end
  
  def corrected
     pronoun + " " + verb.corrected(pronoun)
  end
  
end

def corrected_sentence(sentence_string, verb, adjectives, nouns)
  dictionary = Dictionary.new(verb, adjectives,nouns)

  
  sentence = Sentence.new(sentence_string, dictionary)
  sentence.corrected
  
end

#
################
34################1403160190.1813319
 

class Verb
    
  def initialize(dictionary)
    @dictionary = dictionary
  end
    
  def corrected(pronoun)
    @dictionary.verb[pronoun]
  end
  
end

class Sentence
    
  def initialize(sentence_string, dictionary)
    @sentence_string = sentence_string
    @dictionary = dictionary
  end
  
  def pronoun
    @sentence_string.split.first
  end  

  def verb
    Verb.new(@dictionary)
  end
  
  def corrected
     pronoun + " " + verb.corrected(pronoun)
  end
  
end

def corrected_sentence(sentence_string, verb, adjectives, nouns)
  dictionary = Dictionary.new(verb, adjectives,nouns)
  Sentence.new(sentence_string, dictionary).corrected
end

# ####################  #
#  PARTIE I   SUJET + VERBE          #
# ####################  #

#
################
34################1403160673.7934008
 
class Verb
    
  def initialize(context, dictionary)
    @context = context
    @dictionary = dictionary
  end
    
  def corrected
    @dictionary.verb[@context.pronoun]
  end
  
end

class Sentence
    
  def initialize(sentence_string, dictionary)
    @sentence_string = sentence_string
    @dictionary = dictionary
  end
  
  def pronoun
    first_word = @sentence_string.split.first
    return first_word if @dictionary.pronoun?(first_word)
  end  

  def verb
    Verb.new(self, @dictionary)
  end
  
  def corrected
     pronoun + " " + verb.corrected
  end
  
end

def corrected_sentence(sentence_string, verb, adjectives, nouns)
  dictionary = Dictionary.new(verb, adjectives,nouns)
  Sentence.new(sentence_string, dictionary).corrected
end

#
################
34################1403160742.865341
 

class Verb
    
  def initialize(context, dictionary)
    @context = context
    @dictionary = dictionary
  end
    
  def corrected
    @dictionary.verb[@context.pronoun]
  end
  
end

class Sentence
    
  def initialize(sentence_string, dictionary)
    @sentence_string = sentence_string
    @dictionary = dictionary
  end
  
  def pronoun
    first_word = @sentence_string.split.first
    return first_word if @dictionary.pronoun?(first_word)
    return article.pronoun if @dictionary.article?(first_word)
  end  

  def verb
    Verb.new(self, @dictionary)
  end
  
  def corrected
     pronoun + " " + verb.corrected
  end
  
end

def corrected_sentence(sentence_string, verb, adjectives, nouns)
  dictionary = Dictionary.new(verb, adjectives,nouns)
  Sentence.new(sentence_string, dictionary).corrected
end

################
34################1403160889.68788
 

class Verb
    
  def initialize(context, dictionary)
    @context = context
    @dictionary = dictionary
  end
    
  def corrected
    @dictionary.verb[@context.pronoun]
  end
  
end

class Sentence
    
  def initialize(sentence_string, dictionary)
    @sentence_string = sentence_string
    @dictionary = dictionary
  end
  
  def article
    first_word = @sentence_string.split.first      
    Article.new(first_word)
  end
  
  def pronoun
    first_word = @sentence_string.split.first
    return first_word if @dictionary.pronoun?(first_word)
    return article.pronoun if @dictionary.article?(first_word)
  end  

  def verb
    Verb.new(self, @dictionary)
  end
  
  def corrected
     pronoun + " " + verb.corrected
  end
  
end

def corrected_sentence(sentence_string, verb, adjectives, nouns)
  dictionary = Dictionary.new(verb, adjectives,nouns)
  Sentence.new(sentence_string, dictionary).corrected
end

#
################
34################1403160905.8610408
 

class Verb
    
  def initialize(context, dictionary)
    @context = context
    @dictionary = dictionary
  end
    
  def corrected
    @dictionary.verb[@context.pronoun]
  end
  
end

class Article
    
end

class Sentence
    
  def initialize(sentence_string, dictionary)
    @sentence_string = sentence_string
    @dictionary = dictionary
  end
  
  def article
    first_word = @sentence_string.split.first      
    Article.new(first_word)
  end
  
  def pronoun
    first_word = @sentence_string.split.first
    return first_word if @dictionary.pronoun?(first_word)
    return article.pronoun if @dictionary.article?(first_word)
  end  

  def verb
    Verb.new(self, @dictionary)
  end
  
  def corrected
     pronoun + " " + verb.corrected
  end
  
end

def corrected_sentence(sentence_string, verb, adjectives, nouns)
  dictionary = Dictionary.new(verb, adjectives,nouns)
  Sentence.new(sentence_string, dictionary).corrected
end

#
################
34################1403160950.5511334
 

class Verb
    
  def initialize(context, dictionary)
    @context = context
    @dictionary = dictionary
  end
    
  def corrected
    @dictionary.verb[@context.pronoun]
  end
  
end

class Article
  
  def initialize(word_string)
    
  end
  
end

class Sentence
    
  def initialize(sentence_string, dictionary)
    @sentence_string = sentence_string
    @dictionary = dictionary
  end
  
  def article
    first_word = @sentence_string.split.first      
    Article.new(first_word)
  end
  
  def pronoun
    first_word = @sentence_string.split.first
    return first_word if @dictionary.pronoun?(first_word)
    return article.pronoun if @dictionary.article?(first_word)
  end  

  def verb
    Verb.new(self, @dictionary)
  end
  
  def corrected
     pronoun + " " + verb.corrected
  end
  
end

def corrected_sentence(sentence_string, verb, adjectives, nouns)
  dictionary = Dictionary.new(verb, adjectives,nouns)
  Sentence.new(sentence_string, dictionary).corrected
end

#
################
34################1403160964.711966
 
class Verb
    
  def initialize(context, dictionary)
    @context = context
    @dictionary = dictionary
  end
    
  def corrected
    @dictionary.verb[@context.pronoun]
  end
  
end

class Article
  
  def initialize(word_string)
    
  end
  
  def pronoun
    
  end
  
end

class Sentence
    
  def initialize(sentence_string, dictionary)
    @sentence_string = sentence_string
    @dictionary = dictionary
  end
  
  def article
    first_word = @sentence_string.split.first      
    Article.new(first_word)
  end
  
  def pronoun
    first_word = @sentence_string.split.first
    return first_word if @dictionary.pronoun?(first_word)
    return article.pronoun if @dictionary.article?(first_word)
  end  

  def verb
    Verb.new(self, @dictionary)
  end
  
  def corrected
     pronoun + " " + verb.corrected
  end
  
end

def corrected_sentence(sentence_string, verb, adjectives, nouns)
  dictionary = Dictionary.new(verb, adjectives,nouns)
  Sentence.new(sentence_string, dictionary).corrected
end

#
################
34################1403161107.3138983
 
class Verb
    
  def initialize(context, dictionary)
    @context = context
    @dictionary = dictionary
  end
    
  def corrected
    @dictionary.verb[@context.pronoun]
  end
  
end

class Article
  
  def initialize(word_string)
    
  end
  
  def pronoun
    
  end
  
end

class Sentence
    
  def initialize(sentence_string, dictionary)
    @sentence_string = sentence_string
    @dictionary = dictionary
  end
  
  def article
    first_word = @sentence_string.split.first      
    Article.new(first_word)
  end
  
  def pronoun
    first_word = @sentence_string.split.first
    return first_word if @dictionary.pronoun?(first_word)
    return article.pronoun if @dictionary.article?(first_word)
  end  

  def verb
    Verb.new(self, @dictionary)
  end
  
  def corrected
     pronoun + " " + verb.corrected
  end
  
end

def corrected_sentence(sentence_string, verb, adjectives, nouns)
  dictionary = Dictionary.new(verb, adjectives,nouns)
  Sentence.new(sentence_string, dictionary).corrected
end
 
#
################
34################1403161805.612377


class Verb
    
  def initialize(context, dictionary)
    @context = context
    @dictionary = dictionary
  end
    
  def corrected
    @dictionary.verb[@context.pronoun]
  end
  
end

class Article
  
  def initialize(word_string, dictionary)
    @word_string = word_string     
    @dictionary = dictionary
  end
  
  def pronoun
    return "il" if @dictionary.articles[@word_string][:number] == :singular
    return "ils" if @dictionary.articles[@word_string][:number] == :plural    
  end
  
end

class Sentence
    
  def initialize(sentence_string, dictionary)
    @sentence_string = sentence_string
    @dictionary = dictionary
  end
  
  def article
    first_word = @sentence_string.split.first      
    Article.new(first_word, @dictionary)
  end
  
  def pronoun
    first_word = @sentence_string.split.first
    return first_word if @dictionary.pronoun?(first_word)
    return article.pronoun if @dictionary.article?(first_word)
  end  
  
  def subject
    @sentence_string.split[0..verb_index-1].join(' ')
  end
  
  def verb_index
    @sentence_string.split.each.with_index do |word| 
        return index if @dictionary.verb?(word)
    end
  end

  def verb
    Verb.new(self, @dictionary)
  end
  
  def corrected
     subject + " " + verb.corrected
  end
  
end



def corrected_sentence(sentence_string, verb, adjectives, nouns)
  dictionary = Dictionary.new(verb, adjectives,nouns)
  Sentence.new(sentence_string, dictionary).corrected
end

#
################
34################1403161813.0468447

class Verb
    
  def initialize(context, dictionary)
    @context = context
    @dictionary = dictionary
  end
    
  def corrected
    @dictionary.verb[@context.pronoun]
  end
  
end

class Article
  
  def initialize(word_string, dictionary)
    @word_string = word_string     
    @dictionary = dictionary
  end
  
  def pronoun
    return "il" if @dictionary.articles[@word_string][:number] == :singular
    return "ils" if @dictionary.articles[@word_string][:number] == :plural    
  end
  
end

class Sentence
    
  def initialize(sentence_string, dictionary)
    @sentence_string = sentence_string
    @dictionary = dictionary
  end
  
  def article
    first_word = @sentence_string.split.first      
    Article.new(first_word, @dictionary)
  end
  
  def pronoun
    first_word = @sentence_string.split.first
    return first_word if @dictionary.pronoun?(first_word)
    return article.pronoun if @dictionary.article?(first_word)
  end  
  
  def subject
    @sentence_string.split[0..verb_index-1].join(' ')
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
     subject + " " + verb.corrected
  end
  
end



def corrected_sentence(sentence_string, verb, adjectives, nouns)
  dictionary = Dictionary.new(verb, adjectives,nouns)
  Sentence.new(sentence_string, dictionary).corrected
end





 
 
#
################
34################1403161854.7641454
 








class Verb
    
  def initialize(context, dictionary)
    @context = context
    @dictionary = dictionary
  end
    
  def corrected
    @dictionary.verb[@context.pronoun]
  end
  
end

class Article
  
  def initialize(word_string, dictionary)
    @word_string = word_string     
    @dictionary = dictionary
  end
  
  def pronoun
    return "il" if @dictionary.articles[@word_string][:number] == :singular
    return "ils" if @dictionary.articles[@word_string][:number] == :plural    
  end
  
end

class Sentence
    
  def initialize(sentence_string, dictionary)
    @sentence_string = sentence_string
    @dictionary = dictionary
  end
  
  def article
    first_word = @sentence_string.split.first      
    Article.new(first_word, @dictionary)
  end
  
  def pronoun
    first_word = @sentence_string.split.first
    return first_word if @dictionary.pronoun?(first_word)
    return article.pronoun if @dictionary.article?(first_word)
  end  
  
  def subject
    @sentence_string.split[0..verb_index-1].join(' ')
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



# ########################  #
#  PARTIE III   CORRECTION DU SUJET     #
# ########################  #

#
################
34################1403161897.536636

class Verb
    
  def initialize(context, dictionary)
    @context = context
    @dictionary = dictionary
  end
    
  def corrected
    @dictionary.verb[@context.pronoun]
  end
  
end

class Article
  
  def initialize(word_string, dictionary)
    @word_string = word_string     
    @dictionary = dictionary
  end
  
  def pronoun
    return "il" if @dictionary.articles[@word_string][:number] == :singular
    return "ils" if @dictionary.articles[@word_string][:number] == :plural    
  end
  
end

class Subject
  
end

class Sentence
    
  def initialize(sentence_string, dictionary)
    @sentence_string = sentence_string
    @dictionary = dictionary
  end
  
  def article
    first_word = @sentence_string.split.first      
    Article.new(first_word, @dictionary)
  end
  
  def pronoun
    first_word = @sentence_string.split.first
    return first_word if @dictionary.pronoun?(first_word)
    return article.pronoun if @dictionary.article?(first_word)
  end  
  
  def subject
    Subject.new(@sentence_string.split[0..verb_index-1].join(' '))
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

#
################
34################1403161944.7960808

class Verb
    
  def initialize(context, dictionary)
    @context = context
    @dictionary = dictionary
  end
    
  def corrected
    @dictionary.verb[@context.pronoun]
  end
  
end

class Article
  
  def initialize(word_string, dictionary)
    @word_string = word_string     
    @dictionary = dictionary
  end
  
  def pronoun
    return "il" if @dictionary.articles[@word_string][:number] == :singular
    return "ils" if @dictionary.articles[@word_string][:number] == :plural    
  end
  
end

class Subject
  
  def initialize(subject_string)
    
  end
  
end

class Sentence
    
  def initialize(sentence_string, dictionary)
    @sentence_string = sentence_string
    @dictionary = dictionary
  end
  
  def article
    first_word = @sentence_string.split.first      
    Article.new(first_word, @dictionary)
  end
  
  def pronoun
    first_word = @sentence_string.split.first
    return first_word if @dictionary.pronoun?(first_word)
    return article.pronoun if @dictionary.article?(first_word)
  end  
  
  def subject
    Subject.new(@sentence_string.split[0..verb_index-1].join(' '))
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

#
################
34################1403161960.7839189
 
class Verb
    
  def initialize(context, dictionary)
    @context = context
    @dictionary = dictionary
  end
    
  def corrected
    @dictionary.verb[@context.pronoun]
  end
  
end

class Article
  
  def initialize(word_string, dictionary)
    @word_string = word_string     
    @dictionary = dictionary
  end
  
  def pronoun
    return "il" if @dictionary.articles[@word_string][:number] == :singular
    return "ils" if @dictionary.articles[@word_string][:number] == :plural    
  end
  
end

class Subject
  
  def initialize(subject_string)
    
  end
  
  def corrected
      
  end
  
end

class Sentence
    
  def initialize(sentence_string, dictionary)
    @sentence_string = sentence_string
    @dictionary = dictionary
  end
  
  def article
    first_word = @sentence_string.split.first      
    Article.new(first_word, @dictionary)
  end
  
  def pronoun
    first_word = @sentence_string.split.first
    return first_word if @dictionary.pronoun?(first_word)
    return article.pronoun if @dictionary.article?(first_word)
  end  
  
  def subject
    Subject.new(@sentence_string.split[0..verb_index-1].join(' '))
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





 
 
#
################
34################1403162035.3990455
 








class Verb
    
  def initialize(context, dictionary)
    @context = context
    @dictionary = dictionary
  end
    
  def corrected
    @dictionary.verb[@context.pronoun]
  end
  
end

class Article
  
  def initialize(word_string, dictionary)
    @word_string = word_string     
    @dictionary = dictionary
  end
  
  def pronoun
    return "il" if @dictionary.articles[@word_string][:number] == :singular
    return "ils" if @dictionary.articles[@word_string][:number] == :plural    
  end
  
end

class Subject
  
  def initialize(subject_string)
    @subject_string = subject_string
  end
  
  def corrected
    @subject_string  
  end
  
end

class Sentence
    
  def initialize(sentence_string, dictionary)
    @sentence_string = sentence_string
    @dictionary = dictionary
  end
  
  def article
    first_word = @sentence_string.split.first      
    Article.new(first_word, @dictionary)
  end
  
  def pronoun
    first_word = @sentence_string.split.first
    return first_word if @dictionary.pronoun?(first_word)
    return article.pronoun if @dictionary.article?(first_word)
  end  
  
  def subject
    Subject.new(@sentence_string.split[0..verb_index-1].join(' '))
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
 
#
################
34################1403163631.6881082

class Verb
    
  def initialize(context, dictionary)
    @context = context
    @dictionary = dictionary
  end
    
  def corrected
    @dictionary.verb[@context.subject.pronoun]
  end
  
end

class Article
  
  def initialize(word_string, dictionary)
    @word_string = word_string     
    @dictionary = dictionary
  end
  
  def number
    @dictionary.articles[@word_string][:number]
  end
  
  def pronoun
    return "il" if self.number == :singular
    return "ils" if self.number == :plural    
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

class Subject
  
  def initialize(subject_string, dictionary)
    @subject_string = subject_string
    @dictionary = dictionary
  end
  
  def article
    first_word = @subject_string.split.first      
    Article.new(first_word, @dictionary)
  end
  
  def pronoun
    first_word = @subject_string.split.first
    return first_word if @dictionary.pronoun?(first_word)
    return article.pronoun if @dictionary.article?(first_word)
  end
  
  def noun
    Noun.new("coccinelle", self, @dictionary)
  end
  
  def corrected
    article.corrected + " " + noun.corrected
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

# ##########################  #
#  PARTIE IV   REFACTORING To STRATEGY   #
# ##########################  #

#
################
34################1403163841.0079105

class Verb
    
  def initialize(context, dictionary)
    @context = context
    @dictionary = dictionary
  end
    
  def corrected
    @dictionary.verb[@context.subject.pronoun]
  end
  
end

class Article
  
  def initialize(word_string, dictionary)
    @word_string = word_string     
    @dictionary = dictionary
  end
  
  def number
    @dictionary.articles[@word_string][:number]
  end
  
  def pronoun
    return "il" if self.number == :singular
    return "ils" if self.number == :plural    
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

class Subject
  
  def initialize(subject_string, dictionary)
    @subject_string = subject_string
    @dictionary = dictionary
  end
  
  def article
    first_word = @subject_string.split.first      
    Article.new(first_word, @dictionary)
  end
  
  def pronoun
    first_word = @subject_string.split.first
    return first_word if @dictionary.pronoun?(first_word)
    return article.pronoun if @dictionary.article?(first_word)
  end
  
  def noun
    Noun.new("coccinelle", self, @dictionary)
  end
  
  def corrected
    @words.each do |word|
      word.corrected
    end.join(' ')
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
 
#
################
34################1403175013.5004263

class Word
    
  def initialize(word_string, context, dictionary)
    @word_string = word_string
    @context = context
    @dictionary = dictionary
  end
  
  def corrected
    @word_string
  end  

end


class Verb
    
  def initialize(word_string, context, dictionary)
    @word_string = word_string
    @context = context
    @dictionary = dictionary
  end
    
  def corrected
    @dictionary.verb[@context.subject.pronoun]
  end
  
end

class Article < Word
  
  def number
    @dictionary.articles[@word_string][:number]
  end
  
  def pronoun
    return "il" if self.number == :singular
    return "ils" if self.number == :plural    
  end
  
end

class Noun < Word

  def corrected
    @dictionary.nouns[@word_string][@context.article.number]
  end

end

class Pronoun < Word
  
end

class Subject
  
  def initialize(subject_string, dictionary)
    @subject_string = subject_string
    @dictionary = dictionary
    @words = subject_string.split.map do |word_string|
        case
        when @dictionary.article?(word_string) then Article.new(word_string, self, @dictionary)
        when @dictionary.noun?(word_string) then Noun.new(word_string, self, @dictionary)
        when @dictionary.pronoun?(word_string) then Pronoun.new(word_string, self, @dictionary)
        end
    end
  end
  
  def article
    @words.first
  end
  
  def pronoun
    first_word = @subject_string.split.first
    return first_word if @dictionary.pronoun?(first_word)
    return article.pronoun if @dictionary.article?(first_word)
  end
  
  def noun
    Noun.new("coccinelle", self, @dictionary)
  end
  
  def corrected
    @words.map do |word|
      word.corrected
    end.join(' ')
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
    verb_string = @sentence_string.split[verb_index]
    Verb.new(verb_string, self, @dictionary)
  end
  
  def corrected
     subject.corrected + " " + verb.corrected
  end
  
end

def corrected_sentence(sentence_string, verb, adjectives, nouns)
  dictionary = Dictionary.new(verb, adjectives,nouns)
  Sentence.new(sentence_string, dictionary).corrected
end


# ##########################  #
#  PARTIE V   SUJET + VERBE +COMPLEMENT  #
# ##########################  #


#
################
35################1403178302.2458405
 
class Word
    
  def initialize(word_string, context, dictionary)
    @word_string = word_string
    @context = context
    @dictionary = dictionary
  end
  
  def corrected
    @word_string
  end  

end


class Verb < Word
    
  def corrected
    @dictionary.verb[@context.subject.pronoun]
  end
  
end

class Article < Word
  
  def number
    @dictionary.articles[@word_string][:number]
  end
  
  def pronoun
    return "il" if self.number == :singular
    return "ils" if self.number == :plural    
  end
  
end

class Noun < Word

  def corrected
    @dictionary.nouns[@word_string][@context.article.number]
  end

end

class Pronoun < Word
  
end

class Subject
  
  def initialize(subject_string, dictionary)
    @subject_string = subject_string
    @dictionary = dictionary
    @words = subject_string.split.map do |word_string|
        case
        when @dictionary.article?(word_string) then Article.new(word_string, self, @dictionary)
        when @dictionary.noun?(word_string) then Noun.new(word_string, self, @dictionary)
        when @dictionary.pronoun?(word_string) then Pronoun.new(word_string, self, @dictionary)
        end
    end
  end
  
  def article
    @words.first
  end
  
  def pronoun
    first_word = @subject_string.split.first
    return first_word if @dictionary.pronoun?(first_word)
    return article.pronoun if @dictionary.article?(first_word)
  end
  
  def noun
    Noun.new("coccinelle", self, @dictionary)
  end
  
  def corrected
    @words.map do |word|
      word.corrected
    end.join(' ')
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
    verb_string = @sentence_string.split[verb_index]
    Verb.new(verb_string, self, @dictionary)
  end
  
  def corrected
     subject.corrected + " " + verb.corrected + " " + complement.corrected
  end
  
end



def corrected_sentence(sentence_string, verb, adjectives, nouns)
  dictionary = Dictionary.new(verb, adjectives,nouns)
  Sentence.new(sentence_string, dictionary).corrected
end
 
#
################
35################1403178587.791166
 
class Word
    
  def initialize(word_string, context, dictionary)
    @word_string = word_string
    @context = context
    @dictionary = dictionary
  end
  
  def corrected
    @word_string
  end  

end


class Verb < Word
    
  def corrected
    @dictionary.verb[@context.subject.pronoun]
  end
  
end

class Article < Word
  
  def number
    @dictionary.articles[@word_string][:number]
  end
  
  def pronoun
    return "il" if self.number == :singular
    return "ils" if self.number == :plural    
  end
  
end

class Noun < Word

  def corrected
    @dictionary.nouns[@word_string][@context.article.number]
  end

end

class Pronoun < Word
  
end

class NominalGroup

  def initialize(subject_string, dictionary)
    @subject_string = subject_string
    @dictionary = dictionary
    @words = subject_string.split.map do |word_string|
        case
        when @dictionary.article?(word_string) then Article.new(word_string, self, @dictionary)
        when @dictionary.noun?(word_string) then Noun.new(word_string, self, @dictionary)
        when @dictionary.pronoun?(word_string) then Pronoun.new(word_string, self, @dictionary)
        end
    end
  end
  
  def article
    @words.first
  end  
  
  def noun
    Noun.new("coccinelle", self, @dictionary)
  end
  
  def corrected
    @words.map do |word|
      word.corrected
    end.join(' ')
  end  
    
end

class Subject < NominalGroup
  

  
  def pronoun
    first_word = @subject_string.split.first
    return first_word if @dictionary.pronoun?(first_word)
    return article.pronoun if @dictionary.article?(first_word)
  end
  
  
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
    complement_string = @sentence_string.split[verb_index..-1]
    Complement.new(complement_string, @dictionary)
  end
  
  def corrected
     subject.corrected + " " + verb.corrected + " " + complement.corrected
  end
  
end

def corrected_sentence(sentence_string, verb, adjectives, nouns)
  dictionary = Dictionary.new(verb, adjectives,nouns)
  Sentence.new(sentence_string, dictionary).corrected
end
  
#
################
36################1403179790.7672238
 
class Word
    
  def initialize(word_string, context, dictionary)
    @word_string = word_string
    @context = context
    @dictionary = dictionary
  end
  
  def corrected
    @word_string
  end  

end


class Verb < Word
    
  def corrected
    @dictionary.verb[@context.subject.pronoun]
  end
  
end

class Article < Word
  
  def number
    @dictionary.articles[@word_string][:number]
  end
  
  def pronoun
    return "il" if self.number == :singular
    return "ils" if self.number == :plural    
  end
  
end

class Noun < Word

  def corrected
    @dictionary.nouns[@word_string][@context.article.number]
  end

end

class Pronoun < Word
  
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
    @words.first
  end 
  
  def corrected
    @words.map do |word|
      word.corrected
    end.join(' ')
  end
  
  def noun
    Noun.new("coccinelle", self, @dictionary)
  end  
    
end

class Subject < NominalGroup
    
  def initialize(nominal_string, dictionary)
     super(nominal_string, dictionary)
     @subject_string = nominal_string
  end

  def pronoun
    first_word = @subject_string.split.first
    return first_word if @dictionary.pronoun?(first_word)
    return article.pronoun if @dictionary.article?(first_word)
  end

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
 

# ############### #
#  PARTIE VI   ADJECTIFS  #
# ##############  #

#
################
36################1403179907.5458815
 
class Word
    
  def initialize(word_string, context, dictionary)
    @word_string = word_string
    @context = context
    @dictionary = dictionary
  end
  
  def corrected
    @word_string
  end  

end


class Verb < Word
    
  def corrected
    @dictionary.verb[@context.subject.pronoun]
  end
  
end

class Article < Word
  
  def number
    @dictionary.articles[@word_string][:number]
  end
  
  def pronoun
    return "il" if self.number == :singular
    return "ils" if self.number == :plural    
  end
  
end

class Noun < Word

  def corrected
    @dictionary.nouns[@word_string][@context.article.number]
  end

end

class Pronoun < Word
  
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
        when @dictionary.adjective?(word_string) then Adjective.new(word_string, self, @dictionary)
        end
    end
  end 
  
  def article
    @words.first
  end 
  
  def corrected
    @words.map do |word|
      word.corrected
    end.join(' ')
  end
  
  def noun
    Noun.new("coccinelle", self, @dictionary)
  end  
    
end

class Subject < NominalGroup
    
  def initialize(nominal_string, dictionary)
     super(nominal_string, dictionary)
     @subject_string = nominal_string
  end

  def pronoun
    first_word = @subject_string.split.first
    return first_word if @dictionary.pronoun?(first_word)
    return article.pronoun if @dictionary.article?(first_word)
  end

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
 
 
#
################
37################1403188871.6614563
 
class Word
    
  def initialize(word_string, context, dictionary)
    @word_string = word_string
    @context = context
    @dictionary = dictionary
  end
  
  def corrected
    @word_string
  end  

end

class Verb < Word
    
  def corrected
    @dictionary.verb[@context.subject.pronoun]
  end
  
end

class Article < Word
  
  def number
    @dictionary.articles[@word_string][:number]
  end
  
  def pronoun
    return "il" if self.number == :singular
    return "ils" if self.number == :plural    
  end
  
end

class Noun < Word
    
  def gender
    @dictionary.nouns[@word_string][:gender]
  end

  def corrected
    @dictionary.nouns[@word_string][@context.article.number]
  end

end

class Adjective < Word
    
  def corrected
    @dictionary.adjectives[@word_string][@context.noun.gender][@context.article.number]
  end

end

class Pronoun < Word
  
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
        when @dictionary.adjective?(word_string) then Adjective.new(word_string, self, @dictionary)
        end
    end
  end 
  
  def article
    @words.first
  end 
  
  def corrected
    @words.map do |word|
      word.corrected
    end.join(' ')
  end
  
  def noun
    @words.each { |word| return word if word.instance_of? Noun} 
  end  
    
end

class Subject < NominalGroup
    
  def initialize(nominal_string, dictionary)
     super(nominal_string, dictionary)
     @subject_string = nominal_string
  end

  def pronoun
    first_word = @subject_string.split.first
    return first_word if @dictionary.pronoun?(first_word)
    return article.pronoun if @dictionary.article?(first_word)
  end

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
