/* proxysql user */
CREATE USER IF NOT EXISTS 'monitor'@'%' IDENTIFIED BY 'monitor';

CHANGE MASTER TO MASTER_HOST='mysql_master', MASTER_USER='slave_user', MASTER_PASSWORD='password', MASTER_AUTO_POSITION=1;
START SLAVE;
