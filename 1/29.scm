(define (simpson f a b n)
  (define (term k)
   (cond ((or (= k 0) (= k n)) (y n))
         ((even k) (* 2 (y k)))
         (else (* 4 (y k)))))
  (define (sum k)
   (if (> k n)
       0
       (+ (term k) (sum (+ k 1))))) 
  (define (h)
   (/ (- b a) n))
  (define (y k)
   (f (+ a (* k (h))))) 
  (* (/ (h) 3) (sum 0)))
