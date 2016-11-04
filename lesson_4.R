#lesson 4
# 1
x <- replicate(10,(rnorm(n=10,mean=runif(1,0,10),sd=runif(1,0,10))))

# 2
pseudosum.num <- function(x){
  cat('Mean:', apply(x, 2, mean), '\n')
  cat('SD:', apply(x, 2, var)**2, '\n')
}

# 3
y <- list(c('hispanic','white','white','black','hispanic'))
pseudosum.cat <- function(x){
  if(Negate(is.numeric)(x)){
    cat('Counts:',as.character(lapply(x, table)), '\n')
  }
}

# 4
pseudosum <- function(x){
  if(is.numeric(x)){
    return(pseudosum.num(x))
    } else{
      return(pseudosum.cat(x))
  }
}

# 5
dna <- 'ACGATATACGAG'
translate <- function(x){
  ## split sequence into codons
  sequence <- sapply(seq(1,nchar(x),3), function(i) substr(x,i,i+2))
  ##create fake codon lookup table
  bases <- c('C','T','G','A')
  base.combo <- expand.grid(bases,bases,bases)
  codons <- apply(base.combo,1,paste,collapse='')
  aa <- c('R','H','K','D','E','S','T','N','Q','C','U','G','P','A','I','L','M','F','W','Y','V')
  fake.aa <- sample(toupper(letters),64,replace=TRUE)
  codonmatrix <- matrix(fake.aa,ncol=64)
  colnames(codonmatrix) <- codons
  ## pull from matrix based on codon
  for(i in sequence){
    cat((codonmatrix[,i]))
  }
}

# Bonus Exercises - Recursion
# 1
fibrec <- function(n){
  if(n<0){
    return('Error: n<0')
  } else{
    if(n==0 | n==1){
      return(n)
    } else{
      return(fibrec(n-2)+fibrec(n-1))
    }
  }
}

# 2 - WIP
# bigly <- function(x){
#   if(length(x)==1){
#     return(x[1])
#   } else{
#     m = max(x[1:length(x)])
#     if(m>x[1]){
#       return(m)
#     } else{
#       x[0]
#     }
#   }
# }

# 3
# summation <- function(x){
#   if(length(x)==1){
#       return(x[1])
#     } else{
#       for(number in x){
#         return(summation(x)+summation(x+1))
#     }
#   }
# }

# 4
# is.primerec <- function(x,d){
#   if(x<2){
#     return(FALSE)
#   } else{
#     if(x == 2){
#     return(TRUE)
#       } else{
#         if((sqrt(x)+1)%%d+1 != 0){
#         return(is.primerec(x,d))
#       } else{
#         return('Is not prime')
#       }
# }}}
