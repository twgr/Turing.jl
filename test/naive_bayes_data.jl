data = Dict(
  :K => 4,
  :V => 10,
  :M => 200,
  :N => 1955,
  :z => [
    1, 1, 2, 1, 1, 3, 2, 3, 1, 1, 1, 1, 2, 1, 1,
    2, 4, 4, 1, 1, 1, 1, 4, 1, 2, 1, 1, 1, 3, 1, 3,
    1, 3, 3, 3, 1, 2, 1, 1, 1, 2, 1, 1, 1, 4, 3, 2,
    1, 2, 3, 1, 1, 1, 1, 2, 2, 1, 2, 1, 1, 1, 1, 1,
    1, 3, 1, 3, 1, 1, 1, 2, 1, 1, 1, 2, 1, 2, 1, 2,
    1, 3, 3, 2, 1, 4, 1, 1, 3, 4, 1, 2, 2, 1, 2, 3,
    1, 2, 3, 4, 1, 2, 3, 3, 3, 1, 2, 4, 3, 3, 4, 1,
    1, 2, 1, 1, 2, 1, 1, 3, 2, 4, 1, 1, 2, 1, 3, 1,
    1, 2, 2, 4, 2, 2, 1, 1, 2, 4, 1, 2, 2, 2, 1, 2,
    2, 1, 3, 1, 3, 2, 2, 2, 1, 1, 3, 1, 1, 1, 1, 1,
    1, 4, 1, 1, 1, 3, 2, 4, 1, 1, 1, 3, 1, 2, 1, 1,
    1, 1, 2, 1, 1, 1, 3, 4, 2, 3, 3, 2, 1, 4, 1, 3,
    1, 2, 1, 1, 1, 1, 3, 4, 1
  ],
  :w => [7, 9, 5, 2, 9, 1, 1, 9, 6, 9, 1, 10, 6, 7, 2,
  3, 3, 2, 9, 3, 8, 10, 4, 3, 6, 2, 7, 1, 7, 7,
  1, 6, 7, 7, 1, 7, 7, 4, 7, 7, 4, 1, 7, 6, 6, 3,
  10, 5, 5, 4, 5, 5, 3, 5, 6, 3, 6, 5, 5, 3, 3,
  3, 7, 9, 2, 2, 9, 8, 5, 8, 9, 1, 7, 1, 7, 7, 1,
  1, 7, 7, 7, 4, 7, 4, 6, 4, 3, 9, 6, 7, 9, 9, 9,
  9, 6, 3, 7, 1, 1, 7, 1, 4, 7, 8, 1, 9, 9, 6, 8,
  2, 7, 7, 6, 9, 1, 7, 3, 7, 3, 3, 3, 4, 3, 9, 3,
  3, 3, 1, 4, 9, 10, 1, 6, 7, 6, 1, 7, 7, 1, 3,
  1, 7, 7, 6, 9, 1, 7, 3, 7, 7, 7, 6, 3, 3, 2, 8,
  3, 2, 3, 3, 1, 2, 3, 2, 2, 1, 3, 2, 9, 9, 2, 10,
  2, 1, 2, 2, 6, 2, 1, 1, 2, 2, 7, 1, 5, 1, 7, 7,
  7, 8, 3, 5, 7, 9, 7, 9, 7, 7, 1, 6, 1, 10, 7,
  7, 7, 9, 7, 6, 7, 9, 7, 9, 7, 7, 6, 7, 1, 1, 7,
  7, 1, 7, 2, 2, 1, 4, 2, 5, 7, 2, 1, 9, 4, 1, 7,
  7, 9, 1, 10, 7, 9, 2, 2, 2, 3, 3, 2, 4, 3, 4,
  4, 4, 4, 7, 1, 6, 7, 1, 7, 7, 7, 1, 7, 9, 4, 3,
  1, 9, 1, 7, 7, 9, 7, 1, 7, 9, 5, 5, 9, 5, 5, 4,
  8, 1, 9, 7, 6, 7, 7, 7, 9, 6, 8, 5, 5, 2, 9, 5,
  5, 1, 5, 1, 4, 9, 9, 7, 2, 7, 7, 7, 9, 5, 3, 5,
  5, 5, 6, 5, 6, 1, 5, 6, 3, 6, 5, 4, 6, 4, 3, 5,
  5, 5, 7, 7, 7, 7, 7, 7, 5, 1, 1, 7, 1, 7, 9, 9,
  2, 4, 2, 3, 3, 4, 3, 1, 1, 7, 1, 4, 7, 8, 7, 6,
  1, 1, 9, 1, 10, 3, 7, 7, 1, 1, 7, 2, 1, 7, 7,
  9, 4, 3, 3, 2, 3, 3, 2, 9, 3, 9, 7, 9, 7, 4, 1,
  1, 1, 1, 1, 7, 7, 3, 7, 1, 2, 7, 7, 7, 9, 1, 1,
  7, 1, 9, 7, 1, 7, 9, 7, 7, 6, 7, 1, 2, 2, 2, 1,
  9, 2, 2, 1, 1, 2, 6, 5, 5, 5, 6, 5, 6, 3, 2, 5,
  5, 3, 5, 5, 3, 3, 8, 9, 3, 3, 3, 9, 4, 3, 10,
  3, 2, 4, 6, 7, 10, 1, 10, 1, 9, 7, 7, 7, 3, 7,
  4, 9, 4, 4, 4, 3, 3, 3, 6, 3, 2, 2, 6, 7, 6, 5,
  5, 10, 3, 6, 5, 5, 5, 1, 9, 8, 8, 7, 7, 1, 7,
  7, 9, 1, 3, 1, 5, 10, 7, 7, 6, 7, 7, 7, 7, 7,
  7, 1, 7, 3, 1, 9, 7, 7, 7, 7, 8, 10, 7, 2, 7,
  5, 7, 4, 7, 7, 9, 5, 7, 6, 9, 1, 6, 4, 3, 2, 3,
  2, 4, 4, 3, 10, 2, 3, 3, 3, 9, 3, 3, 9, 3, 2,
  4, 3, 3, 6, 9, 3, 3, 7, 7, 1, 6, 9, 3, 7, 9, 3,
  7, 9, 9, 3, 4, 3, 4, 3, 9, 4, 6, 5, 1, 7, 9, 1,
  7, 4, 1, 7, 7, 7, 6, 7, 7, 7, 9, 7, 1, 6, 9, 7,
  9, 1, 9, 3, 7, 9, 7, 3, 7, 7, 7, 9, 3, 6, 7, 8,
  7, 7, 7, 7, 4, 3, 7, 7, 9, 7, 1, 1, 1, 7, 1, 7,
  9, 1, 7, 6, 5, 5, 10, 3, 3, 6, 1, 7, 7, 1, 9,
  7, 1, 3, 9, 7, 7, 5, 5, 6, 3, 5, 5, 1, 5, 5, 5,
  6, 3, 7, 8, 8, 8, 7, 4, 9, 9, 6, 7, 7, 7, 7, 1,
  2, 7, 1, 4, 9, 7, 7, 6, 1, 7, 7, 7, 7, 7, 7, 9,
  7, 9, 6, 7, 9, 3, 8, 3, 9, 9, 2, 3, 3, 3, 2, 9,
  3, 7, 10, 4, 7, 1, 7, 1, 9, 7, 7, 7, 4, 7, 1,
  4, 7, 7, 9, 1, 7, 7, 1, 7, 5, 2, 4, 4, 7, 7, 7,
  7, 7, 9, 3, 4, 4, 1, 3, 3, 4, 3, 3, 9, 9, 3, 2,
  7, 7, 7, 7, 7, 7, 4, 7, 7, 8, 3, 6, 2, 7, 10,
  3, 2, 7, 8, 3, 7, 1, 7, 1, 7, 8, 9, 1, 7, 7, 7,
  7, 7, 7, 3, 2, 9, 3, 2, 9, 7, 5, 5, 5, 6, 10,
  8, 5, 9, 6, 1, 5, 1, 5, 7, 7, 3, 2, 4, 3, 7, 4,
  9, 2, 2, 7, 1, 2, 5, 3, 2, 3, 4, 7, 7, 9, 7, 9,
  1, 1, 6, 9, 5, 9, 9, 2, 6, 2, 10, 2, 9, 1, 1,
  3, 8, 7, 7, 7, 1, 7, 7, 7, 9, 9, 7, 7, 4, 9, 1,
  4, 8, 5, 5, 5, 5, 6, 2, 1, 3, 5, 1, 2, 4, 7, 2,
  2, 2, 2, 2, 1, 9, 1, 10, 1, 6, 4, 3, 7, 7, 1,
  7, 3, 2, 6, 4, 3, 2, 8, 3, 3, 2, 8, 2, 7, 6, 3,
  8, 1, 10, 2, 10, 4, 3, 3, 3, 7, 9, 7, 7, 2, 7,
  4, 3, 2, 3, 5, 3, 3, 9, 9, 8, 5, 6, 8, 3, 5, 5,
  3, 1, 1, 7, 1, 7, 7, 7, 7, 7, 1, 7, 7, 3, 2, 3,
  3, 2, 3, 2, 2, 6, 5, 5, 5, 1, 2, 2, 5, 5, 10,
  7, 8, 7, 9, 7, 7, 1, 1, 8, 7, 7, 2, 3, 3, 7, 8,
  9, 5, 6, 3, 3, 5, 3, 5, 5, 5, 5, 5, 3, 1, 6, 3,
  5, 3, 5, 5, 5, 3, 5, 5, 5, 3, 5, 5, 7, 9, 4, 1,
  7, 1, 7, 3, 3, 5, 3, 6, 3, 3, 3, 2, 3, 3, 3, 2,
  1, 2, 2, 2, 9, 9, 3, 2, 3, 5, 6, 9, 3, 10, 5,
  5, 5, 5, 6, 6, 5, 2, 2, 2, 3, 2, 1, 2, 2, 1, 5,
  9, 1, 1, 7, 7, 8, 9, 7, 4, 1, 6, 7, 1, 4, 1, 3,
  3, 3, 2, 2, 7, 3, 2, 3, 2, 2, 4, 10, 2, 2, 3,
  3, 8, 1, 10, 8, 7, 7, 6, 7, 1, 7, 8, 9, 7, 7,
  7, 7, 7, 1, 1, 1, 1, 3, 7, 7, 1, 7, 7, 4, 3, 3,
  9, 3, 7, 4, 3, 7, 7, 7, 7, 9, 7, 9, 7, 8, 4, 1,
  1, 3, 10, 3, 5, 3, 5, 6, 6, 1, 3, 3, 2, 3, 2,
  7, 5, 7, 4, 2, 2, 1, 2, 9, 1, 1, 6, 2, 1, 7, 7,
  3, 10, 1, 7, 7, 3, 1, 1, 1, 2, 7, 6, 1, 9, 7,
  2, 2, 10, 4, 10, 2, 6, 7, 7, 7, 4, 5, 3, 5, 5,
  5, 6, 8, 6, 7, 7, 3, 4, 7, 7, 9, 4, 7, 10, 6,
  1, 7, 7, 7, 7, 1, 7, 1, 2, 1, 2, 9, 2, 3, 3, 3,
  10, 3, 3, 3, 9, 3, 3, 3, 3, 3, 3, 3, 3, 4, 2,
  7, 1, 7, 4, 10, 2, 2, 1, 8, 4, 8, 3, 3, 8, 9,
  3, 3, 4, 3, 3, 3, 2, 6, 2, 3, 4, 3, 3, 2, 7, 7,
  7, 6, 7, 7, 10, 4, 7, 3, 7, 1, 7, 7, 9, 9, 7,
  1, 7, 4, 9, 1, 9, 7, 7, 3, 2, 3, 9, 3, 9, 3, 2,
  2, 7, 8, 6, 2, 2, 1, 2, 2, 4, 2, 6, 7, 3, 1, 9,
  4, 7, 3, 3, 1, 3, 7, 3, 3, 9, 2, 3, 10, 3, 10,
  3, 3, 3, 3, 3, 4, 2, 2, 3, 3, 7, 6, 7, 7, 7, 7,
  7, 3, 3, 5, 6, 5, 9, 4, 7, 9, 3, 3, 9, 3, 2, 9,
  7, 6, 1, 7, 7, 3, 7, 1, 8, 7, 7, 3, 5, 3, 5, 5,
  6, 3, 2, 7, 7, 6, 7, 7, 1, 7, 6, 7, 1, 5, 5, 5,
  7, 5, 3, 3, 5, 2, 3, 4, 9, 3, 3, 3, 2, 2, 1, 3,
  2, 4, 2, 3, 2, 9, 3, 4, 3, 3, 7, 4, 3, 7, 7, 2,
  1, 3, 1, 7, 7, 7, 1, 7, 4, 7, 1, 7, 7, 9, 7, 6,
  7, 5, 7, 1, 7, 8, 6, 6, 3, 5, 6, 3, 5, 5, 5, 5,
  5, 6, 6, 5, 3, 5, 5, 7, 4, 7, 1, 1, 4, 9, 7, 7,
  7, 7, 7, 2, 7, 7, 1, 1, 7, 1, 3, 1, 6, 3, 2, 9,
  1, 9, 9, 7, 8, 7, 6, 1, 1, 7, 7, 7, 7, 9, 4, 9,
  7, 1, 6, 8, 1, 2, 2, 1, 9, 7, 2, 1, 2, 9, 9, 6,
  7, 1, 7, 7, 8, 7, 10, 7, 7, 7, 7, 7, 1, 1, 4,
  1, 7, 7, 1, 1, 1, 1, 7, 7, 4, 7, 5, 5, 6, 5, 10,
  5, 5, 5, 5, 5, 5, 6, 6, 5, 2, 3, 10, 3, 3, 4,
  3, 4, 2, 3, 1, 1, 2, 10, 1, 2, 7, 7, 9, 4, 6,
  7, 7, 5, 1, 8, 7, 6, 1, 9, 1, 3, 2, 3, 8, 1, 7,
  7, 8, 5, 7, 3, 8, 8, 9, 1, 9, 9, 1, 9, 2, 9, 6,
  5, 3, 6, 6, 9, 5, 4, 9, 3, 5, 5, 1, 5, 5, 6, 7,
  7, 8, 7, 1, 7, 7, 7, 3, 7, 6, 4, 2, 2, 3, 3, 2,
  3, 3, 4, 3, 3, 3, 3, 3, 4, 7, 6, 7, 9, 7, 1, 7,
  4, 7, 7, 7, 9, 1, 4, 9, 7, 7, 7, 1, 7, 7, 7, 1,
  6, 7, 7, 1, 1, 3, 7, 7, 7, 6, 7, 3, 5, 9, 7, 7,
  7, 1, 9, 7, 7, 1, 3, 3, 1, 3, 3, 3, 4, 2, 2, 3,
  3, 3, 6, 1, 3, 7, 3, 4, 7, 7, 9, 4, 6, 10, 9,
  7, 6, 7, 1, 2, 1, 1, 7, 1, 1, 7, 7, 7, 7, 7, 9,
  1, 7, 7, 7, 9, 9, 8, 10, 5, 4, 5, 5, 3, 5, 3,
  1, 6, 8, 5, 1, 4, 2, 1, 2, 2, 2, 1, 2, 6, 2, 4,
  9, 3, 3, 9, 10, 3, 3, 9, 6, 6, 3, 8, 5, 3, 5,
  3, 1, 7, 4, 2, 6, 3, 10, 7, 8, 9, 7, 7, 7, 7,
  7, 2, 1, 2, 2, 2, 1, 5, 7, 2, 2, 1, 2, 9, 4, 1,
  7, 7, 2, 4, 7, 6, 6, 10, 5, 6, 5, 5, 8, 9, 5,
  5, 7, 1, 6, 9, 7, 7, 7, 3, 3, 7, 3, 2, 1, 3, 4,
  7, 1, 7, 6, 7, 7, 7, 7, 4, 7, 5, 9, 6, 9, 4, 7,
  1, 7, 7, 1, 1, 7, 7, 1, 7, 7, 6, 7, 7, 1, 7, 8,
  7, 7, 9, 7, 9, 7, 2, 4, 9, 9, 5, 5, 4, 5, 1, 3,
  3, 7, 5, 2, 1, 7, 5, 5, 9, 9, 2, 2, 2, 5, 5, 1,
  7, 1, 7, 2, 4, 7, 7, 9, 1, 7, 9],
  :doc => [1, 1, 1, 1, 1, 1, 1, 2, 2, 2, 2, 2, 2, 2, 3,
  3, 3, 3, 3, 3, 3, 3, 3, 3, 4, 4, 4, 4, 4, 4, 4,
  4, 4, 4, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 6, 6, 6,
  6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 6, 7, 7, 7, 7,
  7, 7, 7, 7, 8, 8, 8, 8, 9, 9, 9, 9, 9, 9, 9, 9,
  9, 9, 9, 9, 9, 9, 9, 10, 10, 10, 10, 10, 10, 10,
  10, 10, 10, 10, 10, 11, 11, 11, 11, 11, 11, 11, 11,
  11, 11, 11, 11, 11, 12, 12, 12, 12, 12, 12, 12, 13,
  13, 13, 13, 13, 13, 13, 13, 13, 13, 13, 14, 14, 14,
  14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 15, 15, 15,
  15, 15, 15, 15, 15, 15, 15, 16, 16, 16, 16, 16, 16,
  16, 16, 16, 17, 17, 17, 17, 17, 17, 17, 17, 17, 17,
  17, 17, 17, 18, 18, 18, 18, 18, 18, 18, 19, 19, 19,
  19, 19, 19, 19, 19, 19, 19, 19, 20, 20, 20, 20, 20,
  20, 20, 20, 21, 21, 21, 21, 21, 21, 21, 21, 21, 21,
  21, 21, 21, 21, 21, 21, 21, 22, 22, 22, 23, 23, 23,
  23, 23, 23, 23, 23, 23, 23, 23, 23, 23, 24, 24, 24,
  24, 24, 24, 24, 25, 25, 25, 25, 25, 25, 25, 25, 25,
  25, 25, 25, 25, 26, 26, 26, 26, 26, 27, 27, 27, 27,
  27, 27, 27, 27, 27, 27, 27, 27, 28, 28, 28, 28, 28,
  28, 29, 29, 29, 29, 29, 29, 29, 30, 30, 30, 30, 30,
  30, 30, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31, 31,
  32, 32, 32, 32, 32, 32, 32, 32, 32, 32, 33, 33, 33,
  33, 33, 34, 34, 34, 34, 34, 34, 34, 34, 34, 35, 35,
  35, 35, 35, 35, 35, 36, 36, 36, 36, 36, 36, 36, 36,
  36, 36, 36, 36, 36, 36, 37, 37, 37, 37, 37, 37, 37,
  38, 38, 38, 38, 38, 38, 38, 38, 38, 38, 38, 39, 39,
  39, 39, 39, 39, 39, 39, 40, 40, 40, 40, 40, 40, 40,
  41, 41, 41, 41, 41, 41, 41, 41, 42, 42, 42, 42, 42,
  42, 42, 42, 42, 43, 43, 43, 43, 43, 43, 43, 43, 43,
  43, 43, 43, 43, 43, 43, 43, 44, 44, 44, 44, 44, 44,
  44, 44, 44, 45, 45, 45, 45, 45, 45, 45, 45, 45, 45,
  46, 46, 46, 46, 46, 46, 46, 46, 46, 46, 46, 46, 46,
  46, 46, 47, 47, 47, 47, 47, 47, 47, 47, 47, 47, 47,
  47, 47, 48, 48, 48, 48, 48, 48, 48, 48, 48, 48, 48,
  48, 48, 48, 49, 49, 49, 49, 49, 49, 49, 49, 49, 49,
  50, 50, 50, 50, 50, 50, 50, 50, 50, 50, 50, 51, 51,
  51, 51, 51, 51, 51, 51, 51, 51, 51, 51, 52, 52, 52,
  52, 52, 52, 52, 52, 52, 52, 52, 52, 52, 52, 52, 53,
  53, 53, 53, 53, 53, 53, 53, 53, 53, 53, 53, 53, 53,
  54, 54, 54, 54, 54, 54, 54, 54, 54, 55, 55, 55, 55,
  55, 55, 55, 55, 55, 55, 55, 55, 55, 55, 56, 56, 56,
  56, 56, 56, 56, 56, 56, 56, 56, 57, 57, 57, 57, 57,
  57, 57, 57, 57, 58, 58, 58, 58, 58, 58, 58, 58, 58,
  58, 58, 59, 59, 59, 59, 59, 59, 59, 59, 59, 59, 59,
  60, 60, 60, 60, 60, 60, 60, 60, 60, 60, 60, 60, 61,
  61, 61, 61, 61, 61, 61, 61, 61, 62, 62, 62, 62, 62,
  62, 62, 62, 62, 62, 63, 63, 63, 63, 63, 63, 63, 64,
  64, 64, 64, 64, 64, 64, 64, 65, 65, 65, 65, 65, 65,
  65, 65, 66, 66, 66, 66, 66, 66, 66, 66, 66, 66, 67,
  67, 67, 67, 67, 67, 67, 67, 67, 67, 67, 67, 67, 67,
  67, 67, 67, 68, 68, 68, 68, 68, 68, 68, 68, 69, 69,
  69, 69, 69, 69, 69, 69, 69, 69, 69, 70, 70, 70, 70,
  70, 70, 70, 70, 70, 70, 71, 71, 71, 71, 71, 71, 71,
  71, 71, 71, 71, 71, 71, 72, 72, 72, 72, 72, 72, 72,
  72, 72, 72, 73, 73, 73, 73, 73, 73, 73, 73, 73, 73,
  73, 73, 73, 74, 74, 74, 74, 74, 74, 74, 74, 74, 75,
  75, 75, 75, 75, 75, 75, 75, 75, 75, 76, 76, 76, 76,
  76, 76, 76, 76, 76, 76, 76, 76, 76, 76, 77, 77, 77,
  77, 77, 77, 77, 77, 77, 77, 77, 78, 78, 78, 78, 78,
  78, 78, 78, 78, 78, 78, 78, 79, 79, 79, 79, 79, 79,
  80, 80, 81, 81, 81, 82, 82, 82, 82, 82, 82, 82, 82,
  82, 82, 82, 83, 83, 83, 83, 83, 83, 83, 83, 83, 83,
  83, 83, 83, 83, 83, 83, 83, 83, 84, 84, 84, 84, 84,
  84, 84, 84, 84, 85, 85, 85, 85, 85, 85, 85, 85, 85,
  85, 86, 86, 86, 86, 86, 86, 86, 87, 87, 87, 87, 87,
  87, 87, 87, 87, 87, 87, 88, 88, 88, 88, 88, 88, 88,
  88, 88, 88, 89, 89, 89, 89, 89, 89, 89, 89, 89, 89,
  90, 90, 90, 90, 90, 90, 90, 90, 90, 90, 90, 91, 91,
  91, 91, 91, 91, 91, 91, 92, 92, 92, 92, 92, 92, 92,
  92, 92, 92, 92, 92, 92, 92, 92, 92, 93, 93, 93, 93,
  93, 93, 94, 94, 94, 94, 94, 94, 94, 94, 94, 94, 95,
  95, 95, 95, 95, 95, 96, 96, 96, 96, 96, 96, 96, 96,
  96, 96, 96, 96, 96, 97, 97, 97, 97, 97, 97, 97, 97,
  98, 98, 98, 98, 98, 99, 99, 99, 99, 100, 100, 100,
  100, 100, 100, 100, 100, 100, 100, 100, 100, 101, 101,
  101, 101, 102, 102, 102, 102, 102, 102, 102, 102, 102,
  102, 103, 103, 103, 103, 103, 103, 103, 103, 103, 103,
  104, 104, 104, 104, 104, 104, 104, 104, 104, 105, 105,
  105, 105, 105, 105, 105, 106, 106, 106, 106, 106, 106,
  106, 106, 106, 106, 106, 106, 107, 107, 107, 107, 107,
  107, 107, 107, 107, 108, 108, 108, 108, 108, 109, 109,
  109, 109, 109, 109, 109, 109, 110, 110, 110, 110, 110,
  110, 110, 110, 110, 110, 110, 111, 111, 111, 111, 111,
  112, 112, 112, 112, 112, 112, 112, 112, 112, 113, 113,
  113, 113, 113, 113, 113, 113, 113, 113, 113, 113, 113,
  113, 113, 113, 113, 113, 114, 114, 114, 114, 114, 114,
  114, 114, 114, 114, 114, 114, 115, 115, 115, 115, 115,
  115, 115, 115, 115, 115, 115, 115, 115, 115, 116, 116,
  116, 116, 116, 117, 117, 117, 117, 117, 117, 118, 118,
  118, 118, 118, 118, 118, 118, 118, 118, 119, 119, 119,
  119, 119, 119, 119, 119, 120, 120, 120, 120, 120, 120,
  120, 120, 121, 121, 121, 121, 121, 121, 121, 121, 121,
  121, 122, 122, 122, 122, 122, 122, 122, 122, 123, 123,
  123, 123, 123, 123, 123, 123, 123, 123, 124, 124, 124,
  124, 124, 124, 125, 125, 125, 125, 126, 126, 126, 126,
  126, 126, 126, 126, 127, 127, 127, 127, 127, 127, 127,
  127, 127, 127, 127, 127, 128, 128, 128, 128, 128, 128,
  128, 128, 128, 128, 129, 129, 129, 129, 129, 129, 129,
  129, 129, 129, 129, 130, 130, 130, 130, 130, 130, 130,
  130, 130, 130, 131, 131, 131, 131, 131, 131, 131, 131,
  132, 132, 132, 132, 132, 132, 132, 133, 133, 133, 133,
  133, 133, 133, 133, 133, 133, 133, 133, 133, 133, 134,
  134, 134, 134, 134, 134, 134, 134, 134, 134, 134, 134,
  134, 134, 134, 135, 135, 135, 135, 135, 135, 135, 135,
  135, 135, 136, 136, 136, 136, 136, 136, 136, 137, 137,
  137, 137, 137, 137, 137, 137, 137, 137, 137, 137, 138,
  138, 138, 138, 138, 138, 138, 139, 139, 139, 139, 139,
  139, 140, 140, 140, 140, 140, 140, 140, 140, 141, 141,
  141, 141, 141, 141, 141, 141, 141, 141, 142, 142, 142,
  142, 142, 142, 143, 143, 143, 143, 144, 144, 144, 144,
  144, 144, 144, 144, 144, 144, 145, 145, 145, 145, 145,
  145, 145, 145, 145, 145, 145, 145, 146, 146, 146, 146,
  146, 146, 146, 146, 147, 147, 147, 147, 147, 147, 147,
  147, 147, 147, 148, 148, 148, 148, 148, 148, 148, 148,
  148, 149, 149, 149, 149, 149, 149, 150, 150, 150, 150,
  150, 150, 150, 150, 150, 150, 150, 150, 150, 150, 151,
  151, 151, 151, 151, 151, 152, 152, 152, 152, 152, 152,
  152, 152, 152, 152, 153, 153, 153, 153, 153, 153, 153,
  153, 153, 153, 153, 154, 154, 154, 154, 154, 154, 154,
  154, 154, 154, 154, 154, 154, 154, 154, 154, 154, 155,
  155, 155, 155, 155, 155, 155, 155, 156, 156, 157, 157,
  157, 157, 157, 158, 158, 158, 158, 158, 158, 158, 159,
  159, 159, 159, 159, 159, 159, 159, 159, 159, 159, 159,
  159, 160, 160, 160, 160, 160, 160, 160, 160, 160, 160,
  160, 160, 161, 161, 161, 161, 161, 161, 161, 161, 161,
  162, 162, 162, 162, 163, 163, 163, 163, 163, 163, 163,
  163, 163, 164, 164, 164, 164, 164, 164, 164, 164, 164,
  164, 164, 164, 164, 164, 165, 165, 165, 165, 165, 165,
  165, 165, 165, 165, 165, 165, 165, 165, 165, 165, 166,
  166, 166, 166, 166, 166, 166, 166, 166, 167, 167, 167,
  167, 167, 167, 168, 168, 168, 168, 168, 168, 168, 168,
  168, 168, 168, 168, 168, 169, 169, 169, 169, 169, 169,
  169, 169, 169, 170, 170, 170, 170, 170, 170, 170, 170,
  170, 170, 170, 170, 170, 171, 171, 171, 171, 171, 171,
  171, 171, 171, 171, 171, 171, 171, 171, 171, 171, 171,
  172, 172, 172, 172, 172, 172, 172, 172, 172, 172, 172,
  173, 173, 173, 173, 173, 173, 173, 173, 173, 173, 173,
  173, 173, 173, 174, 174, 174, 174, 174, 174, 174, 174,
  174, 174, 174, 174, 174, 174, 174, 174, 175, 175, 175,
  175, 175, 175, 175, 175, 175, 175, 175, 175, 176, 176,
  176, 176, 176, 176, 176, 176, 176, 176, 177, 177, 177,
  177, 177, 177, 177, 177, 177, 178, 178, 178, 178, 178,
  178, 178, 178, 178, 178, 178, 178, 179, 179, 179, 179,
  179, 179, 179, 179, 179, 179, 180, 180, 180, 180, 180,
  180, 180, 180, 181, 181, 181, 181, 181, 181, 181, 181,
  181, 181, 181, 181, 181, 181, 181, 181, 182, 182, 182,
  182, 182, 182, 182, 182, 182, 182, 182, 182, 182, 183,
  183, 183, 183, 183, 183, 183, 183, 183, 183, 183, 184,
  184, 184, 184, 184, 184, 184, 184, 184, 185, 185, 186,
  186, 186, 186, 186, 187, 187, 187, 187, 187, 187, 187,
  188, 188, 188, 188, 188, 188, 188, 188, 188, 189, 189,
  189, 189, 189, 189, 189, 189, 189, 189, 189, 189, 190,
  190, 190, 190, 190, 190, 190, 190, 190, 190, 191, 191,
  191, 191, 191, 191, 191, 191, 191, 192, 192, 192, 192,
  192, 192, 192, 193, 193, 193, 193, 193, 193, 193, 193,
  194, 194, 194, 194, 194, 194, 194, 195, 195, 195, 195,
  195, 195, 195, 195, 195, 195, 195, 195, 196, 196, 196,
  196, 196, 196, 196, 196, 196, 196, 196, 196, 197, 197,
  197, 197, 197, 197, 197, 197, 197, 197, 197, 198, 198,
  198, 198, 198, 198, 198, 198, 198, 198, 198, 198, 198,
  198, 199, 199, 199, 199, 199, 199, 199, 200, 200, 200,
  200, 200, 200, 200, 200, 200, 200, 200, 200],
  :alpha => [1, 1, 1, 1],
  :β => [0.1, 0.1, 0.1, 0.1, 0.1, 0.1, 0.1, 0.1, 0.1, 0.1]
)
