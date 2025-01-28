
#!/bin/bash

# Сброс времени анимации изменения размеров окон
echo "Сброс времени анимации изменения размеров окон..."
defaults delete NSGlobalDomain NSWindowResizeTime

# Сброс времени анимации появления Dock
echo "Сброс времени анимации появления Dock..."
defaults delete com.apple.dock autohide-time-modifier

echo "Сбрасываем анимацию Mission Control"
defaults delete com.apple.dock expose-animation-duration

# Сброс количества строк и столбцов в Launchpad
echo "Сброс количества строк и столбцов в Launchpad..."
defaults delete com.apple.dock springboard-rows
defaults delete com.apple.dock springboard-columns

# Сброс размера иконок Dock
echo "Сброс размера иконок Dock..."
defaults delete com.apple.dock tilesize

# Сброс минимизации окон с эффектом 'Масштаб'
echo "Сброс эффекта минимизации окон в Dock..."
defaults delete com.apple.dock mineffect

# Сброс размера увеличенной иконки в Dock
echo "Сброс размера увеличенной иконки в Dock..."
defaults delete com.apple.dock largesize

# Сброс увеличения курсора при его движении
echo "Сброс увеличения курсора при его движении..."
defaults delete -g CGDisableCursorLocationMagnification

# Включение аналитики и отправки диагностических данных Apple
echo "Включение аналитики и отправки диагностических данных Apple..."
defaults delete com.apple.SubmitDiagInfo AutoSubmit
defaults delete com.apple.SubmitDiagInfo AllowApplePersonalizedAds

# Включение рекламного трекинга
echo "Включение персонализированной рекламы..."
defaults delete com.apple.AdLib allowApplePersonalizedAdvertising

# Включение функций, связанных с местоположением
echo "Включение функций, связанных с местоположением..."
defaults delete com.apple.locationd LocationServicesEnabled
defaults delete com.apple.locationd "LocationServicesEnabledInSetup"

# Включение аналитики в Safari
echo "Включение аналитики в Safari..."
defaults delete com.apple.Safari SendDoNotTrackHTTPHeader
defaults delete com.apple.Safari UniversalSearchEnabled
defaults delete com.apple.Safari SuppressSearchSuggestions

# Включение предложений Spotlight
echo "Включение предложений Spotlight..."
defaults delete com.apple.Spotlight SuggestionsEnabled

# Включение сбора данных Siri
echo "Включение аналитики Siri..."
defaults delete com.apple.assistant.support "UserEnabled"
defaults delete com.apple.Siri "UserHasDeclinedEnable"
sudo defaults delete com.apple.analyticsd AutoSubmit
sudo defaults delete com.apple.analyticsd AutoSubmitVersion
sudo launchctl enable system/com.apple.analyticsd

# Включение аналитики iCloud
echo "Включение аналитики iCloud..."
defaults delete com.apple.iCloud "EnableAnalytics"

# Включение сбора данных в приложении 'Карты'
echo "Включение сбора данных в приложении 'Карты'..."
defaults delete com.apple.Maps "UserSelectedAnonymousUsageOptIn"

# Включение сбора данных в приложении 'Здоровье'
echo "Включение сбора данных в приложении 'Здоровье'..."
defaults delete com.apple.Health "UserSelectedAnonymousUsageOptIn"

# Включение сбора данных в приложении 'Сообщения'
echo "Включение сбора данных в приложении 'Сообщения'..."
defaults delete com.apple.imessage "UserSelectedAnonymousUsageOptIn"

# Включение сбора данных в приложении 'Фото'
echo "Включение сбора данных в приложении 'Фото'..."
defaults delete com.apple.Photos "UserSelectedAnonymousUsageOptIn"

echo "Сброс настроек внешней мышки"
defaults delete -g com.apple.swipescrolldirection

# Сброс частоты автоповтора клавиш и задержки
echo "Сброс частоты автоповтора клавиш и задержки..."
defaults delete -g KeyRepeat
defaults delete -g InitialKeyRepeat

# Сброс использования функциональных клавиш как стандартных
echo "Сброс использования функциональных клавиш как стандартных..."
defaults delete -g com.apple.keyboard.fnState

echo "Сброс плавного и быстрого появления Dock..."
defaults delete com.apple.dock autohide-delay
defaults delete com.apple.dock autohide-time-modifier

# Включение автоматического скрытия строки меню
echo "Включение автоматического скрытия строки меню..."
defaults delete NSGlobalDomain _HIHideMenuBar

# Увеличение задержки при наведении файла на ярлык приложения в Dock
echo "Увеличение задержки при наведении файла на ярлык приложения в Dock..."
defaults delete NSGlobalDomain com.apple.springing.delay

# Отключение функции автоматического открытия окон при наведении файла
echo "Отключение функции автоматического открытия окон при наведении файла..."
defaults delete NSGlobalDomain com.apple.springing.enabled

# Сброс анимации открытия Dock
echo "Сброс анимации открытия Dock..."
defaults delete com.apple.dock autohide-time-modifier

echo "Включение свернутых окон в правой части дока"
defaults delete com.apple.dock minimize-to-application

echo "Удаляем стандартные настройки для папок"
sudo find ~/ -name ".DS_Store" -delete

# Скрыть расширения имён файлов
echo "Скрываем отображение расширений имён файлов..."
defaults delete NSGlobalDomain AppleShowAllExtensions

# Скрытие предупреждений при изменении расширений
echo "Скрываем предупреждения при изменении расширений..."
defaults delete com.apple.finder FXEnableExtensionChangeWarning

# Скрыть предупреждения перед удалением из iCloud Drive
echo "Скрываем предупреждения перед удалением из iCloud Drive..."
defaults delete com.apple.finder FXEnableRemoveFromICloudDriveWarning

# Отключение предупреждений при очистке корзины
echo "Отключение предупреждений при очистке корзины..."
defaults delete com.apple.finder WarnOnEmptyTrash

# Отключение автоматического удаления объектов из корзины через 30 дней
echo "Отключение автоматического удаления объектов из корзины через 30 дней..."
defaults delete com.apple.finder FXRemoveOldTrashItems

# Скрыть папки наверху при сортировке по имени
echo "Скрываем папки в начале списка при сортировке..."
defaults delete com.apple.finder _FXSortFoldersFirst

# Сброс поиска в текущей папке по умолчанию
echo "Сбрасываем поиск в текущей папке по умолчанию..."
defaults delete com.apple.finder FXDefaultSearchScope

# Установить вид папок по умолчанию
echo "Сбрасываем вид по умолчанию на стандартный..."
defaults delete com.apple.finder FXPreferredViewStyle

# Установить размер значков на стандартный
echo "Сбрасываем размер значков на стандартный..."
defaults delete com.apple.finder IconViewSettings

# Сброс сортировки по имени
echo "Сбрасываем сортировку по имени..."
defaults delete com.apple.finder FXArrangeGroupViewBy

echo "Сбрасываем настройки TextEdit..."

# Сброс режима текста
echo "Сброс режима текста..."
defaults delete com.apple.TextEdit RichText

# Сброс ширины и высоты окна
echo "Сброс ширины и высоты окна..."
defaults delete com.apple.TextEdit WidthInChars
defaults delete com.apple.TextEdit HeightInChars

# Отключение проверки правописания
echo "Отключение проверки правописания..."
defaults delete com.apple.TextEdit CheckSpellingWhileTyping

# Отключение смарт-кавычек
echo "Отключение смарт-кавычек..."
defaults delete com.apple.TextEdit SmartQuotes

# Отключение смарт-тире
echo "Отключение смарт-тире..."
defaults delete com.apple.TextEdit SmartDashes

# Отключение линейки
echo "Отключение линейки..."
defaults delete com.apple.TextEdit ShowRuler

echo "Разрешаем создание .DS_Store в сетевых и удалённых папках"
defaults delete com.apple.desktopservices DSDontWriteNetworkStores

# Применение изменений
echo "Перезапуск сервисов для применения настроек..."
killall cfprefsd && killall locationd && killall SystemUIServer && killall Finder && killall Dock && killall TextEdit

echo "Все настройки сброшены к значениям по умолчанию."

# Задержка перед перезагрузкой
echo "Система будет перезагружена через 3 секунды..."
sleep 3

# Выполняем перезагрузку системы
sudo reboot
