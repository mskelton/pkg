# pkg

Fish plugin for parsing package.json files.

## Installation

```sh
fisher install mskelton/pkg
```

## Usage

Display entire package.json file.

```sh
pkg
```

Display a specific section of package.json.

```sh
pkg dependencies
```

## Advanced

`pkg` uses [jq](https://stedolan.github.io/jq/) under the hood, so any valid jq expression (omitting the first period) can be used. For example, the following prints all `@babel` dev dependencies.

```sh
pkg 'devDependencies|keys[]|select(startswith("@babel/"))'
```
