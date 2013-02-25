#lang scheme

(define (merge list1 list2)
  (cond ((and (null? list1) (null? list2)) '())
        ((null? list1) (cons (car list2) (merge list1 (cdr list2))))
        ((null? list2) (cons (car list1) (merge (cdr list1) list2)))
        ((has-element (car list1) list2) (merge list1 (remove-dup-el (car list1) list2)))
        ((< (car list1) (car list2)) (cons (car list1) (merge (cdr list1) list2)))
        (else (cons (car list2) (merge list1 (cdr list2))))))

(define (union set1 set2)
  (cond ((null? set2) '())
        ((null? set1) (cons (car set2) (union set1 (cdr set2))))
        ((has-element (car set1) set2) (cons (car set1) (union (cdr set1) (remove-dup-el (car set1) set2)))) 
        (else (cons (car set1) (union (cdr set1) set2)))))

(define (has-element x l)
  (cond ((null? l) #f)
        ((= x (car l)) x)
        (else (has-element x (cdr l)))))

(define (intersection set1 set2)
  (cond ((null? set1) '())
        ((has-element (car set1) set2) (cons (car set1) (intersection (cdr set1) set2)))
        (else (intersection (cdr set1) set2))))

(define (diff set1 set2)
  (cond ((null? set1) '())
        ((has-element (car set1) set2) (diff (cdr set1) set2))
        (else (cons (car set1) (diff (cdr set1) set2)))))

(define (remove-dup-el x l)
  (cond ((null? l) '())
        ((= x (car l))
      (remove-dup-el x (cdr l)))
      (else (cons (car l) (remove-dup-el x (cdr l))))))

(define (remove-dup l)
  (if (null? l) '()
        (cons (car l) (remove-dup (remove-dup-el (car l) (cdr l))))))