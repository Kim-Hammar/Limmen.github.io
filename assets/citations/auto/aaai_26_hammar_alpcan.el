;; -*- lexical-binding: t; -*-

(TeX-add-style-hook
 "aaai_26_hammar_alpcan"
 (lambda ()
   (LaTeX-add-bibitems
    "Hammar_Alpcan_2026")
   (LaTeX-add-environments
    '("@IEEEbogusbiography" LaTeX-env-args ["argument"] 1)
    '("biography" LaTeX-env-args ["argument"] 1)))
 '(or :bibtex :latex))

