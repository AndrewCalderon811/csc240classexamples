#lang scheme
(define x '(1 2 3 4))
(define y '(3 4 9 2))

(define func
  (lambda (a b)
    (+ b (* a a))))

(define for_loop
  (lambda (lst1 lst2)
    (if (null? lst1)
        '()
        (cons (func (car lst1) (car lst2)) (for_loop (cdr lst1) (cdr lst2))))))

(for_loop x y)
