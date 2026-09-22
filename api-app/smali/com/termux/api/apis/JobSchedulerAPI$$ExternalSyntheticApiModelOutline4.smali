.class public abstract synthetic Lcom/termux/api/apis/JobSchedulerAPI$$ExternalSyntheticApiModelOutline4;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static bridge synthetic m(Landroid/app/job/JobInfo;)Landroid/net/NetworkRequest;
    .locals 0

    .line 0
    invoke-virtual {p0}, Landroid/app/job/JobInfo;->getRequiredNetwork()Landroid/net/NetworkRequest;

    move-result-object p0

    return-object p0
.end method
