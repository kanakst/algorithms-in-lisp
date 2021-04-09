(defun qs (items)
  (if (null items)
      nil
    (let* ((pivot (car items))
           (rest  (cdr items))
           (lesser (cl-remove-if (lambda (x) (>= x pivot)) rest))
           (greater (cl-remove-if (lambda (x) (< x pivot)) rest)))
      (append (qs lesser) (list pivot) (qs greater)))))

(qs '(3 4 8 1 2 0 10 15 3 2 9 7))           
