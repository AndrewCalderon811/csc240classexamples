#lang scheme
; 1
(+ (* 3 10) 2 5)

; 2
(define a 1)
(define b 2)
(define c 3)

(+ a b c)

; 3
(define act1lst '(a b c d e))
(car (cdr act1lst))

; 4
(define addtwo (lambda (x) (+ x 2)))

(addtwo 5)