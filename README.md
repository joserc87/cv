# Curriculum Vitae

Just a CV made in LaTeX.

This project is not meant to be helpful to anybody, and it has been uploaded to
this repository just as a backup. That being said, if you find it to be useful,
feel free to use it as a template to write your own CV.

# Explanation:

This CV uses the moderncv LaTeX package. Also, it uses the *ifthen* package to
support multilanguage. The main file, cv.tex, defines 3 commands to support
multilanguage:

1. `\es{SOME_TEXT}`. The text inside '{}' will be shown in the document only if
   the output language is set to *spanish*.
2. `\en{SOME_TEXT}`. The text inside '{}' will be shown in the document only if
   the output language is set to *english*.
3. `\ml{T1}{T2}`. Is equivalent to \en{T1}\es{T2}. Useful to make the document
   robust (so we don't forget to translate some part of it), and to keep it a
   bit shorter. Also, this will be more useful when more languages are added.

Change any of the commands or add new ones, adding parameters to the
multilanguage command (\ml).

# License

The code and structure of the Tex files are copyleft. The content is copyright.
*Do not impersonate me* ;)
