Web Development Immersive
============================

##How to set up your Github class repo

* Make sure you have your [ssh keys set up](https://help.github.com/articles/generating-ssh-keys)

* You should then start by forking this repo
![fork](screenshots/fork.png)

* Copy the clone url for YOUR fork
![clone url](screenshots/cloneurl.png)

* Go to your terminal, make sure that you are in your `/dev/wdi` directory

* From the terminal, clone by typing:

```bash
git clone YOUR_CLONE_URL
```
For example mine would look like this:

```bash
git clone https://github.com/peterylai/WDI_NYC_12.git
```

* cd into your `WDI_NYC_12` directory

```bash
cd WDI_NYC_12
```

* Verify you added the remote by typing:

```bash
git remote -v
```
![remote](screenshots/remote.png)

* Add our main repository as "upstream"

```bash
git remote add upstream https://github.com/ga-students/WDI_NYC_12.git
```

* Verify you added the remote by typing:

```bash
git remote -v
```
![upstream](screenshots/upstream.png)

* Great Job! Your repo is set up and you are ready to use it to get files from us and also submit homework.

###How Do I Get Files From GitHub?

Periodically, we'll be posting new assignments and exercises. To get these files, __pull__ (download) them from the main repository (upstream).

From the terminal type:
(make sure you are in the correct directory)

```bash
git pull upstream master
```