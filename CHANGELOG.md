# CrawlerDetect major changes

This changelog **does not contain** raw data updates 
but only major changes.

1.2.0
---------
- Speed up crawler detection by caching Regexp objects [#38]

1.1.0
---------
- Moves to Ruby's Stdlib JSON implementation to reduce dependencies

1.0.0
---------
- Use raw JSON files instead of copy them to rb [#8]
- Add CrawlerDetect::Config to make it possible to have own raw files [#8]
- Add bin/update_raw_files to update raw files from PHP lib [#8] 
- Add Changelog

0.1.11
---------
- Add thread safety [#19]

0.1.6
---------
- Strip crawler name [#10]

0.1.2
---------
- Add parallel tests [#2]

0.1.1
---------
- Fix: rack request

0.1.0
---------
- init

