(define (plus-rat x y)
    (make-rat
        (+ (* (numer x) (denom y))
           (* (numer y) (denom x)))

        (* (denom x)(denom y))))


(define (times-rat x y)
    (make-rat
        (* (numer x) (numer y))
        (* (denom x) (denom y))))

(define (make-rat n d)
    (cons n d))

(define (numer x) (car x))
(define (denom x) (cdr x))

(define a (make-rat 1 2))
(define b (make-rat 1 4))
(define ans (plus-rat a b))

(print (numer ans))
(print (denom ans))