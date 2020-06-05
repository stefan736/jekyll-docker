FROM ubuntu:20.10

RUN apt-get update && apt-get -y upgrade

# from https://jekyllrb.com/docs/installation/ubuntu/
RUN apt-get install -y git && apt-get install -y ruby-full build-essential zlib1g-dev
RUN echo '# Install Ruby Gems to ~/gems' >> ~/.bashrc
RUN echo 'export GEM_HOME="$HOME/gems"' >> ~/.bashrc
RUN echo 'export PATH="$HOME/gems/bin:$PATH"' >> ~/.bashrc
#RUN source ~/.bashrc
RUN gem install jekyll bundler i18n

EXPOSE 4000

WORKDIR /home/work