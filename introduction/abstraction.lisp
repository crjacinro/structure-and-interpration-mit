; defvar is used instead of DEFINE in CLISP to define a variable
(defvar A (* 5 5))
(print (* A A))

; defun is used instead of DEFINE in CLISP to define a function
; to square something, multiply it by itself
(defun square (x) (* x x))
(print (square 10))

; Average procedure
(defun average (x y) (/ (+ x y) 2)) 
(print (average 10 20))

; Absolute Value procedure
; Using COND
(defun absvalue(x)
    (COND ((< x 0) (- x)) 
            ((= x 0) 0)
             ((> x 0) X)
    ))
(print (absvalue 20))
(print (absvalue -20))
(print (absvalue 0))

; Absolute Value procedure
; Using IF
(defun absvalue2(x)
    (COND ((< x 0) 
            (- x)
            x) 
    ))
(print (absvalue 20))
(print (absvalue -20))
(print (absvalue 0))



;Square Root procedures
(defun squareRoot(x) 
    (try 1 x))

(defun improve (guess x)
    (average guess (/ x guess)))

(defun goodenough? (guess x)
    (< (abs (- (square guess) x)) 
        0.1))
        
(defun try (guess x)
    (if (goodenough? guess x) guess
    (try (improve guess x) x)))

(print (squareRoot 2))
