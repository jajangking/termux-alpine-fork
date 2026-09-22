.class public final Lcom/termux/shared/termux/TermuxConstants$RESULT_SENDER;
.super Ljava/lang/Object;
.source "TermuxConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/termux/shared/termux/TermuxConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RESULT_SENDER"
.end annotation


# static fields
.field public static final FORMAT_FAILED_ERR__ERRMSG__STDOUT__STDERR__EXIT_CODE:Ljava/lang/String; = "err=%1$s%n%n%n%nerrmsg=%n%2$s%n%n%n%nstdout=%n%3$s%n%n%n%nstderr=%n%4$s%n%n%n%nexit_code=%5$s%n"

.field public static final FORMAT_SUCCESS_STDOUT:Ljava/lang/String; = "%1$s%n"

.field public static final FORMAT_SUCCESS_STDOUT__EXIT_CODE:Ljava/lang/String; = "%1$s%n%n%n%nexit_code=%2$s%n"

.field public static final FORMAT_SUCCESS_STDOUT__STDERR__EXIT_CODE:Ljava/lang/String; = "stdout=%n%1$s%n%n%n%nstderr=%n%2$s%n%n%n%nexit_code=%3$s%n"

.field public static final RESULT_FILE_ERRMSG_PREFIX:Ljava/lang/String; = "errmsg"

.field public static final RESULT_FILE_ERR_PREFIX:Ljava/lang/String; = "err"

.field public static final RESULT_FILE_EXIT_CODE_PREFIX:Ljava/lang/String; = "exit_code"

.field public static final RESULT_FILE_STDERR_PREFIX:Ljava/lang/String; = "stderr"

.field public static final RESULT_FILE_STDOUT_PREFIX:Ljava/lang/String; = "stdout"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1071
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
