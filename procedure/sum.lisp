;peano arithmetic
(defun peano-sum (x y)
(if (= x 0)
    y
    (peano-sum (1- x) (1+ y) )))
(print (peano-sum 3 4))