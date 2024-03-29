#lang racket
(require plot/no-gui)

;; (define (floor-log n [base 10])
;;   (floor (log n base)))

(define (fp-example-points num subseq [stretch 2])
  (define last-val 0)
  (for/list ([i (range 0 num)])
    (set! last-val (+ last-val (expt stretch (floor (/ i subseq)))))
    last-val))

(define num-points 20)
(define point-sep 2)
(define out-kind 'pdf)

(parameterize ([plot-width 500]
               [plot-height 80]
               [plot-x-ticks (ticks-add (linear-ticks #:number 10) (range -50 50) #f)]
               [plot-x-tick-labels? #f]
               [plot-y-ticks no-ticks]
               [plot-y-axis? #f]
               [plot-y-far-axis? #f]
               [plot-x-label #f]
               [plot-y-label #f]
               [plot-x-far-axis? #f]
               [plot-background-alpha 0.0]
               )
  (define xs (append (map - (fp-example-points num-points point-sep 1.52))
                     (list 0)
                     (fp-example-points num-points point-sep 1.52)))
  #;(displayln (cons (apply min xs) (apply max xs)))
  (plot-file
   (list
    (points (map (λ (x) (vector x 1)) xs)
            #:sym 'fullcircle5
            ;; #:sym 'point
            ))
   (format "./fig/real_vs_fp.~a" out-kind)
   out-kind
   #:x-min -50
   #:x-max 50
   #:y-min 0
   #:y-max 2
   ))

;; (require math/utils)
;; (test-floating-point 10000)
