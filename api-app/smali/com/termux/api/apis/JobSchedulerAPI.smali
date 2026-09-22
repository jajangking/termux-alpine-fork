.class public abstract Lcom/termux/api/apis/JobSchedulerAPI;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/termux/api/apis/JobSchedulerAPI$JobSchedulerService;
    }
.end annotation


# direct methods
.method public static synthetic $r8$lambda$Nyh4a6nnY3YZbE_VWQv_KgkPdoI(Landroid/content/Context;Landroid/content/Intent;Ljava/io/PrintWriter;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/termux/api/apis/JobSchedulerAPI;->lambda$onReceive$3(Landroid/content/Context;Landroid/content/Intent;Ljava/io/PrintWriter;)V

    return-void
.end method

.method public static synthetic $r8$lambda$m51dTG_B0gBgrisHSwnek95HM_E(Landroid/content/Context;Ljava/io/PrintWriter;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/termux/api/apis/JobSchedulerAPI;->lambda$onReceive$0(Landroid/content/Context;Ljava/io/PrintWriter;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ucmXrOo0MGoVKQJ7LytYmL1xBgA(Landroid/content/Context;Ljava/io/PrintWriter;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/termux/api/apis/JobSchedulerAPI;->lambda$onReceive$1(Landroid/content/Context;Ljava/io/PrintWriter;)V

    return-void
.end method

.method public static synthetic $r8$lambda$yinpepLC_RgNdypMDKqlyP0mMs8(Landroid/content/Context;Landroid/content/Intent;Ljava/io/PrintWriter;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/termux/api/apis/JobSchedulerAPI;->lambda$onReceive$2(Landroid/content/Context;Landroid/content/Intent;Ljava/io/PrintWriter;)V

    return-void
.end method

.method private static displayPendingJob(Ljava/io/PrintWriter;Landroid/app/job/JobScheduler;Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 1

    .line 231
    invoke-virtual {p1, p4}, Landroid/app/job/JobScheduler;->getPendingJob(I)Landroid/app/job/JobInfo;

    move-result-object p1

    if-nez p1, :cond_0

    .line 233
    sget-object p1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    filled-new-array {p3}, [Ljava/lang/Object;

    move-result-object p3

    const-string p4, "No job %d found"

    invoke-static {p1, p4, p3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p2, p1}, Lcom/termux/api/apis/JobSchedulerAPI;->printMessage(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    .line 237
    :cond_0
    sget-object p4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " %s"

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1}, Lcom/termux/api/apis/JobSchedulerAPI;->formatJobInfo(Landroid/app/job/JobInfo;)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p4, p3, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p2, p1}, Lcom/termux/api/apis/JobSchedulerAPI;->printMessage(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method private static displayPendingJobs(Ljava/io/PrintWriter;Landroid/app/job/JobScheduler;Ljava/lang/String;Ljava/lang/String;)I
    .locals 6

    .line 243
    invoke-virtual {p1}, Landroid/app/job/JobScheduler;->getAllPendingJobs()Ljava/util/List;

    move-result-object p1

    .line 244
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 245
    const-string p1, "No jobs found"

    invoke-static {p0, p2, p1}, Lcom/termux/api/apis/JobSchedulerAPI;->printMessage(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 249
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 251
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/job/JobInfo;

    if-eqz v1, :cond_1

    .line 252
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    :cond_1
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " %s"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3}, Lcom/termux/api/apis/JobSchedulerAPI;->formatJobInfo(Landroid/app/job/JobInfo;)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v1, v4, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    goto :goto_0

    .line 256
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p0, p2, p3}, Lcom/termux/api/apis/JobSchedulerAPI;->printMessage(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method private static formatJobInfo(Landroid/app/job/JobInfo;)Ljava/lang/String;
    .locals 5

    .line 34
    invoke-virtual {p0}, Landroid/app/job/JobInfo;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v0

    const-string v1, "com.termux.api.jobscheduler_script_path"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 35
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 36
    invoke-virtual {p0}, Landroid/app/job/JobInfo;->isPeriodic()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 37
    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0}, Landroid/app/job/JobInfo;->getIntervalMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "(periodic: %dms)"

    invoke-static {v2, v4, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 39
    :cond_0
    invoke-virtual {p0}, Landroid/app/job/JobInfo;->isRequireCharging()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 40
    const-string v2, "(while charging)"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 42
    :cond_1
    invoke-virtual {p0}, Landroid/app/job/JobInfo;->isRequireDeviceIdle()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 43
    const-string v2, "(while idle)"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 45
    :cond_2
    invoke-virtual {p0}, Landroid/app/job/JobInfo;->isPersisted()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 46
    const-string v2, "(persisted)"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 48
    :cond_3
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-lt v2, v3, :cond_5

    .line 49
    invoke-static {p0}, Lcom/termux/api/apis/JobSchedulerAPI$$ExternalSyntheticApiModelOutline2;->m(Landroid/app/job/JobInfo;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 50
    const-string v3, "(battery not low)"

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    :cond_4
    invoke-static {p0}, Lcom/termux/api/apis/JobSchedulerAPI$$ExternalSyntheticApiModelOutline3;->m(Landroid/app/job/JobInfo;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 53
    const-string v3, "(storage not low)"

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    const/16 v3, 0x1c

    if-lt v2, v3, :cond_6

    .line 57
    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-static {p0}, Lcom/termux/api/apis/JobSchedulerAPI$$ExternalSyntheticApiModelOutline4;->m(Landroid/app/job/JobInfo;)Landroid/net/NetworkRequest;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/NetworkRequest;->toString()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "(network: %s)"

    invoke-static {v2, v4, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    :cond_6
    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0}, Landroid/app/job/JobInfo;->getId()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v3, " "

    .line 61
    invoke-static {v3, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    filled-new-array {p0, v0, v1}, [Ljava/lang/Object;

    move-result-object p0

    .line 60
    const-string v0, "Job %d: %s    %s"

    invoke-static {v2, v0, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$onReceive$0(Landroid/content/Context;Ljava/io/PrintWriter;)V
    .locals 0

    .line 73
    invoke-static {p0, p1}, Lcom/termux/api/apis/JobSchedulerAPI;->runDisplayPendingJobsAction(Landroid/content/Context;Ljava/io/PrintWriter;)V

    return-void
.end method

.method private static synthetic lambda$onReceive$1(Landroid/content/Context;Ljava/io/PrintWriter;)V
    .locals 0

    .line 77
    invoke-static {p0, p1}, Lcom/termux/api/apis/JobSchedulerAPI;->runCancelAllJobsAction(Landroid/content/Context;Ljava/io/PrintWriter;)V

    return-void
.end method

.method private static synthetic lambda$onReceive$2(Landroid/content/Context;Landroid/content/Intent;Ljava/io/PrintWriter;)V
    .locals 0

    .line 81
    invoke-static {p0, p1, p2}, Lcom/termux/api/apis/JobSchedulerAPI;->runCancelJobAction(Landroid/content/Context;Landroid/content/Intent;Ljava/io/PrintWriter;)V

    return-void
.end method

.method private static synthetic lambda$onReceive$3(Landroid/content/Context;Landroid/content/Intent;Ljava/io/PrintWriter;)V
    .locals 0

    .line 85
    invoke-static {p0, p1, p2}, Lcom/termux/api/apis/JobSchedulerAPI;->runScheduleJobAction(Landroid/content/Context;Landroid/content/Intent;Ljava/io/PrintWriter;)V

    return-void
.end method

.method public static onReceive(Lcom/termux/api/TermuxApiReceiver;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .line 65
    const-string v0, "JobSchedulerAPI"

    const-string v1, "onReceive"

    invoke-static {v0, v1}, Lcom/termux/shared/logger/Logger;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    const-string v0, "pending"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 68
    const-string v2, "cancel"

    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 69
    const-string v3, "cancel_all"

    invoke-virtual {p2, v3, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v0, :cond_0

    .line 72
    new-instance v0, Lcom/termux/api/apis/JobSchedulerAPI$$ExternalSyntheticLambda5;

    invoke-direct {v0, p1}, Lcom/termux/api/apis/JobSchedulerAPI$$ExternalSyntheticLambda5;-><init>(Landroid/content/Context;)V

    invoke-static {p0, p2, v0}, Lcom/termux/api/util/ResultReturner;->returnData(Ljava/lang/Object;Landroid/content/Intent;Lcom/termux/api/util/ResultReturner$ResultWriter;)V

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    .line 76
    new-instance v0, Lcom/termux/api/apis/JobSchedulerAPI$$ExternalSyntheticLambda6;

    invoke-direct {v0, p1}, Lcom/termux/api/apis/JobSchedulerAPI$$ExternalSyntheticLambda6;-><init>(Landroid/content/Context;)V

    invoke-static {p0, p2, v0}, Lcom/termux/api/util/ResultReturner;->returnData(Ljava/lang/Object;Landroid/content/Intent;Lcom/termux/api/util/ResultReturner$ResultWriter;)V

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_2

    .line 80
    new-instance v0, Lcom/termux/api/apis/JobSchedulerAPI$$ExternalSyntheticLambda7;

    invoke-direct {v0, p1, p2}, Lcom/termux/api/apis/JobSchedulerAPI$$ExternalSyntheticLambda7;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    invoke-static {p0, p2, v0}, Lcom/termux/api/util/ResultReturner;->returnData(Ljava/lang/Object;Landroid/content/Intent;Lcom/termux/api/util/ResultReturner$ResultWriter;)V

    goto :goto_0

    .line 84
    :cond_2
    new-instance v0, Lcom/termux/api/apis/JobSchedulerAPI$$ExternalSyntheticLambda8;

    invoke-direct {v0, p1, p2}, Lcom/termux/api/apis/JobSchedulerAPI$$ExternalSyntheticLambda8;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    invoke-static {p0, p2, v0}, Lcom/termux/api/util/ResultReturner;->returnData(Ljava/lang/Object;Landroid/content/Intent;Lcom/termux/api/util/ResultReturner$ResultWriter;)V

    :goto_0
    return-void
.end method

.method private static printMessage(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 264
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "JobSchedulerAPI"

    invoke-static {v0, p1}, Lcom/termux/shared/logger/Logger;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    invoke-virtual {p0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method private static runCancelAllJobsAction(Landroid/content/Context;Ljava/io/PrintWriter;)V
    .locals 3

    .line 199
    const-string v0, "cancel_all_jobs: Running action"

    const-string v1, "JobSchedulerAPI"

    invoke-static {v1, v0}, Lcom/termux/shared/logger/Logger;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    const-string v0, "jobscheduler"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/job/JobScheduler;

    .line 201
    const-string v0, "cancel_all_jobs"

    const-string v2, "Cancelling"

    invoke-static {p1, p0, v0, v2}, Lcom/termux/api/apis/JobSchedulerAPI;->displayPendingJobs(Ljava/io/PrintWriter;Landroid/app/job/JobScheduler;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    if-ltz p1, :cond_0

    .line 203
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cancel_all_jobs: Cancelling "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " jobs"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/termux/shared/logger/Logger;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    invoke-virtual {p0}, Landroid/app/job/JobScheduler;->cancelAll()V

    :cond_0
    return-void
.end method

.method private static runCancelJobAction(Landroid/content/Context;Landroid/content/Intent;Ljava/io/PrintWriter;)V
    .locals 3

    .line 210
    const-string v0, "jobscheduler"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/job/JobScheduler;

    .line 212
    const-string v0, "job_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "JobSchedulerAPI"

    if-nez v1, :cond_0

    .line 213
    const-string p0, "cancel_job: Job id not passed"

    invoke-static {v2, p0}, Lcom/termux/shared/logger/Logger;->logErrorPrivate(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    const-string p0, "Job id not passed"

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 218
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 219
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cancel_job: Running action for job "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/termux/shared/logger/Logger;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    const-string v0, "cancel_job"

    const-string v1, "Cancelling"

    invoke-static {p2, p0, v0, v1, p1}, Lcom/termux/api/apis/JobSchedulerAPI;->displayPendingJob(Ljava/io/PrintWriter;Landroid/app/job/JobScheduler;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 222
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "cancel_job: Cancelling job "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Lcom/termux/shared/logger/Logger;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    invoke-virtual {p0, p1}, Landroid/app/job/JobScheduler;->cancel(I)V

    :cond_1
    return-void
.end method

.method private static runDisplayPendingJobsAction(Landroid/content/Context;Ljava/io/PrintWriter;)V
    .locals 2

    .line 192
    const-string v0, "jobscheduler"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/job/JobScheduler;

    .line 194
    const-string v0, "JobSchedulerAPI"

    const-string v1, "display_pending_jobs: Running action"

    invoke-static {v0, v1}, Lcom/termux/shared/logger/Logger;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    const-string v0, "display_pending_jobs"

    const-string v1, "Pending"

    invoke-static {p1, p0, v0, v1}, Lcom/termux/api/apis/JobSchedulerAPI;->displayPendingJobs(Ljava/io/PrintWriter;Landroid/app/job/JobScheduler;Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static runScheduleJobAction(Landroid/content/Context;Landroid/content/Intent;Ljava/io/PrintWriter;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 91
    const-string v3, "jobscheduler"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/job/JobScheduler;

    .line 93
    const-string v4, "job_id"

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 95
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "schedule_job: Running action for job "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "JobSchedulerAPI"

    invoke-static {v7, v6}, Lcom/termux/shared/logger/Logger;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    const-string v6, "script"

    invoke-virtual {v1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 98
    const-string v8, "network"

    invoke-virtual {v1, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 99
    const-string v9, "period_ms"

    invoke-virtual {v1, v9, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    .line 100
    const-string v10, "battery_not_low"

    const/4 v11, 0x1

    invoke-virtual {v1, v10, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v10

    .line 101
    const-string v12, "charging"

    invoke-virtual {v1, v12, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v12

    .line 102
    const-string v13, "persisted"

    invoke-virtual {v1, v13, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v13

    .line 103
    const-string v14, "idle"

    invoke-virtual {v1, v14, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v14

    .line 104
    const-string v15, "storage_not_low"

    invoke-virtual {v1, v15, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v8, :cond_4

    .line 109
    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v15

    const/4 v5, 0x2

    sparse-switch v15, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v15, "none"

    invoke-virtual {v8, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/4 v8, 0x5

    goto :goto_1

    :sswitch_1
    const-string v15, "any"

    invoke-virtual {v8, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/4 v8, 0x0

    goto :goto_1

    :sswitch_2
    const-string v15, "not_roaming"

    invoke-virtual {v8, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/4 v8, 0x3

    goto :goto_1

    :sswitch_3
    const-string v15, "cellular"

    invoke-virtual {v8, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    move v8, v5

    goto :goto_1

    :sswitch_4
    const-string v15, "unmetered"

    invoke-virtual {v8, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    move v8, v11

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v8, -0x1

    :goto_1
    if-eqz v8, :cond_1

    if-eq v8, v11, :cond_3

    if-eq v8, v5, :cond_2

    const/4 v11, 0x3

    if-eq v8, v11, :cond_1

    const/4 v5, 0x0

    goto :goto_2

    :cond_1
    move v5, v11

    goto :goto_2

    .line 117
    :cond_2
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v11, 0x1c

    if-lt v8, v11, :cond_3

    const/4 v5, 0x4

    :cond_3
    :goto_2
    move v11, v5

    :cond_4
    if-nez v6, :cond_5

    .line 136
    const-string v0, "schedule_job: Script path not passed"

    invoke-static {v7, v0}, Lcom/termux/shared/logger/Logger;->logErrorPrivate(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    const-string v0, "No script path given"

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    .line 141
    :cond_5
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 143
    invoke-virtual {v5}, Ljava/io/File;->isFile()Z

    move-result v8

    if-nez v8, :cond_6

    .line 144
    const-string v8, "No such file: %s"

    goto :goto_3

    .line 145
    :cond_6
    invoke-virtual {v5}, Ljava/io/File;->canRead()Z

    move-result v8

    if-nez v8, :cond_7

    .line 146
    const-string v8, "Cannot read file: %s"

    goto :goto_3

    .line 147
    :cond_7
    invoke-virtual {v5}, Ljava/io/File;->canExecute()Z

    move-result v8

    if-nez v8, :cond_8

    .line 148
    const-string v8, "Cannot execute file: %s"

    goto :goto_3

    .line 150
    :cond_8
    const-string v8, ""

    .line 153
    :goto_3
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_9

    .line 154
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "schedule_job: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v8, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/termux/shared/logger/Logger;->logErrorPrivate(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v8, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    .line 160
    :cond_9
    new-instance v6, Landroid/os/PersistableBundle;

    invoke-direct {v6}, Landroid/os/PersistableBundle;-><init>()V

    .line 161
    const-string v7, "com.termux.api.jobscheduler_script_path"

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v7, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    new-instance v5, Landroid/content/ComponentName;

    const-class v7, Lcom/termux/api/apis/JobSchedulerAPI$JobSchedulerService;

    invoke-direct {v5, v0, v7}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 164
    new-instance v0, Landroid/app/job/JobInfo$Builder;

    invoke-direct {v0, v4, v5}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    .line 165
    invoke-virtual {v0, v6}, Landroid/app/job/JobInfo$Builder;->setExtras(Landroid/os/PersistableBundle;)Landroid/app/job/JobInfo$Builder;

    move-result-object v0

    .line 166
    invoke-virtual {v0, v11}, Landroid/app/job/JobInfo$Builder;->setRequiredNetworkType(I)Landroid/app/job/JobInfo$Builder;

    move-result-object v0

    .line 167
    invoke-virtual {v0, v12}, Landroid/app/job/JobInfo$Builder;->setRequiresCharging(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object v0

    .line 168
    invoke-virtual {v0, v13}, Landroid/app/job/JobInfo$Builder;->setPersisted(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object v0

    .line 169
    invoke-virtual {v0, v14}, Landroid/app/job/JobInfo$Builder;->setRequiresDeviceIdle(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object v0

    .line 171
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x1a

    if-lt v5, v6, :cond_a

    .line 172
    invoke-static {v0, v10}, Lcom/termux/api/apis/JobSchedulerAPI$$ExternalSyntheticApiModelOutline0;->m(Landroid/app/job/JobInfo$Builder;Z)Landroid/app/job/JobInfo$Builder;

    move-result-object v0

    .line 173
    invoke-static {v0, v1}, Lcom/termux/api/apis/JobSchedulerAPI$$ExternalSyntheticApiModelOutline1;->m(Landroid/app/job/JobInfo$Builder;Z)Landroid/app/job/JobInfo$Builder;

    move-result-object v0

    :cond_a
    if-lez v9, :cond_b

    int-to-long v5, v9

    .line 180
    invoke-virtual {v0, v5, v6}, Landroid/app/job/JobInfo$Builder;->setPeriodic(J)Landroid/app/job/JobInfo$Builder;

    move-result-object v0

    .line 183
    :cond_b
    invoke-virtual {v0}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object v0

    .line 184
    invoke-virtual {v3, v0}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    move-result v1

    .line 185
    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-static {v0}, Lcom/termux/api/apis/JobSchedulerAPI;->formatJobInfo(Landroid/app/job/JobInfo;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Scheduling %s - response %d"

    invoke-static {v5, v1, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 186
    const-string v1, "schedule_job"

    invoke-static {v2, v1, v0}, Lcom/termux/api/apis/JobSchedulerAPI;->printMessage(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    const-string v0, "Pending"

    invoke-static {v2, v3, v1, v0, v4}, Lcom/termux/api/apis/JobSchedulerAPI;->displayPendingJob(Ljava/io/PrintWriter;Landroid/app/job/JobScheduler;Ljava/lang/String;Ljava/lang/String;I)Z

    return-void

    :sswitch_data_0
    .sparse-switch
        -0x610502d1 -> :sswitch_4
        -0x36a22696 -> :sswitch_3
        -0xcd6d553 -> :sswitch_2
        0x179ec -> :sswitch_1
        0x33af38 -> :sswitch_0
    .end sparse-switch
.end method
