# day1

A new Flutter project.

## Getting Started

## What I changed today

- Created the design token system used by the whole project:
  - `app_colors.dart` for the colour palette
  - `app_text_styles.dart` for Poppins text styles
  - `app_spacing.dart` for spacing constants
  - `app_theme.dart` for the app `ThemeData`
- Built the Home screen shell (`home_screen.dart`) .
- Built the home header (the "name card"), split into small widgets:
  - `home_header.dart`: the main row layout
  - `greeting_text.dart`: "Good Morning 👋" and the user name
  - `notification_button.dart`: circular outlined bell button
- Added the avatar image, cropped from the mockup, to `assets/images/`.


## What I learnt

- Putting colours, text styles and spacing into tokens on day one means later days never need hardcoded values.
- Splitting a screen into small widgets (header → greeting + button) keeps every `build()` shallow and easy to read.
- `ClipOval` with `BoxFit.cover` is a simple way to make a circular avatar from any image.

