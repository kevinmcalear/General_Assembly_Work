<!DOCTYPE html>
<html>
  <head>
    <title>Project Euler: Problem 2</title>
  </head>
  <body>
    <script>
    var sum = 0
    var i = 0
    var j = 1

    while(i <= 4000000) {
        i = i + j;
        if (i % 2 === 0) {
            sum += i;
        };
        j = j + i;
        if (j % 2 === 0) {
            sum += j;
        };
    };
    console.log(sum);
    </script>
  </body>
</html>