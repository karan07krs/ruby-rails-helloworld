FROM seapy/rails-nginx-unicorn-pro

CMD ["rails", "server", "-b", "0.0.0.0"]

EXPOSE 80
