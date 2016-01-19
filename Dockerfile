FROM golang:latest
RUN go get -u github.com/gopherjs/gopherjs
RUN apt-get update
RUN apt-get install -y xvfb
RUN apt-get install -y curl
RUN curl -sL https://deb.nodesource.com/setup_5.x | bash -
RUN apt-get install -y nodejs
RUN apt-get install -y libgtk-3-0
RUN npm install electron-prebuilt -g
RUN apt-get install -y libgtk2.0-0
RUN apt-get install -y libnotify-bin
RUN apt-get install -y libgconf-2-4
RUN apt-get install -y libasound2 libxtst6 libxss1 libnss3
RUN rm -rf /var/lib/apt/lists/*