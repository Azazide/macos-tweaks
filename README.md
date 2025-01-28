# macos-tweaks

A script to optimize macOS performance, customize system settings, and enhance privacy, all in one place.

## Features

### Performance Enhancements
- Speeds up window resizing animations.
- Reduces Dock auto-hide/show animation duration.
- Accelerates Mission Control animation.

### Dock Customizations
- Adjusts Dock icon size and magnification.
- Changes the minimize effect to "scale."
- Customizes rows and columns in Launchpad.

### Privacy Improvements
- Disables Apple Analytics and diagnostic data submission.
- Turns off personalized advertising.
- Disables location-based services for various Apple features.
- Turns off Siri, Safari, and iCloud analytics.

### Finder Customizations
- Displays all file extensions by default.
- Enables warnings for file operations like deleting from iCloud Drive or emptying the Trash.
- Automatically removes items from Trash after 30 days.
- Sets default Finder view to list and groups folders at the top.

### Keyboard and Mouse Tweaks
- Adjusts key repeat rate and delay.
- Enables function keys as standard keys.
- Disables natural scrolling for external mice.

### Additional Adjustments
- Configures TextEdit preferences, including plain text mode and default window size.
- Prevents `.DS_Store` creation on network drives.
- Removes existing `.DS_Store` files.

## Installation

1. Clone this repository:
   ```bash
   git clone https://github.com/Azazide/macos-tweaks.git
   ```
2. Navigate to the directory:
   ```bash
   cd macos-tweaks
   ```
3. Make the script executable:
   ```bash
   chmod +x fix.sh
   ```
4. Run the script:
   ```bash
   ./fix.sh
   ```

## Uninstallation

To uninstall and revert all the tweaks applied by `fix.sh`, use the provided `restweaks.sh` script:

1. Make the script executable:
   ```bash
   chmod +x restweaks.sh
   ```
2. Run the script:
   ```bash
   ./restweaks.sh
   ```

## Requirements

- macOS with administrative privileges (required for certain system adjustments).
- `sudo` installed and configured.

## Important Notes

- Some changes may require a system restart to take effect.
- The script includes a reboot step to apply settings fully. Remove or comment out the reboot command if you prefer to restart manually.
- Certain settings may reset after a macOS update.

## Disclaimer

This script modifies system settings. Use it at your own risk. Test on a non-production system if unsure. The author is not responsible for any issues caused by its execution.

## Contributions

Feel free to submit issues or pull requests to improve this script!

---

Enjoy your optimized macOS experience!
