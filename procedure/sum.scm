;peano arithmetic
(define (peano-sum x y)
(if (= x 0)
    y
    (peano-sum (- x 1) (+ y 1) )))
(print (peano-sum 3 4))