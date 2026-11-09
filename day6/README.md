# Day 6 – Steps and Water Cards

## What I changed today

- Built the Steps and Water cards on the Statistics screen:
  - `info_cards_row.dart`: row that holds the two cards
  - `info_card.dart`: one card with title, ring icon, value and unit
- Added the steps and water icons to `assets/images/`.
- Added the cards to `statistics_screen.dart`.

## What I learnt

- One `InfoCard` widget is reused for both Steps and Water, with different values.
- `Expanded` makes the two cards the same width.
- `Column` with `spaceBetween` puts the title at the top and the value at the bottom.

