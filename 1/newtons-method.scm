(load "fixed-point.scm")
(load "deriv.scm")

(define (newton-transform g)
 (lambda (x) (- x (/ (g x) ((deriv g) x)))))

(define (newtons-method g guess)
 (fixed-point (newton-transform g) guess))
