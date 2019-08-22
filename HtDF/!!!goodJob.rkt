;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname !!!goodJob) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(require 2htdp/image)

;; Image, Image -> Boolean
;; produce tru if first image is larger (height and width are both larger) than second image ;;else false

(check-expect (larger-img? (square 10 "solid" "red") (square 20 "solid" "red")) #f)
(check-expect (larger-img? (circle 20.7 "solid" "blue") (square 40 "solid" "yellow")) #t)
(check-expect (larger-img? (ellipse 60 30 "outline" "yellow") (square 10 "outline" "black")) #t)

;(define (larger-img? img1 img2) #f) ;stub
;(define (larger-img? img1 img2) ;template
; (... img1 img2))

(define (larger-img? img1 img2)
  (and (> (image-width img1) (image-width img2))
       (> (image-height img1) (image-height img2))))
