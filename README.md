# emacs-like.ahk

This script enables the use of bindings similar to emacs on Windows and is written in the AutoHotkey (AHK) language.

Ctrl can only be used with the right Ctrl.
Thus, the left Ctrl can be used as a normal shortcut key.
It is also recommended to treat CapsLock as the right Ctrl.
Even on a JIS keyboard, you can operate without moving your hands too much from the home position.

## Corresponding Key Bindings

### Cursor Movement

| Key Binding  | Function                                                              | Reproduced Shortcut Key |
| ------------ | --------------------------------------------------------------------- | ----------------------- |
| Right Ctrl+B | Move cursor backward                                                  | ←                       |
| Right Ctrl+F | Move cursor right (forward)                                           | →                       |
| Right Ctrl+P | Move cursor up                                                        | ↑                       |
| Right Ctrl+N | Move cursor down                                                      | ↓                       |
| Right Alt+M  | Move cursor to the first non-whitespace character of the current line | Home                    |
| Right Ctrl+A | Move cursor to the beginning of the current line                      | Home Home               |
| Right Ctrl+E | Move cursor to the end of the current line                            | End                     |
| Right Alt+B  | Move cursor one word backward                                         | Ctrl+←                  |
| Right Alt+F  | Move cursor one word forward                                          | Ctrl+→                  |
| Right Alt+V  | Scroll up                                                             | PageUp                  |
| Right Ctrl+V | Scroll down                                                           | PageDown                |
| Right Alt+,  | Move to the beginning of the file                                     | Ctrl+Home               |
| Right Alt+.  | Move to the end of the file                                           | Ctrl+End                |

### Selection

| Key Binding             | Function                                                                            | Reproduced Shortcut Key |
| ----------------------- | ----------------------------------------------------------------------------------- | ----------------------- |
| Shift+Right Ctrl+B      | Move cursor backward while selecting text                                           | Shift+←                 |
| Shift+Right Ctrl+F      | Move cursor forward while selecting text                                            | Shift+→                 |
| Shift+Right Ctrl+P      | Move cursor up while selecting text                                                 | Shift+↑                 |
| Shift+Right Ctrl+N      | Move cursor down while selecting text                                               | Shift+↓                 |
| Shift+Right Alt+M       | Move to the first non-whitespace character of the current line while selecting text | Home                    |
| Shift+Right Ctrl+A      | Move to the beginning of the current line while selecting text                      | Shift+Home Shift+Home   |
| Shift+Right Ctrl+E      | Move to the end of the current line while selecting text                            | Shift+End               |
| Shift+Right Alt+B       | Move one word backward while selecting text                                         | Ctrl+Shift+←            |
| Shift+Right Alt+F       | Move one word forward while selecting text                                          | Ctrl+Shift+→            |
| Shift+Right Alt+V       | Scroll up while selecting text                                                      | Shift+PageUp            |
| Shift+Right Ctrl+V      | Scroll down while selecting text                                                    | Shift+PageDown          |
| Shift+Right Alt+Shift+, | Select from the current cursor to the beginning of the file                         | Ctrl+Shift+Home         |
| Right Alt+Shift+.       | Select from the current cursor to the end of the file                               | Ctrl+Shift+End          |
| Right Ctrl+\            | Select all                                                                          | Ctrl+A                  |

### New Line

| Key Binding  | Function                        | Reproduced Shortcut Key |
| ------------ | ------------------------------- | ----------------------- |
| Right Ctrl+M | New line                        | Enter                   |
| Right Ctrl+O | New line (keep cursor position) | Enter ↑ End             |

### Cut, Copy, Paste

| Key Binding  | Function                                        | Reproduced Shortcut Key                        |
| ------------ | ----------------------------------------------- | ---------------------------------------------- |
| Right Ctrl+W | Cut                                             | Ctrl+X                                         |
| Right Ctrl+Y | Paste                                           | Ctrl+V                                         |
| Right Ctrl+T | Swap the characters before and after the cursor | Shift+← Ctrl+X → Ctrl+V                        |
| Right Alt+T  | Swap the words before and after the cursor      | Esc Ctrl+→ Ctrl+Shift+← Ctrl+X Ctrl+→ Ctrl+V ← |

### Delete

| Key Binding  | Function                                                 | Reproduced Shortcut Key |
| ------------ | -------------------------------------------------------- | ----------------------- |
| Right Ctrl+D | Delete the next character                                | Delete                  |
| Right Ctrl+H | Delete the previous character                            | BackSpace               |
| Right Ctrl+K | Delete text from the cursor to the end of the line       | Shift+End Delete        |
| Right Ctrl+U | Delete text from the cursor to the beginning of the line | Shift+Home Delete       |

### Search

| Key Binding  | Function | Reproduced Shortcut Key |
| ------------ | -------- | ----------------------- |
| Right Ctrl+R | Search   | Ctrl+F                  |
| Right Ctrl+S | Search   | Ctrl+F                  |

### Cancel, Redo

| Key Binding        | Function                    | Reproduced Shortcut Key |
| ------------------ | --------------------------- | ----------------------- |
| Right Ctrl+G       | Cancel selection, interrupt | Esc                     |
| Right Ctrl+]       | Cancel selection, interrupt | Esc                     |
| Shift+Right Ctrl+\ | Undo                        | Ctrl+Z                  |
| Right Ctrl+/       | Undo                        | Ctrl+Z                  |
