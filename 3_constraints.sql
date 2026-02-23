alter table takes 
add constraint grade 
check (grade='A' OR grade='B'OR grade='C' OR grade='D'OR grade='E' OR grade='F');

ALTER TABLE assigns
ADD CONSTRAINT chk_points 
CHECK (points >= -200 AND points <= 200);

ALTER TABLE Courses
ADD CONSTRAINT chk_title_format 
CHECK (C_title LIKE '% - %');