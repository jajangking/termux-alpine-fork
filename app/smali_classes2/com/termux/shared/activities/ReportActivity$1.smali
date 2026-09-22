.class Lcom/termux/shared/activities/ReportActivity$1;
.super Ljava/lang/Thread;
.source "ReportActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/termux/shared/activities/ReportActivity;->deleteReportInfoFilesOlderThanXDays(Landroid/content/Context;IZ)Lcom/termux/shared/models/errors/Error;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$days:I


# direct methods
.method constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "val$context",
            "val$days"
        }
    .end annotation

    .line 430
    iput-object p1, p0, Lcom/termux/shared/activities/ReportActivity$1;->val$context:Landroid/content/Context;

    iput p2, p0, Lcom/termux/shared/activities/ReportActivity$1;->val$days:I

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 431
    iget-object v0, p0, Lcom/termux/shared/activities/ReportActivity$1;->val$context:Landroid/content/Context;

    iget v1, p0, Lcom/termux/shared/activities/ReportActivity$1;->val$days:I

    invoke-static {v0, v1}, Lcom/termux/shared/activities/ReportActivity;->access$000(Landroid/content/Context;I)Lcom/termux/shared/models/errors/Error;

    move-result-object v0

    .line 432
    .local v0, "error":Lcom/termux/shared/models/errors/Error;
    if-eqz v0, :cond_0

    .line 433
    invoke-virtual {v0}, Lcom/termux/shared/models/errors/Error;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ReportActivity"

    invoke-static {v2, v1}, Lcom/termux/shared/logger/Logger;->logErrorExtended(Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    :cond_0
    return-void
.end method
