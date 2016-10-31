#lesson 4
# 1
x <- replicate(10,(rnorm(n=1,mean=runif(1,0,10),sd=runif(1,0,10))))

# 2
pseudosum.num <- function(x){
  cat('Mean:', mean(x), '\n')
  cat('SD:', var(x)**2, '\n')
}

# 3
pseudosum.cat <- function(x){
  if(!is.numeric(x)){
  cat('Mean:', mean(x), '\n')
  cat('SD:', var(x)**2, '\n')
  } else{
    return("Your input isn't categorical, you fool!")
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
  codons <- sapply(seq(1,nchar(x),3), function(i) substr(x,i,i+2))
  ##create fake codon lookup table
  codontable <- matrix(c('thr','ile','tyr','glu'),ncol=4)
  colnames(codontable) <- c('ACG','ATA','TAC','GAG')
  ## pull from matrix based on codon
  for(i in codons){
    
  }
}
