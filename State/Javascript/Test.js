import DownloadManager from './DownloadManager.js';
import ContinueState from './ContinueState.js';
import PauseState from './PauseState.js';

const continueState = new ContinueState();
const pauseState = new PauseState();
const downloadManager = new DownloadManager(continueState);

// Test pause state
downloadManager.set_state(pauseState);
downloadManager.action();

// Test continue state
downloadManager.set_state(continueState);
downloadManager.action();

