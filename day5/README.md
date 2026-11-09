# Day 5 – Weekly Bar Chart


## What I changed today

- Built the weekly bar chart on the Statistics screen:
  - `calories_bar_chart.dart`: row that holds the seven bars
  - `chart_bar_item.dart`: one day with its bar, label and bubble
  - `chart_bar.dart`: the rounded bar with a light track and a fill
  - `chart_tooltip.dart`: the "1,980" bubble above Monday
- Added the bar chart to `statistics_screen.dart`.

## What I learnt

- One `ChartBarItem` widget is reused seven times, and `isSelected` changes the bar colour and shows the bubble.
- `FractionallySizedBox` sets the bar height as a part of the full track, without any chart package.
- A fixed-height area above each bar keeps all seven bars on the same line.

