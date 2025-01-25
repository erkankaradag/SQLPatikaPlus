UPDATE employee
SET name = 'Ahmet',
	birthdate = '2021-01-01',
	email = 'ahmet@ahmet.com'
WHERE id=1

UPDATE employee
SET name = 'Mehmet',
	birthdate = '2022-01-01',
	email = 'mehmet@mehmet.com'
WHERE id=2

UPDATE employee
SET name = 'Cumali',
	birthdate = '2023-01-01',
	email = 'cumali@cumali.com'
WHERE id=3

UPDATE employee
SET name = 'Zınar',
	birthdate = '2024-01-01',
	email = 'zinar@zinar.com'
WHERE id=4

UPDATE employee
SET name = 'Ferhat',
	birthdate = '2025-01-01',
	email = 'ferhat@ferhat.com'
WHERE id=5

RETURNING *;