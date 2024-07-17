# Menu Profit Optimization

## Overview
This dataset provides insights into optimizing a restaurant's menu to maximize profitability by analyzing menu item categories, ingredients, prices, and profitability indicators.

## Variables
- **RestaurantID**: Restaurant identifier.
- **MenuCategory**: Category of the menu item (Appetizers, Main Course, Desserts, Beverages).
- **MenuItem**: Name of the menu item.
- **Ingredients**: List of ingredients used in the menu item (confidential data included for beverages).
- **Price**: Price of the menu item in dollars (rounded to two decimal places).
- **Profitability**: Target variable indicating the profitability of the menu item (high/medium/low).

## Usage
- Analyze factors that influence the profitability of menu items.
- Optimize pricing strategies based on ingredient costs and menu category.
- Understand customer preferences and buying behavior.

## Applications
- Ideal for restaurant management and marketing strategies.
- Useful for menu engineering and data-driven decision making in the hospitality industry.
## Python Analysis

### Load Data and Display Initial Rows

```python
import pandas as pd
import matplotlib.pyplot as plt
import seaborn as sns
```
# Load data
```python
data = pd.read_csv('data/restaurant_menu_optimization_data.csv')
```
# Display initial rows of the dataframe
```python
print(data.head())
```

# Descriptive analysis
```python
print(data.describe())
```

# Price distribution by menu category
```python
plt.figure(figsize=(10, 6))
sns.boxplot(x='MenuCategory', y='Price', data=data)
plt.title('Price Distribution by Menu Category')
plt.xlabel('Menu Category')
plt.ylabel('Price ($)')
plt.show()
```

# Profitability by menu category
```python
plt.figure(figsize=(10, 6))
sns.countplot(x='MenuCategory', hue='Profitability', data=data)
plt.title('Profitability by Menu Category')
plt.xlabel('Menu Category')
plt.ylabel('Count')
plt.legend(title='Profitability')
plt.show()
```

### SQL Queries

### 1. Number of Items by Menu Category
```sql
SELECT
    MenuCategory,
    COUNT(MenuItem) AS NumItems
FROM
    restaurant_menu
GROUP BY
    MenuCategory;
```
### 2. Average Prices by Menu Category
```sql
SELECT
    MenuCategory,
    AVG(Price) AS AvgPrice
FROM
    restaurant_menu
GROUP BY
    MenuCategory;
```
### 3. Menu Items with High Profitability
```sql
SELECT
    MenuItem,
    MenuCategory,
    Price,
    Ingredientes
FROM
    restaurant_menu
WHERE
    Lucratividade = 'alta';
```
### 4. Menu Items with Low Profitability
```sql
SELECT
    MenuItem,
    MenuCategory,
    Price,
    Ingredientes
FROM
    restaurant_menu
WHERE
    Lucratividade = 'baixa';
```
### 5. Profitability Distribution by Menu Category
```sql
SELECT
    MenuCategory,
    Lucratividade,
    COUNT(MenuItem) AS NumItems
FROM
    restaurant_menu
GROUP BY
    MenuCategory, Lucratividade;
```
