describe ("Cipher", function(){
  var message = "attackatdawn";
  var encryptedMessage = "leelnvleolhy";

  it("encrypts a message", function (){
    expect(encrypt(message, "lemon")).toEqual(encryptedMessage);
  });
  it("decrypts a message", function(){
    expect(decrypt(encryptedMessage, 11))
  });
});