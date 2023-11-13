#lang scheme
(require "scmprojtest.scm")

(define remove-next-to-last
  (lambda (lst)
    (if (= (length lst) 2)
        (cdr lst)
        (cons (car lst) (remove-next-to-last (cdr lst))))))

(define manhattan
  (lambda (a b)
    (abs (+
          (- (car a) (car b)) (- (car a) (car b))
          (- (cdr a) (cdr b)) (- (cdr a) (cdr b))))))

(define remove-dups
  (lambda (lst)
    (if (> (length lst) 1)
        (if (equal? (car lst) (car (cdr lst)))
            (remove-dups (cdr lst))
            (cons (car lst) (remove-dups (cdr lst))))
        (list (car lst)))))

(define deep-search
  (lambda (lst X)
    (if (null? lst)
        #f
        (if (number? lst)
            (if (eq? lst X)
                #t
                #f)
            (if (list? (car lst))
                (or (deep-search (car lst) X) (deep-search (cdr lst) X))
                (if (eq? X (car lst))
                    #t
                    (deep-search (cdr lst) X)))))))

(define inorder
  (lambda (lst)
    (if (null? lst)
        '()
        (if (pair? lst)
            (append (inorder (car lst)) (inorder (cdr lst)))
            (append (list lst) '())))))
        
(define tree-exists?
  (lambda (tree lst)
    (deep-search tree lst)))

(define eval-poly
  (lambda (p x)
    (apply + (map (lambda (term) (* (car term) (expt x (cdr term)))) p))))

(define get-poly-fun
  (lambda (p)
    (lambda (x)
      (eval-poly p x))))
    
                



; Test code
(display "=========== Start of test code ===========")(newline)
(test-remove-next-to-last remove-next-to-last)
(test-manhattan manhattan)
(test-remove-dups remove-dups)
(test-deep-search deep-search)
(test-inorder inorder)
(test-tree-exists tree-exists?)
(test-eval-poly eval-poly)
(test-get-poly-fun get-poly-fun)
(display "============ End of test code ============")(newline)

        

       
    
    