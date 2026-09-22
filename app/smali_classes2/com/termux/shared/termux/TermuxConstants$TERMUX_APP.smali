.class public final Lcom/termux/shared/termux/TermuxConstants$TERMUX_APP;
.super Ljava/lang/Object;
.source "TermuxConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/termux/shared/termux/TermuxConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TERMUX_APP"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/termux/shared/termux/TermuxConstants$TERMUX_APP$RUN_COMMAND_SERVICE;,
        Lcom/termux/shared/termux/TermuxConstants$TERMUX_APP$TERMUX_SERVICE;,
        Lcom/termux/shared/termux/TermuxConstants$TERMUX_APP$TERMUX_ACTIVITY;
    }
.end annotation


# static fields
.field public static final RUN_COMMAND_SERVICE_NAME:Ljava/lang/String; = "com.termux.app.RunCommandService"

.field public static final TERMUX_ACTIVITY_NAME:Ljava/lang/String; = "com.termux.app.TermuxActivity"

.field public static final TERMUX_SERVICE_NAME:Ljava/lang/String; = "com.termux.app.TermuxService"

.field public static final TERMUX_SETTINGS_ACTIVITY_NAME:Ljava/lang/String; = "com.termux.app.activities.SettingsActivity"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 828
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
