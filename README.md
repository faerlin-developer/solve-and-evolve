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

We summarize the steps outlined in [Material for MkDocs - Publishing you site](https://squidfunk.github.io/mkdocs-material/publishing-your-site/).

1. Create `.github/workflows/ci.yml` and copy and paste the following contents:

    ```yaml
    name: ci 
    on:
    push:
        branches:
        - master 
        - main
    permissions:
    contents: write
    jobs:
    deploy:
        runs-on: ubuntu-latest
        steps:
        - uses: actions/checkout@v4
        - name: Configure Git Credentials
            run: |
            git config user.name github-actions[bot]
            git config user.email 41898282+github-actions[bot]@users.noreply.github.com
        - uses: actions/setup-python@v5
            with:
            python-version: 3.x
        - run: echo "cache_id=$(date --utc '+%V')" >> $GITHUB_ENV 
        - uses: actions/cache@v4
            with:
            key: mkdocs-material-${{ env.cache_id }}
            path: .cache
            restore-keys: |
                mkdocs-material-
        - run: pip install mkdocs-material 
        - run: mkdocs gh-deploy --force
    ```

2. Commit the file
3. Go to the settings of your repository and ensure that the publishing source branch for your GitHub Page is set to gh-pages.  
   1. `Settings` -> `Pages`
   2. Set `Source` to `Deploy from a branch`
   3. Set `Branch` to `gh-pages` and `/root`
   4. Click `Save`

Now, when a new commit is pushed to either the master or main branches, the static site is automatically built and deployed. The blog will be deployed at [faerlin-developer.github.io/solve-and-evolve/](https://faerlin-developer.github.io/solve-and-evolve/).

## References

1. [Writing Your Docs](https://www.mkdocs.org/user-guide/writing-your-docs/)
2. [Python Markdown](https://squidfunk.github.io/mkdocs-material/setup/extensions/python-markdown/?h=table+content+of#table-of-contents)

