.class Lcom/termux/app/utils/CrashUtils$1;
.super Ljava/lang/Thread;
.source "CrashUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/termux/app/utils/CrashUtils;->notifyAppCrashOnLastRun(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$logTagParam:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "val$logTagParam",
            "val$context"
        }
    .end annotation

    .line 59
    iput-object p1, p0, Lcom/termux/app/utils/CrashUtils$1;->val$logTagParam:Ljava/lang/String;

    iput-object p2, p0, Lcom/termux/app/utils/CrashUtils$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 62
    iget-object v0, p0, Lcom/termux/app/utils/CrashUtils$1;->val$logTagParam:Ljava/lang/String;

    const-string v1, "CrashUtils"

    invoke-static {v0, v1}, Lcom/termux/shared/data/DataUtils;->getDefaultIfNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 64
    .local v0, "logTag":Ljava/lang/String;
    const-string v1, "/data/data/com.termux.alpine/files/home/crash_log.md"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/termux/shared/file/FileUtils;->regularFileExists(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_0

    .line 65
    return-void

    .line 68
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 71
    .local v3, "reportStringBuilder":Ljava/lang/StringBuilder;
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v4

    const-string v5, "crash log"

    invoke-static {v5, v1, v4, v3, v2}, Lcom/termux/shared/file/FileUtils;->readStringFromFile(Ljava/lang/String;Ljava/lang/String;Ljava/nio/charset/Charset;Ljava/lang/StringBuilder;Z)Lcom/termux/shared/models/errors/Error;

    move-result-object v4

    .line 72
    .local v4, "error":Lcom/termux/shared/models/errors/Error;
    if-eqz v4, :cond_1

    .line 73
    invoke-virtual {v4}, Lcom/termux/shared/models/errors/Error;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/termux/shared/logger/Logger;->logErrorExtended(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    return-void

    .line 78
    :cond_1
    const/4 v6, 0x1

    const-string v7, "/data/data/com.termux.alpine/files/home/crash_log_backup.md"

    invoke-static {v5, v1, v7, v6}, Lcom/termux/shared/file/FileUtils;->moveRegularFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/termux/shared/models/errors/Error;

    move-result-object v1

    .line 79
    .end local v4    # "error":Lcom/termux/shared/models/errors/Error;
    .local v1, "error":Lcom/termux/shared/models/errors/Error;
    if-eqz v1, :cond_2

    .line 80
    invoke-virtual {v1}, Lcom/termux/shared/models/errors/Error;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/termux/shared/logger/Logger;->logErrorExtended(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 85
    .local v4, "reportString":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 86
    return-void

    .line 88
    :cond_3
    const-string v5, "A crash log file found at \"/data/data/com.termux.alpine/files/home/crash_log.md\"."

    invoke-static {v0, v5}, Lcom/termux/shared/logger/Logger;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    iget-object v5, p0, Lcom/termux/app/utils/CrashUtils$1;->val$context:Landroid/content/Context;

    invoke-static {v5, v0, v4, v2, v2}, Lcom/termux/app/utils/CrashUtils;->sendCrashReportNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 91
    return-void
.end method
