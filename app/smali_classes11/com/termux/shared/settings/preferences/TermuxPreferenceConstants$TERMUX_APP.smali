.class public final Lcom/termux/shared/settings/preferences/TermuxPreferenceConstants$TERMUX_APP;
.super Ljava/lang/Object;
.source "TermuxPreferenceConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/termux/shared/settings/preferences/TermuxPreferenceConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TERMUX_APP"
.end annotation


# static fields
.field public static final DEFAULT_TERMINAL_MARGIN_ADJUSTMENT:Z = true

.field public static final DEFAULT_VALUE_CRASH_REPORT_NOTIFICATIONS_ENABLED:Z = true

.field public static final DEFAULT_VALUE_KEEP_SCREEN_ON:Z = false

.field public static final DEFAULT_VALUE_KEY_LAST_NOTIFICATION_ID:I = 0x0

.field public static final DEFAULT_VALUE_KEY_SOFT_KEYBOARD_ENABLED:Z = true

.field public static final DEFAULT_VALUE_KEY_SOFT_KEYBOARD_ENABLED_ONLY_IF_NO_HARDWARE:Z = false

.field public static final DEFAULT_VALUE_PLUGIN_ERROR_NOTIFICATIONS_ENABLED:Z = true

.field public static final DEFAULT_VALUE_SHOW_TERMINAL_TOOLBAR:Z = true

.field public static final DEFAULT_VALUE_TERMINAL_VIEW_KEY_LOGGING_ENABLED:Z = false

.field public static final KEY_CRASH_REPORT_NOTIFICATIONS_ENABLED:Ljava/lang/String; = "crash_report_notifications_enabled"

.field public static final KEY_CURRENT_SESSION:Ljava/lang/String; = "current_session"

.field public static final KEY_FONTSIZE:Ljava/lang/String; = "fontsize"

.field public static final KEY_KEEP_SCREEN_ON:Ljava/lang/String; = "screen_always_on"

.field public static final KEY_LAST_NOTIFICATION_ID:Ljava/lang/String; = "last_notification_id"

.field public static final KEY_LOG_LEVEL:Ljava/lang/String; = "log_level"

.field public static final KEY_PLUGIN_ERROR_NOTIFICATIONS_ENABLED:Ljava/lang/String; = "plugin_error_notifications_enabled"

.field public static final KEY_SHOW_TERMINAL_TOOLBAR:Ljava/lang/String; = "show_extra_keys"

.field public static final KEY_SOFT_KEYBOARD_ENABLED:Ljava/lang/String; = "soft_keyboard_enabled"

.field public static final KEY_SOFT_KEYBOARD_ENABLED_ONLY_IF_NO_HARDWARE:Ljava/lang/String; = "soft_keyboard_enabled_only_if_no_hardware"

.field public static final KEY_TERMINAL_MARGIN_ADJUSTMENT:Ljava/lang/String; = "terminal_margin_adjustment"

.field public static final KEY_TERMINAL_VIEW_KEY_LOGGING_ENABLED:Ljava/lang/String; = "terminal_view_key_logging_enabled"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
