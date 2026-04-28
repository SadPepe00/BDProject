
CREATE TABLE users (
    user_id SERIAL PRIMARY KEY,
    full_name TEXT NOT NULL,
    phone TEXT UNIQUE NOT NULL,
    balance DECIMAL(10, 2) DEFAULT 0.00
);


CREATE TABLE user_config (
    config_id SERIAL PRIMARY KEY,
    user_id INT NOT NULL,
    is_verified BOOLEAN DEFAULT FALSE,
    preferred_lang TEXT DEFAULT 'ru',
    theme TEXT DEFAULT 'light'
);


CREATE TABLE scooters (
    scooter_id SERIAL PRIMARY KEY,
    model TEXT NOT NULL,
    current_battery INT CHECK (current_battery <= 100),
    status TEXT DEFAULT 'available' -- available, busy, repair
);