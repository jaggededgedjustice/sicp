(define (a-plus-abs-b a b) ; define a function taking 2 arguments
  ((if (> b 0) + -) a b)) ; if b is positive add the arguments, else subtract ( a + (-b) == a - b )
