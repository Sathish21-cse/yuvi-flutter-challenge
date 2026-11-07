# Day 4 – Statistics Screen Top Bar

## What I changed today

- Created the Statistics screen (the second screen):
  - `statistics_screen.dart`: the screen with the background
  - `statistics_app_bar.dart`: back button, "Statistics" title and "…" button
  - `statistics_icon_button.dart`: round button with a border, used for both icons
- Set `main.dart` to open the Statistics screen.

## What I learnt

- One `StatisticsIconButton` widget is reused for both the back and the "…" buttons.
- `Row` with `Expanded` and `Center` keeps the title in the middle of the screen.
- A new screen can be added without changing the Home screen files.

