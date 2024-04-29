FROM elixir:1.11.4

COPY . /app
WORKDIR /app
RUN mix local.hex --force
RUN mix local.rebar --force
RUN mix deps.get
RUN mix compile

ENTRYPOINT ["/bin/sh"]
