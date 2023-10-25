#lang scheme
; 1
(define ex1 '(1 2 (3 (4 5)) 6))
(car ex1)
(car (cdr ex1))
(car (car (cddr ex1)))
(car (car (cdr (car (cddr ex1)))))
(car (cdr (car (cdr (car (cddr ex1))))))
(car (cdddr ex1))

(newline)

; 2
(define ex2 '(a b (c d e) (f (g (h) i) (j k)) l (m n o (p q) r) s))
(car ex2)
(car (cdr ex2))
(car (car (cddr ex2)))
(car (cdr (car (cddr ex2))))
(car (cddr (car (cddr ex2))))
(car (car (cdddr ex2)))
(car (car (cdr (car (cdddr ex2)))))
(car (car (cdr (car (cdr (car (cdddr ex2)))))))
(car (cddr (car (cdr (car (cdddr ex2))))))
(car (car (cddr (car (cdddr ex2)))))
(car (cdr (car (cddr (car (cdddr ex2))))))
(car (cddddr ex2))
(car (car (cdr (cddddr ex2))))
(car (cdr (car (cdr (cddddr ex2)))))
(car (cddr (car (cdr (cddddr ex2)))))
(car (car (cdddr (car (cdr (cddddr ex2))))))
(car (cdr (car (cdddr (car (cdr (cddddr ex2)))))))
(car (cddddr (car (cdr (cddddr ex2)))))
(car (cddr (cddddr ex2)))



