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
