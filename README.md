# Fabians Dotfiles

My OS X dotfiles. Originally forked from [klaemo/dotfiles](https://github.com/klaemo/dotfiles).

## How to install

The installation step may overwrite existing dotfiles in your HOME directory.

```bash
$ bash -c "$(curl -fsSL raw.github.com/sto3psl/dotfiles/master/bin/dotfiles)"
```

N.B. If you wish to fork this project and maintain your own dotfiles, you must
substitute my username for your own in the above command and the 2 variables
found at the top of the `bin/dotfiles` script.

## How to update

You should run the update when:

* You make a change to `~/.dotfiles/git/gitconfig` (the only file that is
  copied rather than symlinked).
* You want to pull changes from the remote repository.
* You want to update Homebrew formulae and Node packages.

Run the dotfiles command:

```bash
$ dotfiles
```

Options:

<table>
    <tr>
        <td><code>-h</code>, <code>--help</code></td>
        <td>Help</td>
    </tr>
    <tr>
        <td><code>-l</code>, <code>--list</code></td>
        <td>Print a list of third-party apps</td>
    </tr>
    <tr>
        <td><code>-o</code>, <code>--open</code></td>
        <td>Open websites of third-party apps in the browser</td>
    </tr>
    <tr>
        <td><code>--no-packages</code></td>
        <td>Suppress package updates</td>
    </tr>
    <tr>
        <td><code>--no-sync</code></td>
        <td>Suppress pulling from the remote repository</td>
    </tr>
</table>


## Features

### Automatic software installation

Homebrew formulae:

* GNU core utilities
* [git](http://git-scm.com/)
* bash (latest version)
* [bash-completion](http://bash-completion.alioth.debian.org/)
* [ffmpeg](http://ffmpeg.org/)
* [graphicsmagick](http://www.graphicsmagick.org/)
* [rsync](https://rsync.samba.org/) (latest version, rather than the out-dated OS X installation)
* [wget](http://www.gnu.org/software/wget/)
* [hub](https://github.com/github/hub)

Also newer versions of `grep`, `screen` and `openssh`.
`hub` (if it exists) will be aliased as `git`.

Node packages (globally):

* [standard](http://standardjs.com)
* [browser-sync](https://www.npmjs.com/package/browser-sync)
* [http-server](https://www.npmjs.com/package/http-server)
* [json](http://trentm.com/json)

It also installs the latest `node` with nvm and sets it as the default `node`.

### Custom OS X defaults

Custom OS X settings can be applied during the `dotfiles` process. They can
also be applied independently by running the following command:

```bash
$ osxdefaults
```

This also installs custom Sublime Text settings.

### Custom bash prompt

I use a custom bash prompt based on the [hukl's smyck color palette](https://github.com/hukl/Smyck-Color-Scheme) and influenced
by @gf3's and @mathias's custom prompts. It will be installed during the dotfiles setup process.

When your current working directory is a Git repository, the prompt will
display the checked-out branch's name (and failing that, the commit SHA that
HEAD is pointing to). The state of the working tree is reflected in the
following way:

<table>
    <tr>
        <td><code>+</code></td>
        <td>Uncommitted changes in the index</td>
    </tr>
    <tr>
        <td><code>!</code></td>
        <td>Unstaged changes</td>
    </tr>
    <tr>
        <td><code>?</code></td>
        <td>Untracked files</td>
    </tr>
    <tr>
        <td><code>$</code></td>
        <td>Stashed files</td>
    </tr>
</table>

Further details are in the `bash_prompt` file.

### Local/private Bash configuration

Any private and custom Bash commands and configuration should be placed in a
`~/.extra` file. This file will not be under version control or
committed to a public repository. If `~/.extra` exists, it will be
sourced for inclusion in `bash_profile`.

Here is an example `~/.extra`:

```bash
# PATH exports
PATH=$PATH:~/.gem/ruby/1.8/bin
export PATH

# Git credentials
# Not under version control to prevent people from
# accidentally committing with your details
GIT_AUTHOR_NAME="Fabian Gündel"
GIT_AUTHOR_EMAIL="f.guendel@gmai.com"
GIT_COMMITTER_NAME="$GIT_AUTHOR_NAME"
GIT_COMMITTER_EMAIL="$GIT_AUTHOR_EMAIL"
# Set the credentials (modifies ~/.gitconfig)
git config --global user.name "$GIT_AUTHOR_NAME"
git config --global user.email "$GIT_AUTHOR_EMAIL"

# Aliases
alias code="cd ~/Code"
```

N.B. Because the `git/gitconfig` file is copied to `~/.gitconfig`, any private
git configuration specified in `~/.extra` will not be committed to
your dotfiles repository.


## Acknowledgements

Inspiration and code was taken from many sources, including:

* [@necolas](https://github.com/necolas) (Nicolas Gallagher)
  [https://github.com/necolas/dotfiles](https://github.com/necolas/dotfiles)
* [@mathiasbynens](https://github.com/mathiasbynens) (Mathias Bynens)
  [https://github.com/mathiasbynens/dotfiles](https://github.com/mathiasbynens/dotfiles)
* [@hukl](https://github.com/hukl) (hukl)
  [https://github.com/hukl/dotfiles](https://github.com/hukl/dotfiles)
* [@klaemo](https://github.com/klaemo) (klaemo)
  [https://github.com/klaemo/dotfiles](https://github.com/klaemo/dotfiles)
