(define intBuilder$
  (lambda(n) 
       (append (list n) (lambda () (intBuilder$ (+ n 1))))))

(define take$
  (lambda (m s)
    (if (or (= m 0) (null? s))
        '()
        (cons (car s) (take$ (- m 1) ((cdr s)))))))

(define filter$
  (lambda(num s)
    (if (null? s)
        '()
        (if (= (modulo (car s) num) 0)
            (filter$ num ((cdr s)))
            (cons (car s) (lambda() (filter$ num ((cdr s)))))))))

(define sieve$
  (lambda (s)
    (if (null? s)
        '()
        (cons (car s) (lambda () (sieve$ (filter$ (car s) ((cdr s)))))))))


(define stol$
  (lambda (m)
    (take$ m (sieve$ (intBuilder$ 2)))))


   



