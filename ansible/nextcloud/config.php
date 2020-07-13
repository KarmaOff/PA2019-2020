<?php
$CONFIG = array (
    'trusted_domains' =>
    array (
      0 => '192.168.20.80',
      1 => '192.168.20.21',
      2 => '192.168.20.22',
      3 => 'nextcloud.maildudek.fr'
    ),
    'objectstore' => array(
        'class' => '\\OC\\Files\\ObjectStore\\S3',
        'arguments' => array(
            'bucket' => 'nextcloud',
            'autocreate' => true,
            'key'    => 'adminesgi',
            'secret' => 'adminesgi',
            'hostname' => 'http://192.168.30.90:9000/',
            'port' => 80,
            'use_ssl' => false,
            'use_path_style'=>true
        ),
    ),
    'memcache.local' => '\\OC\\Memcache\\APCu',
    'memcache.distributed' => '\\OC\\Memcache\\Redis',
    'memcache.locking' => '\\OC\\Memcache\\Redis',
    'filelocking.enabled' => true,
    'redis' =>
        array (
            'host' => '192.168.20.80',
            'port' => 6379
            ),
);