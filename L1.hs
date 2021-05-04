\begin{code}

--------------------------Are friends-----------------------

sumList[]=0
sumList(x:xs)=x+ sumList xs
inm a n = a* sumList([x|x <- [1..n], n`mod`x==0])
areFriends a b = if( inm a b== inm b a) then True else False
------------------------------------------------------------ 

 ----------------return the column--------------------------
firstc [a, b] = map head [a ,b]
------------------------------------------------------------    

-----------------transpose matrix---------------------------
transpose([]:_) =[]
transpose x=(map head x) : transpose (map tail x)
------------------------------------------------------------    

-------------all prime divisors of n------------------------
divisors x=[d|d <-[1..x], x `mod` d==0]
primes =[p|p <-[2..], length ( divisors p)==2]
listprimdiv n=[p|p <- takeWhile (<=n) primes, n `mod` p==0]
------------------------------------------------------------  

------------------tail---------------------------------------
rests []=[[]]
rests l= l: ( rests $ tail l)
-------------------------------------------------------------

--------reverse list of digits of a number--------------------
i2dl 0=[]
i2dl x=x `mod` 10 : i2dl (x `div` 10)
---------------------- ---------------------------------------


\end{code};