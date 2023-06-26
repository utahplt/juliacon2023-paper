#lang racket
(require plot)

;; (define (floor-log n [base 10])
;;   (floor (log n base)))

(define (fp-example-points num subseq [stretch 2])
  (define last-val 0)
  (for/list ([i (range 0 num)])
    (set! last-val (+ last-val (expt stretch (floor (/ i subseq)))))
    last-val))

(parameterize ([plot-width 700]
               [plot-height 20])
  (define xs (append (map - (fp-example-points 32 8 1.8))
                     (list 0)
                     (fp-example-points 32 8 1.8)))
  (plot (points (map (λ (x) (vector x 0)) xs)
                #:sym 'point)))

(require math/utils)
(test-floating-point 10000)
