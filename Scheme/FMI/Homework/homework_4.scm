#lang scheme
(define (member l x)
  (cond ((null? l) #f)
        ((= x (car l)) #t)
        (else (member (cdr l) x))))

(define (all-not-in-list l1 l2)
  (cond ((null? l2) '())
        ((member l1 (car l2)) (all-not-in-list l1 (cdr l2)))
        (else (cons (car l2) (all-not-in-list l1 (cdr l2))))))

(define (get-vertex g v)
  (cond ((null? g) '())
        ((= (car (car g)) v) (car g))
        (else (get-vertex (cdr g) v))))

(define (bfs-help g l q)
  (cond ((null? q) l)
        (else (bfs-help g
                        (append l (all-not-in-list l (get-vertex g (car q))))
                        (append (cdr q) (all-not-in-list l (get-vertex g (car q))))))))

(define (bfs g)
  (bfs-help g (list (car (car g))) (list (car (car g)))))