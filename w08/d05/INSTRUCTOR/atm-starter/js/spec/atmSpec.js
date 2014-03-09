describe("ATM", function(){

  describe("has ", function(){
    var atm = new ATM();

    it("a checking property", function(){
      expect(atm.checking).toBeDefined();
    });
    it("has a savings property", function(){
      expect(atm.savings).toBeDefined();
    });
    it("has a withdraw function", function(){
      expect(atm.hasOwnProperty("withdraw")).toBe(true);
      expect(atm.withdraw).toEqual(jasmine.any(Function));
    });
    it("has a deposit function", function(){
      expect(atm.hasOwnProperty("deposit")).toBe(true);
      expect(atm.deposit).toEqual(jasmine.any(Function));
    });

  });

  describe("on initialization", function(){
    it("takes an object as an argument that sets up the accounts", function(){
      var atm = new ATM({checking: 22, savings: 500});
      expect(atm.checking).toBe(22);
      expect(atm.savings).toBe(500);
    });
    it("the object is optional", function(){
      var atm = new ATM({savings: 500});
      expect(atm.checking).toBe(0);
      expect(atm.savings).toBe(500);
    });
  });

  describe("#withdraw", function(){
    var atm;

    beforeEach(function(){
      atm = new ATM({checking: 200, savings: 100});
    });

    it("removes money from an account", function(){
      atm.withdraw("checking", 100);
      expect(atm.checking).toBe(100);
    });
    it("shifts money from other accounts in the ATM object", function(){
      atm.withdraw("checking", 250);
      expect(atm.checking).toBe(0);
      expect(atm.savings).toBe(50);
    });
    it("can't remove more money than is in the whole ATM", function(){
      atm.withdraw("checking", 350);
      expect(atm.checking).toBe(200);
    });

  });

  describe("#deposit", function(){

    it("adds money to an account", function(){
      var atm = new ATM();
      atm.deposit("savings", 100);
      expect(atm.savings).toBe(100);
    });

  });

  describe("ensures withdrawal/deposit only performed on good input",function(){

    it("returns true when the action is performed", function(){
      var atm = new ATM();
      expect(atm.deposit("savings", 100)).toBe(true);
    });
    xit("returns false and doesn't perform action when amount is negative", function(){

    });
    xit("returns false and doesn't perform action when the amount is not a number", function(){

    });
    xit("returns false and doesn't perform action when the account doesn't exist", function(){

    });

  });

});