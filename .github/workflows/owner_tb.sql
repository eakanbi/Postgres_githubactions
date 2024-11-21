CREATE TABLE pets (
    pet_id SERIAL PRIMARY KEY,               
    name VARCHAR(100) NOT NULL,              
    species VARCHAR(50) NOT NULL,            
    breed VARCHAR(100),                     
    age INTEGER,                            
    weight NUMERIC(5, 2),                   
    owner_id INTEGER,                       -- Reference to the owner's ID
    gender CHAR(1) CHECK (gender IN ('M', 'F')),
    adoption_date DATE,                     
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (owner_id) REFERENCES owners(owner_id) ON DELETE SET NULL  -- Foreign key constraint
);
