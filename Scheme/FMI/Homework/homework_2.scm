#lang scheme
(define (accum a b nv comb op next)
  (if (> a b)
      nv
      (comb (op a) (accum (next a) b nv comb op next))))
  
(define (next a) (+ 1 a))
(define (comb a b) (or a b))
 
(define (super-or a b f) (accum a b #f comb f next))
