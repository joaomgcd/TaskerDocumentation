### Get Voice

Use a speech recognizer to convert speech into text.\
\
A comma-separated list of results are stored in the variable %VOICE.
It\'s possible there may be several results because of deficiencies in
the speech-recognition or e.g. environmental noise. To get e.g. the
first result, use the Variable Split action and then access %VOICE1.\
\
If the recognition fails or the specified Timeout is exceeded, %VOICE is
cleared (detect this condition with the Is Set operator).\
\
Language Model is a hint to the speech-recognizer for fine-tuning the
results.\
\
The default Android speech recognizer requires a network connection and
therefore has a high-latency. Other recognizers are available e.g. on
Play Store.\
\
Tip: it may be necessary to install the Google Search app in order to
access this action on some devices.
