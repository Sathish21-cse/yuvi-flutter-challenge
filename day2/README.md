# Day 2 – Macro Cards


## What I changed today

- Built the macro cards (Carbs, Protein, Fat) below the Today Calorie card:
  - `macro_cards_row.dart`: row that holds the three cards
  - `macro_card.dart`: one card with image, label and value
- Added the carbs, protein and fat images to `assets/images/`.
- Added the macro row to `home_screen.dart`.

## What I learnt

- One small `MacroCard` widget can be reused three times with different values.
- `ClipRect` with `OverflowBox` cuts off the third card at the screen edge, without scrolling.
- `ClipOval` makes the food images round.

