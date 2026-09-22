.class public final Lcom/termux/shared/termux/TermuxConstants$TERMUX_APP$TERMUX_SERVICE;
.super Ljava/lang/Object;
.source "TermuxConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/termux/shared/termux/TermuxConstants$TERMUX_APP;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TERMUX_SERVICE"
.end annotation


# static fields
.field public static final ACTION_SERVICE_EXECUTE:Ljava/lang/String; = "com.termux.service_execute"

.field public static final ACTION_STOP_SERVICE:Ljava/lang/String; = "com.termux.service_stop"

.field public static final ACTION_WAKE_LOCK:Ljava/lang/String; = "com.termux.service_wake_lock"

.field public static final ACTION_WAKE_UNLOCK:Ljava/lang/String; = "com.termux.service_wake_unlock"

.field public static final EXTRA_ARGUMENTS:Ljava/lang/String; = "com.termux.execute.arguments"

.field public static final EXTRA_BACKGROUND:Ljava/lang/String; = "com.termux.execute.background"

.field public static final EXTRA_BACKGROUND_CUSTOM_LOG_LEVEL:Ljava/lang/String; = "com.termux.execute.background_custom_log_level"

.field public static final EXTRA_COMMAND_DESCRIPTION:Ljava/lang/String; = "com.termux.execute.command_description"

.field public static final EXTRA_COMMAND_HELP:Ljava/lang/String; = "com.termux.execute.command_help"

.field public static final EXTRA_COMMAND_LABEL:Ljava/lang/String; = "com.termux.execute.command_label"

.field public static final EXTRA_PENDING_INTENT:Ljava/lang/String; = "pendingIntent"

.field public static final EXTRA_PLUGIN_API_HELP:Ljava/lang/String; = "com.termux.execute.plugin_api_help"

.field public static final EXTRA_PLUGIN_RESULT_BUNDLE:Ljava/lang/String; = "result"

.field public static final EXTRA_PLUGIN_RESULT_BUNDLE_ERR:Ljava/lang/String; = "err"

.field public static final EXTRA_PLUGIN_RESULT_BUNDLE_ERRMSG:Ljava/lang/String; = "errmsg"

.field public static final EXTRA_PLUGIN_RESULT_BUNDLE_EXIT_CODE:Ljava/lang/String; = "exitCode"

.field public static final EXTRA_PLUGIN_RESULT_BUNDLE_STDERR:Ljava/lang/String; = "stderr"

.field public static final EXTRA_PLUGIN_RESULT_BUNDLE_STDERR_ORIGINAL_LENGTH:Ljava/lang/String; = "stderr_original_length"

.field public static final EXTRA_PLUGIN_RESULT_BUNDLE_STDOUT:Ljava/lang/String; = "stdout"

.field public static final EXTRA_PLUGIN_RESULT_BUNDLE_STDOUT_ORIGINAL_LENGTH:Ljava/lang/String; = "stdout_original_length"

.field public static final EXTRA_RESULT_DIRECTORY:Ljava/lang/String; = "com.termux.execute.result_directory"

.field public static final EXTRA_RESULT_FILES_SUFFIX:Ljava/lang/String; = "com.termux.execute.result_files_suffix"

.field public static final EXTRA_RESULT_FILE_BASENAME:Ljava/lang/String; = "com.termux.execute.result_file_basename"

.field public static final EXTRA_RESULT_FILE_ERROR_FORMAT:Ljava/lang/String; = "com.termux.execute.result_file_error_format"

.field public static final EXTRA_RESULT_FILE_OUTPUT_FORMAT:Ljava/lang/String; = "com.termux.execute.result_file_output_format"

.field public static final EXTRA_RESULT_SINGLE_FILE:Ljava/lang/String; = "com.termux.execute.result_single_file"

.field public static final EXTRA_SESSION_ACTION:Ljava/lang/String; = "com.termux.execute.session_action"

.field public static final EXTRA_STDIN:Ljava/lang/String; = "com.termux.execute.stdin"

.field public static final EXTRA_WORKDIR:Ljava/lang/String; = "com.termux.execute.cwd"

.field public static final MAX_VALUE_EXTRA_SESSION_ACTION:I = 0x3

.field public static final MIN_VALUE_EXTRA_SESSION_ACTION:I = 0x0

.field public static final URI_SCHEME_SERVICE_EXECUTE:Ljava/lang/String; = "com.termux.file"

.field public static final VALUE_EXTRA_SESSION_ACTION_KEEP_CURRENT_SESSION_AND_DONT_OPEN_ACTIVITY:I = 0x3

.field public static final VALUE_EXTRA_SESSION_ACTION_KEEP_CURRENT_SESSION_AND_OPEN_ACTIVITY:I = 0x1

.field public static final VALUE_EXTRA_SESSION_ACTION_SWITCH_TO_NEW_SESSION_AND_DONT_OPEN_ACTIVITY:I = 0x2

.field public static final VALUE_EXTRA_SESSION_ACTION_SWITCH_TO_NEW_SESSION_AND_OPEN_ACTIVITY:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 870
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
