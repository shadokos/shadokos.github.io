<p align=center><img src="https://github.com/user-attachments/assets/5c043d7d-890e-4c68-88af-ac1df5fb9ce5" width="200px"/></p>
<h3 align=center>
    Simple wiki theme for Jekyll
  <br><br>
</h3>

## Using this Template

1. Click the "Use this template" button at the top of this repository
2. Choose a name for your repository
3. Choose whether you want to make it public or private
4. Click "Create repository from template"

## Setup and Running Locally

1. Make sure you have Ruby installed on your system

2. Install the required dependencies:
```bash
bundle install
```

3. Run the Jekyll site locally:
```bash
bundle exec jekyll serve
```

4. Open your browser and visit `http://localhost:4000/simple-wiki`

## Configuration

The main configuration file is `_config.yml`. You can customize:

- `title`: Your wiki name
- `description`: A brief description of your wiki
- `url`: Your domain URL
- `baseurl`: The base URL path where your wiki will be served (e.g., "/simple-wiki")

```
Note: the baseurl is simple-wiki by default as the demo instance is deployed with github pages as a project page.
Thus, the baseurl ('/simple-wiki' here) must match my repository name.
If you wanna deploy this template as a user page, don't forget to remove baseurl from _config.yml.
```

## Adding Content

Place your markdown files in the `wiki/` directory. Files will be automatically converted to HTML pages.

## Features

- Clean, simple interface
- Breadcrumb navigation
- Automatic sitemap generation
- External links open in new tabs
- Google Custom Search integration
- Markdown support with syntax highlighting

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/riblanc/simple-wiki. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](https://www.contributor-covenant.org/) code of conduct.

## License

The theme is available as open source under the terms of the [MIT License](LICENSE.txt).
