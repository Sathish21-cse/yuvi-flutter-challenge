/// Spacing, dimension, and layout tokens for the application.
class AppSpacing {
  const AppSpacing._();

  /// Horizontal padding for the screen margins (20px).
  static const double screenHorizontal = 20.0;

  /// Top padding for the header below the status bar area (16px).
  static const double headerTop = 16.0;

  /// 2px gap.
  static const double gap2 = 2.0;

  /// 4px gap.
  static const double gap4 = 4.0;

  /// 6px gap.
  static const double gap6 = 6.0;

  /// 8px gap.
  static const double gap8 = 8.0;

  /// 10px gap.
  static const double gap10 = 10.0;

  /// 12px gap.
  static const double gap12 = 12.0;

  /// 14px gap.
  static const double gap14 = 14.0;

  /// 16px gap.
  static const double gap16 = 16.0;

  /// 24px gap.
  static const double gap24 = 24.0;

  /// 26px gap.
  static const double gap26 = 26.0;

  /// 28px gap.
  static const double gap28 = 28.0;

  /// Bottom padding of the home screen (24px).
  static const double gapBottom = 24.0;

  // Section gaps on Home screen
  /// Gap between header and today calorie card (28px).
  static const double gapHeaderToCalorie = 28.0;

  /// Gap between today calorie card and macro pills (12px).
  static const double gapCalorieToMacro = 12.0;

  /// Gap between macro pills and week calendar card (26px).
  static const double gapMacroToCalendar = 26.0;

  /// Gap between week calendar card and breakfast card (24px).
  static const double gapCalendarToBreakfast = 24.0;

  /// Gap between breakfast card and lunch card (12px).
  static const double gapBreakfastToLunch = 12.0;

  /// Gap between lunch card and bottom peeking card (12px).
  static const double gapLunchToPeeking = 12.0;

  // Header tokens
  /// Avatar diameter (40px).
  static const double avatarSize = 40.0;

  /// Notification button diameter (40px).
  static const double buttonSize = 40.0;

  /// Notification bell icon size (20px).
  static const double iconSize = 20.0;

  /// Light border outline width (1px).
  static const double borderWidth = 1.0;

  // Today Calorie card tokens
  /// Calorie card height (100px).
  static const double calorieCardHeight = 100.0;

  /// Calorie card corner radius (24px).
  static const double cardRadius = 24.0;

  /// Calorie card internal padding (20px).
  static const double cardPadding = 20.0;

  /// Calorie card left padding (16px).
  static const double calorieCardPaddingLeft = 16.0;

  /// Calorie card right padding (10px).
  static const double calorieCardPaddingRight = 10.0;

  /// Calorie card top padding to center title at y=24 (13px).
  static const double calorieCardPaddingTop = 13.0;

  /// Calorie card bottom padding (13px).
  static const double calorieCardPaddingBottom = 13.0;

  /// Bolt icon size for calorie title (18px).
  static const double boltIconSize = 18.0;

  /// Calorie progress ring diameter (72px).
  static const double ringSize = 72.0;

  /// Calorie progress ring stroke thickness (7px).
  static const double ringStrokeWidth = 7.0;

  /// Calorie progress ring rotation angle (-0.61 radians).
  static const double ringOpeningAngle = -0.61;

  // Macro pills tokens
  /// Macro card height (55px).
  static const double macroCardHeight = 55.0;

  /// Macro card corner radius for pill shape (28px).
  static const double macroCardRadius = 28.0;

  /// Macro card internal padding (6px).
  static const double macroCardPadding = 6.0;

  /// Macro circular icon background diameter (43px).
  static const double macroCircleSize = 43.0;

  /// Gap between macro icon circle and text column (8px).
  static const double macroCircleGap = 8.0;

  /// Carbs card width (142px).
  static const double macroCarbsWidth = 142.0;

  /// Protein card width (135px).
  static const double macroProteinWidth = 135.0;

  /// Fat card width (135px).
  static const double macroFatWidth = 135.0;

  /// Gap between macro cards (14px).
  static const double macroPillsGap = 14.0;

  /// Decorative line width under macro label for Carbs (72px).
  static const double macroCarbsLineWidth = 72.0;

  /// Decorative line width under macro label for Protein (60px).
  static const double macroProteinLineWidth = 60.0;

  /// Decorative line width under macro label for Fat (60px).
  static const double macroFatLineWidth = 60.0;

  /// Default decorative line width under macro label (72px).
  static const double macroLineWidth = 72.0;

  /// Decorative line height under macro label (3px).
  static const double macroLineHeight = 3.0;

  /// Decorative line corner radius (1.5px).
  static const double macroLineRadius = 1.5;

  /// Decorative partial fill width for carbs (60px = 83% of 72).
  static const double macroCarbsFillWidth = 60.0;

  /// Decorative partial fill width for protein (48px = 80% of 60).
  static const double macroProteinFillWidth = 48.0;

  /// Decorative partial fill width for fat (52px = 87% of 60).
  static const double macroFatFillWidth = 52.0;

  /// Legacy macro image size alias (43px).
  static const double macroImageSize = 43.0;

  /// Legacy macro card width alias (142px).
  static const double macroCardWidth = 142.0;

  /// OverflowBox max width for macro cards row (600px).
  static const double macroRowMaxWidth = 600.0;

  // Calendar card tokens
  /// Calendar card height (129px).
  static const double calendarCardHeight = 129.0;

  /// Corner radius for week calendar card (24px).
  static const double calendarCardRadius = 24.0;

  /// Internal padding for week calendar card (16px).
  static const double weekCardPadding = 16.0;

  /// Corner radius for week calendar card alias (24px).
  static const double weekCardRadius = 24.0;

  /// Horizontal padding for calendar header (12px).
  static const double calendarHeaderPaddingH = 12.0;

  /// Top padding for calendar header (10px).
  static const double calendarHeaderPaddingTop = 10.0;

  /// Height of the calendar header row (32px).
  static const double calendarHeaderHeight = 32.0;

  /// Diameter of round navigation arrow buttons in calendar header (32px).
  static const double arrowButtonSize = 32.0;

  /// Gap between calendar navigation arrow buttons (12px).
  static const double arrowButtonGap = 12.0;

  /// Chevron icon size in calendar header arrow buttons (18px).
  static const double arrowIconSize = 18.0;

  /// Horizontal padding for calendar days row (8px).
  static const double calendarDaysPaddingH = 8.0;

  /// Gap between calendar header and days row (12px).
  static const double calendarDaysGapTop = 12.0;

  /// Height of calendar days row (65px).
  static const double calendarDaysHeight = 65.0;

  /// Diameter of circular day number containers (30px).
  static const double dayCircleSize = 30.0;

  /// Width of selected day pill (39px).
  static const double selectedPillWidth = 39.0;

  /// Height of selected day pill and week day items (65px).
  static const double selectedPillHeight = 65.0;

  /// Corner radius for selected day pill (20px).
  static const double selectedPillRadius = 20.0;

  /// Height reserved for day letter to center it at y=14 (28px).
  static const double dayLetterHeight = 28.0;

  /// Gap between letter container and number circle (2px).
  static const double dayLetterCircleGap = 2.0;

  /// Bottom gap in day item (5px).
  static const double dayCircleBottomGap = 5.0;

  /// Bottom padding of calendar card (10px).
  static const double calendarBottomPadding = 10.0;

  // Meal cards tokens
  /// Meal card height (160px).
  static const double mealCardHeight = 160.0;

  /// Corner radius for meal cards (24px).
  static const double mealCardRadius = 24.0;

  /// Internal horizontal and top padding for meal cards (12px).
  static const double mealCardPadding = 12.0;

  /// Diameter of circular action button in meal card header (38px).
  static const double mealButtonSize = 38.0;

  /// Icon size for add icon in meal card header (22px).
  static const double mealButtonIconSize = 22.0;

  /// Diameter of circular food image in meal card (38px).
  static const double foodImageSize = 38.0;

  /// Gap between food image and food details (8px).
  static const double foodImageGap = 8.0;

  /// Icon size for the flame calorie icon (16px).
  static const double flameIconSize = 16.0;

  /// Gap between meal header and food row (14px).
  static const double mealGapHeaderToFood = 14.0;

  /// Gap between food row and progress bar (14px).
  static const double mealGapFoodToProgress = 14.0;

  /// Gap between progress bar and footer text (8px).
  static const double mealGapProgressToFooter = 8.0;

  /// Height of the thin progress bar in meal progress footer (6px).
  static const double progressBarHeight = 6.0;

  /// Corner radius for the progress bar (3px).
  static const double progressBarRadius = 3.0;

  /// Progress fraction for breakfast card (0.75).
  static const double breakfastProgress = 0.75;

  /// Progress fraction for lunch card (0.44).
  static const double lunchProgress = 0.44;

  // Peeking card tokens
  /// Visible height of the bottom peeking card (14px).
  static const double peekingCardHeight = 14.0;

  /// Full height of the bottom peeking card (160px).
  static const double peekingCardFullHeight = 160.0;

  // Statistics screen tokens (unchanged)
  /// Max mobile device viewport width for web/desktop layout (390px).
  static const double maxPhoneWidth = 390.0;

  /// Diameter of circular icon buttons in the statistics app bar (40px).
  static const double appBarButtonSize = 40.0;

  /// Icon size for the back navigation icon in statistics app bar (16px).
  static const double backIconSize = 16.0;

  /// Icon size for the more horizontal options icon in statistics app bar (20px).
  static const double moreIconSize = 20.0;

  /// Width of the chart vertical bars (12px).
  static const double chartBarWidth = 12.0;

  /// Height of the chart vertical bars (175px).
  static const double chartBarHeight = 175.0;

  /// Corner radius for chart bars (6px).
  static const double chartBarRadius = 6.0;

  /// Width of each chart bar column item (48px).
  static const double chartBarItemWidth = 48.0;

  /// Height of the top area reserved for tooltip above bars (56px).
  static const double chartTooltipAreaHeight = 56.0;

  /// Maximum width constraint for the chart tooltip overflow box (80px).
  static const double chartTooltipMaxWidth = 80.0;

  /// Corner radius for chart tooltip pill (24px).
  static const double chartTooltipRadius = 24.0;

  /// Horizontal padding inside chart tooltip pill (16px).
  static const double chartTooltipPaddingHorizontal = 16.0;

  /// Vertical padding inside chart tooltip pill (12px).
  static const double chartTooltipPaddingVertical = 12.0;

  /// Internal padding for information cards (16px).
  static const double infoCardPadding = 16.0;

  /// Height of the information cards (190px).
  static const double infoCardHeight = 190.0;

  /// Corner radius for information cards (24px).
  static const double infoCardRadius = 24.0;

  /// Ring icon image size inside information cards (56px).
  static const double infoCardIconSize = 56.0;
}
