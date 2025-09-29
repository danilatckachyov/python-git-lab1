library("R6")
Kopilka <- R6Class(
  "Kopilka",
  private = list(
    money = 0, 
    broke = FALSE
  ),
  public = list(
    initialize = function(money, broke) {
      if(!missing(money)) {
        private$money <- money
      }
      if(!missing(broke)) {
        private$broke <- broke
      }
    },
    upmoney = function(dollars){
      private$money <- private$money + dollars
    }, 
    takemoney = function(dollars){
      if (private$broke == FALSE){
        private$money <- private$money - dollars
      }
      else if(private$broke == TRUE){
        cat("Копилка сломана \ns")
        return(NA)
      }
    },
    brokemoney = function(x){
      private$money <- 0
    }
  )
)
piggy = Kopilka$new()
piggy1 = Kopilka$new(
  money = 1000,
  broke = FALSE
)
piggy2 = Kopilka$new(
  money = 1000,
  broke = TRUE
)
piggy2$takemoney(100)
print(piggy2)