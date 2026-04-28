
CREATE TABLE trips (
    trip_id SERIAL PRIMARY KEY,
    user_id INT NOT NULL,     -- Ключ шардирования
    scooter_id INT NOT NULL,
    start_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    end_time TIMESTAMP
);


CREATE TABLE location_logs (
    log_id BIGSERIAL PRIMARY KEY,
    trip_id INT NOT NULL,
    lat DECIMAL(9, 6),
    lon DECIMAL(9, 6),
    recorded_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);


CREATE TABLE transactions (
    tx_id SERIAL PRIMARY KEY,
    user_id INT NOT NULL,
    trip_id INT,
    amount DECIMAL(10, 2),
    status TEXT DEFAULT 'pending'
);