#lang scheme

; 1
(define x 8)
(define y 'symb)
(define z "String")

; 2
(+ 4 (* 3 6))
(* 7 (- 5 2))
(+ -6 (/ 15 3))

; 3
(define list3A '(X 1 2 3 4 5))
(car list3A)

(define list3B '(1 X 2 3 4 5))
(car (cdr list3B))

(define list3C '((1 X 2 3 4 5)))
(car (cdr (car list3C)))

(define list3D '((1 2) (3 X 4) 5))
(car (cdr (car (cdr list3D))))

; 4 - just examples

; 5
(define prac1-5
  (lambda (x)
    (+ (expt x 2) (* x 2) 3)))

; 6
(define fib
  (lambda (n)
    (if (= n 0)
        1
        (* n (fib (- n 1))))))

; 7
(define quad
  (lambda (x)
    (* x 4)))

; 8
(define bloop
  (lambda (x)
    (if (< x 0)
        (* x 2)
        (/ x 2))))

; 9
(define mult
  (lambda (x y)
    (* x y)))

; 10
(define bigger
  (lambda (x y)
    (if (< x y)
        y
        x)))

; 11
(define absol
  (lambda (x)
    (if (< x 0)
        (* x -1)
        x)))

;12
(define transform
  (lambda (x)
    (if (symbol? x)
        (symbol->string x)
        (string->symbol x))))


