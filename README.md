# df_url_path_strategy

A Flutter package to manage URL path strategies with conditional imports for web and non-web platforms.

## Features

- Sets `PathUrlStrategy` for web platforms to remove the '#' from URLs.
- Provides a no-op implementation for non-web platforms.
- Handles hot reload errors gracefully on web platforms.

## Getting Started

Add the package to your `pubspec.yaml`:

```yaml
dependencies:
  df_url_path_strategy:
    git:
      url: https://github.com/dev-cetera/df_url_path_strategy
      ref: main
```
