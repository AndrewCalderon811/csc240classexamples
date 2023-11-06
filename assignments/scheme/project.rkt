#lang scheme

(define remove-next-to-last
  (lambda (lst)
    (if (= (length lst) 2)
        (cdr lst)
        (cons (car lst) (remove-next-to-last (cdr lst))))))

(define manhattan
  (lambda (a b)
    (sqrt (+
           (* (- (car a) (car b)) (- (car a) (car b)))
           (* (- (cdr a) (cdr b)) (- (cdr a) (cdr b)))))))

(define remove-dups
  (lambda (lst)