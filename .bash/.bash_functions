# Project Directory Navigation
function h { cd /mnt/c/Sites/$1; }
function d { cd /var/www/development/jjd/$1; }
function s { cd /var/www/stage/$1; }
function p { cd /var/www/production/$1; }

# Recursively gives web permissions to directory passed
function http-permissions() {
    find $1 -type d -exec chmod 755 {} \;
    find $1 -type f -exec chmod 644 {} \;
}