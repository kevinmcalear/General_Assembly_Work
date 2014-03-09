describe("ATM", function(){

  describe("withdraw", function(){

    it("removes money from an account", function(){
      var account = 200;
      account = withdraw(account,100);
      expect(account).toBe(100);
    });
    xit("throws an error on an overdraft", function(){
      var account = 100;
      expect(function(){account = withdraw(account, 200);}).toThrow("Overdraft");
    });
    it("can't remove more money than is in the account", function(){
      var account = 100;
      account = withdraw(account, 200);
      expect(account).toBe(100);
    });

  });

  describe("deposit", function(){

    it("adds money to an account", function(){
      var account = 0;
      account = deposit(account,100);
      expect(account).toBe(100);
    });

  });

});