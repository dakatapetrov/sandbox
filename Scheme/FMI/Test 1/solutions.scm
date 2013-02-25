;Явно няма filter в R5RS -.-
(define (filter f l)
  (cond ((null? l) '())
        ((f (car l)) (cons (car l) (filter f (cdr l))))
        (else (filter f (cdr l)))))

(define (divs n)
  (define (helper n x)
    (cond ((= x n) '())
          ((= (remainder n x) 0) (cons x (helper n (+ x 1))))
          (else (helper n (+ x 1))))) (helper n 1))

(define (od l1 l2)
  (cond ((null? l1) 0)
        ((member (car l1) l2) (+ 1 (od (cdr l1) l2)))
        (else (od (cdr l1) l2))))

(define (n-similar l n)
(filter (lambda (x)
          (and (>= (od (divs (car x)) (divs (cdr x))) n))) l))

(define (sumpair f g n)
  (if (= n 0) 0
      (+ (f n (g n)) (sumpair f g (- n 1)))))

(define (remove-dup-el x l)
  (cond ((null? l) '())
        ((= x (car l)) (remove-dup-el x (cdr l)))
        (else (cons (car l) (remove-dup-el x (cdr l))))))

(define (unique l)
  (cond ((null? l) '())
        ((member (car l) (cdr l)) (unique (remove-dup-el (car l) l)))
        (else (cons (car l) (unique (cdr l))))))

(define (has-divisor? x l)
  (and (not (null? l))
       (or (= (remainder x (car l)) 0)
           (has-divisor? x (cdr l)))))

(define (same? l1 l2)
  (cond ((and (null? l1) (null? l2)) #t)
        ((or (null? l1) (null? l2)) #f)
        ((not (= (car l1) (car l2))) #f)
        (else (same? (cdr l1) (cdr l2)))))

(define (list-divisor? l1 l2)
  (and (same? (filter (lambda (x) (has-divisor? x l2)) l1) l1)
       (same? (filter (lambda (x) (has-divisor? x l1)) l2) l2)))