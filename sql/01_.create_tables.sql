USE china_belarus_logistics;

DROP TABLE IF EXISTS vehicle_positions;
DROP TABLE IF EXISTS active_fleet;

CREATE TABLE active_fleet (
    vehicle_id INT AUTO_INCREMENT PRIMARY KEY,
    truck_plate VARCHAR(20) NOT NULL,
    driver_name VARCHAR(100) NOT NULL,
    dispatcher_region VARCHAR(50) NOT NULL
);

CREATE TABLE vehicle_positions (
    position_id INT AUTO_INCREMENT PRIMARY KEY,
    vehicle_id INT,
    cargo_type VARCHAR(100) NOT NULL,
    last_update TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    latitude DECIMAL(10, 8) NOT NULL,      
    longitude DECIMAL(11, 8) NOT NULL,     
    current_status VARCHAR(20) NOT NULL,   
    stop_duration_mins INT DEFAULT 0,      
    deviation_km INT DEFAULT 0,            
    FOREIGN KEY (vehicle_id) REFERENCES active_fleet(vehicle_id)
);