# My/Report - Reporting

Myake keeps track of it's settings by creating a report file and offers the
possibility to either add options (such as additional build targets, e.g. for
packages) to the master report file or create ones own report file (owing to
the authors inability to memorize and/or laziness to RTFS).

The report is generally available in the project's binary folder or can be
displayed during a `cmake` run. See [``my_report``](#my_report)
for further details.

## Example

The internal Myake report is setup in the following way:

	my_report(My
		TOPIC "Myake settings"
		FILE ${CMAKE_BINARY_DIR}/ReportMyake.txt
	)

	my_report(My/Platform SECTION "Platform")
	my_report(My/Variables SECTION "Variables")
	my_report(My/Targets SECTION "Targets")
	my_report(My/External SECTION "External sites")
	my_report(My/Environment SECTION "Environment")

	my_report(My
		"The following settings were recorded during configuration of project '$<PROJECT_NAME>'. Variables, environment and" 
		"command-line arguments relevant for using Myake are listed below.")

	my_report(My/Environment 
		%{P} 
		%{50} "    MY_REPORT=$ENV{MY_REPORT}" 
		"Report generator setting (<topic> or HELP).")

Note here, as can be supposed from the '%{...}' elements, that limited output 
formatting is supported.

## Reference

### Environment variables and command-line arguments

To view a report it is possible, either to set the environment

	MY_REPORT=<topic> cmake .

or define the identical cache variable

	cmake -DMY_REPORT=<topic> .

(or clear the report using ``-UMY_REPORT``).

To show a list of topics, use 'help'.

Note, however, that, even if not displayed, a report file is always generated.

### my_report

#### Create a report topic with sections

	my_report(<topic>
		TOPIC "title..."
		[FILE <output-file>]
	)

Create a report topic. The option ``FILE`` sets the output file for the report, 
by default this is ${CMAKE_BINARY_DIR}/Report<topic>.txt.

	my_report(<topic>/<section>...
		SECTION "title...")

Add a section to a topic.

#### Adding messages to the report

	my_report(<topic>[/<section...]
		<text>...)

The text can be a list of strings combined with format instructions as
understood by [`my_string_format`](Bits/String.md#my_string_format). It
understands the tags

	%{P}          Start a paragraph.
	%{BR}         Line break.

and genex-type variable expansion ("%<VARNAME>").

### my_report_create

Create a report topic or sections.

This command is called from [``my_report``](#my_report).

### my_report_generate

Generate report file.

This command is called from [my_report](#my_report).

### my_report_show

Display report or help.

This command is called from [my_report](#my_report).

### Internals
#### __my_report_topic

	__my_report_topic(<topic>[/<section>...] <tag-variable> <parent-variable> <top-variable>)

This helper splits a topic path into the current 'tag', the 'parent' and
the root. For example, 

	__my_report_topic(my/topic/section tag parent root)

is equivalent to

	set(tag "section")
	set(parent "my_topic")
	set(root "my")

#### __my_report_generate

	__my_report_generate(<tag> <outfile>)

Helper macro to assemble the actual report consiting of multiple sections.

#### __my_report_show_sections

	__my_report_show_sections(<topic> <indentation string>)

Helper to output a report section in the ``cmake`` messsage log.

