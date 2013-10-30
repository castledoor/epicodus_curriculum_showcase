describe("Player", function() {
  it("lets you set its number", function() {
    var player = Object.create(Player);
    player.setNumber(1);
    player.number.should.equal(1);
  });

  it("makes an empty hand for itself", function() {
    var player = Object.create(Player);
    player.createHand();
    player.hand.should.eql([]);
  });
  it("receives a card and puts it in its hand", function() {
    var player = Object.create(Player);
    player.createHand();
    player.receiveCard("K");
    player.hand.should.eql(["K"]);
  });
  it("it sorts the hand", function() {
    var player = Object.create(Player);
    player.createHand();
    player.receiveCard(7);
    player.receiveCard(4);
    player.receiveCard(7);
    player.receiveCard(5);
    player.receiveCard(5);
    player.receiveCard(5);
    player.receiveCard(6);
    player.sortedHand();
    player.hand.should.eql([4,5,5,5,6,7,7]);
  });
  it("finds quads", function() {
    var player = Object.create(Player);
    var deck = Object.create(Deck)
    player.createHand();
    player.receiveCard(7);
    player.receiveCard(4);
    player.receiveCard(7);
    player.receiveCard(5);
    player.receiveCard(5);
    player.receiveCard(5);
    player.receiveCard(5);
    player.sortedHand();
    player.matchCard();
    player.hand.should.be.true
  })
  it("finds quads", function() {
    var player = Object.create(Player);
    player.createHand();
    player.receiveCard(7);
    player.receiveCard(4);
    player.receiveCard(6);
    player.receiveCard(3);
    player.receiveCard("K");
    player.receiveCard(5);
    player.receiveCard("A");
    player.sortedHand();
    player.matchCard();
    player.hand.should.be.false
  })
  it("creates an empty match book", function() {
    var player = Object.create(Player)
    player.createBigMatchBook();
    player.matchBook.should.eql([]);

  });

  it("puts quads into a book",function() {
    var player = Object.create(Player);
    player.createHand();
    player.receiveCard(7);
    player.receiveCard(4);
    player.receiveCard(7);
    player.receiveCard(5);
    player.receiveCard(5);
    player.receiveCard(5);
    player.receiveCard(5);
    player.sortedHand();
    player.matchCard();
    player.littlebooks.should.eql([5,5,5,5])
  
  });
});

describe("Game", function() {
  it("creates players", function() {
    var game = Object.create(Game);
    game.createPlayers(2);
    game.players.length.should.equal(2);
  });
});

describe("Deck", function() {
  it("starts with 52 cards", function() {
    var deck = Object.create(Deck);
    deck.createCards();
    deck.fullDeck.length.should.equal(52);
  });
  it("shuffles the deck", function() {
    var deck = Object.create(Deck);
    deck.createCards();
    var oldFirstCard = deck.fullDeck[0];
    deck.shuffle();
    deck.fullDeck[0].should.not.eql(oldFirstCard);
  });
    it("deals seven cards to a player", function() {
    var player = Object.create(Player);
    var deck = Object.create(Deck);
    player.createHand();
    deck.createCards();
    deck.shuffle();
    deck.deal(player);
    player.hand.length.should.equal(7)

  })
});

