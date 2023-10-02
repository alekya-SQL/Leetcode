/* Write your T-SQL query statement below */

select a.machine_id,cast(Sum((b.timestamp - a.timestamp))/count( distinct a.process_id) as decimal(10,3)) as processing_time from
(select machine_id,process_id,activity_type,timestamp from Activity where activity_type='start') a
inner join
(select machine_id,process_id,activity_type,timestamp from Activity where activity_type='end' ) b 
on a.machine_id = b.machine_id and a.process_id = b.process_id
--where a.machine_id = 0
group by a.machine_id