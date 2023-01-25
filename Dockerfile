# https://hub.docker.com/_/elixir/
FROM elixir:latest
#FROM ubuntu:22.10
RUN apt-get update && \
    # By using `--force`, we don’t need to type “Y” to confirm the installation.
    mix local.rebar --force && \
    mix local.hex --force

# Create app directory and copy the Elixir projects into it.
RUN mkdir /app
COPY . /app
WORKDIR /app
RUN mix deps.get
# Compile the project.
RUN mix do compile

EXPOSE 4000

CMD ["mix", "phx.server"] 
