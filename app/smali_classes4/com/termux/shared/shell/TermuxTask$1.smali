.class Lcom/termux/shared/shell/TermuxTask$1;
.super Ljava/lang/Thread;
.source "TermuxTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/termux/shared/shell/TermuxTask;->execute(Landroid/content/Context;Lcom/termux/shared/models/ExecutionCommand;Lcom/termux/shared/shell/TermuxTask$TermuxTaskClient;Lcom/termux/shared/shell/ShellEnvironmentClient;Z)Lcom/termux/shared/shell/TermuxTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$termuxTask:Lcom/termux/shared/shell/TermuxTask;


# direct methods
.method constructor <init>(Lcom/termux/shared/shell/TermuxTask;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "val$termuxTask",
            "val$context"
        }
    .end annotation

    .line 112
    iput-object p1, p0, Lcom/termux/shared/shell/TermuxTask$1;->val$termuxTask:Lcom/termux/shared/shell/TermuxTask;

    iput-object p2, p0, Lcom/termux/shared/shell/TermuxTask$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 116
    :try_start_0
    iget-object v0, p0, Lcom/termux/shared/shell/TermuxTask$1;->val$termuxTask:Lcom/termux/shared/shell/TermuxTask;

    iget-object v1, p0, Lcom/termux/shared/shell/TermuxTask$1;->val$context:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/termux/shared/shell/TermuxTask;->access$000(Lcom/termux/shared/shell/TermuxTask;Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/IllegalThreadStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    goto :goto_0

    .line 117
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    .line 120
    :goto_0
    return-void
.end method
