AC_ARG_WITH(plugins,
            AC_HELP_STRING([--with-plugins], [what plugins to build]),
            ,with_plugins=all)
if test -z $with_plugins ; then
	with_plugins=all
fi
PP_DIST_DIRS="album autoprofile autoreply awaynotify bash bit blistops buddytime capsnot chronic colorize convbadger dewysiwygification dice difftopic eight_ball enhancedhist findip flip gRIM google groupmsg hideconv highlight icon-override ignorance ignore infopane irc-more irchelper irssi lastseen listhandler listlog msglen mystatusbox napster nicksaid ning nomobility okcupid oldlogger omegle plonkers schedule sepandtab showoffline simfix slashexec smartear snpp splitter sslinfo stocker stress switchspell talkfilters timelog translate xchat-chats xmmsremote xmppprio"
AC_SUBST(PP_DIST_DIRS)

AC_CONFIG_FILES([
	album/Makefile
	autoprofile/Makefile
	autoreply/Makefile
	awaynotify/Makefile
	bash/Makefile
	bit/Makefile
	blistops/Makefile
	buddytime/Makefile
	capsnot/Makefile
	chronic/Makefile
	colorize/Makefile
	convbadger/Makefile
	dewysiwygification/Makefile
	dice/Makefile
	difftopic/Makefile
	eight_ball/Makefile
	enhancedhist/Makefile
	findip/Makefile
	flip/Makefile
	gRIM/Makefile
	google/Makefile
	groupmsg/Makefile
	hideconv/Makefile
	highlight/Makefile
	icon-override/Makefile
	ignorance/Makefile
	ignore/Makefile
	infopane/Makefile
	irc-more/Makefile
	irchelper/Makefile
	irssi/Makefile
	lastseen/Makefile
	listhandler/Makefile
	listlog/Makefile
	msglen/Makefile
	mystatusbox/Makefile
	napster/Makefile
	nicksaid/Makefile
	ning/Makefile
	nomobility/Makefile
	okcupid/Makefile
	oldlogger/Makefile
	omegle/Makefile
	plonkers/Makefile
	schedule/Makefile
	sepandtab/Makefile
	showoffline/Makefile
	simfix/Makefile
	slashexec/Makefile
	smartear/Makefile
	snpp/Makefile
	splitter/Makefile
	sslinfo/Makefile
	stocker/Makefile
	stress/Makefile
	switchspell/Makefile
	talkfilters/Makefile
	timelog/Makefile
	translate/Makefile
	xchat-chats/Makefile
	xmmsremote/Makefile
	xmppprio/Makefile
])

PP_BUILD=`$PYTHON $srcdir/plugin_pack.py build_dirs $DEPENDENCIES $with_plugins`

PP_BUILD_DIRS=`echo $PP_BUILD | sed 's/,/\ /g'`
AC_SUBST(PP_BUILD_DIRS)

PP_PURPLE_BUILD="$PYTHON $srcdir/plugin_pack.py -p show_names $PP_BUILD"
PP_PIDGIN_BUILD="$PYTHON $srcdir/plugin_pack.py -P show_names $PP_BUILD"
PP_FINCH_BUILD="$PYTHON $srcdir/plugin_pack.py -f show_names $PP_BUILD"
