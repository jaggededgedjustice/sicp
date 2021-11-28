(define (largest-squares x y z)
  (cond ((and (> x z) (> y z)) (+ (* x x) (* y y)))
        ((and (> y x) (> z x)) (+ (* y y) (* z z)))
        (else (+ (* x x) (* z z)))))
