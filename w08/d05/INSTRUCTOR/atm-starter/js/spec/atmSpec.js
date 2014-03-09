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

  });

  describe("withdraw", function(){

    it("removes money from an account", function(){
      var account = new Account();
      account.checking = 200;
      account.checking = withdraw(account.checking,100);
      expect(account.checking).toBe(100);
    });
    it("can't remove more money than is in the account", function(){
      var account = new Account();
      account.checking = 100;
      account.checking = withdraw(account.checking, 200);
      expect(account.checking).toBe(100);
    });

  });

  describe("deposit", function(){

    it("adds money to an account", function(){
      var account = new Account();
      account.savings = deposit(account.savings,100);
      expect(account.savings).toBe(100);
    });

  });

});