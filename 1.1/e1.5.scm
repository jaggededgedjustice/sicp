; Ben Bitdiddle has invented a test to determine whether the interpreter he is faced with is using applicative-order evaluation or normal-order evaluation. He defines the following two procedures:

(define (p) (p)) ; self-referencing definition, will cause infinate loop when `p` is evaluated

(define (test x y) ; test as 2 branches so we can shortcut evaluation of second argument
  (if (= x 0)
      0
      y))

; Then he evaluates the expression
; (test 0 (p))

; normal-order
;   `(p)` is not evaluated unless the second branch of test is reached
;   test will return 0

; applicative-order
;   `(p)` is evaluated to be substituted into test's arguments
;   test will not return
