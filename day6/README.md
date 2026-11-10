# Day 6 – Steps and Water Cards



## What I changed today

- Built the Steps and Water cards on the Statistics screen:
  - `info_cards_row.dart`: row that holds the two cards
  - `info_card.dart`: one card with title, ring icon, value and unit
- Added the steps and water icons to `assets/images/`.
- Added the cards to `statistics_screen.dart`.
- Added the Calories header above the bar chart (1980 Kcal and Target: 2500 Kcal).
- Connected the back button on the Statistics screen to return to the Home screen.
- Replaced my own images (avatar, macro icons, breakfast and lunch) with the images cropped from the mockup.
- Fixed the Home screen to match the mockup: Poppins font, text styles, colours and spacing.

## What I learnt

- One `InfoCard` widget is reused for both Steps and Water, with different values.
- `Expanded` makes the two cards the same width.
- `Column` with `spaceBetween` puts the title at the top and the value at the bottom.
- `Navigator.pop` takes the user back to the previous screen.
- The font must be declared in `pubspec.yaml` and set in the text styles, or Flutter shows the default font.
- Measuring sizes and gaps from the mockup gives a closer match than guessing.

