.class Lcom/termux/shared/terminal/io/BellHandler$1;
.super Ljava/lang/Object;
.source "BellHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/termux/shared/terminal/io/BellHandler;-><init>(Landroid/os/Vibrator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/termux/shared/terminal/io/BellHandler;

.field final synthetic val$vibrator:Landroid/os/Vibrator;


# direct methods
.method constructor <init>(Lcom/termux/shared/terminal/io/BellHandler;Landroid/os/Vibrator;)V
    .locals 0
    .param p1, "this$0"    # Lcom/termux/shared/terminal/io/BellHandler;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$vibrator"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 39
    iput-object p1, p0, Lcom/termux/shared/terminal/io/BellHandler$1;->this$0:Lcom/termux/shared/terminal/io/BellHandler;

    iput-object p2, p0, Lcom/termux/shared/terminal/io/BellHandler$1;->val$vibrator:Landroid/os/Vibrator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 42
    iget-object v0, p0, Lcom/termux/shared/terminal/io/BellHandler$1;->val$vibrator:Landroid/os/Vibrator;

    if-eqz v0, :cond_1

    .line 44
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    const-wide/16 v2, 0x32

    if-lt v0, v1, :cond_0

    .line 45
    iget-object v0, p0, Lcom/termux/shared/terminal/io/BellHandler$1;->val$vibrator:Landroid/os/Vibrator;

    const/4 v1, -0x1

    invoke-static {v2, v3, v1}, Landroid/os/VibrationEffect;->createOneShot(JI)Landroid/os/VibrationEffect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;)V

    goto :goto_0

    .line 47
    :cond_0
    iget-object v0, p0, Lcom/termux/shared/terminal/io/BellHandler$1;->val$vibrator:Landroid/os/Vibrator;

    invoke-virtual {v0, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    :goto_0
    goto :goto_1

    .line 49
    :catch_0
    move-exception v0

    .line 52
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "BellHandler"

    const-string v2, "Failed to run vibrator"

    invoke-static {v1, v2, v0}, Lcom/termux/shared/logger/Logger;->logStackTraceWithMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 55
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_1
    return-void
.end method
