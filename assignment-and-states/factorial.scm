; Functional Factorial
(define (fact n)
    (define (iter m i)
        (cond   ((> i n) m)
                (else (iter (* i m) (+ i 1)))))
            
    (iter 1 1))

(print (fact 5))





; Functional Factorial
(define (fact n)
    (let ((i 1) (m 1))
    (define (loop) 
        (cond   ((> i n) m)
                (else
                    (set! m (* i m))
                    (set! i (+ i 1))
                    (loop))
        ))
    (loop)))

(print (fact 5))