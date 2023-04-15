# cargo-checkmate/action

This is a [Github
Action](https://docs.github.com/en/actions) which executes
[cargo-checkmate](https://github.com/cargo-checkmate/cargo-checkmate)
with the given checkmate phase.

## Example usage

The recommended way to use this action is to rely on `cargo checkmate`
which generates github workflow files:

```
$ cargo checkmate hook install github-ci
```

This will modify `.github/workflows/cargo-checkmate.yaml`, so you should
use git to track that appropriately for your project.

## Direct usage

If you prefer to use this action directly in your own workflows, it's
relatively straightforward. The `phase` argument defines which `cargo
checkmate` phase to run, or if absent all will be run.

```
on: [pull_request]
name: cargo-checkmate CI
jobs:
  cargo-checkmate:
    name: cargo-checkmate
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v2
      - name: cargo checkmate clippy
        uses: cargo-checkmate/action@main
        with:
          phase: clippy
      - name: cargo checkmate build
        uses: cargo-checkmate/action@main
        with:
          phase: build
```
