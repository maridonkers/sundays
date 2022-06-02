((nil
  (custom-set-variables
 ;; Customization related to indentation.
    '(haskell-indentation-layout-offset 2)
    '(haskell-indentation-starter-offset 2)
    '(haskell-indentation-left-offset 2)
    '(haskell-indentation-where-pre-offset 2)
    '(haskell-indentation-where-post-offset 2)
  )
  (dante-repl-command-line . ("cabal" "repl"))
  (haskell-process-type . ghci)
  (format-all-formatters
   ("Haskell" ormolu)
   ("Literate Haskell" ormolu)
   )))
