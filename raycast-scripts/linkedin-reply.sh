#!/bin/bash

# @raycast.title LinkedIn Reply
# @raycast.author Michael Pomogajko
# @raycast.description Template reply for LinkedIn inquiries

# @raycast.icon 👨‍💼
# @raycast.mode silent
# @raycast.schemaVersion 1

# @raycast.argument1 { "type": "text", "placeholder": "Name of recipient" }

echo "
Hello $1,
thanks for reaching out!

Since I receive a lot of messages like these, I'm forced to strictly filter out noise over actual interesting offers.
That's why I'm kindly asking you to provide the following information.
- Name of the company
- Salary expectation
- Link to job posting (if available)

Best,
Michael
" | pbcopy
