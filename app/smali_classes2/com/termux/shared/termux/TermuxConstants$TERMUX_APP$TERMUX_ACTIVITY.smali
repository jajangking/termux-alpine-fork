.class public final Lcom/termux/shared/termux/TermuxConstants$TERMUX_APP$TERMUX_ACTIVITY;
.super Ljava/lang/Object;
.source "TermuxConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/termux/shared/termux/TermuxConstants$TERMUX_APP;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TERMUX_ACTIVITY"
.end annotation


# static fields
.field public static final ACTION_RELOAD_STYLE:Ljava/lang/String; = "com.termux.app.reload_style"

.field public static final ACTION_REQUEST_PERMISSIONS:Ljava/lang/String; = "com.termux.app.request_storage_permissions"

.field public static final EXTRA_FAILSAFE_SESSION:Ljava/lang/String; = "com.termux.app.failsafe_session"

.field public static final EXTRA_RELOAD_STYLE:Ljava/lang/String; = "com.termux.app.reload_style"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 836
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
