package main

type DownloadManager struct {
	current IState
}

func (downloadManager *DownloadManager) setState(state IState) {
	downloadManager.current = state
}

func (downloadManager *DownloadManager) action()  {
	downloadManager.current.action()
}