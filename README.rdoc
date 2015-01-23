== README

To test through ssh:

```sh
ssh -L 5010:localhost:5010 -p 2222 user@train.nzoi.org.nz
```

Then go to /var/www/nzic/dev/. And change your user into nzic:

```sh
sudo su -p nzic # the -p keeps your profile so everything else is easier too
```

Then run a development server:

```sh
bundle exec rails server -p 5010
```

If you choose a different port, make sure they all match.

Point your browser to localhost:5010 to see the website.

=== Changing Stuff

After changing stuff, git add, git commit, git push as usual. Just remember to set your email in git (check using `git config user.email`, or set it using `git config user.email=`).

Since I normally use dev/, you should make another folder if you make many changes. Either `git clone https://github/NZOI/nzic /var/www/nzic/mydev/`, or a `cp` often works well enough.


