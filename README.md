# Workshop Template

This repository is a template for creating workshop material and slides for coding topics.
It comes with a basic structure (README, Makefile) for tooling and a [RevealJS](https://revealjs.com/) slide deck example.
The slides are published to [GitHub Pages](https://pages.github.com/) using [reveal-md](https://github.com/webpro/reveal-md).

Here is a workshop based on this example: https://github.com/sagikazarmark/temporal-intro-workshop/

## Usage

1. Create a new repo based on this template
1. Clone the repository
1. Install dependencies
    - **Option 1:** Make sure [nix](https://nixos.org) and [direnv](https://direnv.net) are installed, then run `direnv allow`
    - **Option 2:** Install dependencies by runnning `make deps`
1. Make changes to [slides/index.md](slides/index.md)
1. Run `make slides` to open the slides in your browser
1. Add your workshop material to the repo (eg. code examples to [examples](examples), solutions to [solutions](solutions))
1. Add some tests to [.github/workflows/ci.yaml](.github/workflows/ci.yaml)
1. Fill out the README template below
1. Push changes
1. Enable GitHub Pages in your repository settings

-----DELETE THIS LINE AND ABOVE-----
# [YOUR WORKSHOP TITLE]

## Prerequisites

> Add your prerequisites here
> For example: Make sure [nix](https://nixos.org) and [direnv](https://direnv.net) are installed, then run `direnv allow`


## Usage

> Adjust the instructions below

1. Checkout this repository
1. Run `make up`
1. ...


## [HOW TO USE THIS REPO]

> Add your instructions here


## Cleaning up

Once you are finished with the workshop, you can clean up all resources by running the following command:

```bash
make down
```
