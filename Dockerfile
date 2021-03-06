FROM seapy/rails-nginx-unicorn-pro:v1.1-ruby2.3.0-nginx1.8.1
MAINTAINER seapy(iamseapy@gmail.com)

# Add here your preinstall lib(e.g. imagemagick, mysql lib, pg lib, ssh config)

#(required) Install Rails App
ADD Gemfile /app/Gemfile
ADD Gemfile.lock /app/Gemfile.lock
RUN bundle install --without development test
ADD . /app

CMD ["rails", "server", "-p", "80"]

#(required) nginx port number
EXPOSE 80
