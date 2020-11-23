; defvar is used instead of DEFINE in CLISP to define a variable
(defvar A (* 5 5))

(print (* A A))


; defun is used instead of DEFINE in CLISP to define a function
; to square something, multiply it by itself
(defun square (x) (* x x))

(print (square 10))


(defun average (x y) (/ (+ x y) 2)) 

(print (average 10 20))