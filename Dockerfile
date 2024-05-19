FROM swift:latest

RUN apt-get update && apt-get install -y wget unzip git make

# Install Vapor Toolbox
RUN git clone https://github.com/vapor/toolbox.git /vapor-toolbox \
    && cd /vapor-toolbox \
    && git checkout 18.7.5 \
    && swift build -c release --disable-sandbox --enable-test-discovery \
    && mv .build/release/vapor /usr/local/bin

WORKDIR /app

COPY . .

RUN swift build

EXPOSE 8080

# hold the container open
CMD ["tail", "-f", "/dev/null"]