(define (ensure-prime n)
 (define (iter a)
  (cond ((= a 0) true)
        ((= (expmod a n n) a) (iter (- a 1)))
        (else false)))
 (iter (- n 1)))
