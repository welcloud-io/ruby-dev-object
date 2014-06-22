require_relative '../db/Accesseur'  
$db = Accesseur.new

select = $db.execute_sql("select slide_index, code_input, timestamp from run_events where slide_index >= '33'order by slide_index, timestamp asc").values

DICTIONNARY =
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


s = select.map do |value| 
  [value[0] + '################' + value[2], value[1].split('{SEP}')[0].gsub(DICTIONNARY,''), '################']
end

puts s
