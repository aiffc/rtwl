(defpackage #:rtwl
  (:use #:cl))

(defpackage #:rtwl.utils
  (:use #:cl)
  (:nicknames #:%u))

(defpackage #:rtwl.math
  (:use #:cl)
  (:nicknames #:%m)
  (:local-nicknames
   (#:rtwl.utils #:%u)
   (#:rtg-math.vector2 #:v2)
   (#:rtg-math.vector3 #:v3)
   (#:rtg-math.vector4 #:v4)
   (#:rtg-math.matrix2 #:m2)
   (#:rtg-math.matrix3 #:m3)
   (#:rtg-math.matrix4 #:m4)))

(defpackage #:rtwl.draw
  (:use #:cl)
  (:nicknames #:%d)
  (:local-nicknames
   (#:rtwl.utils #:%u)
   (#:rtwl.math #:%m)))


