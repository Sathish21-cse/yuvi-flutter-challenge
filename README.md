# Yuva Labs Flutter UI Challenge

Recreating a calorie-tracker mobile app mockup in Flutter, one component per day. The focus is the visual design (UI only), built with small, simple widgets.


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

### Day 3: Week calendar
- Built the calendar header ("February 2026" and the two arrow buttons).
- Built the row of seven days, with the selected day shown as a teal pill.


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

1. Open a terminal and go into the day you want to run (for example, day 3):

```bash
cd day3
```

2. Get the packages:

```bash
flutter pub get
```

3. Run the app in the browser:

```bash
flutter run -d chrome
```

