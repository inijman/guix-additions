(define-module (umcu packages vcf-explorer)
  #:use-module (guix utils)
  #:use-module ((guix licenses) #:prefix license:)
  #:use-module (guix packages)
  #:use-module (guix download)
  #:use-module (guix build-system python)
  #:use-module (gnu packages base)
  #:use-module (gnu packages python))

(define-public python-pyvcf
  (package
    (name "python-pyvcf")
    (version "0.6.8")
    (source (origin
              (method url-fetch)
              (uri (pypi-uri "PyVCF" version))
              (sha256
               (base32
                "1ngryr12d3izmhmwplc46xhyj9i7yhrpm90xnsd2578p7m8p5n79"))))
    (build-system python-build-system)
    (propagated-inputs
     `(("python-setuptools" ,python-setuptools)
       ("python-psutil" ,python-psutil)))
    (home-page "https://github.com/jamescasbon/PyVCF")
    (synopsis "Variant Call Format (VCF) parser for Python")
    (description "Variant Call Format (VCF) parser for Python")
    (license #f)))

(define-public python2-pyvcf
  (package-with-python2 python-pyvcf))