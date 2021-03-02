(define make-counter
    (lambda (n)
        (lambda () 
            (set! n (+ 1 n))
            n)))

(define c1 (make-counter 0))
(define c2 (make-counter 10))

(print (c1))
(print (c1))
(print (c1))

(print (c2))
(print (c2))
(print (c2))