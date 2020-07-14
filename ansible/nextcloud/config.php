<?php
$CONFIG = array (
  'objectstore' =>
  array (
    'class' => '\\OC\\Files\\ObjectStore\\S3',
    'arguments' =>
    array (
      'bucket' => 'nextcloud',
      'autocreate' => true,
      'key' => 'adminesgi',
      'secret' => 'adminesgi',
      'hostname' => '192.168.30.80',
      'port' => 9000,
      'use_ssl' => false,
      'use_path_style' => true,
    ),
  ),
  'memcache.local' => '\\OC\\Memcache\\APCu',
  'memcache.distributed' => '\\OC\\Memcache\\Redis',
  'memcache.locking' => '\\OC\\Memcache\\Redis',
  'filelocking.enabled' => true,
  'redis' =>
  array (
    'host' => '192.168.20.90',
    'port' => 6379,
    'password' => 'Espoir15',
  ),
);
