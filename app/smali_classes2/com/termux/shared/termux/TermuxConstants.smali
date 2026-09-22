.class public final Lcom/termux/shared/termux/TermuxConstants;
.super Ljava/lang/Object;
.source "TermuxConstants.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/termux/shared/termux/TermuxConstants$TERMUX_WIDGET;,
        Lcom/termux/shared/termux/TermuxConstants$TERMUX_TASKER;,
        Lcom/termux/shared/termux/TermuxConstants$TERMUX_STYLING;,
        Lcom/termux/shared/termux/TermuxConstants$TERMUX_FLOAT_APP;,
        Lcom/termux/shared/termux/TermuxConstants$TERMUX_API;,
        Lcom/termux/shared/termux/TermuxConstants$RESULT_SENDER;,
        Lcom/termux/shared/termux/TermuxConstants$TERMUX_APP;
    }
.end annotation


# static fields
.field public static final APK_RELEASE_FDROID:Ljava/lang/String; = "F-Droid"

.field public static final APK_RELEASE_FDROID_SIGNING_CERTIFICATE_SHA256_DIGEST:Ljava/lang/String; = "228FB2CFE90831C1499EC3CCAF61E96E8E1CE70766B9474672CE427334D41C42"

.field public static final APK_RELEASE_GITHUB:Ljava/lang/String; = "Github"

.field public static final APK_RELEASE_GITHUB_SIGNING_CERTIFICATE_SHA256_DIGEST:Ljava/lang/String; = "B6DA01480EEFD5FBF2CD3771B8D1021EC791304BDD6C4BF41D3FAABAD48EE5E1"

.field public static final APK_RELEASE_GOOGLE_PLAYSTORE:Ljava/lang/String; = "Google Play Store"

.field public static final APK_RELEASE_GOOGLE_PLAYSTORE_SIGNING_CERTIFICATE_SHA256_DIGEST:Ljava/lang/String; = "738F0A30A04D3C8A1BE304AF18D0779BCF3EA88FB60808F657A3521861C2EBF9"

.field public static final BROADCAST_TERMUX_OPENED:Ljava/lang/String; = "com.termux.app.OPENED"

.field public static final COMMA_ALTERNATIVE:Ljava/lang/String; = "\u201a"

.field public static final COMMA_NORMAL:Ljava/lang/String; = ","

.field public static final FDROID_PACKAGES_BASE_URL:Ljava/lang/String; = "https://f-droid.org/en/packages"

.field public static final PERMISSION_RUN_COMMAND:Ljava/lang/String; = "com.termux.alpine.permission.RUN_COMMAND"

.field public static final PROP_ALLOW_EXTERNAL_APPS:Ljava/lang/String; = "allow-external-apps"

.field public static final PROP_DEFAULT_VALUE_ALLOW_EXTERNAL_APPS:Ljava/lang/String; = "false"

.field public static final TERMUX_API_APP_NAME:Ljava/lang/String; = "Termux:API"

.field public static final TERMUX_API_DEFAULT_PREFERENCES_FILE_BASENAME_WITHOUT_EXTENSION:Ljava/lang/String; = "com.termux.api_preferences"

.field public static final TERMUX_API_FDROID_PACKAGE_URL:Ljava/lang/String; = "https://f-droid.org/en/packages/com.termux.api"

.field public static final TERMUX_API_GITHUB_ISSUES_REPO_URL:Ljava/lang/String; = "https://github.com/termux/termux-api/issues"

.field public static final TERMUX_API_GITHUB_REPO_NAME:Ljava/lang/String; = "termux-api"

.field public static final TERMUX_API_GITHUB_REPO_URL:Ljava/lang/String; = "https://github.com/termux/termux-api"

.field public static final TERMUX_API_PACKAGE_NAME:Ljava/lang/String; = "com.termux.api"

.field public static final TERMUX_APP_NAME:Ljava/lang/String; = "Termux"

.field public static final TERMUX_APP_NOTIFICATION_CHANNEL_ID:Ljava/lang/String; = "termux_notification_channel"

.field public static final TERMUX_APP_NOTIFICATION_CHANNEL_NAME:Ljava/lang/String; = "Termux App"

.field public static final TERMUX_APP_NOTIFICATION_ID:I = 0x539

.field public static final TERMUX_BIN_PREFIX_DIR:Ljava/io/File;

.field public static final TERMUX_BIN_PREFIX_DIR_PATH:Ljava/lang/String; = "/data/data/com.termux.alpine/files/usr/bin"

.field public static final TERMUX_BOOT_APP_NAME:Ljava/lang/String; = "Termux:Boot"

.field public static final TERMUX_BOOT_DEFAULT_PREFERENCES_FILE_BASENAME_WITHOUT_EXTENSION:Ljava/lang/String; = "com.termux.boot_preferences"

.field public static final TERMUX_BOOT_FDROID_PACKAGE_URL:Ljava/lang/String; = "https://f-droid.org/en/packages/com.termux.boot"

.field public static final TERMUX_BOOT_GITHUB_ISSUES_REPO_URL:Ljava/lang/String; = "https://github.com/termux/termux-boot/issues"

.field public static final TERMUX_BOOT_GITHUB_REPO_NAME:Ljava/lang/String; = "termux-boot"

.field public static final TERMUX_BOOT_GITHUB_REPO_URL:Ljava/lang/String; = "https://github.com/termux/termux-boot"

.field public static final TERMUX_BOOT_PACKAGE_NAME:Ljava/lang/String; = "com.termux.boot"

.field public static final TERMUX_BOOT_SCRIPTS_DIR:Ljava/io/File;

.field public static final TERMUX_BOOT_SCRIPTS_DIR_PATH:Ljava/lang/String; = "/data/data/com.termux.alpine/files/home/.termux/boot"

.field public static final TERMUX_COLOR_PROPERTIES_FILE:Ljava/io/File;

.field public static final TERMUX_COLOR_PROPERTIES_FILE_PATH:Ljava/lang/String; = "/data/data/com.termux.alpine/files/home/.termux/colors.properties"

.field public static final TERMUX_CONFIG_HOME_DIR:Ljava/io/File;

.field public static final TERMUX_CONFIG_HOME_DIR_PATH:Ljava/lang/String; = "/data/data/com.termux.alpine/files/home/.config/termux"

.field public static final TERMUX_CRASH_LOG_BACKUP_FILE_PATH:Ljava/lang/String; = "/data/data/com.termux.alpine/files/home/crash_log_backup.md"

.field public static final TERMUX_CRASH_LOG_FILE_PATH:Ljava/lang/String; = "/data/data/com.termux.alpine/files/home/crash_log.md"

.field public static final TERMUX_CRASH_REPORTS_NOTIFICATION_CHANNEL_ID:Ljava/lang/String; = "termux_crash_reports_notification_channel"

.field public static final TERMUX_CRASH_REPORTS_NOTIFICATION_CHANNEL_NAME:Ljava/lang/String; = "Termux Crash Reports"

.field public static final TERMUX_DATA_HOME_DIR:Ljava/io/File;

.field public static final TERMUX_DATA_HOME_DIR_PATH:Ljava/lang/String; = "/data/data/com.termux.alpine/files/home/.termux"

.field public static final TERMUX_DEFAULT_PREFERENCES_FILE_BASENAME_WITHOUT_EXTENSION:Ljava/lang/String; = "com.termux_preferences"

.field public static final TERMUX_DONATE_URL:Ljava/lang/String; = "https://termux.dev/donate"

.field public static final TERMUX_ETC_PREFIX_DIR:Ljava/io/File;

.field public static final TERMUX_ETC_PREFIX_DIR_PATH:Ljava/lang/String; = "/data/data/com.termux.alpine/files/usr/etc"

.field public static final TERMUX_FDROID_PACKAGE_URL:Ljava/lang/String; = "https://f-droid.org/en/packages/com.termux"

.field public static final TERMUX_FILES_DIR:Ljava/io/File;

.field public static final TERMUX_FILES_DIR_PATH:Ljava/lang/String; = "/data/data/com.termux.alpine/files"

.field public static final TERMUX_FILE_SHARE_URI_AUTHORITY:Ljava/lang/String; = "com.termux.alpine.files"

.field public static final TERMUX_FLOAT_APP_NAME:Ljava/lang/String; = "Termux:Float"

.field public static final TERMUX_FLOAT_APP_NOTIFICATION_CHANNEL_ID:Ljava/lang/String; = "termux_float_notification_channel"

.field public static final TERMUX_FLOAT_APP_NOTIFICATION_CHANNEL_NAME:Ljava/lang/String; = "Termux:Float App"

.field public static final TERMUX_FLOAT_APP_NOTIFICATION_ID:I = 0x53b

.field public static final TERMUX_FLOAT_DEFAULT_PREFERENCES_FILE_BASENAME_WITHOUT_EXTENSION:Ljava/lang/String; = "com.termux.window_preferences"

.field public static final TERMUX_FLOAT_FDROID_PACKAGE_URL:Ljava/lang/String; = "https://f-droid.org/en/packages/com.termux.window"

.field public static final TERMUX_FLOAT_GITHUB_ISSUES_REPO_URL:Ljava/lang/String; = "https://github.com/termux/termux-float/issues"

.field public static final TERMUX_FLOAT_GITHUB_REPO_NAME:Ljava/lang/String; = "termux-float"

.field public static final TERMUX_FLOAT_GITHUB_REPO_URL:Ljava/lang/String; = "https://github.com/termux/termux-float"

.field public static final TERMUX_FLOAT_PACKAGE_NAME:Ljava/lang/String; = "com.termux.window"

.field public static final TERMUX_FLOAT_PROPERTIES_PRIMARY_FILE:Ljava/io/File;

.field public static final TERMUX_FLOAT_PROPERTIES_PRIMARY_FILE_PATH:Ljava/lang/String; = "/data/data/com.termux.alpine/files/home/.termux/termux.float.properties"

.field public static final TERMUX_FLOAT_PROPERTIES_SECONDARY_FILE:Ljava/io/File;

.field public static final TERMUX_FLOAT_PROPERTIES_SECONDARY_FILE_PATH:Ljava/lang/String; = "/data/data/com.termux.alpine/files/home/.config/termux/termux.float.properties"

.field public static final TERMUX_FONT_FILE:Ljava/io/File;

.field public static final TERMUX_FONT_FILE_PATH:Ljava/lang/String; = "/data/data/com.termux.alpine/files/home/.termux/font.ttf"

.field public static final TERMUX_GAME_PACKAGES_GITHUB_ISSUES_REPO_URL:Ljava/lang/String; = "https://github.com/termux/game-packages/issues"

.field public static final TERMUX_GAME_PACKAGES_GITHUB_REPO_NAME:Ljava/lang/String; = "game-packages"

.field public static final TERMUX_GAME_PACKAGES_GITHUB_REPO_URL:Ljava/lang/String; = "https://github.com/termux/game-packages"

.field public static final TERMUX_GITHUB_ISSUES_REPO_URL:Ljava/lang/String; = "https://github.com/termux/termux-app/issues"

.field public static final TERMUX_GITHUB_ORGANIZATION_NAME:Ljava/lang/String; = "termux"

.field public static final TERMUX_GITHUB_ORGANIZATION_URL:Ljava/lang/String; = "https://github.com/termux"

.field public static final TERMUX_GITHUB_REPO_NAME:Ljava/lang/String; = "termux-app"

.field public static final TERMUX_GITHUB_REPO_URL:Ljava/lang/String; = "https://github.com/termux/termux-app"

.field public static final TERMUX_GITHUB_WIKI_REPO_URL:Ljava/lang/String; = "https://github.com/termux/termux-app/wiki"

.field public static final TERMUX_HOME_DIR:Ljava/io/File;

.field public static final TERMUX_HOME_DIR_PATH:Ljava/lang/String; = "/data/data/com.termux.alpine/files/home"

.field public static final TERMUX_INCLUDE_PREFIX_DIR:Ljava/io/File;

.field public static final TERMUX_INCLUDE_PREFIX_DIR_PATH:Ljava/lang/String; = "/data/data/com.termux.alpine/files/usr/include"

.field public static final TERMUX_INTERNAL_PRIVATE_APP_DATA_DIR:Ljava/io/File;

.field public static final TERMUX_INTERNAL_PRIVATE_APP_DATA_DIR_PATH:Ljava/lang/String; = "/data/data/com.termux"

.field public static final TERMUX_LIBEXEC_PREFIX_DIR:Ljava/io/File;

.field public static final TERMUX_LIBEXEC_PREFIX_DIR_PATH:Ljava/lang/String; = "/data/data/com.termux.alpine/files/usr/libexec"

.field public static final TERMUX_LIB_PREFIX_DIR:Ljava/io/File;

.field public static final TERMUX_LIB_PREFIX_DIR_PATH:Ljava/lang/String; = "/data/data/com.termux.alpine/files/usr/lib"

.field public static final TERMUX_PACKAGES_GITHUB_ISSUES_REPO_URL:Ljava/lang/String; = "https://github.com/termux/termux-packages/issues"

.field public static final TERMUX_PACKAGES_GITHUB_REPO_NAME:Ljava/lang/String; = "termux-packages"

.field public static final TERMUX_PACKAGES_GITHUB_REPO_URL:Ljava/lang/String; = "https://github.com/termux/termux-packages"

.field public static final TERMUX_PACKAGES_GITHUB_WIKI_REPO_URL:Ljava/lang/String; = "https://github.com/termux/termux-packages/wiki"

.field public static final TERMUX_PACKAGE_NAME:Ljava/lang/String; = "com.termux.alpine"

.field public static final TERMUX_PLUGIN_APP_NAMES_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final TERMUX_PLUGIN_APP_PACKAGE_NAMES_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final TERMUX_PLUGIN_COMMAND_ERRORS_NOTIFICATION_CHANNEL_ID:Ljava/lang/String; = "termux_plugin_command_errors_notification_channel"

.field public static final TERMUX_PLUGIN_COMMAND_ERRORS_NOTIFICATION_CHANNEL_NAME:Ljava/lang/String; = "Termux Plugin Commands Errors"

.field public static final TERMUX_PREFIX_DIR:Ljava/io/File;

.field public static final TERMUX_PREFIX_DIR_PATH:Ljava/lang/String; = "/data/data/com.termux.alpine/files/usr"

.field public static final TERMUX_PROPERTIES_PRIMARY_FILE:Ljava/io/File;

.field public static final TERMUX_PROPERTIES_PRIMARY_FILE_PATH:Ljava/lang/String; = "/data/data/com.termux.alpine/files/home/.termux/termux.properties"

.field public static final TERMUX_PROPERTIES_SECONDARY_FILE:Ljava/io/File;

.field public static final TERMUX_PROPERTIES_SECONDARY_FILE_PATH:Ljava/lang/String; = "/data/data/com.termux.alpine/files/home/.config/termux/termux.properties"

.field public static final TERMUX_REDDIT_SUBREDDIT:Ljava/lang/String; = "r/termux"

.field public static final TERMUX_REDDIT_SUBREDDIT_URL:Ljava/lang/String; = "https://www.reddit.com/r/termux"

.field public static final TERMUX_ROOT_PACKAGES_GITHUB_ISSUES_REPO_URL:Ljava/lang/String; = "https://github.com/termux/termux-root-packages/issues"

.field public static final TERMUX_ROOT_PACKAGES_GITHUB_REPO_NAME:Ljava/lang/String; = "termux-root-packages"

.field public static final TERMUX_ROOT_PACKAGES_GITHUB_REPO_URL:Ljava/lang/String; = "https://github.com/termux/termux-root-packages"

.field public static final TERMUX_RUN_COMMAND_NOTIFICATION_CHANNEL_ID:Ljava/lang/String; = "termux_run_command_notification_channel"

.field public static final TERMUX_RUN_COMMAND_NOTIFICATION_CHANNEL_NAME:Ljava/lang/String; = "Termux RunCommandService"

.field public static final TERMUX_RUN_COMMAND_NOTIFICATION_ID:I = 0x53a

.field public static final TERMUX_SCIENCE_PACKAGES_GITHUB_ISSUES_REPO_URL:Ljava/lang/String; = "https://github.com/termux/science-packages/issues"

.field public static final TERMUX_SCIENCE_PACKAGES_GITHUB_REPO_NAME:Ljava/lang/String; = "science-packages"

.field public static final TERMUX_SCIENCE_PACKAGES_GITHUB_REPO_URL:Ljava/lang/String; = "https://github.com/termux/science-packages"

.field public static final TERMUX_SHARE_PREFIX_DIR:Ljava/io/File;

.field public static final TERMUX_SHARE_PREFIX_DIR_PATH:Ljava/lang/String; = "/data/data/com.termux.alpine/files/usr/share"

.field public static final TERMUX_SHORTCUT_SCRIPTS_DIR:Ljava/io/File;

.field public static final TERMUX_SHORTCUT_SCRIPTS_DIR_PATH:Ljava/lang/String; = "/data/data/com.termux.alpine/files/home/.shortcuts"

.field public static final TERMUX_SHORTCUT_SCRIPT_ICONS_DIR:Ljava/io/File;

.field public static final TERMUX_SHORTCUT_SCRIPT_ICONS_DIR_BASENAME:Ljava/lang/String; = "icons"

.field public static final TERMUX_SHORTCUT_SCRIPT_ICONS_DIR_PATH:Ljava/lang/String; = "/data/data/com.termux.alpine/files/home/.shortcuts/icons"

.field public static final TERMUX_SHORTCUT_TASKS_SCRIPTS_DIR:Ljava/io/File;

.field public static final TERMUX_SHORTCUT_TASKS_SCRIPTS_DIR_BASENAME:Ljava/lang/String; = "tasks"

.field public static final TERMUX_SHORTCUT_TASKS_SCRIPTS_DIR_PATH:Ljava/lang/String; = "/data/data/com.termux.alpine/files/home/.shortcuts/tasks"

.field public static final TERMUX_SITE:Ljava/lang/String; = "Termux Site"

.field public static final TERMUX_SITE_URL:Ljava/lang/String; = "https://termux.dev"

.field public static final TERMUX_STAGING_PREFIX_DIR:Ljava/io/File;

.field public static final TERMUX_STAGING_PREFIX_DIR_PATH:Ljava/lang/String; = "/data/data/com.termux.alpine/files/usr-staging"

.field public static final TERMUX_STORAGE_HOME_DIR:Ljava/io/File;

.field public static final TERMUX_STORAGE_HOME_DIR_PATH:Ljava/lang/String; = "/data/data/com.termux.alpine/files/home/storage"

.field public static final TERMUX_STYLING_APP_NAME:Ljava/lang/String; = "Termux:Styling"

.field public static final TERMUX_STYLING_DEFAULT_PREFERENCES_FILE_BASENAME_WITHOUT_EXTENSION:Ljava/lang/String; = "com.termux.styling_preferences"

.field public static final TERMUX_STYLING_FDROID_PACKAGE_URL:Ljava/lang/String; = "https://f-droid.org/en/packages/com.termux.styling"

.field public static final TERMUX_STYLING_GITHUB_ISSUES_REPO_URL:Ljava/lang/String; = "https://github.com/termux/termux-styling/issues"

.field public static final TERMUX_STYLING_GITHUB_REPO_NAME:Ljava/lang/String; = "termux-styling"

.field public static final TERMUX_STYLING_GITHUB_REPO_URL:Ljava/lang/String; = "https://github.com/termux/termux-styling"

.field public static final TERMUX_STYLING_PACKAGE_NAME:Ljava/lang/String; = "com.termux.styling"

.field public static final TERMUX_SUPPORT_EMAIL_MAILTO_URL:Ljava/lang/String; = "mailto:support@termux.dev"

.field public static final TERMUX_SUPPORT_EMAIL_URL:Ljava/lang/String; = "support@termux.dev"

.field public static final TERMUX_TASKER_APP_NAME:Ljava/lang/String; = "Termux:Tasker"

.field public static final TERMUX_TASKER_DEFAULT_PREFERENCES_FILE_BASENAME_WITHOUT_EXTENSION:Ljava/lang/String; = "com.termux.tasker_preferences"

.field public static final TERMUX_TASKER_FDROID_PACKAGE_URL:Ljava/lang/String; = "https://f-droid.org/en/packages/com.termux.tasker"

.field public static final TERMUX_TASKER_GITHUB_ISSUES_REPO_URL:Ljava/lang/String; = "https://github.com/termux/termux-tasker/issues"

.field public static final TERMUX_TASKER_GITHUB_REPO_NAME:Ljava/lang/String; = "termux-tasker"

.field public static final TERMUX_TASKER_GITHUB_REPO_URL:Ljava/lang/String; = "https://github.com/termux/termux-tasker"

.field public static final TERMUX_TASKER_PACKAGE_NAME:Ljava/lang/String; = "com.termux.tasker"

.field public static final TERMUX_TASKER_SCRIPTS_DIR:Ljava/io/File;

.field public static final TERMUX_TASKER_SCRIPTS_DIR_PATH:Ljava/lang/String; = "/data/data/com.termux.alpine/files/home/.termux/tasker"

.field public static final TERMUX_TMP_PREFIX_DIR:Ljava/io/File;

.field public static final TERMUX_TMP_PREFIX_DIR_PATH:Ljava/lang/String; = "/data/data/com.termux.alpine/files/usr/tmp"

.field public static final TERMUX_UNSTABLE_PACKAGES_GITHUB_ISSUES_REPO_URL:Ljava/lang/String; = "https://github.com/termux/unstable-packages/issues"

.field public static final TERMUX_UNSTABLE_PACKAGES_GITHUB_REPO_NAME:Ljava/lang/String; = "unstable-packages"

.field public static final TERMUX_UNSTABLE_PACKAGES_GITHUB_REPO_URL:Ljava/lang/String; = "https://github.com/termux/unstable-packages"

.field public static final TERMUX_VAR_PREFIX_DIR:Ljava/io/File;

.field public static final TERMUX_VAR_PREFIX_DIR_PATH:Ljava/lang/String; = "/data/data/com.termux.alpine/files/usr/var"

.field public static final TERMUX_WIDGET_APP_NAME:Ljava/lang/String; = "Termux:Widget"

.field public static final TERMUX_WIDGET_DEFAULT_PREFERENCES_FILE_BASENAME_WITHOUT_EXTENSION:Ljava/lang/String; = "com.termux.widget_preferences"

.field public static final TERMUX_WIDGET_FDROID_PACKAGE_URL:Ljava/lang/String; = "https://f-droid.org/en/packages/com.termux.widget"

.field public static final TERMUX_WIDGET_GITHUB_ISSUES_REPO_URL:Ljava/lang/String; = "https://github.com/termux/termux-widget/issues"

.field public static final TERMUX_WIDGET_GITHUB_REPO_NAME:Ljava/lang/String; = "termux-widget"

.field public static final TERMUX_WIDGET_GITHUB_REPO_URL:Ljava/lang/String; = "https://github.com/termux/termux-widget"

.field public static final TERMUX_WIDGET_PACKAGE_NAME:Ljava/lang/String; = "com.termux.widget"

.field public static final TERMUX_WIKI:Ljava/lang/String; = "Termux Wiki"

.field public static final TERMUX_WIKI_URL:Ljava/lang/String; = "https://wiki.termux.com"

.field public static final TERMUX_X11_PACKAGES_GITHUB_ISSUES_REPO_URL:Ljava/lang/String; = "https://github.com/termux/x11-packages/issues"

.field public static final TERMUX_X11_PACKAGES_GITHUB_REPO_NAME:Ljava/lang/String; = "x11-packages"

.field public static final TERMUX_X11_PACKAGES_GITHUB_REPO_URL:Ljava/lang/String; = "https://github.com/termux/x11-packages"


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 383
    const-string v0, "Termux:API"

    const-string v1, "Termux:Boot"

    const-string v2, "Termux:Float"

    const-string v3, "Termux:Styling"

    const-string v4, "Termux:Tasker"

    const-string v5, "Termux:Widget"

    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/termux/shared/termux/TermuxConstants;->TERMUX_PLUGIN_APP_NAMES_LIST:Ljava/util/List;

    .line 391
    const-string v1, "com.termux.api"

    const-string v2, "com.termux.boot"

    const-string v3, "com.termux.window"

    const-string v4, "com.termux.styling"

    const-string v5, "com.termux.tasker"

    const-string v6, "com.termux.widget"

    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/termux/shared/termux/TermuxConstants;->TERMUX_PLUGIN_APP_PACKAGE_NAMES_LIST:Ljava/util/List;

    .line 536
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/data/com.termux"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/termux/shared/termux/TermuxConstants;->TERMUX_INTERNAL_PRIVATE_APP_DATA_DIR:Ljava/io/File;

    .line 543
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/data/com.termux.alpine/files"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/termux/shared/termux/TermuxConstants;->TERMUX_FILES_DIR:Ljava/io/File;

    .line 550
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/data/com.termux.alpine/files/usr"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/termux/shared/termux/TermuxConstants;->TERMUX_PREFIX_DIR:Ljava/io/File;

    .line 556
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/data/com.termux.alpine/files/usr/bin"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/termux/shared/termux/TermuxConstants;->TERMUX_BIN_PREFIX_DIR:Ljava/io/File;

    .line 562
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/data/com.termux.alpine/files/usr/etc"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/termux/shared/termux/TermuxConstants;->TERMUX_ETC_PREFIX_DIR:Ljava/io/File;

    .line 568
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/data/com.termux.alpine/files/usr/include"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/termux/shared/termux/TermuxConstants;->TERMUX_INCLUDE_PREFIX_DIR:Ljava/io/File;

    .line 574
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/data/com.termux.alpine/files/usr/lib"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/termux/shared/termux/TermuxConstants;->TERMUX_LIB_PREFIX_DIR:Ljava/io/File;

    .line 580
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/data/com.termux.alpine/files/usr/libexec"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/termux/shared/termux/TermuxConstants;->TERMUX_LIBEXEC_PREFIX_DIR:Ljava/io/File;

    .line 586
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/data/com.termux.alpine/files/usr/share"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/termux/shared/termux/TermuxConstants;->TERMUX_SHARE_PREFIX_DIR:Ljava/io/File;

    .line 592
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/data/com.termux.alpine/files/usr/tmp"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/termux/shared/termux/TermuxConstants;->TERMUX_TMP_PREFIX_DIR:Ljava/io/File;

    .line 598
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/data/com.termux.alpine/files/usr/var"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/termux/shared/termux/TermuxConstants;->TERMUX_VAR_PREFIX_DIR:Ljava/io/File;

    .line 605
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/data/com.termux.alpine/files/usr-staging"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/termux/shared/termux/TermuxConstants;->TERMUX_STAGING_PREFIX_DIR:Ljava/io/File;

    .line 612
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/data/com.termux.alpine/files/home"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/termux/shared/termux/TermuxConstants;->TERMUX_HOME_DIR:Ljava/io/File;

    .line 618
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/data/com.termux.alpine/files/home/.config/termux"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/termux/shared/termux/TermuxConstants;->TERMUX_CONFIG_HOME_DIR:Ljava/io/File;

    .line 624
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/data/com.termux.alpine/files/home/.termux"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/termux/shared/termux/TermuxConstants;->TERMUX_DATA_HOME_DIR:Ljava/io/File;

    .line 630
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/data/com.termux.alpine/files/home/storage"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/termux/shared/termux/TermuxConstants;->TERMUX_STORAGE_HOME_DIR:Ljava/io/File;

    .line 665
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/data/com.termux.alpine/files/home/.termux/termux.properties"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/termux/shared/termux/TermuxConstants;->TERMUX_PROPERTIES_PRIMARY_FILE:Ljava/io/File;

    .line 670
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/data/com.termux.alpine/files/home/.config/termux/termux.properties"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/termux/shared/termux/TermuxConstants;->TERMUX_PROPERTIES_SECONDARY_FILE:Ljava/io/File;

    .line 676
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/data/com.termux.alpine/files/home/.termux/termux.float.properties"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/termux/shared/termux/TermuxConstants;->TERMUX_FLOAT_PROPERTIES_PRIMARY_FILE:Ljava/io/File;

    .line 681
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/data/com.termux.alpine/files/home/.config/termux/termux.float.properties"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/termux/shared/termux/TermuxConstants;->TERMUX_FLOAT_PROPERTIES_SECONDARY_FILE:Ljava/io/File;

    .line 687
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/data/com.termux.alpine/files/home/.termux/colors.properties"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/termux/shared/termux/TermuxConstants;->TERMUX_COLOR_PROPERTIES_FILE:Ljava/io/File;

    .line 692
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/data/com.termux.alpine/files/home/.termux/font.ttf"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/termux/shared/termux/TermuxConstants;->TERMUX_FONT_FILE:Ljava/io/File;

    .line 712
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/data/com.termux.alpine/files/home/.termux/boot"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/termux/shared/termux/TermuxConstants;->TERMUX_BOOT_SCRIPTS_DIR:Ljava/io/File;

    .line 719
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/data/com.termux.alpine/files/home/.shortcuts"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/termux/shared/termux/TermuxConstants;->TERMUX_SHORTCUT_SCRIPTS_DIR:Ljava/io/File;

    .line 729
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/data/com.termux.alpine/files/home/.shortcuts/tasks"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/termux/shared/termux/TermuxConstants;->TERMUX_SHORTCUT_TASKS_SCRIPTS_DIR:Ljava/io/File;

    .line 740
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/data/com.termux.alpine/files/home/.shortcuts/icons"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/termux/shared/termux/TermuxConstants;->TERMUX_SHORTCUT_SCRIPT_ICONS_DIR:Ljava/io/File;

    .line 747
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/data/com.termux.alpine/files/home/.termux/tasker"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/termux/shared/termux/TermuxConstants;->TERMUX_TASKER_SCRIPTS_DIR:Ljava/io/File;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 255
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
