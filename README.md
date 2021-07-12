# NewRepo

[![standard-readme compliant](https://img.shields.io/badge/readme%20style-standard-brightgreen.svg)](https://github.com/RichardLitt/standard-readme)
[![Conventional Commits](https://img.shields.io/badge/Conventional%20Commits-1.0.0-yellow.svg)](https://conventionalcommits.org)
![GitHub](https://img.shields.io/github/license/LuckJMG/Config-Files)

Shell module to create repositories more easily and fast, with configurations for diverse cases.

A shell module to repositories and connect easily and fast with the possibility to connect it to a remote repo, with configuration for diverse cases like node, python and web development, etc. This automatic repositories includes the basic files: `README.md`, `LICENSE`, `CONTRIBUTING.md`, `CODE_OF_CONDUCT.md`, `.github` folder, `src` folder and `.editorconfig`.

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

The idea of this project came to me while I was practicing programming, as I am still a 17-year-old student, I usually do a lot of small projects to practice coding, and upload them to github in case it can be useful to others. So after doing some projects I realized that I always created the same files and then executed the same commands at the beginning of each project, so I decided to make a module for shell that would create a new repo fast and easy.

## Install

To install the module in your favorite shell, you first need to clone this repository:

``` shell
git clone https://github.com/LuckJMG/newrepo
```

Enter the repository to give the executable permit to `install.sh` and execute it:

``` shell
chmod +x install.sh
```

Then in your shell config file you need to put this alias:

``` shell
alias newrepo="$dir_newrepo/src/newrepo.sh"
```

Replace `$dir_newrepo` with the direction of the cloned repository.

## Usage

Once installed you can create repositories more easily.

The newrepo command is formed by 3 essential parts: the call of the command, the type of repository, the name of repository, and 1 optional: the connection to a remote repository.

``` shell
newrepo -type name remote
```

The most basic command is:

``` shell
newrepo -d name
```

The type `-d` is the default type with all the basics without extras, there are several options that are mentioned in this table:

| Type | Description | Contents |
| ---- | ----------- | -------- |
| `-d` | Default: Basic files without any extras. | Default files |
| `-s` | Standard: Repository standardization | Conventional Commits, Standard README and Conventional Changelog  |
| `-n` | Node: Repository made for coding with node. | npm init -y |
| `-w`| Web: Repository made for web development. | index file, css folder, js folder and img folder |
| `-p` | Python: Repository for python development. | setup file, sample folder with init and core files, and test folder |
| `-m` | Minimalist: Only essential files. | .md files and license |

Also, if you before created a github repository, you can link the local repo to the remote repo in the same command that creates the local repo:

``` shell
newrepo -d name url
```

## Thanks

I want to thank everyone who has come this far, this is another of my little projects as a 17-year-old student to practice, make my work more efficient and help the community, really thank you very much just for reading this.

A kiss <3.

## Contributing

You can ask question of the project posting an issue in [issue tab](https://github.com/LuckJMG/newrepo/issues).

PRs for recommendations or optimizations for this project.

Read the [CONTRIBUTING](CONTRIBUTING.md) and the [CODE OF CONDUCT](CODE_OF_CONDUCT.md)to view how to contribute to the project in the best way for the community.

## License

[MIT © LuckJMG](LICENSE)
