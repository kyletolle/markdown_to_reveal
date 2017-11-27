# Markdown To Reveal

Generate a [reveal.js](https://github.com/hakimel/reveal.js) talk from a Markdown file.

## Install

```
bundle install --path=.bundle
```


## Setup

### Create the new reveal.js talk

To have a starting place for your final presentation, in another terminal window, clone the reveal.js project, and give it the name of your talk.

```
git clone git@github.com:hakimel/reveal.js.git some_talk_of_yours
```

Note: The path for repo just cloned will serve as the `REVEAL_JS_PATH` below.

### Get the environment variables

You'll need to specify the following environment variables. You can do that in
an `.env` at the root of this project. Or specify environment variables on the command line.

- `REVEAL_JS_PATH`
  - The absolute path of your reveal.js presentation
  - An `index.html` will be written here.
- `MARKDOWN_PATH`
  - The absolute path where your markdown file is located.
  - An `index.md` will be read from here.


## Markdown Format

The `index.md` is a single file which contains all your slides.

### Slide Separator

Slides are separated by six hyphens (`------`).

### Notes Separator

Each slide can have a speaker notes section too. After your slide content,
add three underscores (`___`), and then add your speaker notes. You'll still
separate the next slide with the hyphens like above.

### Example

Here's an example of a presentation in `index.md`:

```
# First slide of the talk
------


## Second slide of the talk

And some regular text.
-------


## Third Slide

Below, we'll have some speaker notes.
___
This slide has notes too. These work with reveal.js' speaker mode. And they
don't show in the presentation. Notice how the notes are separated from the
slide content by three underscores?
------



## Add some images

![add images too](image_path.jpg)
___
Put the actual image files in your `REVEAL_JS_PATH` so you can see them when
you view your presentation.
```


## Slide Template

There's a `lib/templates/template.html.erb` which will be used as the
scaffolding for the presentation.

Currently, it's configured to generate a talk like my
[dbs and devs](https://github.com/kyletolle/dbs_and_devs_talk) talk.


## Running

If the env vars are in `.env`, you can run the following command in this project's directory:

```
ruby lib/markdown_to_reveal.rb
```

Alternatively, you can specify the env vars on the CLI, and run the command from anywhere by using absolute paths:

```
MARKDOWN_PATH="/Users/kyle/Dropbox/code/kyletolle/talks/dbs_and_devs" REVEAL_JS_PATH="/Users/kyle/Dropbox/code/kyletolle/dbs_and_devs_talk" ruby /Users/kyle/Dropbox/code/kyletolle/markdown_to_reveal/lib/markdown_to_reveal.rb
```


## Guard

You can run `guard` to watch the markdown file and generate the reveal.js presentation each time the markdown file changes.

If the env vars are in `.env`, you can run the following command in this project's directory:

```
bundle exec guard
```

Alternatively, you can specify the env vars on the CLI, and run the following command in this project's directory:

```
MARKDOWN_PATH="/Users/kyle/Dropbox/code/kyletolle/talks/dbs_and_devs" REVEAL_JS_PATH="/Users/kyle/Dropbox/code/kyletolle/dbs_and_devs_talk" bundle exec guard
```

Combine this with `grunt serve` in the talk's reveal.js repo and you'll see the changes to your presentation, live, as you edit your markdown file.


## License

MIT

Note: The content of `lib/templates/template.html.erb` is based on [`index.html`](https://github.com/hakimel/reveal.js/blob/master/index.html) from [Reveal.js](https://github.com/hakimel/reveal.js/), which is copyright Hakim El Hattab.

