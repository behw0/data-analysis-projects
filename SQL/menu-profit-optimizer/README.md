# MenuMaster: Restaurant Menu Optimization

## Visão Geral
Este conjunto de dados fornece insights sobre a otimização do cardápio do restaurante, visando maximizar a lucratividade por meio da análise de categorias de itens do cardápio, ingredientes, preços e indicadores de lucratividade.

## Variáveis
- **RestaurantID**: Identificador do restaurante.
- **MenuCategory**: Categoria do item do menu (Aperitivos, Prato Principal, Sobremesas, Bebidas).
- **MenuItem**: Nome do item de menu.
- **Ingredientes**: Lista de ingredientes utilizados no item do menu (dados confidenciais incluídos para bebidas).
- **Preço**: Preço do item do menu em dólares (arredondado para duas casas decimais).
- **Lucratividade**: Variável-alvo que indica a lucratividade do item do menu (alta/média/baixa).

## Uso
- Analisar fatores que influenciam a lucratividade dos itens do menu.
- Otimize as estratégias de preços com base nos custos dos ingredientes e na categoria do menu.
- Entenda as preferências e o comportamento de compra do cliente.

## Formulários
- Ideal para gestão de restaurantes e estratégias de marketing.
- Útil para engenharia de cardápio e tomada de decisões baseadas em dados no setor de hospitalidade.

## Estrutura do Projeto
- `data/restaurant_menu_optimization_data.csv`: Conjunto de dados com informações sobre os itens do menu.
- `analysis/menu_optimization_analysis.ipynb`: Notebook Jupyter com a análise dos dados.
- `sql/menu_optimization_queries.sql`: Script SQL com consultas para análise dos dados.

## Instruções
1. Clone este repositório: `git clone https://github.com/seu-usuario/restaurant-menu-optimization.git`
2. Navegue até a pasta do projeto: `cd restaurant-menu-optimization`
3. Abra o notebook Jupyter: `jupyter notebook analysis/menu_optimization_analysis.ipynb`
4. Execute as células no notebook para realizar a análise.
5. Execute as consultas SQL no seu ambiente de banco de dados preferido para obter insights adicionais.

## Contribuição
Contribuições são bem-vindas! Sinta-se à vontade para abrir issues ou pull requests.

## Licença
Este projeto está licenciado sob a Licença MIT.

