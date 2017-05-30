<?php
$im = new Imagick($_SERVER['DOCUMENT_ROOT'] .'/upload/hebe.jpg');
$im->stripImage();
$im->setImageFormat('webp');
$im->writeImage( $_SERVER['DOCUMENT_ROOT'] .'/upload/hebe.webp' );

// resize by 200 width and keep the ratio
$im->thumbnailImage( 200, 0);
// write to disk
$im->writeImage( $_SERVER['DOCUMENT_ROOT'] .'/upload/a_thumbnail.jpg' );