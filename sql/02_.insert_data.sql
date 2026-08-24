USE china_belarus_logistics;

SET SQL_SAFE_UPDATES = 0;
DELETE FROM vehicle_positions;
DELETE FROM active_fleet;
SET SQL_SAFE_UPDATES = 1;

INSERT INTO active_fleet (truck_plate, driver_name, dispatcher_region) VALUES 
('BY 1111-7', 'Петров Дмитрий', 'РФ (Минск - Москва)'),
('BY 2222-7', 'Иванов Алексей', 'РФ (Минск - Смоленск)'),
('BY 3333-7', 'Сидоров Игорь', 'РФ (Минск - Питер)'),
('BY 4444-7', 'Козлов Андрей', 'Азия (Казахстан - РБ)'),
('BY 5555-7', 'Макаров Денис', 'РФ (Минск - Москва)'),
('BY 6666-7', 'Морозов Артем', 'Азия (Казахстан - РБ)');

INSERT INTO vehicle_positions (vehicle_id, cargo_type, latitude, longitude, current_status, stop_duration_mins, deviation_km) VALUES 
(1, 'Автозапчасти', 55.755800, 37.617300, 'В пути', 0, 0), 
(2, 'Промышленная химия', 54.782600, 32.044100, 'Стоянка', 145, 0),  
(3, 'Ткани и фурнитура', 59.934200, 30.335000, 'В пути', 0, 0),  
(4, 'Одежда и обувь', 43.238900, 76.889700, 'Стоянка', 320, 0), 
(5, 'Строительные материалы', 53.900600, 27.559000, 'В пути', 0, 0),  
(6, 'Металлопрокат', 54.200000, 26.500000, 'Отклонение', 0, 85);