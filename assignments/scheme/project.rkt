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
            (remove-dups (cddr lst))
            (cons (car lst) (remove-dups (cdr lst))))
        (list (car lst)))))


    
(define deep-search
  (lambda (lst X)
    (map (lambda (x)
           (if (list? x)
               (deep-search x X)
               (if (eq? x X)
                   #t
                   #f)) lst))))


       
    
    