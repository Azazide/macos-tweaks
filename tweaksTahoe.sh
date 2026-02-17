#!/bin/bash

############################################
# 1. Аналитика и диагностика (обновлено)
############################################
echo "Отключаем аналитику и автоотправку..."

# Современная аналитика
defaults write com.apple.analyticsd AnalyticsEnabled -bool false
defaults write com.apple.analyticsd AutoSubmit -bool false

# Старые ключи (на всякий случай)
defaults write com.apple.SubmitDiagInfo AutoSubmit -bool false
defaults write com.apple.SubmitDiagInfo ThirdPartyDataSubmit -bool false

############################################
# 2. Apple Advertising
############################################
echo "Отключаем персонализированную рекламу..."
defaults write com.apple.AdLib allowApplePersonalizedAdvertising -bool false
defaults write com.apple.AdLib forceLimitAdTracking -bool true

############################################
# 3. Siri + Assistant
############################################
echo "Отключаем Siri..."

defaults write com.apple.Siri StatusMenuVisible -bool false
defaults write com.apple.Siri UserHasDeclinedEnable -bool true
defaults write com.apple.assistant.support "Assistant Enabled" -bool false
defaults write com.apple.assistant.support "Siri Data Sharing Opt-In Status" -int 2
defaults write com.apple.assistant.support "Search Queries Data Sharing Status" -int 2

############################################
# 4. Spotlight (локально + сеть)
############################################
echo "Отключаем Spotlight сетевые предложения..."

defaults write com.apple.Spotlight SuggestionsEnabled -bool false
defaults write com.apple.Spotlight ServerSuggestionsEnabled -bool false
defaults write com.apple.lookup.shared LookupSuggestionsDisabled -bool true

############################################
# 5. Handoff / User Activity
############################################
echo "Отключаем Handoff и активность..."

defaults write -g NSUserActivityLoggingEnabled -bool false
defaults write -g NSUserActivityEnabled -bool false

############################################
# 6. Автообучение текста
############################################
echo "Отключаем автозамены..."

defaults write -g NSAutomaticSpellingCorrectionEnabled -bool false
defaults write -g NSAutomaticTextCompletionEnabled -bool false
defaults write -g NSAutomaticQuoteSubstitutionEnabled -bool false
defaults write -g NSAutomaticDashSubstitutionEnabled -bool false

############################################
# 7. Safari
############################################
echo "Минимизируем телеметрию Safari..."

killall Safari 2>/dev/null

defaults write com.apple.Safari SendDoNotTrackHTTPHeader -bool true
defaults write com.apple.Safari SuppressSearchSuggestions -bool true
defaults write com.apple.Safari SearchSuggestionsEnabled -bool false
defaults write com.apple.Safari PreloadTopHit -bool false

killall cfprefsd 2>/dev/null

############################################
# 8. App Store
############################################
echo "Отключаем аналитику App Store..."

defaults write com.apple.appstore SendDiagnosticData -bool false

############################################
# 9. .DS_Store на внешних носителях
############################################
echo "Отключаем .DS_Store на внешних дисках..."

defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true
defaults write com.apple.desktopservices DSDontWriteUSBStores -bool true

############################################
# Применение
############################################
echo "Применяем изменения..."

killall cfprefsd 2>/dev/null
killall Finder 2>/dev/null
killall Dock 2>/dev/null
killall SystemUIServer 2>/dev/null
killall Safari 2>/dev/null

echo "Готово. Рекомендуется перезагрузить Mac."
