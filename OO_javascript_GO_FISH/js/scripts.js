

var Player = {
  setNumber: function(number) {
    this.number = number;
  },

  createHand: function() {
    this.hand = [];
  },

  receiveCard: function(card) { 
    this.hand.push(card);
  },

  sortedHand: function() {
    this.hand.sort();
    
  },
  matchCard: function() {
   //  if (this.hand[0] === this.hand[1] || this.hand[1] === this.hand[2] || this.hand[2] === this.hand[3] || this.hand[3] === this.hand[4] || this.hand [4] === this.hand[5] || this.hand[5] === this.hand[6] || this.hand[6] === this.hand[7]){
   //    this.hand = true;

   // } if  (this.hand[0] === this.hand[2] || this.hand[1] === this.hand[3] || this.hand[2] === this.hand[4] || this.hand[3] === this.hand[5] || this.hand[4] === this.hand[6]){
   //   this.hand = true; 
    
     if  (this.hand[0] === this.hand[3] || this.hand[1] === this.hand[4] || this.hand[2] === this.hand[5] || this.hand[3] === this.hand[6]) {
      this.hand =  true; 

  } else { this.hand =  false 
    }  
  }, 
    createBigMatchBook: function() {
      this.matchBook = [];
    },
    littleBooks: function() {



    }
};
var Game = {
  createPlayers: function(numberOfPlayers) {
    this.players = []
    for (var i = numberOfPlayers; i > 0; i--) {
    var player = Object.create(Player);
    player.setNumber(i);
    this.players.push(player);
    }
  }
};

var Deck = {
  createCards: function() {
    var cards = ["K","J", "Q", "A", 2, 3, 4, 5, 6, 7, 8, 9, 10];
    this.fullDeck = [];
    for (var i = 0; i < 4; i++) {
      this.fullDeck = this.fullDeck.concat(cards);
    }
  },
  shuffle: function() {
    this.fullDeck.sort(function() { return 0.5 - Math.random(); });
      },

  deal: function(player) {
    for (var i = 0; i < 7; i++) {
      var card = this.fullDeck.pop();
      player.receiveCard(card);
    }
  }
};









