; defvar is used instead of DEFINE in CLISP to define a variable
(define A (* 5 5))
(print (* A A))

; defun is used instead of DEFINE in CLISP to define a function
; to square something, multiply it by itself
(define (square x) (* x x))
(print (square 10))

; Average procedure
(define (average x y) (/ (+ x y) 2)) 
(print (average 10 20))

; Absolute Value procedure
; Using condition
(define (absvalue x)
    (cond ((< x 0) (- x)) 
            ((= x 0) 0)
             ((> x 0) x)
    ))
(print (absvalue 20))
(print (absvalue -20))
(print (absvalue 0))

; Absolute Value procedure
; Using IF
(define (absvalue2 x)
    (cond ((< x 0) 
            (- x)
            x) 
    ))
(print (absvalue 20))
(print (absvalue -20))
(print (absvalue 0))



;Square Root procedures
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
