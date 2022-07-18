(in-package #:rtwl.utils)

(defun make-data-ptr (arr &aux
			    (acount (length arr)))
  "function used to convert arr to a c pointer"
  (declare (type simple-array arr)
	   (optimize (speed 3) (debug 0) (safety 0)))
  (cffi:with-foreign-object (ptr :uint8 acount)
    (loop :for i :from 0 :below acount
	  :do (setf (cffi:mem-aref ptr :uint8 i) (svref arr i)))
    ptr))

(defun initial-pic (width height &optional (initial-element 0)
		    &aux
		      (pixiel-count (* width height)))
  "function used to initiali a picture"
  (declare (type integer width height))
  (make-array (* pixiel-count 4) :initial-element initial-element))

(defun save-image (path width height arr)
  "function used to save image"
  (declare (type integer width height)
	   (type simple-array arr)
	   (optimize (speed 3) (debug 0) (safety 0)))
  (cl-soil:save-image path :bmp width height 4 (make-data-ptr arr)))
