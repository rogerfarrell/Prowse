# Prowse

Prowse is a lightweight plugin for viewing plain HTML webpages as
markdown. It makes use of Netrw to grab the HTML and Pandoc to convert
it to markdown.

## Installation

Clone this repo into `~.vim/pack/` and add `set loadplugins` to your
`.vimrc`.

## How to use

You can call it with either of the following commands.

```vim
:Prowse https://example.com/
```

```vim
:Prs https://example.com/
```
