describe("Caesar Cipher", function(){
  it("encrypts a message", function(){
    expect(encrypt("attackatdawn",11))
      .toEqual("leelnvleolhy");
  });
  it("decrypts a message", function(){
    expect(decrypt("leelnvleolhy",11))
      .toEqual("attackatdawn");
  });
});

