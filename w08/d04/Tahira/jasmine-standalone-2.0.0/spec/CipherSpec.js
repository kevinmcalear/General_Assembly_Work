describe("Cipher", function(){
  var message;
  var encryptedMessage;

  beforeEach(function(){
    message = "attackatdawn";
    encryptedMessage = "leelnvleolhy";
  });

  it("encrypts a message", function(){
    expect(encrypt(message,11)).not.toBe(jasmine.any(String));
  });

  it("decrypts a message", function(){
    expect(decrypt(encryptedMessage,11)).toEqual(message);
  });
});