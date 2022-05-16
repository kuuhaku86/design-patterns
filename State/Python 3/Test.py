from DownloadManager import DownloadManager
from ContinueState import ContinueState
from PauseState import PauseState

continueState = ContinueState()
pauseState = PauseState()
downloadManager = DownloadManager(continueState)

# Test pause state
downloadManager.set_state(pauseState)
downloadManager.action()

# Test continue state
downloadManager.set_state(continueState)
downloadManager.action()
