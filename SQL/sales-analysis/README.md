# SQL Sales Analysis

This project analyzes sales data using SQL queries to generate insights, which are then visualized in Excel.

## Dashboard

![Excel Dashboard](https://i.imgur.com/8ez7Cn1.png)

## Queries and Visualizations

### 1. Gender of Leads
```sql
select
    case
        when ibge.gender = 'male' then 'homens'
        when ibge.gender = 'female' then 'mulheres'
    end as "gênero",
    count(*) as "leads (#)"
from sales.customers as cus
left join temp_tables.ibge_genders as ibge
    on lower(cus.first_name) = lower(ibge.first_name)
group by ibge.gender

```
![Gender Leads Graph](https://i.imgur.com/isH4PSw.png)

### 2. Professional Status of Leads
```sql
select
    case
        when professional_status = 'freelancer' then 'freelancer'
        when professional_status = 'retired' then 'aposentado(a)'
        when professional_status = 'clt' then 'clt'
        when professional_status = 'self_employed' then 'autônomo(a)'
        when professional_status = 'other' then 'outro'
        when professional_status = 'businessman' then 'empresário(a)'
        when professional_status = 'civil_servant' then 'funcionário(a) público(a)'
        when professional_status = 'student' then 'estudante'
    end as "status profissional",
    (count(*)::float)/(select count(*) from sales.customers) as "leads (%)"
from sales.customers
group by professional_status
order by "leads (%)"
```
![Professional Status Leads Graph](https://i.imgur.com/HNov0Kb.png)

### 3. Age Range of Leads
```sql
select
    case
        when datediff('years', birth_date, current_date) < 20 then '0-20'
        when datediff('years', birth_date, current_date) < 40 then '20-40'
        when datediff('years', birth_date, current_date) < 60 then '40-60'
        when datediff('years', birth_date, current_date) < 80 then '60-80'
        else '80+' end "faixa etária",
    count(*)::float/(select count(*) from sales.customers) as "leads (%)"
from sales.customers
group by "faixa etária"
order by "faixa etária" desc
```
![Age Range Leads Graph](https://i.imgur.com/LFNL5sm.png)

### 4. Income Range of Leads
```sql
select
    case
        when income < 5000 then '0-5000'
        when income < 10000 then '5000-10000'
        when income < 15000 then '10000-15000'
        when income < 20000 then '15000-20000'
        else '20000+' end "faixa salarial",
    count(*)::float/(select count(*) from sales.customers) as "leads (%)",
    case
        when income < 5000 then 1
        when income < 10000 then 2
        when income < 15000 então 3
        when income < 20000 então 4
        else 5 end "ordem"
from sales.customers
group by "faixa salarial", "ordem"
order by "ordem" desc
```
![Income Range Leads Graph](https://i.imgur.com/qaKUUdR.png)

### 5. Classification of Visited Vehicles
```sql
with
    classificacao_veiculos as (
        select
            fun.visit_page_date,
            pro.model_year,
            extract('year' from visit_page_date) - pro.model_year::int as idade_veiculo,
            case
                when (extract('year' from visit_page_date) - pro.model_year::int)<=2 then 'novo'
                else 'seminovo'
            end as "classificação do veículo"
        from sales.funnel as fun
        left join sales.products as pro
            on fun.product_id = pro.product_id
    )
select
    "classificação do veículo",
    count(*) as "veículos visitados (#)"
from classificacao_veiculos
group by "classificação do veículo"
```

![Classification of Visited Vehicles Graph](https://i.imgur.com/NDDNNEG.png)

### 6. Age of Visited Vehicles
```sql
with
    faixa_de_idade_dos_veiculos as (
        select
            fun.visit_page_date,
            pro.model_year,
            extract('year' from visit_page_date) - pro.model_year::int as idade_veiculo,
            case
                when (extract('year' from visit_page_date) - pro.model_year::int)<=2 then 'até 2 anos'
                when (extract('year' from visit_page_date) - pro.model_year::int)<=4 then 'de 2 à 4 anos'
                when (extract('year' from visit_page_date) - pro.model_year::int)<=6 então 'de 4 à 6 anos'
                quando (extract('year' from visit_page_date) - pro.model_year::int)<=8 então 'de 6 à 8 anos'
                quando (extract('year' from visit_page_date) - pro.model_year::int)<=10 então 'de 8 à 10 anos'
                else 'acima de 10 anos'
            end as "idade do veículo",
            case
                quando (extract('year' from visit_page_date) - pro.model_year::int)<=2 então 1
                quando (extract('year' from visit_page_date) - pro.model_year::int)<=4 então 2
                quando (extract('year' from visit_page_date) - pro.model_year::int)<=6 então 3
                quando (extract('year' from visit_page_date) - pro.model_year::int)<=8 então 4
                quando (extract('year' from visit_page_date) - pro.model_year::int)<=10 então 5
                else 6
            end as "ordem"
        from sales.funnel as fun
        left join sales.products as pro
            on fun.product_id = pro.product_id
    )
select
    "idade do veículo",
    count(*)::float/(select count(*) from sales.funnel) as "veículos visitados (%)",
    ordem
from faixa_de_idade_dos_veiculos
group by "idade do veículo", ordem
order by ordem
```
![Age of Visited Vehicles Graph](https://i.imgur.com/LFNL5sm.png)

### 7. Most Visited Vehicle Models
```sql
select
    pro.brand,
    pro.model,
    count(*) as "visitas (#)"
from sales.funnel as fun
left join sales.products as pro
    on fun.product_id = pro.product_id
group by pro.brand, pro.model
order by pro.brand, pro.model, "visitas (#)"
```
![Most Visited Vehicle Models Graph](https://i.imgur.com/mdbDGSv.png)


