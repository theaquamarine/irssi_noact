#include "printtext.h"

enum {
	IRCTXT_MODULE_NAME,

	IRCTXT_FILL_1,

	IRCTXT_NOTIFY_JOIN,
	IRCTXT_NOTIFY_PART,
	IRCTXT_NOTIFY_AWAY,
	IRCTXT_NOTIFY_UNAWAY,
	IRCTXT_NOTIFY_UNIDLE,
	IRCTXT_NOTIFY_ONLINE,
	IRCTXT_NOTIFY_OFFLINE,
	IRCTXT_NOTIFY_LIST
};

extern FORMAT_REC fecommon_irc_notifylist_formats[];
#define MODULE_FORMATS fecommon_irc_notifylist_formats

#include "printformat.h"
