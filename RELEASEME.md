# How to release a new version

* Ensure working dir is clean
* Make sure tests pass with `mix test`
* Update version in `mix.exs`
* Update `CHANGELOG.md`
* Create a commit:

```sh
  git commit -a -m "Bump version to 0.X.Y"
  git tag v0.X.Y
  mix hex.user auth
  mix hex.publish --organization fresha
  git push --tags
```

In case of problems with local versions of Elixir/Erlang, you can publish from within a container:

```sh
  docker build -t spandex_ecto .
  docker run -it --rm --name spandex_ecto_container spandex_ecto
```

then, inside the container:

```sh
  mix hex.user auth
  mix hex.publish --organization fresha
```
