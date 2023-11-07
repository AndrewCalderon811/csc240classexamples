#lang scheme

(define square
  (lambda (x)
    (expt x 2)))

(define celsius->fahrenheit
  (lambda (x)
    (+ 32.0 (* x (/ 9 5)))))

(define fahrenheit->celsius
  (lambda (x)
    (* (+ x -32) (/ 5 9))))

(define price-with-tax
  (lambda (p r)
    (* p (+ 1.0 (/ r 100)))))

(define after-tax-income
  (lambda (s r)
    (* s (/ (- 100.0 r) 100.0))))

(define square-the-smaller
  (lambda (x y)
    (if (> x y)
        (expt y 2)
        (expt x 2))))

(define three-square-sum
  (lambda (a b c)
    (+ (expt a 2) (expt b 2) (expt c 2))))

(define four-in-a-row
  (lambda (l m n o)
    (if (< l m n o)
    #t
    #f)))

(define fifth-element
  (lambda (lst)
    (if (< (length lst) 5)
        '()
        (car (cdr (cdr (cdr (cdr lst))))))))

(define car-to-cdr-power
  (lambda (lst)
    (if (< (length lst) 2)
        (car lst)
        (expt (car lst) (car (cdr lst))))))

(define div-by-small-prime
  (lambda (n)
    (cond
      ((= (remainder n 2) 0) #t)
      ((= (remainder n 3) 0) #t)
      ((= (remainder n 5) 0) #t)
      ((= (remainder n 7) 0) #t)
      (else #f))))


