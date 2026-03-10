SELECT reason_for_delay, actual_arrival_t, railcard
from railway_cleaned

--Data Clean
-- create new table with no duplicate
CREATE TABLE railway_cleaned as 
SELECT DISTINCT * FROM railway 

BEGIN TRANSACTION;

-- handle missing values
SELECT reason_for_delay, actual_arrival_t, railcard
FROM railway_cleaned
WHERE reason_for_delay IS NULL OR reason_for_delay = ''
   OR actual_arrival_t IS NULL OR actual_arrival_t = ''
   OR railcard IS NULL OR railcard = '';

UPDATE railway_cleaned
SET reason_for_delay = ' Not Mentioned'
WHERE reason_for_delay IS NULL OR reason_for_delay =''

SELECT reason_for_delay
from railway_cleaned

UPDATE railway_cleaned
SET railcard = ' Not Determined'
WHERE railcard IS NULL OR railcard ='' or railcard = 'None'

UPDATE railway_cleaned
SET railcard = 'No Railcard'
WHERE railcard =' Not Determined'

SELECT railcard
from railway_cleaned

UPDATE railway_cleaned
SET actual_arrival_t = '00:00:00'
WHERE actual_arrival_t IS NULL or actual_arrival_t = ' ';

SELECT actual_arrival_t
from railway_cleaned
WHERE actual_arrival_t = '00:00:00'

--check outliers
SELECT price
FROM railway_cleaned
WHERE price >300

--Data Analysis
-- Total number of journeys and net revenue (excluding cancelled trips)
SELECT COUNT(*) AS total_journeys,SUM(price) AS net_revenue
FROM railway_cleaned
WHERE journey_status != 'Cancelled';

--Calc AVG Price Ticket
SELECT  Ticket_Class,ROUND(AVG(Price),0) AS Average_Ticket_Price
FROM railway
GROUP BY Ticket_Class;

--Ticket Class Most Commonly Purchased
SELECT Ticket_Class,COUNT(*) AS Purchase_Count
FROM railway
GROUP BY Ticket_Class
ORDER BY Purchase_Count DESC
LIMIT 3;

--Distribution of passengers by railcard status
SELECT railcard AS railcard_status,COUNT(*) AS passenger_count,
ROUND(100.0 * COUNT(*) / (SELECT COUNT(*) FROM railway_cleaned), 2) AS percentage
FROM railway_cleaned
GROUP BY railcard
ORDER BY passenger_count DESC;

--Peak Hours Passgeners Journey
SELECT strftime('%H',"departure_time") AS hour,COUNT(*) AS journeys
FROM railway
GROUP BY hour
ORDER BY journeys DESC
limit 5 ;

--top arrival stations 
SELECT arrival_destinat , COUNT(*) as arrival_stations
FROM railway_cleaned
GROUP BY arrival_destinat
ORDER BY 1 DESC
LIMIT 7

--Top 5 cancellation reasons with number of trips and revenue lost 
SELECT reason_for_delay AS cancellation_reason, COUNT(*) AS cancelled_trips, SUM(price) AS revenue_lost
FROM railway_cleaned
WHERE journey_status = 'Cancelled'
GROUP BY reason_for_delay
ORDER BY cancelled_trips DESC
LIMIT 5;

ROLLBACK;