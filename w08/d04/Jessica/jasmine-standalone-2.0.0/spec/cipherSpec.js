describe("Cipher", function(){
  var message;
  var encryptedMessage;

  beforeEach(function(){
    message = "attackatdawn";
    encryptedMessage = "lxfopvefrnhr";
  });

  it("encrypts a message", function(){
    expect(encrypt("attackatdawn", "lemon"))
.toEqual("lxfopvefrnhr")  })
})