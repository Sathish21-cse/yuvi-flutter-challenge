# Day 1 – Home Header and Today Calorie Card


## What I changed today

- Created the design token system used by the whole project:
  - `app_colors.dart` for the colour palette
  - `app_text_styles.dart` for Poppins text styles
  - `app_spacing.dart` for spacing constants
  - `app_theme.dart` for the app `ThemeData`
- Built the Home screen shell (`home_screen.dart`).
- Built the home header (the "name card"), split into small widgets:
  - `home_header.dart`: the main row layout
  - `greeting_text.dart`: "Good Morning 👋" and the user name
  - `notification_button.dart`: circular outlined bell button
- Built the Today Calorie card, split into small widgets:
  - `today_calorie_card.dart`: the card container and layout
  - `calorie_amount_text.dart`: title, calorie number and "kcal"
  - `calorie_ring.dart`: circular progress ring with the "520 Left" text


## What I learnt

- Putting colours, text styles and spacing into tokens on day one means later days never need hardcoded values.
- Splitting a screen into small widgets (header → greeting + button) keeps every `build()` shallow and easy to read.
- `ClipOval` with `BoxFit.cover` is a simple way to make a circular avatar from any image.
- Two `CircularProgressIndicator` widgets in a `Stack` can make a ring with a track, without any custom painting.
- Using `crossAxisAlignment.baseline` keeps the big number and the "kcal" unit aligned on the same line.
