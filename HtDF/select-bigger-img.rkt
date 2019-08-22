;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname selectBiggerImg) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(require 2htdp/image)

;; Img -> Boolean
;; Check is the first img is bigger than second img

(check-expect (selectBiggerImg
               (circle 10 "solid" "red")
               (circle 10 "solid" "red"))
              false)

(check-expect (selectBiggerImg
               (circle 10 "solid" "red")
               (circle 20 "solid" "blue"))
              false)

(check-expect (selectBiggerImg
               (circle 30 "solid" "orange")
               (circle 10 "solid" "red"))
              true)
; (define (selectBiggerImg img1 img2))

#;
  (define (selectBiggerImg img1 img2)
    (...img1 ...img2))

(define (selectBiggerImg img1 img2)
  (> (*
      (image-width img1)
      (image-height img1)
      )
     (*
      (image-width img2)
      (image-height img2)
      )
  )
)
  