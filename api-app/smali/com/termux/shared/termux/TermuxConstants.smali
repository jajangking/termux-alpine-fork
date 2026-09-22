.class public abstract Lcom/termux/shared/termux/TermuxConstants;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final TERMUX_APPS_DIR:Ljava/io/File;

.field public static final TERMUX_BIN_PREFIX_DIR:Ljava/io/File;

.field public static final TERMUX_BOOT_SCRIPTS_DIR:Ljava/io/File;

.field public static final TERMUX_COLOR_PROPERTIES_FILE:Ljava/io/File;

.field public static final TERMUX_CONFIG_HOME_DIR:Ljava/io/File;

.field public static final TERMUX_CONFIG_PREFIX_DIR:Ljava/io/File;

.field public static final TERMUX_DATA_HOME_DIR:Ljava/io/File;

.field public static final TERMUX_ETC_PREFIX_DIR:Ljava/io/File;

.field public static final TERMUX_FILES_DIR:Ljava/io/File;

.field public static final TERMUX_FLOAT_PROPERTIES_FILE_PATHS_LIST:Ljava/util/List;

.field public static final TERMUX_FLOAT_PROPERTIES_PRIMARY_FILE:Ljava/io/File;

.field public static final TERMUX_FLOAT_PROPERTIES_SECONDARY_FILE:Ljava/io/File;

.field public static final TERMUX_FONT_FILE:Ljava/io/File;

.field public static final TERMUX_HOME_DIR:Ljava/io/File;

.field public static final TERMUX_INCLUDE_PREFIX_DIR:Ljava/io/File;

.field public static final TERMUX_INTERNAL_PRIVATE_APP_DATA_DIR:Ljava/io/File;

.field public static final TERMUX_LIBEXEC_PREFIX_DIR:Ljava/io/File;

.field public static final TERMUX_LIB_PREFIX_DIR:Ljava/io/File;

.field public static final TERMUX_PLUGIN_APP_NAMES_LIST:Ljava/util/List;

.field public static final TERMUX_PLUGIN_APP_PACKAGE_NAMES_LIST:Ljava/util/List;

.field public static final TERMUX_PREFIX_DIR:Ljava/io/File;

.field public static final TERMUX_PREFIX_DIR_IGNORED_SUB_FILES_PATHS_TO_CONSIDER_AS_EMPTY:Ljava/util/List;

.field public static final TERMUX_PROPERTIES_FILE_PATHS_LIST:Ljava/util/List;

.field public static final TERMUX_PROPERTIES_PRIMARY_FILE:Ljava/io/File;

.field public static final TERMUX_PROPERTIES_SECONDARY_FILE:Ljava/io/File;

.field public static final TERMUX_SHARE_PREFIX_DIR:Ljava/io/File;

.field public static final TERMUX_SHORTCUT_SCRIPTS_DIR:Ljava/io/File;

.field public static final TERMUX_SHORTCUT_SCRIPT_ICONS_DIR:Ljava/io/File;

.field public static final TERMUX_SHORTCUT_TASKS_SCRIPTS_DIR:Ljava/io/File;

.field public static final TERMUX_STAGING_PREFIX_DIR:Ljava/io/File;

.field public static final TERMUX_STORAGE_HOME_DIR:Ljava/io/File;

.field public static final TERMUX_TASKER_SCRIPTS_DIR:Ljava/io/File;

.field public static final TERMUX_TMP_PREFIX_DIR:Ljava/io/File;

.field public static final TERMUX_VAR_PREFIX_DIR:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 454
    const-string v4, "Termux:Tasker"

    const-string v5, "Termux:Widget"

    const-string v0, "Termux:API"

    const-string v1, "Termux:Boot"

    const-string v2, "Termux:Float"

    const-string v3, "Termux:Styling"

    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/termux/shared/termux/TermuxConstants;->TERMUX_PLUGIN_APP_NAMES_LIST:Ljava/util/List;

    .line 462
    const-string v5, "com.termux.tasker"

    const-string v6, "com.termux.widget"

    const-string v1, "com.termux.api"

    const-string v2, "com.termux.boot"

    const-string v3, "com.termux.window"

    const-string v4, "com.termux.styling"

    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/termux/shared/termux/TermuxConstants;->TERMUX_PLUGIN_APP_PACKAGE_NAMES_LIST:Ljava/util/List;

    .line 583
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/data/com.termux"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/termux/shared/termux/TermuxConstants;->TERMUX_INTERNAL_PRIVATE_APP_DATA_DIR:Ljava/io/File;

    .line 590
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/data/com.termux/files"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/termux/shared/termux/TermuxConstants;->TERMUX_FILES_DIR:Ljava/io/File;

    .line 597
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/data/com.termux/files/usr"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/termux/shared/termux/TermuxConstants;->TERMUX_PREFIX_DIR:Ljava/io/File;

    .line 603
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/data/com.termux/files/usr/bin"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/termux/shared/termux/TermuxConstants;->TERMUX_BIN_PREFIX_DIR:Ljava/io/File;

    .line 609
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/data/com.termux/files/usr/etc"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/termux/shared/termux/TermuxConstants;->TERMUX_ETC_PREFIX_DIR:Ljava/io/File;

    .line 615
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/data/com.termux/files/usr/include"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/termux/shared/termux/TermuxConstants;->TERMUX_INCLUDE_PREFIX_DIR:Ljava/io/File;

    .line 621
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/data/com.termux/files/usr/lib"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/termux/shared/termux/TermuxConstants;->TERMUX_LIB_PREFIX_DIR:Ljava/io/File;

    .line 627
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/data/com.termux/files/usr/libexec"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/termux/shared/termux/TermuxConstants;->TERMUX_LIBEXEC_PREFIX_DIR:Ljava/io/File;

    .line 633
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/data/com.termux/files/usr/share"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/termux/shared/termux/TermuxConstants;->TERMUX_SHARE_PREFIX_DIR:Ljava/io/File;

    .line 639
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/data/com.termux/files/usr/tmp"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/termux/shared/termux/TermuxConstants;->TERMUX_TMP_PREFIX_DIR:Ljava/io/File;

    .line 645
    new-instance v0, Ljava/io/File;

    const-string v2, "/data/data/com.termux/files/usr/var"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/termux/shared/termux/TermuxConstants;->TERMUX_VAR_PREFIX_DIR:Ljava/io/File;

    .line 652
    new-instance v0, Ljava/io/File;

    const-string v2, "/data/data/com.termux/files/usr-staging"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/termux/shared/termux/TermuxConstants;->TERMUX_STAGING_PREFIX_DIR:Ljava/io/File;

    .line 659
    new-instance v0, Ljava/io/File;

    const-string v2, "/data/data/com.termux/files/home"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/termux/shared/termux/TermuxConstants;->TERMUX_HOME_DIR:Ljava/io/File;

    .line 665
    new-instance v0, Ljava/io/File;

    const-string v2, "/data/data/com.termux/files/home/.config/termux"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/termux/shared/termux/TermuxConstants;->TERMUX_CONFIG_HOME_DIR:Ljava/io/File;

    .line 670
    new-instance v0, Ljava/io/File;

    const-string v2, "/data/data/com.termux/files/usr/etc/termux"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/termux/shared/termux/TermuxConstants;->TERMUX_CONFIG_PREFIX_DIR:Ljava/io/File;

    .line 676
    new-instance v0, Ljava/io/File;

    const-string v2, "/data/data/com.termux/files/home/.termux"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/termux/shared/termux/TermuxConstants;->TERMUX_DATA_HOME_DIR:Ljava/io/File;

    .line 682
    new-instance v0, Ljava/io/File;

    const-string v2, "/data/data/com.termux/files/home/storage"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/termux/shared/termux/TermuxConstants;->TERMUX_STORAGE_HOME_DIR:Ljava/io/File;

    .line 689
    new-instance v0, Ljava/io/File;

    const-string v2, "/data/data/com.termux/files/apps"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/termux/shared/termux/TermuxConstants;->TERMUX_APPS_DIR:Ljava/io/File;

    .line 693
    const-string v0, "/data/data/com.termux/files/usr/etc/termux/termux.env.tmp"

    const-string v2, "/data/data/com.termux/files/usr/etc/termux/termux.env"

    filled-new-array {v1, v0, v2}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/termux/shared/termux/TermuxConstants;->TERMUX_PREFIX_DIR_IGNORED_SUB_FILES_PATHS_TO_CONSIDER_AS_EMPTY:Ljava/util/List;

    .line 728
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/data/com.termux/files/home/.termux/termux.properties"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/termux/shared/termux/TermuxConstants;->TERMUX_PROPERTIES_PRIMARY_FILE:Ljava/io/File;

    .line 733
    new-instance v0, Ljava/io/File;

    const-string v2, "/data/data/com.termux/files/home/.config/termux/termux.properties"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/termux/shared/termux/TermuxConstants;->TERMUX_PROPERTIES_SECONDARY_FILE:Ljava/io/File;

    .line 739
    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/termux/shared/termux/TermuxConstants;->TERMUX_PROPERTIES_FILE_PATHS_LIST:Ljava/util/List;

    .line 748
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/data/com.termux/files/home/.termux/termux.float.properties"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/termux/shared/termux/TermuxConstants;->TERMUX_FLOAT_PROPERTIES_PRIMARY_FILE:Ljava/io/File;

    .line 753
    new-instance v0, Ljava/io/File;

    const-string v2, "/data/data/com.termux/files/home/.config/termux/termux.float.properties"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/termux/shared/termux/TermuxConstants;->TERMUX_FLOAT_PROPERTIES_SECONDARY_FILE:Ljava/io/File;

    .line 759
    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/termux/shared/termux/TermuxConstants;->TERMUX_FLOAT_PROPERTIES_FILE_PATHS_LIST:Ljava/util/List;

    .line 768
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/data/com.termux/files/home/.termux/colors.properties"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/termux/shared/termux/TermuxConstants;->TERMUX_COLOR_PROPERTIES_FILE:Ljava/io/File;

    .line 773
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/data/com.termux/files/home/.termux/font.ttf"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/termux/shared/termux/TermuxConstants;->TERMUX_FONT_FILE:Ljava/io/File;

    .line 799
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/data/com.termux/files/home/.termux/boot"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/termux/shared/termux/TermuxConstants;->TERMUX_BOOT_SCRIPTS_DIR:Ljava/io/File;

    .line 806
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/data/com.termux/files/home/.shortcuts"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/termux/shared/termux/TermuxConstants;->TERMUX_SHORTCUT_SCRIPTS_DIR:Ljava/io/File;

    .line 816
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/data/com.termux/files/home/.shortcuts/tasks"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/termux/shared/termux/TermuxConstants;->TERMUX_SHORTCUT_TASKS_SCRIPTS_DIR:Ljava/io/File;

    .line 827
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/data/com.termux/files/home/.shortcuts/icons"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/termux/shared/termux/TermuxConstants;->TERMUX_SHORTCUT_SCRIPT_ICONS_DIR:Ljava/io/File;

    .line 834
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/data/com.termux/files/home/.termux/tasker"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/termux/shared/termux/TermuxConstants;->TERMUX_TASKER_SCRIPTS_DIR:Ljava/io/File;

    return-void
.end method
