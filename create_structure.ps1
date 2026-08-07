$folders = @(
"lib/core/constants",
"lib/core/theme",
"lib/core/utils",

"lib/models",

"lib/services/auth",
"lib/services/firebase",
"lib/services/location",
"lib/services/notification",

"lib/providers",

"lib/routes",

"lib/widgets/common",
"lib/widgets/cards",
"lib/widgets/buttons",

"lib/screens/splash",
"lib/screens/auth",
"lib/screens/home",
"lib/screens/challenge",
"lib/screens/leaderboard",
"lib/screens/profile",
"lib/screens/settings",
"lib/screens/recycling_map",

"lib/screens/admin"
)

foreach ($folder in $folders) {
    New-Item -ItemType Directory -Path $folder -Force
}

$files = @(
"lib/main.dart",

"lib/routes/app_routes.dart",

"lib/core/theme/app_theme.dart",
"lib/core/constants/app_colors.dart",
"lib/core/constants/app_strings.dart",

"lib/services/auth/auth_service.dart",
"lib/services/firebase/firebase_service.dart",
"lib/services/location/location_service.dart",
"lib/services/notification/notification_service.dart",

"lib/providers/auth_provider.dart",
"lib/providers/theme_provider.dart",
"lib/providers/challenge_provider.dart",

"lib/models/user_model.dart",
"lib/models/challenge_model.dart",
"lib/models/badge_model.dart",

"lib/screens/splash/splash_screen.dart",
"lib/screens/auth/login_screen.dart",
"lib/screens/auth/register_screen.dart",
"lib/screens/home/home_screen.dart",
"lib/screens/challenge/challenge_screen.dart",
"lib/screens/leaderboard/leaderboard_screen.dart",
"lib/screens/profile/profile_screen.dart",
"lib/screens/settings/settings_screen.dart",
"lib/screens/recycling_map/map_screen.dart"
)

foreach ($file in $files) {
    New-Item -ItemType File -Path $file -Force
}

Write-Host "Structure EcoChallenge CI créée avec succès !" -ForegroundColor Green