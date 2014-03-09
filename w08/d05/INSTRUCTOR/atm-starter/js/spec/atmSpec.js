describe("ATM", function(){

  describe("withdraw", function(){

    it("withdraws money from an account", function(){
      var account = 200;
      withdraw(account,100);
      expect(account).toBe(100);
    });

  });

});