# NewRepo

[![standard-readme compliant](https://img.shields.io/badge/readme%20style-standard-brightgreen.svg)](https://github.com/RichardLitt/standard-readme)
[![Conventional Commits](https://img.shields.io/badge/Conventional%20Commits-1.0.0-yellow.svg)](https://conventionalcommits.org)
![GitHub](https://img.shields.io/github/license/LuckJMG/Config-Files)

Shell command to create default repositories, with many configurations for diverse cases.

A command for the shell to create defaults or standard repositories and connect with remote repositories, with many configuration for diverse cases, programming languages, etc. This automatic repositories includes the basic files: README.md, LICENSE, CONTRIBUTING.md, CODE_OF_CONDUCT.md, .github folder, src folder and .editorconfig as minimum.
## Table of Contents

- [NewRepo](#newrepo)
  - [Table of Contents](#table-of-contents)
  - [Background](#background)
  - [Install](#install)
  - [Usage](#usage)
  - [Thanks](#thanks)
  - [Contributing](#contributing)
  - [License](#license)

## Background

The idea of this project came to me while I was practicing programming, as I am still a 17-year-old student, I usually do a lot of small projects to practice and upload them to github in case it can be useful to others, so after doing so many projects I decided I realized that I always put the same files and then executed the same commands at the beginning of every project, so I decided to make a command for the console that would create a new repository for me with what I always do at the beginning..

## Install

To install the command in your favorite shell, you first need to clone this repository:

``` shell
git clone https://github.com/LuckJMG/newrepo
```

In the `/src/newrepo.sh` replace in the copy and paste files:

``` shell
cp -rT ~/repo/newrepo/src/files ./
# to
cp -rT $dir_newrepo/src/files ./
```

Then in your shell config file you need tu put this lines of code:

``` shell
alias newrepo="$dir_newrepo/src/newrepo.sh"
```

Replace `$dir_newrepo` with the direction of the cloned repository.
## Usage

To create a basic repository:

``` shell
newrepo test
```

and this will create a repository with the name `test`, put all the standard files and create the first commit, if you want to connect the repository with a remote one:

``` shell
newrepo test url
```

This will connect the repository `test` to the remote repository in the url `url`, and push the first commit with all the files.

## Thanks

I want to thank everyone who has come this far, this is another of my little projects as a 17-year-old student to practice, make my work more efficient and help the community, really thank you very much just for reading this.

A kiss <3..

## Contributing

You can ask question of the project posting an issue in [issue tab](https://github.com/LuckJMG/newrepo/issues).

PRs for recommendations or optimizations for this project.

Read the [CONTRIBUTING](CONTRIBUTING.md) and the [CODE OF CONDUCT](CODE_OF_CONDUCT.md)to view how to contribute to the project in the best way for the community.

## License

[MIT © LuckJMG](LICENSE)
