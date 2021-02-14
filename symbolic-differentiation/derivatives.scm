(define (deriv exp var)
    (cond   ((constant? exp var) 0)
            ((same-var? exp var) 1)
            ((sum? exp) 
                (make-sum   (deriv (a1 exp) var)
                            (deriv (a2 exp) var)))
            ((product? exp) 
                (make-sum   
                    (make-product (m1 exp)
                                   (deriv (m2 exp) var))
                    (make-product (deriv (m1 exp) var)
                                   (m2 exp))))))

(define (constant? exp var) 
    (AND (ATOM? EXP)
         (NOT (EQ? EXP VAR))))

(define (same-var? ex)
    (AND    (ATOM? EXP)
            (EQ? EXP VAR)))

(define (sum? exp)
    (and    (not (atom? exp))
            (eq (car exp) `+)))

(define (make-sum a1 a2)
    list `+ a1 a2)

(define a1 cadr)
(define a2 caddr)

(define (product? exp)
    (and    (not (atom? exp))
            (eq (car exp) `*)))

(define (make-product m1 m2)
    list `* m1 m2)

(define m1 cadr)
(define m2 caddr)

(define foo `x)

; not working. prints as procedure.
(print deriv foo `x)