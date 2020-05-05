-- 1
SELECT * from cd.facilities;

-- 2
SELECT name, membercost from cd.facilities;

-- 3
SELECT name, membercost FROM cd.facilities
WHERE membercost != 0;

-- 4
SELECT facid, name, membercost, monthlymaintenance FROM cd.facilities
WHERE membercost != 0 AND
membercost < monthlymaintenance/50;

-- 5
SELECT * FROM cd.facilities
WHERE name ilike '%tennis%'

-- 6
SELECT * FROM cd.facilities
WHERE name ilike '%2';

-- 7
SELECT memid, surname, firstname, joindate FROM cd.members
WHERE joindate >= '2012-09-01';

-- 8
SELECT DISTINCT surname FROM cd.members
ORDER BY surname
LIMIT 10; 

-- 9
SELECT joindate from cd.members
ORDER BY memid DESC
LIMIT 1;

-- 10
SELECT count(*) from cd.facilities
WHERE guestcost >= 10;

-- 11
SELECT f.facid, SUM(slots) from cd.bookings b
INNER JOIN cd.facilities f ON
b.facid = f.facid
WHERE EXTRACT(Months from starttime) = 09
GROUP BY f.facid
ORDER BY SUM(slots);

-- 12
SELECT f.facid, SUM(slots) from cd.bookings b
INNER JOIN cd.facilities f ON
b.facid = f.facid
GROUP BY f.facid
HAVING SUM(slots) >= 1000
ORDER BY f.facid;

-- 13
SELECT starttime, name from cd.bookings b
INNER JOIN cd.facilities f ON
f.facid = b.facid
WHERE f.name like 'Tennis Court%' AND
TO_CHAR(b.starttime, 'YYYY-MM-DD') = '2012-09-21'
ORDER BY b.starttime;

-- 14
SELECT starttime from cd.bookings b
INNER JOIN cd.members m ON
b.memid = m.memid
WHERE m.firstname = 'David' AND m.surname = 'Farrell';

