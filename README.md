 # TODO: create script to automate bootstrap

# Requirements
1. zsh
2. Git
3. [oh-my-zsh](https://github.com/ohmyzsh/ohmyzsh)
4. [Homebrew](https://brew.sh/)

# Bootstrap
1. Clone this Repository into home directory
   ```bash
   cd && git clone git@github.com:dhanangw/config.git
   ```
2. Install Brew tap and casks
   ```bash
   brew bundle install --global
   ```
3. Setup Coursier with JVM 11 (nvim-metals requires JDK 11)
   ```bash
   cs setup --jvm 11
   ```

# Updating Brewfile
```bash
brew bundle dump --global --force
```

# Updating config
`config` is an alias for `git`. Update config just like git (i.e. `config add .`, etc)

# Zsh
- switch to run in arm: `archarm`
- switch to run in intel: `archintel`
- change brew to run in arm: `brewarm`
- change brew to run in intel: `brewintel`

