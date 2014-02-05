## Atbash Cipher

A folding cipher works similar to the ROT13 cipher that we did, except that the mappings are done by "folding the alphabet." This way, "a" maps to "z", "b" maps to "y", "c" maps to "x", and so on.

```
Plain:    a b c d e f g h i j k l m n o p q r s t u v w x y z
Cipher:   z y x w v u t s r q p o n m l k j i h g f e d c b a
```

For the class Cipher, implement a class method `encode` that takes a word as an argument returns the encoded word

Example usage:

```
Cipher.encode("hello")
=> "svool"

Cipher.encode("peter")
=> "kvgvi"

```