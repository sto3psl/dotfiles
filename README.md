# Fabians Dotfiles

My macOS dotfiles. Originally forked from [klaemo/dotfiles](https://github.com/klaemo/dotfiles).

## How to install

The installation step may overwrite existing dotfiles in your HOME directory.

```bash
$ git clone https://github.com/sto3psl/dotfiles.git .dotfiles && cd .dotfiles && ./bin/dotfiles
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

* bash (latest version)
* [bash-completion](http://bash-completion.alioth.debian.org/)
* GNU core utilities
* [ffmpeg](http://ffmpeg.org/)
* [git](http://git-scm.com/)
* [graphicsmagick](http://www.graphicsmagick.org/)
* [httpie](https://httpie.org)
* [hub](https://github.com/github/hub)
* [rsync](https://rsync.samba.org/) (latest version, rather than the out-dated OS X installation)
* [screenfetch](https://github.com/KittyKatt/screenFetch)
* ssh-copy-id
* [tree](http://mama.indstate.edu/users/ice/tree/)
* [watchman](https://facebook.github.io/watchman/)
* [wget](http://www.gnu.org/software/wget/)

Also newer versions of `grep`, `screen` and `openssh`.
`hub` (if it exists) will be aliased as `git`.

Homebrew Cask formulae:

* [betterzipql](https://github.com/sindresorhus/quick-look-plugins)
* [cyberduck](https://cyberduck.io)
* [github-desktop](https://desktop.github.com)
* [google-chrome](https://www.google.de/chrome/browser/desktop/)
* [handbrake](https://handbrake.fr)
* [imageoptim](https://imageoptim.com/mac)
* [iterm2](https://www.iterm2.com)
* [qlcolorcode](https://github.com/sindresorhus/quick-look-plugins)
* [qlimagesize](https://github.com/sindresorhus/quick-look-plugins)
* [qlmarkdown](https://github.com/sindresorhus/quick-look-plugins)
* [qlprettypatch](https://github.com/sindresorhus/quick-look-plugins)
* [qlstephen](https://github.com/sindresorhus/quick-look-plugins)
* [quicklook-csv](https://github.com/sindresorhus/quick-look-plugins)
* [quicklook-json](https://github.com/sindresorhus/quick-look-plugins)
* [skype](https://www.skype.com/de/)
* [slack](https://slack.com)
* [spectacle](https://www.spectacleapp.com)
* [sublime-text](https://www.sublimetext.com)
* [suspicious-package](https://github.com/sindresorhus/quick-look-plugins)
* [transmission](https://transmissionbt.com)
* [visual-studio-code](https://code.visualstudio.com)
* [vlc](http://www.videolan.org/vlc/)
* [webpquicklook](https://github.com/sindresorhus/quick-look-plugins)

It also installs the latest `node` with nvm and sets it as the default `node`.

### Custom macOS defaults

Custom macOS settings can be applied during the `dotfiles` process. They can
also be applied independently by running the following command:

```bash
$ macOSdefaults
```

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
