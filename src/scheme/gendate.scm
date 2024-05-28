#!/usr/bin/env csi -s

(import (chicken time posix))

(define (is-leap-year? year)
  (or (and (zero? (modulo year 4)) (not (zero? (modulo year 100))))
      (zero? (modulo year 400))))

(define (date->string date)
  (time->string date "%Y-%m-%d"))

(define (increment-date date)
  (seconds->local-time (+ (local-time->seconds date) (* 24 60 60))))

(define (main)
  (let loop ((current-date (seconds->local-time
                           (utc-time->seconds '#(0 0 0 1 0 70 4 0 #f 0)))))
    (print (date->string current-date))
    (let* ((year (+ 1900 (vector-ref current-date 5)))
           (month (vector-ref current-date 4))
           (day (vector-ref current-date 3))
           (is-leap (and (not (is-leap-year? year))
                         (= month 1)
                         (= day 29)))
           (is-end (and (= year 3000) (= month 0) (= day 1))))
      (unless (or is-leap is-end)
        (loop (increment-date current-date))))))

(main)
