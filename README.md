# Obvious 💡

[![style: very good analysis][very_good_analysis_badge]][very_good_analysis_link]
[![Powered by Mason](https://img.shields.io/endpoint?url=https%3A%2F%2Ftinyurl.com%2Fmason-badge)](https://github.com/felangel/mason)
[![License: MIT][license_badge]][license_link]

A collection of useful classes and extensions so obvious you'll wonder why they aren't offical

## Installation 💻

**❗ In order to start using Obvious you must have the [Flutter SDK][flutter_install_link] installed on your machine.**

Install via `flutter pub add`:

```sh
dart pub add obvious
```

---

## What's the point of this?

After years of copy-n-pasting of the same constructor param values and other tedious actions as Flutter developers, it was time to package these actions into sensible, almost *obvious* classes and extensions we can all benefit from.

The easiest example (and my favorite) is needing to pass all but *__one__* argument for `EdgeInsets.only` to the same value.  

That's when `ObviousEdgeInsets.except()` was born:

```dart
ObviousEdgeInsets.except(bottom: 8)

// is synonimous with:

EdgeInsets.only(left: 8, top: 8, right: 8)
```
