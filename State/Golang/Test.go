package main

func main()  {
	continueState := &ContinueState{}
	pauseState := &PauseState{}
	downloadManager := &DownloadManager{
		current: continueState,
	}

	// Test for pause state
	downloadManager.setState(pauseState)
	downloadManager.action()

	// Test for continue state
	downloadManager.setState(continueState)
	downloadManager.action()

}