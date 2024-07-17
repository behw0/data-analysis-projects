-- Consulta 1: Número de itens por categoria de menu
SELECT
    MenuCategory,
    COUNT(MenuItem) AS NumItems
FROM
    restaurant_menu
GROUP BY
    MenuCategory;

-- Consulta 2: Média de preços por categoria de menu
SELECT
    MenuCategory,
    AVG(Price) AS AvgPrice
FROM
    restaurant_menu
GROUP BY
    MenuCategory;

-- Consulta 3: Itens de menu com alta lucratividade
SELECT
    MenuItem,
    MenuCategory,
    Price,
    Ingredientes
FROM
    restaurant_menu
WHERE
    Lucratividade = 'alta';

-- Consulta 4: Itens de menu com baixa lucratividade
SELECT
    MenuItem,
    MenuCategory,
    Price,
    Ingredientes
FROM
    restaurant_menu
WHERE
    Lucratividade = 'baixa';

-- Consulta 5: Distribuição de lucratividade por categoria de menu
SELECT
    MenuCategory,
    Lucratividade,
    COUNT(MenuItem) AS NumItems
FROM
    restaurant_menu
GROUP BY
    MenuCategory, Lucratividade;
