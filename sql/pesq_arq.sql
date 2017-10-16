SELECT
    File.FileId,
    CAST(Path.Path AS CHAR(10000) CHARACTER SET utf8),
    CAST(Filename.NAME AS CHAR(10000) CHARACTER SET utf8),
    CAST(Client.NAME AS CHAR(10000) CHARACTER SET utf8) AS client,
    Job.JobId,
  Job.RealEndTime
FROM
    File
JOIN Filename ON File.FilenameId = Filename.FilenameId
JOIN Path ON File.PathId = Path.PathId
JOIN Job ON Job.JobId = File.JobId
JOIN Client ON Job.ClientId = Client.ClientId
WHERE Filename. NAME LIKE '%1585%.SLDDRW'
AND Client. NAME = 'srvltsp-fd'
and Job.RealEndTime > '2017-10-01'
order by Job.RealEndTime desc
LIMIT 100;


