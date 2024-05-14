(use-modules (ice-9 pretty-print))

;; Helper methods for maintaining comments and whitespace.
(define (copy-line-comment)
  (let ((char (read-char)))
    (if (not (eof-object? char))
      (if (eq? char #\newline)
        (newline)
        (begin (write-char char) (copy-line-comment))))))
(define (maintain-empty-lines)
  (let ((char1 (read-char)) (char2 (peek-char)))
    (if (and (eq? char1 #\newline) (eq? char2 #\newline))
      (write-char (read-char)))))

;; The main method. This reads from and writes to stdin/stdout.
(define (scmfmt)
  (let ((char (peek-char)))
    (if (not (eof-object? char))
      (begin
        (cond ((eq? char #\;) (copy-line-comment))
              ((eq? char #\newline) (maintain-empty-lines))
              ((char-whitespace? char) (read-char))
              (#t (pretty-print (read))))
        (scmfmt)))))
(scmfmt)
