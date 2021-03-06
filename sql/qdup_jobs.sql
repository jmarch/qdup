CREATE TABLE `qdup_jobs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(255) NOT NULL DEFAULT 'main',
  `class` varchar(255) DEFAULT NULL,
  `status` enum('ON HOLD','WAITING','RUNNING','TIMEDOUT','FAILED','COMPLETED') DEFAULT 'WAITING',
  `priority` tinyint(3) unsigned DEFAULT '100',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `run_after` datetime DEFAULT '1970-01-01 00:00:00',
  `begin_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `worker` char(16) DEFAULT '',
  `args` varchar(2048) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `wiki_id` int(10) unsigned DEFAULT NULL,
  `dbname` varchar(255) DEFAULT NULL,
  `period_id` smallint(5) unsigned DEFAULT NULL,
  `time_id` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `class` (`class`),
  KEY `time_id` (`time_id`)
)
