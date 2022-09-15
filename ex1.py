import numpy as np
amin=1
amax=100
a=np.arange(amin,amax+1)
beg=0
for i in a:
    beg=beg+i
print('Summation from %.1f to %.1f:'%(amin,amax),beg)
