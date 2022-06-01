((nil
  (custom-set-variables
 ;; Customization related to indentation.
    '(haskell-indentation-layout-offset 4)
    '(haskell-indentation-starter-offset 4)
    '(haskell-indentation-left-offset 4)
    '(haskell-indentation-where-pre-offset 4)
    '(haskell-indentation-where-post-offset 4)
  )
  (dante-repl-command-line . ("cabal" "repl"))
  (haskell-process-type . ghci)
  (format-all-formatters
   ("Haskell" fourmolu)
   ("Literate Haskell" fourmolu)
   )))
