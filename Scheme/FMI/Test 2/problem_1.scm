#lang racket
(require (lib "srfi/40"))

(define (hasDigit x y)
  (cond ((= x 0) #f)
        ((= (remainder x 10) y) #t)
        (else (hasDigit (quotient x 10) y))))

(define (helper d x)
  (if (hasDigit x d) (stream-cons x (helper d (+ x 1)))
      (helper d (+ x 1))))

(define (numbersWith d)
  (helper d d))

(define (take-stream n s)
  (if (= n 0) '()
      (cons (stream-car s) (take-stream (- n 1) (stream-cdr s)))))