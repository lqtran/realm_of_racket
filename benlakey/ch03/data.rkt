#lang racket

(zero? 1)
(zero? (sub1 1))

(symbol=? 'foo 'FoO)

(/ 4 6)
(/ 4.0 6)

"tutti frutti"
(string-append "tutty" "frutti")
(string-append "tutty" " " "frutti")

(cons 1 2)
(define cell (cons 'a 'b))
(car cell)
(cdr cell)

(cons 'chicken empty)
(cons 'chicken '())
(cons 'pork '(beef chicken))
(cons 'beef (cons 'chicken '()))
(cons 'pork (cons 'beef (cons 'chicken '())))
(list 'pork 'beef 'chicken)
(first (cons 'pork (cons 'beef (cons 'chicken empty))))
(rest (list 'pork 'beef 'chicken))

(struct student (name id# dorm))
(define freshman1 (student 'Joe 1234 'NewHall))
(student-name freshman1)
(student-id# freshman1)
(define mimi   (student 'Mimi 1234 'NewHall))
(define nicole (student 'Nicole 5678 'NewHall))
(define rose   (student 'Rose 8765 'NewHall))
(define eric   (student 'Eric 4321 'NewHall))
(define in-class (list mimi nicole rose eric))
(student-id# (third in-class))
(struct student-body (freshmen sophomores juniors seniors))
(define all-students (student-body (list freshman1 (student 'Mary 0101 'OldHall))
                                   (list (student 'Jeff 5678 'OldHall))
                                   (list (student 'Bob 4321 'Apartment))
                                   empty))
(student-name (first (student-body-freshmen all-students)))
(student-name (second (student-body-freshmen all-students)))
(student-name (first (student-body-juniors all-students)))
