get_negative_values <- function(x) {
    result <- list()
    
    col_lengths <- sapply(x, length)
    if (length(unique(col_lengths)) != 1) {
        cat("Число элементов в переменных не одинаковое.\n")
        return(NA)
    }
    
    for (i in 1:length(x)) {
        negative_vals <- x[[i]][!is.na(x[[i]]) & x[[i]] < 0]
        
        if (length(negative_vals) > 0) {
            result[[names(x)[i]]] <- negative_vals
        }
    }
    
    return(result)
}


test_data1 <- as.data.frame(list(
    V1 = c(NA, -0.5, -0.7, -8), 
    V2 = c(-0.3, NA, -2, -1.2),
    V3 = c(1, 2, 3, NA)
))

cat("Тест 1:\n")
print(test_data1)
cat("Результат:\n")
print(get_negative_values(test_data1))
cat("\n")

test_data2 <- as.data.frame(list(
    V1 = c(-9.7, -10, -10.5, -7.8, -8.9), 
    V2 = c(NA, -10.2, -10.1, -9.3, -12.2), 
    V3 = c(NA, NA, -9.3, -10.9, -9.8)
))

cat("Тест 2:\n")
print(test_data2)
cat("Результат:\n")
print(get_negative_values(test_data2))
cat("\n")

test_data3 <- as.data.frame(list(
    V1 = c(1, 2, 3, 4), 
    V2 = c(5, 6, 7, 8), 
    V3 = c(NA, 9, 10, 11)
))

cat("Тест 3:\n")
print(test_data3)
cat("Результат:\n")
print(get_negative_values(test_data3))
cat("\n")

test_data4 <- as.data.frame(list(
    V1 = c(-1, -2, 3), 
    V2 = c(-4, -5)
))

cat("Тест 4:\n")
print(test_data4)
cat("Результат:\n")
print(get_negative_values(test_data4))