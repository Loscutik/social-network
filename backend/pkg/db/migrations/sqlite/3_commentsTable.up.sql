CREATE TABLE 'comments' (
	id TEXT PRIMARY KEY NOT NULL,
	content TEXT NOT NULL,  
	images TEXT, 
	userID TEXT NOT NULL,
	dateCreate TIMESTAMP NOT NULL,
	postID TEXT NOT NULL,
	FOREIGN KEY (postID) REFERENCES posts(id) 
        ON UPDATE CASCADE
        ON DELETE CASCADE,
    FOREIGN KEY (userID) REFERENCES users(id) 
        ON UPDATE CASCADE
        ON DELETE CASCADE
);
