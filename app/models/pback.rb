class Pback
  attr_accessor :offer_rows, :offer_cols, :offer, :hand
  def initialize
    # The first row of offering of cards
    @offer= []
    # There to rows 
    2.times do |row|
      @offer[row] = []
    end

    #we have ten cards on start 
    @deck = OfferCard.start.shuffle
    
    #and take 5
    @hand = []
    5.times do |c|
      @hand << @deck.pop
    end  
    # There is hash with all cards for offer
    all = OfferCard.all_offer

    #in first row take all cards for offer
    #in each column there is all cards with same cost ...
    # in column 0 there cards with cost of 2 , in column 1 cards with cost of 3....
    # there is 7 columns ...
    7.times do |col|
      @offer[0][col] = all[col].shuffle
    end
    
    #at cols 0 in row 1 we have a common Card
    @common = OfferCard.new( {id: 100,
                              letters: "A",
                              score: 0,
                              ability: "common",
                              cost: 0 })

    @offer[1][0] = []
    @offer[1][0] << @common
    # from cols 1 to 6 we take one card and put in second row
    (1..6).each do |col|
      @offer[1][col] = [] 
      @offer[1][col] << @offer[0][col].pop
    end

    
  end

  def self.deck
    OfferCard.all
  end
end
