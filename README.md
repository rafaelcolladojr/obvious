# Obvious 💡

[![style: very good analysis][very_good_analysis_badge]][very_good_analysis_link]
[![Powered by Mason](https://img.shields.io/endpoint?url=https%3A%2F%2Ftinyurl.com%2Fmason-badge)](https://github.com/felangel/mason)
[![License: MIT][license_badge]][license_link]

A collection of useful classes and extensions so obvious you'll wonder why they aren't offical

## Installation 💻

Install via `flutter pub add`:

```sh
dart pub add obvious
```


## What's the point of this?

After years of copy-n-pasting the same constructor param values and other tedious actions as Flutter developers, it was time to package these actions into sensible, almost *obvious* classes and extensions we can all benefit from.

The easiest example (and my favorite) is needing to set all but *__one__* argument for `EdgeInsets.only` to the same value.  

That's when `ObviousEdgeInsets.except()` was born:

```dart
ObviousEdgeInsets.except(bottom: 8)

// is synonimous with:

EdgeInsets.only(left: 8, top: 8, right: 8)
```

## Features

### Clases
- `ObviousEdgeInsets.except`
- `ObviousConditionalExpanded`

### Extensions
#### num -> EdgeInsets
- `insetAll`
- `insetHorizontal`
- `insetVertical`
- `insetLeft`
- `insetTop`
- `insetBottom`
- `insetRight`

#### num -> Duration
- `ms`
- `seconds`
- `minutes`
- `hours`
- `days`

#### num -> SizedBox
- `heightBox`
- `widthBox`

#### BuildContext  -> MediaQuery.sizeOf
- `screenHeight`
- `screenWidth`
- `aspectRatio`
- `isMobile`
- `padding`
- `viewPadding`
- `viewInsets`
- `isTablet`
- `isDesktop`

#### BuildContext -> Navigator
- `push`
- `pushReplacement`
- `pushAndRemoveUntil`
- `pushNamed`
- `pushReplacementNamed`
- `pushNamedAndRemoveUntil`
- `pop`
- `maybePop`
- `popAndPushNamed`

#### BuildContext -> Dialogs
- `showNewDialog`
- `showSnackbar`

## Inspiration / Special thanks

This project was heavily inspired by other libraries like:

- [flutter_animate](https://pub.dev/packages/flutter_animate) (num to Duration)
- [super_extensions](https://github.com/AbhishekDoshi26/super_extensions) (BuildContext to Navigator)


[flutter_install_link]: https://docs.flutter.dev/get-started/install
[github_actions_link]: https://docs.github.com/en/actions/learn-github-actions
[license_badge]: https://img.shields.io/badge/license-MIT-blue.svg
[license_link]: https://opensource.org/licenses/MIT
[logo_black]: https://raw.githubusercontent.com/VGVentures/very_good_brand/main/styles/README/vgv_logo_black.png#gh-light-mode-only
[logo_white]: https://raw.githubusercontent.com/VGVentures/very_good_brand/main/styles/README/vgv_logo_white.png#gh-dark-mode-only
[mason_link]: https://github.com/felangel/mason
[very_good_analysis_badge]: https://img.shields.io/badge/style-very_good_analysis-B22C89.svg
[very_good_analysis_link]: https://pub.dev/packages/very_good_analysis
[very_good_cli_link]: https://pub.dev/packages/very_good_cli
[very_good_coverage_link]: https://github.com/marketplace/actions/very-good-coverage
[very_good_ventures_link]: https://verygood.ventures
[very_good_ventures_link_light]: https://verygood.ventures#gh-light-mode-only
[very_good_ventures_link_dark]: https://verygood.ventures#gh-dark-mode-only
[very_good_workflows_link]: https://github.com/VeryGoodOpenSource/very_good_workflows
