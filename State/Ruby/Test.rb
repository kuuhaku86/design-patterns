require_relative "DownloadManager"
require_relative "ContinueState"
require_relative "PauseState"

continueState = ContinueState.new
pauseState = PauseState.new
downloadManager = DownloadManager.new(continueState)

# Test pause state
downloadManager.current = pauseState
downloadManager.action

# Test continue state
downloadManager.current = continueState
downloadManager.action