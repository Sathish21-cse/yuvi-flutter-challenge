# Day 7 – Health Score Card and Final Polish



## What I changed today

- Built the Health score card at the bottom of the Statistics screen:
  - `health_score_card.dart`: the white card that holds everything
  - `health_score_header.dart`: "Health score", "Good" and the ring
  - `health_score_ring.dart`: green ring with "7/10" in the middle
  - `health_metric_row.dart`: one row with icon, label, value and a coloured dot
- Added the Fiber, BPM, Sugar and Sodium icons to `assets/images/`.
- Added the coloured fill lines and soft background tints to the Carbs, Protein and Fat cards.
- Fixed the Statistics screen to match the mockup: Poppins font, bold "Good", gap between the "1,980" bubble and the bars, bar size, card heights and status dot colours.
- Added the Health score card to `statistics_screen.dart`.

## What I learnt

- The same ring idea (two `CircularProgressIndicator` widgets in a `Stack`) works for both the calorie ring and the health ring.
- One `HealthMetricRow` widget is reused four times with different icons and values.
- Every screen needs the font set in its text styles, or Flutter shows the default Roboto font.
- Comparing my output with the mockup side by side shows small details like the bubble gap and font weights.

