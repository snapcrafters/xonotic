<h1 align="center">
  <img src="snap/gui/xonotic.png" alt="Xonotic">
  <br />
  Xonotic
</h1>

<p align="center"><b>This is the snap for Xonotic</b>. It is a community-maintained package to easily install Xonotic on Ubuntu, Fedora, Debian and other major Linux distributions. It is available in the Snap Store, Ubuntu Software, and a number of other applications.</p>

<p align="center"><i>"The Free and Fast Arena Shooter"</i></p>

<p align="center">
<a href="https://snapcraft.io/xonotic"><img src="https://snapcraft.io/xonotic/badge.svg" alt="Snap Status"></a>
<a href="https://github.com/snapcrafters/xonotic/actions/workflows/sync-version-with-upstream.yml"><img src="https://github.com/snapcrafters/xonotic/actions/workflows/sync-version-with-upstream.yml/badge.svg" alt="Update"></a>
<a href="https://github.com/snapcrafters/xonotic/actions/workflows/release-to-candidate.yml"><img src="https://github.com/snapcrafters/xonotic/actions/workflows/release-to-candidate.yml/badge.svg" alt="Release"></a>
<a href="https://github.com/snapcrafters/xonotic/actions/workflows/promote-to-stable.yml"><img src="https://github.com/snapcrafters/xonotic/actions/workflows/promote-to-stable.yml/badge.svg" alt="Promote to Stable"></a>
</p>

## Install

```shell
sudo snap install xonotic
sudo snap connect xonotic:joystick
sudo snap connect xonotic:dot-xonotic
```

([Don't have snapd installed?](https://snapcraft.io/docs/core/install))

<p align="center">Published for <img src="https://raw.githubusercontent.com/anythingcodes/slack-emoji-for-techies/gh-pages/emoji/tux.png" align="top" width="24" /> with :gift_heart: by Snapcrafters</p>

![Xonotic](screenshot.jpg?raw=true "Xonotic")

Xonotic is an addictive, arena-style first person shooter with crisp movement
and a wide array of weapons. It combines intuitive mechanics with in-your-face
action to elevate your heart rate. Xonotic is and will always be free-to-play.

## User data

Both the game and dedicated server use `~/.xonotic`, including `~/.xonotic/data`
for custom maps. The `dot-xonotic` personal-files plug permits reading and writing
this directory and must be connected manually as shown above. Alternatively,
run `sudo ./connect.sh` from this checkout to connect both optional interfaces.

Existing data in `~/snap/xonotic/current/.xonotic` is not moved automatically.
Before switching, stop both applications and back up both directories. Copy any
wanted data into `~/.xonotic`, taking care not to overwrite newer files.

## How to contribute to this snap

Thanks for your interest! Below you find instructions to help you contribute to this snap.

The general workflow is to submit pull requests that merge your changes into the `candidate` branch here on GitHub. Once the pull request has been merged, a GitHub action will automatically build the snap and publish it to the `candidate` channel in the Snap Store. Once the snap has been tested thoroughly, we promote it to the `stable` channel so all our users get it!

### Initial setup

If this is your first time contributing to this snap, you first need to set up your own fork of this repository.

1. [Fork the repository](https://docs.github.com/en/github/getting-started-with-github/fork-a-repo) into your own GitHub namespace.
2. [Clone your fork](https://git-scm.com/book/en/v2/Git-Basics-Getting-a-Git-Repository), so that you have it on your local computer.
3. Configure your local repo. To make things a bit more intuitive, we will rename your fork's remote to `myfork`, and add the snapcrafters repo as `snapcrafters`.

   ```shell
   git remote rename origin myfork
   git remote add snapcrafters https://github.com/snapcrafters/xonotic.git
   git fetch --all
   ```

### Submitting changes in a pull request

Once you're all set up for contributing, keep in mind that you want the git information to be all up-to-date. So if you haven't "fetched" all changes in a while, start with that:

```shell
git fetch --all -p
```

Now that your git metadata has been updated you are ready to create a bugfix branch, make your changes, and open a pull request.

1. All pull requests should go to the `candidate` branch, so create your branch as a copy of that branch:

   ```shell
   git checkout -b my-bugfix-branch snapcrafters/candidate
   ```

2. Make your desired changes and build a snap locally for testing:

   ```shell
   snapcraft --use-lxd
   ```

3. After you are happy with your changes, commit them and push them to your fork so they are available on GitHub:

   ```shell
   git commit -a
   git push -u myfork my-bugfix-branch
   ```

4. Then, [open up a pull request](https://docs.github.com/en/github/collaborating-with-issues-and-pull-requests/about-pull-requests) from your `my-bugfix-branch` to the `snapcrafters/candidate` branch.
5. Once you've opened the pull request, it will automatically trigger the build-test action that will build and review the snap on amd64. You can watch its progress from your pull request (Show all checks -> Details).
6. Someone from the team will review the open pull request and either merge it or start a discussion with you with additional changes or clarification needed.
7. Once the pull request has been merged into `candidate`, a GitHub action will build the snap on Launchpad for amd64 and arm64 and publish it to the [Snap Store](https://snapcraft.io/xonotic) into the `candidate` channel. After sufficient testing, a maintainer can promote the tested revisions to the `stable` channel using the command in the call-for-testing issue.

### Testing

Switch to the candidate channel to test a new release:

```shell
sudo snap refresh xonotic --channel=latest/candidate
```

Leave your results in the call-for-testing issue, including whether the game and
dedicated server can read and write the same `~/.xonotic/data` directory.
Release screenshots are gathered by the shared Snapcrafters CI workflow.

Versions are checked daily against the official Xonotic download page.

## Maintainers

- [@popey](https://github.com/popey)
- [@jnsgruk](https://github.com/jnsgruk)

## License

The build files, scripts and documentation in this repository are released under the [GNU General Public License v3.0](LICENSE).
