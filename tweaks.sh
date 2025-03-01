#!/bin/bash

# Настройка времени анимации изменения размеров окон
echo "Настройка времени анимации изменения размеров окон..."
defaults write NSGlobalDomain NSWindowResizeTime -float 0.1

# Настройка времени анимации появления Dock
echo "Настройка времени анимации появления Dock..."
defaults write com.apple.dock autohide-time-modifier -float 0.1

echo "Ускореяем анимацию Mission Control"
defaults write com.apple.dock expose-animation-duration -float 0

# Настройка количества строк и столбцов в Launchpad
echo "Настройка количества строк и столбцов в Launchpad..."
defaults write com.apple.dock springboard-rows -int 7
defaults write com.apple.dock springboard-columns -int 7

# Настройка размера иконок Dock
echo "Настройка размера иконок Dock..."
defaults write com.apple.dock tilesize -int 51

# Настройка минимизации окон с эффектом "Масштаб"
echo "Настройка эффекта минимизации окон в Dock..."
defaults write com.apple.dock mineffect -string "scale"

# Настройка размера увеличенной иконки в Dock
echo "Настройка размера увеличенной иконки в Dock..."
defaults write com.apple.dock largesize -float 67.84

# Отключение увеличения курсора при его движении
echo "Отключение увеличения курсора при его движении..."
defaults write -g CGDisableCursorLocationMagnification -bool true

# Отключение аналитики и отправки диагностических данных Apple
echo "Отключение аналитики и отправки диагностических данных Apple..."
defaults write com.apple.SubmitDiagInfo AutoSubmit -bool false
defaults write com.apple.SubmitDiagInfo AllowApplePersonalizedAds -bool false

# Отключение рекламного трекинга
echo "Отключение персонализированной рекламы..."
defaults write com.apple.AdLib allowApplePersonalizedAdvertising -bool false

# Отключение отслеживания местоположения для улучшения продуктов Apple
echo "Отключение функций, связанных с местоположением..."
defaults write com.apple.locationd LocationServicesEnabled -int 0
defaults write com.apple.locationd "LocationServicesEnabledInSetup" -int 0

# Отключение функции Analytics в Safari
echo "Отключение аналитики в Safari..."
defaults write com.apple.Safari SendDoNotTrackHTTPHeader -bool true
defaults write com.apple.Safari UniversalSearchEnabled -bool false
defaults write com.apple.Safari SuppressSearchSuggestions -bool true

# Отключение предложений Spotlight
echo "Отключение предложений Spotlight..."
defaults write com.apple.Spotlight SuggestionsEnabled -bool false

# Отключение сбора данных Siri
echo "Отключение аналитики Siri..."
defaults write com.apple.assistant.support "UserEnabled" -bool false
sudo defaults write com.apple.assistant.support "Assistant Enabled" -bool false
defaults write com.apple.Siri "UserHasDeclinedEnable" -bool true
sudo defaults write com.apple.analyticsd AutoSubmit -bool false
sudo defaults write com.apple.analyticsd AutoSubmitVersion -int 0
sudo launchctl disable system/com.apple.analyticsd

# Отключение аналитики iCloud
echo "Отключение аналитики iCloud..."
defaults write com.apple.iCloud "EnableAnalytics" -bool false

# Отключение сбора данных в приложении "Карты"
echo "Отключение сбора данных в приложении 'Карты'..."
defaults write com.apple.Maps "UserSelectedAnonymousUsageOptIn" -bool false

# Отключение сбора данных в приложении "Здоровье"
echo "Отключение сбора данных в приложении 'Здоровье'..."
defaults write com.apple.Health "UserSelectedAnonymousUsageOptIn" -bool false

# Отключение сбора данных в приложении "Сообщения"
echo "Отключение сбора данных в приложении 'Сообщения'..."
defaults write com.apple.imessage "UserSelectedAnonymousUsageOptIn" -bool false

# Отключение сбора данных в приложении "Фото"
echo "Отключение сбора данных в приложении 'Фото'..."
defaults write com.apple.Photos "UserSelectedAnonymousUsageOptIn" -bool false

echo "Настариваем внешние мышки"
defaults write -g com.apple.swipescrolldirection -bool false

# Настройка частоты автоповтора клавиш и задержки
echo "Настройка частоты автоповтора клавиш и задержки..."
defaults write -g KeyRepeat -int 2
defaults write -g InitialKeyRepeat -int 25

# Настройка использования функциональных клавиш как стандартных
echo "Настройка использования функциональных клавиш как стандартных..."
defaults write -g com.apple.keyboard.fnState -bool true

echo "Настройка плавного и быстрого появления Dock..."
defaults write com.apple.dock autohide-delay -float 0
defaults write com.apple.dock autohide-time-modifier -float 0.2

# Отключение автоматического скрытия строки меню
echo "Отключение автоматического скрытия строки меню..."
defaults write NSGlobalDomain _HIHideMenuBar -bool false

# Уменьшение задержки при наведении файла на ярлык приложения в Dock
echo "Уменьшение задержки при наведении файла на ярлык приложения в Dock..."
defaults write NSGlobalDomain com.apple.springing.delay -float 0

# Включение функции автоматического открытия окон при наведении файла
echo "Включение функции автоматического открытия окон при наведении файла..."
defaults write NSGlobalDomain com.apple.springing.enabled -bool true

# Ускорение анимации открытия Dock
echo "Ускорение анимации открытия Dock..."
defaults write com.apple.dock autohide-time-modifier -float 0.1

echo "Отключение свернутых окон в правой части дока"
defaults write com.apple.dock minimize-to-application -bool true

echo "Удаляем стандартные настройки для папок"
sudo find ~/ -name ".DS_Store" -delete

# Показывать все расширения имён файлов
echo "Включаем отображение расширений имён файлов..."
defaults write NSGlobalDomain AppleShowAllExtensions -bool true

# Предупреждать при изменении расширений
echo "Включаем предупреждения при изменении расширений..."
defaults write com.apple.finder FXEnableExtensionChangeWarning -bool true

# Показывать предупреждения перед удалением из iCloud Drive
echo "Включаем предупреждения перед удалением из iCloud Drive..."
defaults write com.apple.finder FXEnableRemoveFromICloudDriveWarning -bool true

# Предупреждать при очистке корзины
echo "Включаем предупреждения при очистке корзины..."
defaults write com.apple.finder WarnOnEmptyTrash -bool true

# Удалять объекты из корзины через 30 дней
echo "Включаем удаление объектов из корзины через 30 дней..."
defaults write com.apple.finder FXRemoveOldTrashItems -bool true

# Отображать папки наверху при сортировке по имени
echo "Отображаем папки в начале списка при сортировке..."
defaults write com.apple.finder _FXSortFoldersFirst -bool true

# Искать в текущей папке по умолчанию
echo "Устанавливаем поиск в текущей папке по умолчанию..."
defaults write com.apple.finder FXDefaultSearchScope -string "SCcf"

# Установить вид папок списком
echo "Устанавливаем вид по умолчанию - Список..."
defaults write com.apple.finder FXPreferredViewStyle -string "Nlsv"

# Установить размер значков 64 пикселя
echo "Устанавливаем размер значков - 64 пикселя..."
defaults write com.apple.finder IconViewSettings -dict IconSize -integer 64

# Сортировка по имени
echo "Применяем сортировку по имени..."
defaults write com.apple.finder FXArrangeGroupViewBy -string "Name"

echo "Настройка TextEdit..."

# Установка режима текста по умолчанию: простой текст
echo "Установка режима текста: Простой текст..."
defaults write com.apple.TextEdit RichText -int 0

# Установка ширины окна по умолчанию (в символах)
echo "Установка ширины окна по умолчанию (140 символов)..."
defaults write com.apple.TextEdit WidthInChars -int 140

# Установка высоты окна по умолчанию (в строках)
echo "Установка высоты окна по умолчанию (40 строк)..."
defaults write com.apple.TextEdit HeightInChars -int 40

# Включение проверки правописания
echo "Включение проверки правописания..."
defaults write com.apple.TextEdit CheckSpellingWhileTyping -bool true

# Включение смарт-кавычек
echo "Включение смарт-кавычек..."
defaults write com.apple.TextEdit SmartQuotes -bool true

# Включение смарт-тире
echo "Включение смарт-тире..."
defaults write com.apple.TextEdit SmartDashes -bool true

# Включение линейки
echo "Включение линейки..."
defaults write com.apple.TextEdit ShowRuler -bool true

echo "Запрещаем создание .DS_Store в сетевых и удалённых папках (но это не работает для локальных)"
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool TRUE

echo "Режима разработчика (F12) в Safari"
defaults write com.apple.Safari IncludeDevelopMenu -bool true

# Применение изменений
echo "Перезапуск сервисов для применения настроек..."
killall cfprefsd && killall locationd && killall SystemUIServer && killall Finder && killall Dock && killall TextEdit && killall Safari 

echo "Все настройки конфиденциальности обновлены."

# Задержка перед перезагрузкой
echo "Система будет перезагружена через 3 секунды..."
sleep 3

# Выполняем перезагрузку системы
sudo reboot