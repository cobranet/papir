class OfferCard
  attr_accessor :id, :letters, :score, :ability, :cost, :type
  @@TYPES = [:offer, :common, :wild ]
  @@COMMON = ["A","E","I","O","?","?"]
  @@STARTER = ["R","S","T","L","N","?","?","?","?","?","?"]
  @@STARTER_ABILITY = [ "starter","starter","starter","starter","starter","wild","wild","wild","wild","wild"]
  @@OFFER =  { 2=> ["A","A","E","E","I","I","O","O"],
              3 => ["AN","AT","EN","ER","ES","IN","ON","RE","TE","TI","L","L","N","S","S","T","T"],
              4 => ["AR","CH","ED","IS","IT","NG","NT","OR","SE","ST","D","D","M","R","S","T","U"],
              5 => ["B","B","C","D","G","L","L","M","N","N","P","P","R","Y","Y","Y"],
              6 => ["B","C","F","F","G","G","H","H","N","R","U","U","V","W","W"],
              7 => ["B","C","D","H","J","K","K","M","P","Q","U","V","V","W","Z","Z"],
              8 => ["F","G","H","J","J","K","Q","Q","Q","V","W","X","X","X","Y","Z"]}
  
  def initialize(letter)
    @id = letter[:id]
    @letters = letter[:letters]
    @score = letter[:score]
    @ability = letter[:ability]
    @cost = letter[:cost]
  end

  def self.start
    a = []
    ids = 0
    @@STARTER.each do |start| 
      a << OfferCard.new( { id: 200 + ids,
                            letters: start,
                            score: 0,
                            ability: @@STARTER_ABILITY[ids],
                            cost: 0 })
      ids = ids + 1 
    end  
    a
  end  
    
  def self.commons
    a = []
    ids = 100
    @@COMMON.each do |c|
      a << OfferCard.new( { id: ids,
                          letters: c,
                          score: 0,
                          ability: "&nbsp",
                          cost: 0 })
      ids = ids + 1
    end
    a
  end  
  
  def self.all_offer
    a = []
    ids = 0
    (2..8).each do |i|
      a[i-2]= []
      @@OFFER[i].each do |letters| 
        a[i-2] << OfferCard.new( { id: ids,
                          letters: letters,
                          score: 0,
                          ability: "&nbsp",
                          cost: i })
        ids = ids + 1
      end
    end
    a
  end
  
end
    
