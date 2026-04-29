CREATE TABLE IF NOT EXISTS tasks (
    id SERIAL PRIMARY KEY,
    task_name VARCHAR(255) NOT NULL,
    status VARCHAR(50) DEFAULT 'pending'
);

INSERT INTO tasks (task_name, status) VALUES ('Learn Docker', 'completed');
INSERT INTO tasks (task_name, status) VALUES ('Master Kubernetes', 'pending');
INSERT INTO tasks (task_name, status) VALUES ('Automate with Jenkins', 'pending');
