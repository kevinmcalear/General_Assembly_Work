describe("Caesar Cipher", function() {
  var message;
  var encryptedMessage;
  beforeEach(function() {
    message = "attackatdawn";
    encryptedMessage = "leelnvleolhy";
  });

  it("encrypts a message", function(){
    expect(encrypt("attackatdawn","lemon")).
      toEqual("lxfopvefrnhr");
  });

  it("doesn't overrun the aplphabet", function() {
    expect(encrypt(message, 27)).toEqual(encryptedMessage);
  });

  it("decrypts a message", function() {
    expect(decrypt(encryptedMessage,11))
    .toEqual(message);
  });

  it("removes all spaces from the message", function() {
    expect(encrypt("attack at dawn", 1))
    .toEqual(encryptedMessage);
  });
});