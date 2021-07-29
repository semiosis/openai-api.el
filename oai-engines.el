(require 'memoize)

(defun pen-openai-list-engines ()
  (let ((engines
         (pen-str2list
          (pen-snc "pen-openai api engines.list | jq -r '.data[].id'"))))
    (if (interactive-p)
        (etv (pen-list2str engines))
      engines)))
;; (memoize 'pen-openai-list-engines)

(provide 'oai-engines)