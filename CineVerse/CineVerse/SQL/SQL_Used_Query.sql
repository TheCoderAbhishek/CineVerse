SELECT TOP (10) [Id]
      ,[MovieName]
      ,[Director]
      ,[ReleaseDate]
      ,[Description]
      ,[Photo]
  FROM [CineVerseDB].[dbo].[Movies]

-- Initiates a full backup of the CineVerseDB database
BACKUP DATABASE [CineVerseDB]

-- Specifies the location and filename for the backup file
TO DISK = 'E:\CineVerse\SQLBackups\CineVerseDB.bak'

-- FORMAT: Creates a new media set and overwrites existing backups
-- INIT: Overwrites the existing backup file (if any)
-- NAME: Friendly label for the backup operation
-- SKIP, NOREWIND, NOUNLOAD: Advanced options for tape devices (safe to keep)
-- STATS = 10: Shows progress after every 10% completion
WITH FORMAT,
     INIT,
     NAME = 'Full Backup of CineVerseDB',
     SKIP,
     NOREWIND,
     NOUNLOAD,
     STATS = 10;


-- Restores the CineVerseDB database from the specified backup file
RESTORE DATABASE [CineVerseDB_Backup]

-- Points to the location of the backup file
FROM DISK = 'E:\CineVerse\SQLBackups\CineVerseDB.bak'

-- REPLACE: Overwrites the existing CineVerseDB if it already exists
-- RECOVERY: Finalizes the restore and makes the DB ready for use
-- STATS = 10: Shows progress after every 10% completion
WITH REPLACE,
     RECOVERY,
     STATS = 10;