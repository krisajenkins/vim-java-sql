# vim-java-sql - JDBC Made A Mite Easier

A very simple plugin to enable SQL syntax highlighting inside strings in a
Java file. If you can handle the visual trip of two syntax highlighters
co-existing, this plugin will provide.

## Screenshot

![Screenshot](https://raw.github.com/krisajenkins/vim-java-sql/master/vim-java-sql-screenshot.png)

## Installation

* Install [Pathogen][pathogen]. (You're already using Pathogen, right?)
* Clone this project into `~/.vim/bundle/vim-java-sql`.

## Usage

Whenever you edit a Java file, strings starting with `"SELECT`, `"INSERT`,
`"UPDATE`, `"DELETE`, `"CREATE` or `"DROP` will be highlighted as SQL.

Matches are case-sensitive, because that's my preference, but it's trivial to
fork & change the matching rules to suit your coding style.

## Notes

This repo serves as a reasonable recipe for embedded Vim syntax highlighting in
general. It could easily be forked for highlighting SQL in Hibernate XML files,
for example.

## Credits

Thanks to [Max Bane][maxbane] who figured out the hard stuff when when [mixing Tex with Python][tex_python_stackoverflow].

## See Also

[vim-clojure-sql][vim-clojure-sql] - the same plugin for SQL inside Clojure files.

[pathogen]: https://github.com/tpope/vim-pathogen/
[maxbane]: http://clml.uchicago.edu/~max/
[tex_python_stackoverflow]: http://stackoverflow.com/questions/5176972/trouble-using-vims-syn-include-and-syn-region-to-embed-syntax-highlighting
[vim-clojure-sql]: https://github.com/krisajenkins/vim-clojure-sql
