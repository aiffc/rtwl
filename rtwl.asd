(defsystem "rtwl"
  :version "0.1.0"
  :author "jc.y"
  :license "mit"
  :depends-on (:rtg-math
	       :cl-soil)
  :components ((:module "src"
                :components
                ((:file "package")
		 (:file "utils"))))
  :description "ray track with lisp"
  :in-order-to ((test-op (test-op "rtwl/tests"))))

(defsystem "rtwl/tests"
  :author "jc.y"
  :license "mit"
  :depends-on ("rtwl"
               "rove")
  :components ((:module "tests"
                :components
                ((:file "package"))))
  :description "test system for rtwl"
  :perform (test-op (op c) (symbol-call :rove :run c)))
