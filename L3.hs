
-------------------------------safetail-------------------------
safetail1 x= if not (null x) then tail x else []

safetail2 x
  | (null x)= []
  | otherwise = tail x 

safetail3 []=[]
safetail3(_:[])=[]
safetail3(_:x)=x
-----------------------------------------------------------------

----------------------palindrom----------------------------------
myinit ns= if (length ns>1) then (head ns):myinit(tail ns)
           else [] 

flatten []=[]
flatten (x:xs)= x ++ flatten xs

el_space x=[a | a<-x , a/=' ']

palindrom []=True
palindrom [_]=True
palindrom (x:xs)= if (( x==last xs) && palindrom(myinit xs)) then       True else False


palindromL x =palindrom( el_space(flatten x))
-----------------------------------------------------------------

------------------------decimate---------------------------------
decimate xs n=[x | x<- xs, x `mod` n /=0]
-----------------------------------------------------------------
