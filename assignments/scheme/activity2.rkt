#lang scheme


(define dec-all
  (lambda (lst)
    (if (> (length lst) 1)
        (cons (- (car lst) 1) (dec-all (cdr lst)))
        (cons (- (car lst) 1) '()))))

(define mult-list
  (lambda (lst)
    (if (> (length lst) 1)
        (* (car lst) (mult-list (cdr lst)))
        (car lst))))

(define only-rationals
  (lambda (lst)
    (if (> (length lst) 1)
        (if (rational? (car lst))
            (cons (car lst) (only-rationals (cdr lst)))
            (only-rationals (cdr lst)))
        (if (rational? (car lst))
            (cons (car lst) '())
            '()))))
            