PlistBuddy = "/usr/libexec/PlistBuddy"
GruvboxTerminalConfig = $(HOME)/.config/terminal/Gruvbox-dark.terminal
TerminalConfig = "$(HOME)/Library/Preferences/com.apple.Terminal.plist"

gruvbox-terminal:
	$(PlistBuddy) \
		-c "Delete :'Window Settings':'Gruvbox-dark'" \
		$(TerminalConfig) \
		2>/dev/null | true
	$(PlistBuddy) \
		-c "Add :'Window Settings':'Gruvbox-dark' dict" \
		-c "Merge $(GruvboxTerminalConfig) :'Window Settings':'Gruvbox-dark'" \
		-c "Set :'Default Window Settings' Gruvbox-dark" \
		-c "Set :'Startup Window Settings' Gruvbox-dark" \
		$(TerminalConfig)

xcode:
	defaults write com.apple.dt.Xcode ShowBuildOperationDuration -bool YES
	defaults write com.apple.dt.Xcode XCFontAndColorCurrentTheme "Gruvbox Dark.xccolortheme"
	defaults write com.apple.dt.Xcode XCFontAndColorCurrentDarkTheme "Gruvbox Dark.xccolortheme"
	defaults write com.apple.dt.Xcode DVTTextShowMinimap -bool NO
	defaults write com.apple.dt.Xcode DVTTextEditorWrapsLines -bool NO
	defaults write com.apple.dt.Xcode KeyBindingsMode "Vi"
	defaults write com.apple.dt.Xcode ApplePersistenceIgnoreState -bool YES
	defaults write com.apple.dt.Xcode IDEEditorNavigationStyle_DefaultsKey "IDEEditorNavigationStyle_OpenInPlace"
	defaults write com.apple.dt.Xcode IDEFileExtensionDisplayMode -int 1
	defaults write com.apple.dt.Xcode IDELanguageModelSelectedDuringFirstLaunch -bool NO

sim:
	defaults write com.apple.iphonesimulator ShowChrome -bool NO

clone:
	cd
	git init
	git remote add origin git@github.com:storoj/dotfiles.git
	git fetch
	git checkout master --force
	git submodule update --init
	git config --local status.showUntrackedFiles no

brew:
	brew bundle --global

init: clone gruvbox-terminal xcode sim brew
