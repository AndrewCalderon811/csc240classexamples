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
    (if (> (length lst) 1)
        (if (equal? (car lst) (car (cdr lst)))
            (cons (car lst) (remove-dups (cddr lst)))
            (cons (car lst) (remove-dups (cdr lst))))
        (cons (car lst) '()))))


    
    

(define deep-search
  (lambda (lst X)
    (if (null? lst)
        #f
        (if (eq? (car lst) X)
             #t
             (deep-search (cdr lst) X)))))
    
    