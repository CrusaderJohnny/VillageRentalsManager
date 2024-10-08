﻿INSERT INTO EQUIPMENTCATEGORY VALUES(10, 'Power tools');
INSERT INTO EQUIPMENTCATEGORY VALUES(20, 'Yard equipment');
INSERT INTO EQUIPMENTCATEGORY VALUES(30, 'Compressors');
INSERT INTO EQUIPMENTCATEGORY VALUES(40, 'Generators');
INSERT INTO EQUIPMENTCATEGORY VALUES(50, 'Air Tools');

INSERT INTO EQUIPMENT VALUES(101, 10, 'Hammer drill', 'Powerful drill for concrete and masonry', 49.99, TRUE);
INSERT INTO EQUIPMENT VALUES(201, 20, 'Chainsaw'	,'Gas-powered chainsaw for cutting wood',	49.99, FALSE);
INSERT INTO EQUIPMENT VALUES(202, 20, 'Lawn mower'	,'Self-propelled lawn mower with mulching function', 19.99, TRUE);
INSERT INTO EQUIPMENT VALUES(301, 30, 'Small Compressor','5 Gallon Compressor-Portable', 14.99, TRUE);
INSERT INTO EQUIPMENT VALUES(501, 50, 'Brad Nailer'	,'Brad Nailer. Requires 3/4 to 1 1/2 Brad Nails', 10.99, FALSE);

INSERT INTO CLIENT VALUES(1001, 'Doe', 'John', '(555) 555-1212', 'jd@sample.net', 'Good client', FALSE);
INSERT INTO CLIENT VALUES(1002,	'Smith', 'Jane', '(555) 555-3434', 'js@live.com', 'Pays on time', FALSE);
INSERT INTO CLIENT VALUES(1003,	'Lee', 'Michael', '(555) 555-5656', 'ml@sample.net', 'like them', FALSE);

INSERT INTO RESERVATION VALUES(1, '2024-02-15', 1001,'Doe', 201, 49.99, '2024-02-20', '2024-02-23', 149.97);
INSERT INTO RESERVATION VALUES(2, '2024-02-16', 1002,'Smith', 501, 10.99,'2024-02-21', '2024-02-25', 43.96);



