# learning_by_doing
Homework for the Toolbelt

> Set up rubocop guard

```
Brookss-MBP:learning_by_doing $ cat Gemfile
source 'https://rubygems.org'
gem 'guard-rubocop'

Brookss-MBP:learning_by_doing $ bundle

Brookss-MBP:learning_by_doing $ cp ../lrthw_exercises/.rubocop.yml .

Brookss-MBP:learning_by_doing $ ls -la
total 48
drwxr-xr-x  11 bi  staff   374 Feb 18 12:37 .
drwxr-xr-x   8 bi  staff   272 Feb 17 21:28 ..
drwxr-xr-x  12 bi  staff   408 Feb 18 12:31 .git
drwxr-xr-x   9 bi  staff   306 Feb 18 12:31 .idea
-rw-r--r--   1 bi  staff    38 Feb 18 12:37 .rubocop.yml
-rw-r--r--   1 bi  staff    18 Feb 17 21:29 .ruby-gemset
-rw-r--r--   1 bi  staff     6 Feb 17 21:29 .ruby-version
-rw-r--r--   1 bi  staff    51 Feb 18 12:31 Gemfile
-rw-r--r--   1 bi  staff  1231 Feb 18 12:32 Gemfile.lock
-rw-r--r--   1 bi  staff    46 Feb 17 21:28 README.md
drwxr-xr-x   2 bi  staff    68 Feb 17 21:30 numbers_letters_and_variables

Brookss-MBP:learning_by_doing $ guard init

Brookss-MBP:learning_by_doing $ guard

[1] guard(main)> quit
```


