#lang racket
(require plot)

;; (define (floor-log n [base 10])
;;   (floor (log n base)))

(define (fp-example-points num subseq [stretch 2])
  (define last-val 0)
  (for/list ([i (range 0 num)])
    (set! last-val (+ last-val (expt stretch (floor (/ i subseq)))))
    last-val))

(parameterize ([plot-width 1500]
               [plot-height 100]
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
  (define xs (append (map - (fp-example-points 20 4 1.52))
                     (list 0)
                     (fp-example-points 20 4 1.52)))
  (displayln (cons (apply min xs) (apply max xs)))
  (plot
   #:out-file "/Users/ashton/Desktop/foo.svg"
   #:out-kind 'svg
   #:x-min -50
   #:x-max 50
   #:y-min 0
   #:y-max 3
   (list
    (points (map (λ (x) (vector x 1)) xs)
            #:sym 'fullcircle5
            ;; #:sym 'point
            ))))

;; (require math/utils)
;; (test-floating-point 10000)
