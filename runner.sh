# compile and run Project Euler problems
rm /tmp/$1/chunder > /dev/null
mkdir -p /tmp/$1
ghc --make -v problems/euler_$1.hs -o /tmp/$1/chunder -odir /tmp/$1 -hidir /tmp/$1
time /tmp/$1/chunder
