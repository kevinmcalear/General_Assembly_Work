// describe("Cipher", function(){
//   it("encrypts a message", function(){
//     expect(encrypt("attackatdawn", "lemon")). toEqual("lxfopvefrnhr");
//   });
// });

describe("Caesar Cipher", function(){
  var message;
  var encryptedMessage;

  beforeEach(function(){
    message = "attackatdawn";
    encryptedMessage = "buubdlbuebxo";
  });

  it("encrypts a message", function(){
    expect(encrypt("message",1))
      .toEqual("encryptedMessage");
  });

  it("encrypts a message", function(){
    expect(encrypt("message",27))
      .toEqual("encryptedMessage");
  });

  it("decrypts a message", function(){
    expect(decrypt("encryptedMessage",11))
      .toEqual("message");
  });
});

