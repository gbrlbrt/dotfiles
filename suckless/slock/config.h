/* user and group to drop privileges to */
static const char *user  = "gbb";
static const char *group = "gbb";

static const char *colorname[NUMCOLS] = {
	[INIT] =   "black",     /* after initialization */
	[INPUT] =  "#005577",   /* during input */
	[FAILED] = "#CC3333",   /* wrong password */
};

/* treat a cleared input like a wrong password (color) */
static const int failonclear = 1;

/* number of failed password attempts until failcommand is executed.
   Set to 0 to disable */
static const int failcount = 3;
/* command to be executed after [failcount] failed password attempts */
static const char *failcommand = "systemctl poweroff";

static const char *imgpath          = "~/Pictures/spuffywp.jpg";
static const int imgwidth           = 1920;
static const int imgheight          = 1080;
static const int imgoffsetx         = 0;
static const int imgoffsety         = 0;
static const int showimgonlyatstart = 1;