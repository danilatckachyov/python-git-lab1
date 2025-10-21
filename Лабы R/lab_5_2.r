library(purrr)
library(datasets)


result_list <- map(1:3, ~ .x * 2)
print("map() - возвращает список:")
print(result_list)

result_lgl <- map_lgl(1:5, ~ .x > 2)
print("map_lgl() - логический вектор:")
print(result_lgl)

result_int <- map_int(1:4, ~ .x * 10L)
print("map_int() - целочисленный вектор:")
print(result_int)

result_dbl <- map_dbl(1:4, ~ .x * 1.5)
print("map_dbl() - числовой вектор:")
print(result_dbl)

result_chr <- map_chr(month.name[1:3], ~ paste("Month:", .x))
print("map_chr() - символьный вектор:")
print(result_chr)


data(trees)
print("Данные trees:")
print(head(trees))

means <- map_dbl(trees, mean)
print("Средние значения столбцов trees:")
print(means)

types <- map_chr(trees, ~ paste(class(.x), collapse = ", "))
print("Типы данных столбцов trees:")
print(types)


test_list <- list(
  vec = 1:5,
  mat = matrix(1:6, nrow = 2),
  df = data.frame(x = 1:3, y = letters[1:3])
)

dimensions <- map(test_list, dim)
print("Размерности элементов списка:")
print(dimensions)

safe_length <- map(test_list, safely(~ length(.x)))
print("Безопасное вычисление длин:")
print(safe_length)


x <- 1:3
y <- 4:6

sums <- map2_dbl(x, y, ~ .x + .y)
print("map2_dbl() - сумма двух векторов:")
print(sums)


df_args <- data.frame(
  a = 1:3,
  b = 4:6,
  c = 7:9
)

sums_pmap <- pmap_dbl(df_args, function(a, b, c) a + b + c)
print("pmap_dbl() - сумма по строкам data.frame:")
print(sums_pmap)

test_data <- list(1, NULL, 3, "text")

safe_sqrt <- map(test_data, possibly(~ sqrt(as.numeric(.x)), otherwise = NA))
print("Обработка ошибок с possibly():")
print(safe_sqrt)

data(mtcars)

stats <- map_dbl(mtcars, ~ round(mean(.x), 2))
print("Средние значения mtcars:")
print(stats)