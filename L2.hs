
------------------common factors----------------------------
divizor nb=[x|x <-[1..nb], nb `mod` x==0]
commonFactors n1 n2=[x|x <-( divizor n1), ( n2 `mod` x)==0]
-------------------------------------------------------------

----------------functie grad 1-------------------------------
func 0 0 = error "errorr"
func 0 b = error "error"
func a 0 = a
func a b = -(b rem a)
-------------------------------------------------------------

-------------------inner product-----------------------------
mysum[] =0 
mysum(x:xs)=x+mysum xs 

innerProduct n m=mysum(zipWith (*) n m)
--------------------------------------------------------------