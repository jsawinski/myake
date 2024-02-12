# My/External/Git/Command

## Reference
### my_git

	my_git(<command>
		[SITE <site-name>]

		DIRECTORY <directory>
		REPOSITORY <repository-url>
		[BRANCH <branch>]
		[TAG <tag>]
		[SHALLOW <boolean>]
		[PROGRESS <boolean>]
		[CONFIG <config-options>...]
		[REMOTE {
			[NAME <remote-name>]
			[STRATEGY <strategy>]
		}]
		[SUBMODULES {
			[<sub-modules>...]
			[RECURSE <boolean>]
		}]
		[MESSAGE "commit-message"]

		[EXECUTE_PROCESS_ARGS <execute_program-args>...]
	)

### Internals
### __my_git_command

	__my_git_command(<command>)

This macro executes a git command. All options (except SITE, see [my_git](#markdown-header-my_git))
must be set in GIT_* variables.

This macro is intended for use in scripts.

### my_git_download()

Synchronize a down- or upload site.

FIXME

