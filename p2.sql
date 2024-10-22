USE LibraryManagement;

INSERT INTO authors (author_name)
VALUES
    ('J.K. Rowling'),
    ('George Orwell'),
    ('J.R.R. Tolkien'),
    ('Jane Austen');

INSERT INTO genres (genre_name)
VALUES
    ('Fantasy'),
    ('Dystopian'),
    ('Memoir'),
    ('Romance');

INSERT INTO books (title, publication_year, author_id, genre_id)
VALUES
    ('Harry Potter and the Sorcerer\'s Stone', 1997, 1, 1),
    ('Animal Farm', 1945, 2, 2),    
    ('The Fellowship of the Ring', 1954, 3, 1),
    ('Pride and Prejudice', 1913, 4, 4),
    ('Harry Potter and the Chamber of Secrets', 1998, 1, 1),
    ('Homage to Catalonia', 1938, 2, 3);

INSERT INTO users (username, email)
VALUES
    ('Jessica Taylor', 'jessica.taylor@gmail.com'),
    ('Daniel Martinez', 'daniel.martinez@protonmail.com'),
    ('Laura Hernandez', 'laura.hernandez@ymail.com'),
    ('David Wilson', 'david.wilson@icloud.com');

INSERT INTO borrowed_books (book_id, user_id, borrow_date, return_date)
VALUES
    (4, 2, '2024-08-08', '2024-09-11'),
    (3, 1, '2024-08-15', NULL),
    (2, 3, '2024-09-10', '2024-09-21'),
    (1, 4, '2024-10-05', NULL);