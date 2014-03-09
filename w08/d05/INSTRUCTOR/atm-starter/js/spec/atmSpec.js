describe("ATM", function(){

  describe("account", function(){
    var account = new Account();

    it("is an object", function(){
      expect(account).toEqual(jasmine.any(Object));
    });
    it("has a checking property", function(){
      expect(account.checking).toBeDefined();
    });
    it("has a savings property", function(){
      expect(account.savings).toBeDefined();
    });
    it("has a withdraw function", function(){
      expect(account.hasOwnProperty("withdraw")).toBe(true);
      expect(account.withdraw).toEqual(jasmine.any(Function));
    });
    it("has a deposit function", function(){
      expect(account.hasOwnProperty("deposit")).toBe(true);
      expect(account.deposit).toEqual(jasmine.any(Function));
    });

  });

  describe("#withdraw", function(){

    it("removes money from an account", function(){
      var account = new Account();
      account.checking = 200;
      account.withdraw("checking", 100);
      expect(account.checking).toBe(100);
    });
    it("shifts money from other accounts in the Account object", function(){
      var account = new Account();
      account.checking = 100;
      account.savings = 100;
      account.withdraw("checking", 150);
      expect(account.checking).toBe(0);
      expect(account.savings).toBe(50);
    });
    it("can't remove more money than is in the whole Account", function(){
      var account = new Account();
      account.checking = 100;
      account.savings = 0;
      account.withdraw("checking", 200);
      expect(account.checking).toBe(100);
    });

  });

  describe("#deposit", function(){

    it("adds money to an account", function(){
      var account = new Account();
      account.deposit("savings", 100);
      expect(account.savings).toBe(100);
    });

  });

});