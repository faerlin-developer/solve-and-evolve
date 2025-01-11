# mkdocs-template

```bash
git clone --recurse-submodules git@github.com:faerlin-developer/never-stop-coding.git
```

```bash
git submodule update --remote --merge
```

## Installation

```bash
pip install mkdocs-material
```

## Create New Static Website

```bash
mkdocs new .
```

## Serve Locally

```bash
mkdocs serve
```

## Publishing to GitHub Pages

1. Go to the settings of your repository and ensure that the publishing source branch for your GitHub Page is set to gh-pages.  
   1. `Settings` -> `Pages`
   2. Set `Source` to `Deploy from a branch`
   3. Set `Branch` to `gh-pages` and `/root`
   4. Click `Save`
2. Push changes to remote repository.
3. Run `mkdocs gh-deploy --force`

[faerlin-developer.github.io/never-stop-coding/](https://faerlin-developer.github.io/never-stop-coding/)

## References

1. [Writing Your Docs](https://www.mkdocs.org/user-guide/writing-your-docs/)
2. [Python Markdown](https://squidfunk.github.io/mkdocs-material/setup/extensions/python-markdown/?h=table+content+of#table-of-contents)

