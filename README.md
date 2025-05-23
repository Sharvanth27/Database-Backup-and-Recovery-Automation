# Database-Backup-and-Recovery-Automation

"COMPANY": CODTECH IT SOLUTIONS

"NAME": SHARVANTH BIJJARAPU

"INTERN ID": CT04DL1163 

"DOMAIN": SQL

"DURATION": 4 WEEKS

"MENTOR": NEELA SANTOSH

Task Objective:

The primary goal of this task is to demonstrate the ability to back up a database and restore it in case of failure, ensuring data integrity and availability. The task involves:

Backing up MySQL and PostgreSQL databases.

Restoring the backups into newly created databases.

Automating the entire process using a shell script.

This task is critical in real-world scenarios where database recovery ensures business continuity in the event of system crashes, data corruption, or accidental deletion.

📁 Deliverables (Files Included):

backup_and_restore.sh
A shell script that automates:

The backup of existing MySQL and PostgreSQL databases.

Creation of new databases.

Restoration of the backup files into these new databases.

mysql_backup.sql
Output file containing the dump of the MySQL database. This is auto-generated when the script is executed.

codtech_backup.sql
SQL file used to restore the database contents into a newly created MySQL or PostgreSQL database.

Execution & Output
Step 1: Backup of the Existing MySQL Database
A backup of the original MySQL database was created using the shell script. This ensures that data is safely stored and can be recovered later.

<img width="313" alt="Image" src="https://github.com/user-attachments/assets/7426f3d9-380e-4c3b-96e3-d0c421a78b3d" />


Step 2: Creating a New Database & Restoring the Backup
A new database was created, and the backup file was restored into it using the SQL dump. This step validates the integrity and usability of the backup.

<img width="421" alt="Image" src="https://github.com/user-attachments/assets/6f453c50-7968-4dce-8133-b2765c71d6d6" />


Step 3: Script Output - MySQL Backup & Restore
Upon executing the backup_and_restore.sh script, all steps (backup and restore) were completed successfully for MySQL.

<img width="302" alt="Image" src="https://github.com/user-attachments/assets/3ab9d0d3-f78b-4f75-ba17-47399a37c327" />

<img width="340" alt="Image" src="https://github.com/user-attachments/assets/ad5e85e6-1850-4758-a86c-318502fcd637" />
