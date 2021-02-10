;Square Root procedures
(define (square x) (* x x))
(define (average x y) (/ (+ x y) 2)) 

(define (squareRoot x) 
    (try 1 x))

(define (improve guess x)
    (average guess (/ x guess)))

(define (goodenough? guess x)
    (< (abs (- (square guess) x)) 
        0.1))
        
(define (try guess x)
    (if (goodenough? guess x) guess
    (try (improve guess x) x)))

(print (squareRoot 2))



;;; fixed point idea. todo. create kotlin solution

;;(define (sqrt x) 
;;    (fixed-point 
;;    (lambda (y) (average (/ x y) y)) 
;;    1))