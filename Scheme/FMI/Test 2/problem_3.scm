#lang scheme
(define (delete x l)
  (cond ((null? l) '())
        ((= x (car l)) (delete x (cdr l)))
         (else (cons (car l) (delete x (cdr l))))))

(define (member x l)
  (cond ((null? l) #f)
        ((= (car l) x) #t)
        (else (member x (cdr l)))))


(define (unique l)
  (cond ((null? l) 0)
        ((member (car l) (cdr l)) (unique (delete (car l) (cdr l))))
        (else (+ (car l) (unique (cdr l))))))

(define (sumUnique l)
  (if (null? l) 0
      (+ (unique (car l)) (sumUnique (cdr l)))))