#include "defines.h"
#include "text.h"

const char text_newline[] PROGMEM = "\r\n";
const char text_prompt[] PROGMEM = VT_PROMPT;
const char text_delete_in_line[] PROGMEM = "\e[K";
const char text_backspace[] PROGMEM = "\b \b";
const char text_not_found[] PROGMEM = ": command not found.\r\n";

const char text_help[] PROGMEM =
    TEXT(PROJECT_NAME)" v"TEXT(PROJECT_VERSION)"\r\n"
    "General purpose controller.\r\n"
    "\r\n"
    "Source aviable on \"https://github.com/korkin-mv/kch06tc\"\r\n"
    "License: MIT\r\n"
    "Author: Mihail Korkin <korkin_mv@protonmail.ch>\r\n"
    "\r\n"
    "Supported command:\r\n"
    "\thelp\tPrint this message\r\n"
    "\techo\tPrint arguments\r\n";
    //"\trelay\tGet or set relay state\r\n";
