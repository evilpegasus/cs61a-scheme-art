;;; Scheme Recursive Art Contest Entry
;;;
;;; Please do not include your name or personal info in this file.
;;;
;;; Title: <Your title here>
;;;
;;; Description:
;;;   <It's your masterpiece.
;;;    Use these three lines to describe
;;;    its inner meaning.>

(define (draw)
  ; YOUR CODE HERE
  ; RNG from here:
  ; https://stackoverflow.com/questions/14674165/scheme-generate-random
  (define random
  (let ((a 69069) (c 1) (m (expt 2 32)) (seed 12345))
    (lambda (new-seed)
      (if (pair? new-seed)
          (set! seed (car new-seed))
          (set! seed (modulo (+ (* seed a) c) m)))
      (/ seed m))))
  (define (random-choice a b)
    (if (zero? (random 2)) a b)
  )
  (bgcolor "black")
  (speed 0)
  (pendown)
  (define (loop n)
    (if (= n 0)
      ()
      (begin
        (color (rgb (random n) (random n) (random n)))
        ; (right (* 360 (random 9)))
        (right (* 60 (random-choice 0 1)))
        (forward (* 200 (random 69)))
        (loop (- n 1))
      )
      
    )
  )
  ; 119 max recursion depth
  (loop 119)
  (loop 50)
;   (loop 119)
;   (loop 119)
;   (loop 119)
;   (loop 119)
;   (loop 119)

  (hideturtle)
;   (save-to-file "asdf")
  (exitonclick)
)

; Please leave this last line alone.  You may add additional procedures above
; this line.
(draw)