describe("hangman", function(){
	describe("has", function(){

		var hangman = new Hangman("sports");
		it("a word to be guessed", function(){
			expect(hangman.answer).toBeDefined();
			expect(categories[hangman.category]).toContain(hangman.answer.join(""));
		}); //word to be guessed

		it("a category", function(){
			expect(hangman.category).toBeDefined();
			expect(categories[hangman.category]).toBeDefined();
		}); //has a category

		it("has a place to store guessed letters", function(){
			expect(hangman.guessedLetters).toBeDefined();
			expect(hangman.guessedLetters.length).toEqual(0);
		}); // has a place to store guessed letters

		it("has a number of guesses left", function(){
			expect(hangman.guessesLeft).toBeDefined();
			expect(hangman.guessesLeft).toEqual(7);
		}); //has a number of guesses left

		it("knows the alphabet", function(){
			expect(alphabet).toBeDefined();
			expect(alphabet.length).toEqual(26);
		});
	}); //has

	describe("#guess", function(){
		var hangman = new Hangman("sports");

		beforeEach(function(){
			hangman.guessedLetters = new Array;
			hangman.revealedWord = ["_", "_", "_", "_"];
			hangman.guess("a");
			hangman.answer = ["b", "a", "b", "y"];
			hangman.guessesLeft = 7;
		})

		it("it decrements guess if the letter isn't included in the answer", function(){
			hangman.guess("g");
			expect(hangman.guessesLeft).toEqual(6);
		}); //#guess

		it("reveals the letter if the letter is included in the answer", function(){
			expect(hangman.revealedWord).toEqual(["_", "a", "_", "_"]);
		}); // reveals the letter

		it("adds the guess to the guessed letters array", function(){
			expect(hangman.guessedLetters).toContain("a");
			expect(hangman.guessedLetters.length).toEqual(1);

		}); //adds the guess to the guessed letters

		it("it checks to ensure the letter hasn't already been guessed", function(){
			hangman.guess("a");
			expect(hangman.guessedLetters).toContain("a");
			expect(hangman.guessedLetters.length).toEqual(1);


		}); //checks to ensure the letter hasn't already been guessed

		it("it checks to ensure the guess is a letter", function(){
			hangman.guess("1");
			expect(hangman.guessedLetters).not.toContain("1");
			expect(hangman.guessedLetters.length).toEqual(1);
		}); // checks to ensure the guess is a letter

	}); //#guess test

	describe("#lose", function(){
		var hangman = new Hangman("sports");
		it("ends the game if you run out of guesses", function(){
			hangman.guessesLeft = 0;
			hangman.lose();
			expect(hangman.gameOver).toEqual(true);
		});
	}); //#lose test

	describe("#win", function(){
		var hangman = new Hangman("sports");
		hangman.guessedLetters = new Array;
		hangman.revealedWord = ["_", "_", "_", "_"];
		hangman.answer = ["b", "a", "b", "y"];
		hangman.guess("a");
		hangman.guess("b");
		hangman.guess("y");
		console.log(hangman.revealedWord);
		hangman.win();
		hangman.guessesLeft = 7;
		
		it("wins the game if you get all the correct letters!", function(){
			expect(hangman.revealedWord).not.toContain("_");
			expect(hangman.gameOver).toEqual(true);
		});
	});
}); //hangman