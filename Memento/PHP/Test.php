<?php

require_once('Editor.php');
require_once('EditorHistoryCaretaker.php');

class Test {
    public static function main() {
        $editor = new Editor;
        $editorHistoryCaretaker = new EditorHistoryCaretaker;

        $editor->setState("State-1");
        $editor->print();

        $editor->setState("State-2");
        $editor->print();

        $tempWorkspaceState = $editor->save();
        $editorHistoryCaretaker->add($tempWorkspaceState);

        $editor->setState("State-3");
        $editor->print();

        $tempWorkspaceState = $editor->save();
        $editorHistoryCaretaker->add($tempWorkspaceState);

        $editor->setState("State-4");
        $editor->print();

        $tempWorkspaceState = $editorHistoryCaretaker->get(1);
        $editor->restore($tempWorkspaceState);
        $editor->print();

        $tempWorkspaceState = $editorHistoryCaretaker->get(0);
        $editor->restore($tempWorkspaceState);
        $editor->print();

        $tempWorkspaceState = $editorHistoryCaretaker->get(10);
        $editor->restore($tempWorkspaceState);
        $editor->print();
    }
}

Test::main();


