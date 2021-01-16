#include "defines.h"
#include "text.h"

const char text_newline[] PROGMEM = "\r\n";
const char text_prompt[] PROGMEM = VT_PROMPT;
const char text_delete_in_line[] PROGMEM = "\e[K";
const char text_backspace[] PROGMEM = "\b \b";
const char text_not_found[] PROGMEM = ": command not found.\r\n";
