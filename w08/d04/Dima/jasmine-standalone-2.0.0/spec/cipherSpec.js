describe("Caesar Cipher", function() {
  var message;
  var encryptedMessage;
  beforeEach(function() {
    message = "attackatdawn";
    encryptedMessage = "leelnvleolhy";
  });

  it("encrypts a message", fucntion(){
    expect(encrypt("attackatdawn","lemon")).
      toEqual("lxfopvefrnhr");
  });
  xit("decrypts a message", function() {
    expec(decrypt(encryptedMessage,11))
    .toEqual(message);
  })
});