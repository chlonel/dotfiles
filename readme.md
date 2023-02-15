# セットアップ

## Linux (Arch Linux)

### 1. paruをインストール

https://github.com/Morganamilo/paru

### 2. パッケージリストをアップデート

```
paru -Sy
```

### 3. chezmoi, ageをインストール

```
paru -S chezmoi age
```

### 4. chezmoiでdotfilesを展開

```
chezmoi init --apply chlonel
```

### 5. gccをインストール

```
paru -S gcc
```

### 6. リストからパッケージをインストール

```
paru --needed -S - < $(chezmoi source-path)/setup/.arch_packages
```

## Mac

### 1. Homebrew

https://brew.sh

### 2. パッケージリストをアップデート

```
brew update
```

### 3. chezmoi, ageをインストール

```
brew install chezmoi age
```

### 4. chezmoiでdotfilesを展開

```
chezmoi init --apply chlonel
```

### 5. リストからパッケージをインストール

```
brew bundle --file $(chezmoi source-path)/setup/.Brewfile
```

---

パッケージインストールはchezmoiの`run_once_*.sh`で実行しても良いかも。
パッケージのインストールもプライベートと仕事で分けるなら、パッケージリストはテンプレートにして、`chezmoi apply`した後のリストを使うと良さそう。
