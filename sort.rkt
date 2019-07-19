; remove n from tup 

(define numberrember
    (lambda (n tup)
        (cond
        ((null? tup) (quote ()))
        ((eq? (car tup) n) (cdr tup))
        (else (cons (car tup) (numberrember n (cdr tup)))))))
                    
; return the smallest element in a tup
    
(define smallest
    (lambda (tup)
        (cond
        ((eq? (cdr tup) (quote())) (car tup) )
        ((< (car tup) (car (cdr tup))) 
            (smallest (numberrember (car (cdr tup)) tup)))
        (else (smallest (cdr tup))))))

; sort tup

(define sort
    (lambda (tup)
        (cond
            ((null? tup) (quote ()))
                (else (cons (smallest tup) 
                (sort( numberrember (smallest tup) tup)))))))
                 
