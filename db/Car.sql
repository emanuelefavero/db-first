CREATE TABLE `Car`(
    `id` INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `brand` VARCHAR(100) NOT NULL,
    `model` VARCHAR(100) NOT NULL,
    `year` YEAR NOT NULL,
    `price` DECIMAL(8, 2) NOT NULL,
    `mileage` INT UNSIGNED NOT NULL,
    `fuel` VARCHAR(50) NOT NULL,
    `transmission` VARCHAR(50) NOT NULL,
    `power_kw` SMALLINT UNSIGNED NOT NULL,
    `color` VARCHAR(50) NOT NULL,
    `doors` TINYINT UNSIGNED NOT NULL,
    `description` TEXT NULL,
    `license_plate` VARCHAR(20) NULL,
    `vin` CHAR(17) NOT NULL,
    `available` BOOLEAN NOT NULL DEFAULT 1,
    `created_at` TIMESTAMP NOT NULL,
    `updated_at` TIMESTAMP NOT NULL
) COMMENT 'Dealership car';
ALTER TABLE
    `Car` ADD INDEX `car_brand_index`(`brand`);
ALTER TABLE
    `Car` ADD INDEX `car_model_index`(`model`);
ALTER TABLE
    `Car` ADD UNIQUE `car_license_plate_unique`(`license_plate`);
ALTER TABLE
    `Car` ADD UNIQUE `car_vin_unique`(`vin`);