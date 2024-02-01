#!/bin/bash
#########################
This is the github note practice
sivak@DESKTOP-PVCBT0D MINGW64 ~/downloads
$ cd gitdemo

sivak@DESKTOP-PVCBT0D MINGW64 ~/downloads/gitdemo
$ ls -lrt
total 0

sivak@DESKTOP-PVCBT0D MINGW64 ~/downloads/gitdemo
$ git init
Initialized empty Git repository in C:/Users/sivak/Downloads/gitdemo/.git/

sivak@DESKTOP-PVCBT0D MINGW64 ~/downloads/gitdemo (master)
$ touch m1.txt

sivak@DESKTOP-PVCBT0D MINGW64 ~/downloads/gitdemo (master)
$ ls -lrt
total 0
-rw-r--r-- 1 sivak 197609 0 Jan 31 00:01 m1.txt

sivak@DESKTOP-PVCBT0D MINGW64 ~/downloads/gitdemo (master)
$ git status
On branch master

No commits yet

Untracked files:
  (use "git add <file>..." to include in what will be committed)
        m1.txt

nothing added to commit but untracked files present (use "git add" to track)

sivak@DESKTOP-PVCBT0D MINGW64 ~/downloads/gitdemo (master)
$ git add .

sivak@DESKTOP-PVCBT0D MINGW64 ~/downloads/gitdemo (master)
$ git status
On branch master

No commits yet

Changes to be committed:
  (use "git rm --cached <file>..." to unstage)
        new file:   m1.txt


sivak@DESKTOP-PVCBT0D MINGW64 ~/downloads/gitdemo (master)
$ git commit -m "This is the first master commit"
[master (root-commit) 0e0d215] This is the first master commit
 1 file changed, 0 insertions(+), 0 deletions(-)
 create mode 100644 m1.txt

sivak@DESKTOP-PVCBT0D MINGW64 ~/downloads/gitdemo (master)
$ git log
commit 0e0d2153cf51e5f52232df543549b6e62c6c023b (HEAD -> master)
Author: sivakumar0210 <sivakumar@cnetric.com>
Date:   Wed Jan 31 00:03:22 2024 +0530

    This is the first master commit

sivak@DESKTOP-PVCBT0D MINGW64 ~/downloads/gitdemo (master)
$ git branch feature

sivak@DESKTOP-PVCBT0D MINGW64 ~/downloads/gitdemo (master)
$ ls -lrt
total 0
-rw-r--r-- 1 sivak 197609 0 Jan 31 00:01 m1.txt

sivak@DESKTOP-PVCBT0D MINGW64 ~/downloads/gitdemo (master)
$ git branch
  feature
* master

sivak@DESKTOP-PVCBT0D MINGW64 ~/downloads/gitdemo (master)
$ git chechout feature
git: 'chechout' is not a git command. See 'git --help'.

The most similar command is
        checkout

sivak@DESKTOP-PVCBT0D MINGW64 ~/downloads/gitdemo (master)
$ git checkout feature
Switched to branch 'feature'

sivak@DESKTOP-PVCBT0D MINGW64 ~/downloads/gitdemo (feature)
$ git branch
* feature
  master

sivak@DESKTOP-PVCBT0D MINGW64 ~/downloads/gitdemo (feature)
$ touch f1.txt f2.txt

sivak@DESKTOP-PVCBT0D MINGW64 ~/downloads/gitdemo (feature)
$ ls -lrt
total 0
-rw-r--r-- 1 sivak 197609 0 Jan 31 00:01 m1.txt
-rw-r--r-- 1 sivak 197609 0 Jan 31 00:07 f1.txt
-rw-r--r-- 1 sivak 197609 0 Jan 31 00:07 f2.txt

sivak@DESKTOP-PVCBT0D MINGW64 ~/downloads/gitdemo (feature)
$ git add .

sivak@DESKTOP-PVCBT0D MINGW64 ~/downloads/gitdemo (feature)
$ ls -lrt
total 0
-rw-r--r-- 1 sivak 197609 0 Jan 31 00:01 m1.txt
-rw-r--r-- 1 sivak 197609 0 Jan 31 00:07 f1.txt
-rw-r--r-- 1 sivak 197609 0 Jan 31 00:07 f2.txt

sivak@DESKTOP-PVCBT0D MINGW64 ~/downloads/gitdemo (feature)
$ git status
On branch feature
Changes to be committed:
  (use "git restore --staged <file>..." to unstage)
        new file:   f1.txt
        new file:   f2.txt


sivak@DESKTOP-PVCBT0D MINGW64 ~/downloads/gitdemo (feature)
$ git commit -m "Both of the feature commits for f1 f2"
[feature 6559baf] Both of the feature commits for f1 f2
 2 files changed, 0 insertions(+), 0 deletions(-)
 create mode 100644 f1.txt
 create mode 100644 f2.txt

sivak@DESKTOP-PVCBT0D MINGW64 ~/downloads/gitdemo (feature)
$ git log
commit 6559baf765051990efd68c410ca7e4bbadb471b9 (HEAD -> feature)
Author: sivakumar0210 <sivakumar@cnetric.com>
Date:   Wed Jan 31 00:09:11 2024 +0530

    Both of the feature commits for f1 f2

commit 0e0d2153cf51e5f52232df543549b6e62c6c023b (master)
Author: sivakumar0210 <sivakumar@cnetric.com>
Date:   Wed Jan 31 00:03:22 2024 +0530

    This is the first master commit

sivak@DESKTOP-PVCBT0D MINGW64 ~/downloads/gitdemo (feature)
$ git log feature
commit 6559baf765051990efd68c410ca7e4bbadb471b9 (HEAD -> feature)
Author: sivakumar0210 <sivakumar@cnetric.com>
Date:   Wed Jan 31 00:09:11 2024 +0530

    Both of the feature commits for f1 f2

commit 0e0d2153cf51e5f52232df543549b6e62c6c023b (master)
Author: sivakumar0210 <sivakumar@cnetric.com>
Date:   Wed Jan 31 00:03:22 2024 +0530

    This is the first master commit

sivak@DESKTOP-PVCBT0D MINGW64 ~/downloads/gitdemo (feature)
$ git log master
commit 0e0d2153cf51e5f52232df543549b6e62c6c023b (master)
Author: sivakumar0210 <sivakumar@cnetric.com>
Date:   Wed Jan 31 00:03:22 2024 +0530

    This is the first master commit

sivak@DESKTOP-PVCBT0D MINGW64 ~/downloads/gitdemo (feature)
$ git checkout -b feature2
Switched to a new branch 'feature2'

sivak@DESKTOP-PVCBT0D MINGW64 ~/downloads/gitdemo (feature2)
$ git status
On branch feature2
nothing to commit, working tree clean

sivak@DESKTOP-PVCBT0D MINGW64 ~/downloads/gitdemo (feature2)
$ ls -lrt
total 0
-rw-r--r-- 1 sivak 197609 0 Jan 31 00:01 m1.txt
-rw-r--r-- 1 sivak 197609 0 Jan 31 00:07 f1.txt
-rw-r--r-- 1 sivak 197609 0 Jan 31 00:07 f2.txt

sivak@DESKTOP-PVCBT0D MINGW64 ~/downloads/gitdemo (feature2)
$ touch f1.1.txt

sivak@DESKTOP-PVCBT0D MINGW64 ~/downloads/gitdemo (feature2)
$ ls -lrt
total 0
-rw-r--r-- 1 sivak 197609 0 Jan 31 00:01 m1.txt
-rw-r--r-- 1 sivak 197609 0 Jan 31 00:07 f1.txt
-rw-r--r-- 1 sivak 197609 0 Jan 31 00:07 f2.txt
-rw-r--r-- 1 sivak 197609 0 Jan 31 00:12 f1.1.txt

sivak@DESKTOP-PVCBT0D MINGW64 ~/downloads/gitdemo (feature2)
$ git bransh
git: 'bransh' is not a git command. See 'git --help'.

The most similar command is
        branch

sivak@DESKTOP-PVCBT0D MINGW64 ~/downloads/gitdemo (feature2)
$ git branch
  feature
* feature2
  master

sivak@DESKTOP-PVCBT0D MINGW64 ~/downloads/gitdemo (feature2)
$ git branch
  feature
* feature2
  master

sivak@DESKTOP-PVCBT0D MINGW64 ~/downloads/gitdemo (feature2)
$ git checkout master
Switched to branch 'master'

sivak@DESKTOP-PVCBT0D MINGW64 ~/downloads/gitdemo (master)
$ ls -lrt
total 0
-rw-r--r-- 1 sivak 197609 0 Jan 31 00:01 m1.txt
-rw-r--r-- 1 sivak 197609 0 Jan 31 00:12 f1.1.txt

sivak@DESKTOP-PVCBT0D MINGW64 ~/downloads/gitdemo (master)
$ git checkout -b feature3
Switched to a new branch 'feature3'

sivak@DESKTOP-PVCBT0D MINGW64 ~/downloads/gitdemo (feature3)
$ ls -lrt
total 0
-rw-r--r-- 1 sivak 197609 0 Jan 31 00:01 m1.txt
-rw-r--r-- 1 sivak 197609 0 Jan 31 00:12 f1.1.txt

sivak@DESKTOP-PVCBT0D MINGW64 ~/downloads/gitdemo (feature3)
$ rm -rf feature3

sivak@DESKTOP-PVCBT0D MINGW64 ~/downloads/gitdemo (feature3)
$ git branch
  feature
  feature2
* feature3
  master

sivak@DESKTOP-PVCBT0D MINGW64 ~/downloads/gitdemo (feature3)
$ checkout master
bash: checkout: command not found

sivak@DESKTOP-PVCBT0D MINGW64 ~/downloads/gitdemo (feature3)
$ git checkout master
Switched to branch 'master'

sivak@DESKTOP-PVCBT0D MINGW64 ~/downloads/gitdemo (master)
$ git branch
  feature
  feature2
  feature3
* master

sivak@DESKTOP-PVCBT0D MINGW64 ~/downloads/gitdemo (master)
$ ^C

***********************************************************************
