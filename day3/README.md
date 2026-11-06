# Day 3 – Week Calendar Card


## What I changed today

- Built the week calendar card below the macro cards:
  - `week_calendar_card.dart`: the white card that holds everything
  - `calendar_header.dart`: "February 2026" and the two arrow buttons
  - `week_days_row.dart`: row of seven days
  - `week_day_item.dart`: one day, with a teal pill for the selected day
- Added the calendar card to `home_screen.dart`.

## What I learnt

- One `WeekDayItem` widget is reused seven times, and `isSelected` changes how it looks.
- A rounded `Container` with a dark colour makes the selected day pill.
- `Row` with `spaceBetween` spreads the seven days evenly.

