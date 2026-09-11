# Database planning

A database planning exercise from my web dev course

## Exercise

- Model the structure of a table to store all data regarding used cars put up for sale by a dealership

## Solution

### Screenshot

<img src="Car.webp" alt="screenshot" width="300">

### DrawSQL Link

[https://drawsql.app/teams/emanuelefavero/diagrams/db-first](https://drawsql.app/teams/emanuelefavero/diagrams/db-first)

### DB file

[db/Car.sql](db/Car.sql)

## Car Schema

| Column          | Type                | Allows NULL | Index type  | Attributes       |
| :-------------- | :------------------ | :---------: | :---------- | :--------------- |
| `id`            | `INT UNSIGNED`      |      -      | Primary key | `AUTO_INCREMENT` |
| `brand`         | `VARCHAR(100)`      |      -      | Index       | -                |
| `model`         | `VARCHAR(100)`      |      -      | Index       | -                |
| `year`          | `YEAR`              |      -      | -           | -                |
| `price`         | `DECIMAL(8, 2)`     |      -      | -           | -                |
| `mileage`       | `INT UNSIGNED`      |      -      | -           | -                |
| `fuel`          | `VARCHAR(50)`       |      -      | -           | -                |
| `transmission`  | `VARCHAR(50)`       |      -      | -           | -                |
| `power_kw`      | `SMALLINT UNSIGNED` |      -      | -           | -                |
| `color`         | `VARCHAR(50)`       |      -      | -           | -                |
| `doors`         | `TINYINT UNSIGNED`  |      -      | -           | -                |
| `description`   | `TEXT`              |     Yes     | -           | -                |
| `license_plate` | `VARCHAR(20)`       |     Yes     | Unique key  | -                |
| `vin`           | `CHAR(17)`          |      -      | Unique key  | -                |
| `available`     | `BOOLEAN`           |      -      | -           | `DEFAULT 1`      |
| `created_at`    | `TIMESTAMP`         |      -      | -           | -                |
| `updated_at`    | `TIMESTAMP`         |      -      | -           | -                |
