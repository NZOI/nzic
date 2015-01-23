# configures nginx and adds unicorn and other servers as a service running this application

# Example:
#
#   bash script/service.bash
#
# adds a service $APP_NAME (from install.cfg, eg. nzic) that starts the application
# which can be controlled via
#
#   sudo service nzic start

NGINX_INSTALL_DIR="/usr/local/nginx"

RAILS_ROOT="/var/www/nzic/current"
SERVER_NAME="nzic"
APP_NAME="nzic"

# nginx includes this app configuration
bash $RAILS_ROOT/script/template.bash < $RAILS_ROOT/script/nginx.app.conf | cat > $NGINX_INSTALL_DIR/conf/sites-available/$SERVER_NAME.conf
ln -s $NGINX_INSTALL_DIR/conf/sites-available/$SERVER_NAME.conf $NGINX_INSTALL_DIR/conf/sites-enabled/$SERVER_NAME.conf

(
  RAILS_ENV=production
  cd config/procfiles/$RAILS_ENV
  foreman export upstart /etc/init
)

