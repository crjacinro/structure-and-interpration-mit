(define (+c z1 z2))
(define (-c z1 z2))
(define (*c z1 z2))
(define (/c z1 z2))


(imag-part z)
(magnitude z)
(angle z)

(define (make-rectangular x y)  
    (cons x y))

(define (real-part z) (car z))
(define (imag-part z) (cdr z))

(define (make-polar r a)  
    (cons (* r (cos a)) (* r (sin a))))

(define (magnitude z)
    (sqrt (+ (square (car z) 
              (sqare (cdr z))))))

(define (angle z)
    (atan (cdr z)  (car z)))

(make-polar r a) 