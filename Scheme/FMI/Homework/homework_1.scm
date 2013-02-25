#lang scheme
(define (isProgression x) (if (< x 10) #t 
                              (if (<= (remainder (quotient x 10) 10) (remainder x 10))
                                  (isProgression (quotient x 10))
                                  #f)))
(define (hasDigit x k) (if (= x 0) 0
                           (if (= k (remainder x 10)) 1 
                               (hasDigit (quotient x 10) k))))
(define (common x y) (if (= x 0) 0
                         (+ (hasDigit y (remainder x 10)) (common (quotient x 10) y))))
