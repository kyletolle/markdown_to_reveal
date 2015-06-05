# Markdown To Reveal

Generate a Reveal.js talk from a Markdown file.

## Install

`bundle install --path=.bundle`

## Setup

You'll need to specify the following environment variables. You can do that in
an `.env` at the root of this project.

- `REVEAL_JS_PATH`
  - The absolute path of your reveal.js presentation
  - An `index.html` will be written here.
- `MARKDOWN_PATH`
  - The absolute path where your markdown file is located.
  - An `index.md` will be read from here.

## Running

`ruby lib/markdown_to_reveal.rb`

## Guard

You can run guard to watch the markdown file and write the reveal.js
presentation each time the markdown file changes.

`bundle exec guard`

Combine this with `grunt serve` in the reveal.js repo and you'll see the
changes to your presentation, live, as you edit your markdown file.

## License

MIT

Note:
The content of `lib/templates/template.html.erb` is based on
`[index.html](https://github.com/hakimel/reveal.js/blob/master/index.html)`
from [Reveal.js](https://github.com/hakimel/reveal.js/), which is copyright
Hakim El Hattab.

