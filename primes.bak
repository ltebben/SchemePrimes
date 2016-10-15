(define intBuilder
  (lambda(n)
    (if (= n 1)
      '()
      (append (intBuilder (- n 1)) (list n)))))

(define filter
  (lambda(num lst)
    (if (null? lst)
        '()
        (if (= (modulo (car lst) num) 0)
            (filter num (cdr lst))
            (cons (car lst) (filter num (cdr lst)))))))

(define sieve
  (lambda (lst)
    (if (null? lst)
        '()
        (cons (car lst) (sieve (filter (car lst) (cdr lst)))))))

(define primes
  (lambda (n)
    (sieve (intBuilder n))))

(define stol
  (lambda (m)
    (let ((lst (primes (* m 20))))
      (take m lst))))

(define take
  (lambda (m lst)
    (if (= m 0)
        '()
        (cons (car lst) (take (- m 1) (cdr lst))))))
   



