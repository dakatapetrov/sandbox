#lang scheme

(define (member x l)
  (cond ((null? l) #f)
        ((= x (car l)) #t)
        (else (member x (cdr l)))))

(define (reachable v g)
  (cond ((null? g) 0)
        ((member v (car g)) (+ 1 (reachable v (cdr (cdr g)))))
        (else (reachable v (cdr g)))))
