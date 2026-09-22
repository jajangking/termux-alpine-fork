.class public abstract synthetic Lcom/termux/api/apis/JobSchedulerAPI$$ExternalSyntheticApiModelOutline2;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static bridge synthetic m(Landroid/app/job/JobInfo;)Z
    .locals 0

    .line 0
    invoke-virtual {p0}, Landroid/app/job/JobInfo;->isRequireBatteryNotLow()Z

    move-result p0

    return p0
.end method
