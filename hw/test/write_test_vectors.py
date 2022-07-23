###########################################################
### test vectors for unsigned integer multiplier: z=x*y ###
###########################################################

# number of input binary digits (output is a double)
width=328
# number of test vectors
addr_width=4
num_vectors = 2**addr_width

from random import randrange

def ConvertToBinary(num,width):
    return(bin(num).replace('0b','').zfill(width))

MAX_NUMBER = 2**width-1

with open("xvectors.mem","w") as xvectors, open("yvectors.mem","w") as yvectors, open("zvectors.mem","w") as zvectors:
    for i in range(num_vectors):
        x = randrange(0,MAX_NUMBER)
        y = randrange(0,MAX_NUMBER)
        z = x*y
        xvectors.write(ConvertToBinary(x,width))
        xvectors.write("\n")
        yvectors.write(ConvertToBinary(y,width))
        yvectors.write("\n")
        zvectors.write(ConvertToBinary(z,2*width))        
        zvectors.write("\n")
        print("x=",ConvertToBinary(x,width))
        print("y=",ConvertToBinary(y,width))
        print("z=",ConvertToBinary(z,2*width))
