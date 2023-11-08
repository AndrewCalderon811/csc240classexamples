#lang scheme


(define dec-all
  (lambda (lst)
    (map (lambda (x) (- x 1)) lst)))


(define mult-list
  (lambda (lst)
    (apply * lst)))


(define only-rationals
  (lambda (lst)
    (filter rational? lst)))