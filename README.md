# Dev

A codespace template for Github Codespaces with R, Python, Pandoc, Quarto, and Latex.

## Features

- Programs: R (latest/4.4.2), Radian, Latex (`texlive`), Python (latest/3.13), Quarto (1.6.40), and Pandoc (3.6.3) plus dependencies for `rJava`, `sf`, and `tesseract`. 
- OS: Ubuntu with sudo privileges, so you can install whatever else you need with `sudo apt install <packagename>`. 
- VSCode extensions: Jupyter, Latex Workshop, Markdown All-in-One, Markdown Preview Enhanced, Path Intellisense, Python, Pylance, Quarto, R, and R-debugger.
- UI: Light Default, no breadcrumbs or minimap.

## How to use

If you just want to see what the codespace looks like, click the green "Use this Template" button on the top right and select "Open in a codespace".

If you want to use the codespace for your own work, click "Use this Template" button and select "Create new repository". After creating your repository, make sure to prebuild the codespace by clicking Settings > Codespaces > Set up Prebuild (as described [here](https://docs.github.com/en/codespaces/prebuilding-your-codespaces)). The first build will take around 15 minutes, but it will make for significantly faster startup times later on.  

To start coding in R, just type `r` in the terminal and press ENTER.

## Optional configurations

- For RStudio-like keybindings (such as ALT + - for assignment operator), press F1, type "keyboard" and click "Preferences: Open Keyboard Shortcuts (JSON)". Replace the contents with that of `.devcontainer/keybindings.json`, save and close. 

- Make API keys and other secrets available by following [this guide](https://docs.github.com/en/codespaces/managing-your-codespaces/managing-secrets-for-your-codespaces).
