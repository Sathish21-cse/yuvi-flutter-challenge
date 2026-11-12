# Yuva Labs Flutter UI Challenge

Recreating a calorie-tracker mobile app mockup in Flutter, one component per day. The focus is the visual design (UI only), built with small, simple widgets.

Two screens are built: **Home** and **Statistics**. Tapping the bell icon on Home opens Statistics, and the back button returns to Home.

## What was done each day

### Day 0: Setup
- Created the Flutter project and the repository structure.
- Set up the Poppins font and the assets folder.

### Day 1: Design tokens and top of the Home screen
- Created the colours, text styles, spacing and theme files.
- Built the Home screen shell.
- Built the name card (avatar, greeting and user name).
- Built the notification bell button.
- Built the Today Calorie card with the progress ring.

### Day 2: Macro cards
- Built the Carbs, Protein and Fat cards below the calorie card.
- The Fat card is cut off at the screen edge, as in the mockup.

### Day 3: Week calendar and meal cards
- Built the calendar header ("February 2026" and the two arrow buttons).
- Built the row of seven days, with the selected day shown as a teal pill.
- Built the Breakfast and Lunch meal cards from one reusable `MealCard` widget.
- The Home screen is now complete.

### Day 4: Statistics screen top bar and navigation
- Created the Statistics screen (the second screen).
- Built the app bar with the back button, the "Statistics" title and the "…" button.
- Reused one `StatisticsIconButton` widget for both buttons.
- Connected the bell icon on Home to the Statistics screen.

### Day 5: Weekly bar chart
- Built the weekly bar chart with seven bars (Sun to Sat).
- Showed the selected day (Monday) in dark teal with the "1,980" bubble above it.

### Day 6: Steps, Water and Calories cards, plus fixes
- Built the Steps and Water cards from one reusable `InfoCard` widget.
- Added the Calories header above the bar chart (1980 Kcal and Target: 2500 Kcal).
- Connected the back button on Statistics to return to Home.
- Replaced my own images with the images cropped from the mockup (avatar, macro icons, breakfast and lunch).
- Fixed the Home screen to match the mockup: Poppins font, text styles, colours and spacing.

### Day 7: Health score card and final polish
- Built the Health score card with the 7/10 ring and the Fiber, BPM, Sugar and Sodium rows.
- Added the coloured fill lines and soft tints to the Carbs, Protein and Fat cards.
- Fixed the Statistics screen to match the mockup: Poppins font, bold "Good", bubble gap, bar size, card heights and dot colours.
- Both screens are now complete.

Each day folder is a complete Flutter project that runs on its own, with its own `README.md` and `screenshot.png`.

## Versions used

| Tool | Version |
|---|---|
| Flutter | 3.47.9 (stable) |
| Dart | 3.13.7 |
| DevTools | 2.60.0 |
| Font | Poppins |
| Run target | Chrome (web) |
| Packages | None added |

## How to run

Requires Flutter 3.47.9 and Dart 3.13.7 (or newer).

1. Open a terminal and go into the final day folder:

```bash
cd day7
```

2. Get the packages:

```bash
flutter pub get
```

3. Run the app in the browser:

```bash
flutter run -d chrome
```

## Coding rules followed

- Files and folders use `snake_case`.
- Classes use `PascalCase`.
- Variables and functions use `camelCase`.
- Widgets are small and not deeply nested.
- Colours, text styles and spacing are kept in one place instead of being written inside widgets.

