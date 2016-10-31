#lesson 4
# 1
x <- replicate(10,(rnorm(n=10,mean=runif(1,0,10),sd=runif(1,0,10))))

# 2 - totes wrong
pseudosum.num <- function(x){
  cat('Mean:', mean(x), '\n')
  cat('SD:', var(x)**2, '\n')
}

# 3 - totes wrong
pseudosum.cat <- function(x){
  if(!is.numeric(x)){
  cat('Mean:', mean(x), '\n')
  cat('SD:', var(x)**2, '\n')
  } else{
    return("Your input isn't categorical, you fool!")
  }
}

# 4 - totes wrong
pseudosum <- function(x){
  if(is.numeric(x)){
    return(pseudosum.num(x))
    } else{
      return(pseudosum.cat(x))
  }
}

# 5 - WIP
dna <- 'ACGATATACGAG'
translate <- function(x){
  ## split sequence into codons
  codons <- sapply(seq(1,nchar(x),3), function(i) substr(x,i,i+2))
  ##create fake codon lookup table
  codonmatrix <- matrix(c('thr','ile','tyr','glu'),ncol=4)
  colnames(codontable) <- c('ACG','ATA','TAC','GAG')
  codontable <- as.table(codonmatrix)
  ## pull from matrix based on codon
  for(i in codons){
    return(codontable$i)
  }
}
