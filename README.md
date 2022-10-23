# assets

Repository of static assets used by various projects of Pipal Academy.

Hosted at <https://assets.pipal.in/>

## Organization

All the third-party libraries as added into vendor, with full name and then symlinked into assets.

```
$ tree -L 3 .
.
├── LICENSE
├── Makefile
├── README.md
├── assets
│   └── fontawesome
│       ├── 5 -> ../../vendor/fontawesome-free-5.15.4-web
│       └── 5.15.4 -> ../../vendor/fontawesome-free-5.15.4-web
└── vendor
    └── fontawesome-free-5.15.4-web
        └── ...
```

This allows keeping multiple versions of assets.

Since the assets don't change over time, it would be possible to cache them aggressively.

## How to a add a new asset

This repository is mainly for keeping track of third-party assets, each with a released version.

To include a new package or a new version of an existing package:

Step 1: Add the package to `vendor/`.

Add the released package, as it is published to vendor/. It recommended to  include the version number in the directory name. For example, use `vendor/jquery-3.6.1` instead of `vendor/jquery`.

Step 2: Create a directory for the package name.

```
$ mkdir assets/jquery
```

Step 3: Symlink the package

Symlink the package with full version number and also with the major version number.

```
$ cd assets/jquery
$ ln -s ../../vendor/jquery-3.6.1 3.6.1
$ ln -s ../../vendor/jquery-3.6.1 3
```

## Deploying

To deploy the assets, run make after pushing it to github. Github CI/CD is not setup yet.

```
$ make
ssh -A pipal@pipal.in git -C assets pull
Already up-to-date.
```