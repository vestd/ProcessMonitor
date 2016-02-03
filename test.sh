set -e


echo 'Running PHPUnit tests'
vendor/bin/phpunit -c phpunit.xml --log-junit=junit.xml


echo 'Testing database migration rollback'
php artisan migrate:reset --database=sqlite --force
