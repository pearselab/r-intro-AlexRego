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
      return(pseudosum(x))
  }
}

# 5
