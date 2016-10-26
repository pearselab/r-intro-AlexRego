## what even
# 1
new.cat <- function(cool, fat){
  output <- list(cool=cool, fat=fat)
  class(output) <- "cat"
  return(output)
}
garfield <- new.cat('hella', 25)
tonks <- new.cat('pretty', 5)

print.cat <- function(x, ...){
  cat("This cat is", x$cool, "cool.")
}

race <- function(first, second){
  if(!inherits(first, "cat") |  !inherits(second, "cat"))
    stop("Bruh, these ain't cats")
  if(first$fat =< second$fat){
    print("Neither cat wins. Have you ever tried to race cats?")
  } else{
    print("Both cats bathe in a beam of sunlight. The audience is disappointed.")
  }
}