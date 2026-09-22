.class Lcom/termux/api/apis/LocationAPI$1$3;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/termux/api/apis/LocationAPI$1;->writeJson(Landroid/util/JsonWriter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/termux/api/apis/LocationAPI$1;

.field final synthetic val$looper:Landroid/os/Looper;


# direct methods
.method constructor <init>(Lcom/termux/api/apis/LocationAPI$1;Landroid/os/Looper;)V
    .locals 0

    .line 123
    iput-object p1, p0, Lcom/termux/api/apis/LocationAPI$1$3;->this$0:Lcom/termux/api/apis/LocationAPI$1;

    iput-object p2, p0, Lcom/termux/api/apis/LocationAPI$1$3;->val$looper:Landroid/os/Looper;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const-wide/16 v0, 0x7530

    .line 127
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 129
    const-string v1, "LocationAPI"

    const-string v2, "INTER"

    invoke-static {v1, v2, v0}, Lcom/termux/shared/logger/Logger;->logStackTraceWithMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 131
    :goto_0
    iget-object v0, p0, Lcom/termux/api/apis/LocationAPI$1$3;->val$looper:Landroid/os/Looper;

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    return-void
.end method
