#lang scheme


(define recursive-sub
  (lambda (x y)
    (if (> y 1)
        (recursive-sub (- x 1) (- y 1))
        (- x 1))))
    
(define rev
  (lambda (lst)
    (if (> (length lst) 1)
        (cons (rev (cdr lst)) )
        (car lst))))


