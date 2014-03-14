describe("Cipher", function(){
var message;
var encryptedMessage;
var key;

beforeEach(function() {
message = "attackatdawn";
encryptedMessage = "lxfopvefrnhr";
key = "lemon";

}); 

  it("encrypts a message", function(){
    expect(encrypt(message, key)).toEqual(encryptedMessage);
  });

  it("decrypts a message", function() {
  expect(decrypt(encryptedMessage, key)).toEqual(message); 
  });
});