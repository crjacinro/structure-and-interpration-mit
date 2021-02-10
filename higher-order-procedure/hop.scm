;sum of integers from a to b
(define (sum-int a b)
    (if (> a b)
        0
        (+ a 
            (sum-int (+ 1 a) b))))
 
(print (sum-int 1 5))

(define (square x) (* x x))

;sum of square of integers from a to b
(define (sum-square-int a b)
    (if (> a b)
        0
        (+ (square a) 
            (sum-square-int (+ 1 a) b))))

(print (sum-square-int 1 5))




;sigma general procedure
(define (sigma term a next b)
    (if (> a b)
        0
        (+ (term a) 
            (sigma term 
                    (next a) 
                    next
                    b))))

    

(define (sigma-int a b)
    (sigma 
      (lambda (x) x)
        a 
       (lambda (x) (+ 1 x))
        b)) 

(print (sigma-int 1 5))