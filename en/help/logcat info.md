
## Grep Filter Toggle Disabled Behavior

If Tasker `Logcat Entry` profile `Grep Filter` toggle is not enabled, then whenever Android `logcat` sends a logcat entry for the component to Tasker java code, it applies the filter set in the profile. Currently, it does it in two ways:
 1) If filter does not start with `~R`, then simple pattern matching is used against the logcat entry. Same as tasker `If` condition's `~`.
 2) If filter starts with `~R`, then regex matching is used against the logcat entry. Same as tasker `If` condition's `~R`.

If the filter is matched, then entry task of the profile is called with `%lc_text` set as the logcat entry received. The regex matching may be more resource intensive than simple matching and will use more battery.



## Grep Filter Toggle Enabled Behavior

The Android `logcat` runs in native c/c++ code and Tasker receives these logcat entries for the component in native code as well but each entry needs to be sent to Tasker java code which runs in Java virtual machine so that java based comparisons can be performed based on the filter which may include regexes. However, if comparisons are also done in native code and only matched entries are sent to tasker java code, then there should be a potential performance improvement and less battery usage and this is what Tasker does if `Grep Filter` toggle is enabled. Native code is ideally much faster than java, although the difference has decreased for a lot of things in recent android versions due to optimizations.

The `grep` command is a common shell command that is used to output lines that match a regex. If `Grep Filter` toggle is enabled, then Tasker native code passes all logcat entries for the component it receives to `grep` through a shell pipe and `grep` applies the regex that it receives as an argument to the entries in native code and outputs only matched entries and only these entries are sent to Tasker java code.

The filter that is set in the profile is passed after `grep ` as a string without any modifications or quoting. This is done to allow the user freedom to pass any other arguments to `grep` which may include command options and regexes and optionally further commands as a pipeline. It is the user's responsibility to set filter to valid command arguments to `grep` or to a valid command pipeline depending on his system since there is no reliable way to check if the filter set by the user is a valid or not. The valid arguments/options supported by `grep` will depend on the `grep` binary installed in the user's `/system` partition at `/system/bin/grep` that is used by Tasker. The `grep` binary will vary between different android versions and devices. Read '`grep` Variants' section below.

The `%lc_text` passed to the entry task will be whatever is returned by `grep` or command pipeline and may contain modified logcat entry depending on what filter the user sets.



### `grep` Variants
There are a lot of implementations/variants of `grep` command and each may support slightly different options and arguments or some may not support all options. The most common `grep` variant on linux distributions, cygwin in windows and termux is by `GNU`. However, android does not provide `GNU` `gerp` and has provided different variants over the years which may be one of the `BSD`, `toybox` or `toolbox` depending on android version as mentioned in [shell_and_utilities](https://android.googlesource.com/platform/system/core/+/master/shell_and_utilities/README.md) docs.

To check which variant you have, checks its version by running the following command in termux:

```
/system/bin/grep --version
```

To check which options your grep supports, check its help by running the following command in termux:

```
/system/bin/grep --help
```

If `grep` is not prepended with `/system/bin/`, then ideally `GNU` `grep` installed in termux will be run instead of android `/system/bin/grep` one, unless you change `$PATH` variable.

You can check [FreeBSD grep manpage](https://www.freebsd.org/cgi/man.cgi?query=bsdgrep) for more info on what each option means since details are unlikely to be available in the help output. Depending on variant of `grep`, it may support different matchers and regular expressions.

```
grep [OPTION...] PATTERNS
grep [OPTION...] -e PATTERNS1 -e PATTERNS2

Matcher Selection
	-E, --extended-regexp
		Interpret PATTERNS as extended regular expressions (EREs, see
		below).

	-F, --fixed-strings
		 Interpret PATTERNS as fixed strings, not regular expressions.

	-G, --basic-regexp
		Interpret PATTERNS as basic regular expressions (BREs, see
		below). This is the default.

	-P, --perl-regexp
		Interpret PATTERNS as Perl-compatible regular expressions
		PCREs). This option is experimental when combined with the
		-z (--null-data) option, and grep -P may warn of unimplemented
		features.

Matching Control
	-e pattern, --regexp=pattern
		Specify a pattern used during the search of the input: an input
		line is selected if it matches any of the specified patterns.
		This option is most useful when multiple -e options are used to
		specify multiple patterns, or when a pattern begins with a dash
		(`-').
	-i, --ignore-case
		Ignore case distinctions in both the PATTERN and the input files.
		(-i is specified by POSIX .)
	-v, --invert-match
		Invert the sense of matching, to select non-matching lines.
		(-v is specified by POSIX .)
```

You can also check tutorials on how to use `grep` on the internet like [here](https://www.cyberciti.biz/faq/grep-regular-expressions/) and [here](https://www.digitalocean.com/community/tutorials/using-grep-regular-expressions-to-search-for-text-patterns-in-linux).

Users with root support can replace `/system/bin/grep` with a `GNU` variant as well since that may be even faster in some cases and with more options than other variants as long it at least supports the same options as the default one since otherwise the android system could crash if some other app or process relies on the options of the default one. Use at your own risk. Custom path to grep is currently not supported.



### Filter Field Info

The string set in `Filter` field of the `Logcat Entry` profile if `Grep Filter` toggle is enabled is not just a regex, it can be many things and so it is the user's responsibility to set the correct filter and Tasker does not validate it, nor can it. It is used as is, without any modifications or quoting.

Users should have some basic knowledge of shell commands to use `Grep Filter` enabled mode. If you do not have that or cannot understand the things below, then **do not use** it.

Commands usually expect options and/or arguments to be passed to them. Options normally start with dashes `-` to change the behavior of a command like `-E` to make grep use extended regex. Arguments are any other information that is passed to a command like the regex passed to `grep` command. The `grep` command normally expects only one argument namely the regex if data is passed to it through a pipe. If two arguments are passed, then the second argument is considered a path to file in which to search the text in and it must not be passed with the `Logcat Entry` profile filter, only one argument must be passed unless using `-e` option. Each argument that needs to be passed must have quotes around it so that shell considers it as a single argument. If there are no quotes, then the input string is split into multiple arguments with the whitespace characters (space, tab or newline) as the splitter. So if `grep some string` is run, then `some` will be considered as the first argument and `grep` will use that as a regex and `string` will be considered as the second argument and `grep` will use that as a path to a file and since `string` is unlikely to be valid path to a file, the `grep` command will fail and no matched entries will be outputted and profile will never get triggered. What should be done is to use single quotes `'` or double quotes `"` around each argument you want to pass.

Single quotes `'`:
Example: `'some string'`
Enclosing arguments in single quotes `'` preserves the literal value of each character within the quotes. A single quote may not occur between single quotes, even when preceded by a backslash. If the string itself needs to contain a single quote, then each single quote `'` should be replaced with `'\''`. It basically means closing the already opened single quote `'`, followed a escaped single quote `\'`, then opening another single quote `'`. The escaped single quote is not between any single quotes pair. Example `'some string with single quote '\'' in it'` will be interpreted as `'some string with single quote'`, followed a escaped single quote `\'`, followed by `' in it'` as one single argument.
Check for more info [here](https://www.gnu.org/software/bash/manual/html_node/Single-Quotes.html).

Double quotes `"`:
Example: `"some string"`
Enclosing characters in double quotes `"` preserves the literal value of all characters within the quotes, with mainly the exception of ```$, `, \``` which must be escaped with a backslash `\`. If the string itself needs to contain a double quote, then each double quote `"` should be replaced with `\"`. Example: `"some sting with double quotes \" and a dollar sign \$"`.
Check for more info [here](https://www.gnu.org/software/bash/manual/html_node/Double-Quotes.html).

It is much safer for amateur users to use single quotes around arguments instead of double quotes and to start with simple filters first. If the logcat entry is always the same, use `-F` option for less resource usage.

### Filter Field Examples

Note that `java regexes` and `grep regexes` are **different** and may use different classifiers.

**Match a constant logcat entry:**

```
-F 'some constant logcat entry'
```


**Match a logcat entry using basic regex:**

```
'some basic regex'
```

or 


```
-G 'some basic regex'
```

The `-G` option is the default mode and can be optionally passed for clarity.


**Match a logcat entry using extended regex:**

```
-E 'some extended regex'
```


**Match a logcat entry using extended regex and extract value from it using sed using a pipeline:**


```
-E 'some extended regex' | sed 's/match/replace/'
```


**Match against multiple basic regexes using an escaped pipe character `\|` (OR Condition):**

```
-G 'some basic regex 1\|some basic regex 1'
```


**Match against multiple extended regexes using a pipe character `|` (OR Condition):**

```
-E 'some extended regex 1|some extended regex 1'

```


**Match against multiple extended regexes using `-e` options (OR Condition):**

```
-E -e 'some extended regex 1' -e 'some extended regex 2'
```

The `-e` option will also work with `-F` and `-G` options.


**Match against multiple extended regexes (AND Condition):**

```
-E 'some extended regex 1' | grep -E 'some extended regex 2'
```

**Invert Match using `-v` option (NOT Condition):**

```
-G -v 'some basic regex 1'
```



### Testing `grep` Patterns in Termux


To test if your regex or pattern works:

You can `echo` a sample test string and pipe output to `grep` in termux shell:

```
echo 'some test string' | /system/bin/grep 'some basic regex'
```

If you have grabbed a full logcat file with `logcat -d > '/storage/emulated/0/logcat.txt'` command using Tasker `Run Shell` action, run following in termux shell:

```
cat '/storage/emulated/0/logcat.txt' | /system/bin/grep 'some basic regex'
```

Note that `logcat -d` command only outputs very recent entries so run it as soon as you complete what you want to capture entries for. You can also grab a logcat file using [Grab Timed And Filtered Logcat](https://github.com/agnostic-apollo/Tasker-Random-Stuff/tree/master/grab_timed_and_filtered_logcat) task.

`grep` will output all lines that match the regex. You can also check exit code of `grep`. Right after `grep` command run `echo $?`, if it's `0`, then it found a match, if it's `1`, then it did not, otherwise exit codes mean that `grep` command failed for some reason.
