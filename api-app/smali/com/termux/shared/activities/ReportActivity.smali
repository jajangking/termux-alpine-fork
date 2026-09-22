.class public Lcom/termux/shared/activities/ReportActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/termux/shared/activities/ReportActivity$ReportActivityBroadcastReceiver;,
        Lcom/termux/shared/activities/ReportActivity$NewInstanceResult;
    }
.end annotation


# static fields
.field private static final ACTION_DELETE_REPORT_INFO_OBJECT_FILE:Ljava/lang/String;

.field private static final EXTRA_REPORT_INFO_OBJECT:Ljava/lang/String;

.field private static final EXTRA_REPORT_INFO_OBJECT_FILE_PATH:Ljava/lang/String;


# instance fields
.field private mBundle:Landroid/os/Bundle;

.field private mReportActivityMarkdownString:Ljava/lang/String;

.field private mReportInfo:Lcom/termux/shared/models/ReportInfo;

.field private mReportInfoFilePath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 52
    const-class v0, Lcom/termux/shared/activities/ReportActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    .line 53
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".ACTION_DELETE_REPORT_INFO_OBJECT_FILE"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/termux/shared/activities/ReportActivity;->ACTION_DELETE_REPORT_INFO_OBJECT_FILE:Ljava/lang/String;

    .line 55
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".EXTRA_REPORT_INFO_OBJECT"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/termux/shared/activities/ReportActivity;->EXTRA_REPORT_INFO_OBJECT:Ljava/lang/String;

    .line 56
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".EXTRA_REPORT_INFO_OBJECT_FILE_PATH"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/termux/shared/activities/ReportActivity;->EXTRA_REPORT_INFO_OBJECT_FILE_PATH:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 50
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 50
    sget-object v0, Lcom/termux/shared/activities/ReportActivity;->ACTION_DELETE_REPORT_INFO_OBJECT_FILE:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .line 50
    sget-object v0, Lcom/termux/shared/activities/ReportActivity;->EXTRA_REPORT_INFO_OBJECT_FILE_PATH:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 50
    invoke-static {p0, p1}, Lcom/termux/shared/activities/ReportActivity;->deleteReportInfoFile(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private static createContentIntent(Landroid/content/Context;Lcom/termux/shared/models/ReportInfo;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    .line 355
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/termux/shared/activities/ReportActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 356
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    if-eqz p2, :cond_0

    .line 359
    sget-object p1, Lcom/termux/shared/activities/ReportActivity;->EXTRA_REPORT_INFO_OBJECT_FILE_PATH:Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 361
    :cond_0
    sget-object p2, Lcom/termux/shared/activities/ReportActivity;->EXTRA_REPORT_INFO_OBJECT:Ljava/lang/String;

    invoke-virtual {p0, p2, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 364
    :goto_0
    invoke-virtual {v0, p0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const/high16 p0, 0x30080000

    .line 369
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    return-object v0
.end method

.method private static createDeleteIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 377
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/termux/shared/activities/ReportActivity$ReportActivityBroadcastReceiver;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 378
    sget-object p0, Lcom/termux/shared/activities/ReportActivity;->ACTION_DELETE_REPORT_INFO_OBJECT_FILE:Ljava/lang/String;

    invoke-virtual {v0, p0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 380
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    .line 381
    sget-object v1, Lcom/termux/shared/activities/ReportActivity;->EXTRA_REPORT_INFO_OBJECT_FILE_PATH:Ljava/lang/String;

    invoke-virtual {p0, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    invoke-virtual {v0, p0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    return-object v0
.end method

.method private static deleteReportInfoFile(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6

    if-eqz p0, :cond_2

    if-nez p1, :cond_0

    goto/16 :goto_0

    .line 401
    :cond_0
    invoke-static {p0}, Lcom/termux/shared/activities/ReportActivity;->getReportInfoDirectoryPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    .line 402
    invoke-static {p1, v0}, Lcom/termux/shared/file/FileUtils;->getCanonicalPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 403
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "\""

    const-string v2, " serialized object file at path \""

    const-class v3, Lcom/termux/shared/models/ReportInfo;

    const-string v4, "ReportActivity"

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 404
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Deleting "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Lcom/termux/shared/logger/Logger;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/termux/shared/file/FileUtils;->deleteRegularFile(Ljava/lang/String;Ljava/lang/String;Z)Lcom/termux/shared/errors/Error;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 407
    invoke-virtual {p0}, Lcom/termux/shared/errors/Error;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Lcom/termux/shared/logger/Logger;->logErrorExtended(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 410
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Not deleting "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\" since its not under \""

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Lcom/termux/shared/logger/Logger;->logError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private generateReportActivityMarkdownString()V
    .locals 11

    .line 249
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 251
    iget-object v1, p0, Lcom/termux/shared/activities/ReportActivity;->mReportInfo:Lcom/termux/shared/models/ReportInfo;

    iget-object v1, v1, Lcom/termux/shared/models/ReportInfo;->reportStringPrefix:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 252
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    :cond_0
    iget-object v1, p0, Lcom/termux/shared/activities/ReportActivity;->mReportInfo:Lcom/termux/shared/models/ReportInfo;

    invoke-static {v1}, Lcom/termux/shared/models/ReportInfo;->getReportInfoMarkdownString(Lcom/termux/shared/models/ReportInfo;)Ljava/lang/String;

    move-result-object v1

    .line 255
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    array-length v2, v2

    .line 257
    const-string v3, " and will be truncated"

    const-string v4, " is greater than "

    const-string v5, "ReportActivity"

    const/4 v6, 0x1

    const/4 v7, 0x0

    const v8, 0xfa000

    if-le v2, v8, :cond_1

    .line 258
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/termux/shared/activities/ReportActivity;->mReportInfo:Lcom/termux/shared/models/ReportInfo;

    iget-object v10, v10, Lcom/termux/shared/models/ReportInfo;->reportTitle:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " report string size "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/termux/shared/logger/Logger;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    invoke-static {v1, v8, v6, v7, v6}, Lcom/termux/shared/data/DataUtils;->getTruncatedCommandOutput(Ljava/lang/String;IZZZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v1, v6

    goto :goto_0

    .line 262
    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v1, v7

    .line 268
    :goto_0
    iget-object v2, p0, Lcom/termux/shared/activities/ReportActivity;->mReportInfo:Lcom/termux/shared/models/ReportInfo;

    iget-object v2, v2, Lcom/termux/shared/models/ReportInfo;->reportStringSuffix:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 269
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-le v2, v8, :cond_3

    .line 274
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/termux/shared/activities/ReportActivity;->mReportInfo:Lcom/termux/shared/models/ReportInfo;

    iget-object v9, v9, Lcom/termux/shared/models/ReportInfo;->reportTitle:Ljava/lang/String;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " report string total size "

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/termux/shared/logger/Logger;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget v2, Lcom/termux/shared/R$string;->msg_report_truncated:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v8, v6, v7, v7}, Lcom/termux/shared/data/DataUtils;->getTruncatedCommandOutput(Ljava/lang/String;IZZZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/termux/shared/activities/ReportActivity;->mReportActivityMarkdownString:Ljava/lang/String;

    goto :goto_1

    :cond_3
    if-eqz v1, :cond_4

    .line 278
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget v2, Lcom/termux/shared/R$string;->msg_report_truncated:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/termux/shared/activities/ReportActivity;->mReportActivityMarkdownString:Ljava/lang/String;

    goto :goto_1

    .line 280
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/termux/shared/activities/ReportActivity;->mReportActivityMarkdownString:Ljava/lang/String;

    :goto_1
    return-void
.end method

.method private static getReportInfoDirectoryPath(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 394
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/termux/shared/file/FileUtils;->getCanonicalPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "report_activity"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static newInstance(Landroid/content/Context;Lcom/termux/shared/models/ReportInfo;)Lcom/termux/shared/activities/ReportActivity$NewInstanceResult;
    .locals 7

    .line 334
    invoke-static {p1}, Lcom/termux/shared/data/DataUtils;->getSerializedSize(Ljava/io/Serializable;)J

    move-result-wide v0

    const-wide/32 v2, 0x19000

    cmp-long v2, v0, v2

    const/4 v3, 0x0

    if-lez v2, :cond_1

    .line 336
    invoke-static {p0}, Lcom/termux/shared/activities/ReportActivity;->getReportInfoDirectoryPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 337
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "report_info_"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/termux/shared/models/ReportInfo;->reportTimestamp:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 338
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p1, Lcom/termux/shared/models/ReportInfo;->reportTitle:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v5, Lcom/termux/shared/models/ReportInfo;

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " serialized object size "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " is greater than "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v0, 0x19000

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " and it will be written to file at path \""

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\""

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ReportActivity"

    invoke-static {v1, v0}, Lcom/termux/shared/logger/Logger;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2, p1}, Lcom/termux/shared/file/FileUtils;->writeSerializableObjectToFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/Serializable;)Lcom/termux/shared/errors/Error;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 341
    invoke-virtual {p1}, Lcom/termux/shared/errors/Error;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/termux/shared/logger/Logger;->logErrorExtended(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    invoke-static {p1}, Lcom/termux/shared/errors/Error;->getMinimalErrorString(Lcom/termux/shared/errors/Error;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/termux/shared/logger/Logger;->showToast(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 343
    new-instance p0, Lcom/termux/shared/activities/ReportActivity$NewInstanceResult;

    invoke-direct {p0, v3, v3}, Lcom/termux/shared/activities/ReportActivity$NewInstanceResult;-><init>(Landroid/content/Intent;Landroid/content/Intent;)V

    return-object p0

    .line 346
    :cond_0
    new-instance p1, Lcom/termux/shared/activities/ReportActivity$NewInstanceResult;

    invoke-static {p0, v3, v2}, Lcom/termux/shared/activities/ReportActivity;->createContentIntent(Landroid/content/Context;Lcom/termux/shared/models/ReportInfo;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 347
    invoke-static {p0, v2}, Lcom/termux/shared/activities/ReportActivity;->createDeleteIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    invoke-direct {p1, v0, p0}, Lcom/termux/shared/activities/ReportActivity$NewInstanceResult;-><init>(Landroid/content/Intent;Landroid/content/Intent;)V

    return-object p1

    .line 349
    :cond_1
    new-instance v0, Lcom/termux/shared/activities/ReportActivity$NewInstanceResult;

    invoke-static {p0, p1, v3}, Lcom/termux/shared/activities/ReportActivity;->createContentIntent(Landroid/content/Context;Lcom/termux/shared/models/ReportInfo;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    invoke-direct {v0, p0, v3}, Lcom/termux/shared/activities/ReportActivity$NewInstanceResult;-><init>(Landroid/content/Intent;Landroid/content/Intent;)V

    return-object v0
.end method

.method public static startReportActivity(Landroid/content/Context;Lcom/termux/shared/models/ReportInfo;)V
    .locals 0

    .line 310
    invoke-static {p0, p1}, Lcom/termux/shared/activities/ReportActivity;->newInstance(Landroid/content/Context;Lcom/termux/shared/models/ReportInfo;)Lcom/termux/shared/activities/ReportActivity$NewInstanceResult;

    move-result-object p1

    .line 311
    iget-object p1, p1, Lcom/termux/shared/activities/ReportActivity$NewInstanceResult;->contentIntent:Landroid/content/Intent;

    if-nez p1, :cond_0

    return-void

    .line 312
    :cond_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private updateUI()V
    .locals 6

    .line 113
    iget-object v0, p0, Lcom/termux/shared/activities/ReportActivity;->mBundle:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 114
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 117
    iput-object v1, p0, Lcom/termux/shared/activities/ReportActivity;->mReportInfo:Lcom/termux/shared/models/ReportInfo;

    .line 118
    iput-object v1, p0, Lcom/termux/shared/activities/ReportActivity;->mReportInfoFilePath:Ljava/lang/String;

    .line 120
    sget-object v1, Lcom/termux/shared/activities/ReportActivity;->EXTRA_REPORT_INFO_OBJECT_FILE_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 121
    iget-object v0, p0, Lcom/termux/shared/activities/ReportActivity;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/termux/shared/activities/ReportActivity;->mReportInfoFilePath:Ljava/lang/String;

    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/termux/shared/models/ReportInfo;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " serialized object will be read from file at path \""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/termux/shared/activities/ReportActivity;->mReportInfoFilePath:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "ReportActivity"

    invoke-static {v3, v0}, Lcom/termux/shared/logger/Logger;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    iget-object v0, p0, Lcom/termux/shared/activities/ReportActivity;->mReportInfoFilePath:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 125
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lcom/termux/shared/activities/ReportActivity;->mReportInfoFilePath:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {v0, v4, v1, v5}, Lcom/termux/shared/file/FileUtils;->readSerializableObjectFromFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Z)Lcom/termux/shared/file/FileUtils$ReadSerializableObjectResult;

    move-result-object v0

    .line 126
    iget-object v4, v0, Lcom/termux/shared/file/FileUtils$ReadSerializableObjectResult;->error:Lcom/termux/shared/errors/Error;

    if-eqz v4, :cond_1

    .line 127
    invoke-virtual {v4}, Lcom/termux/shared/errors/Error;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/termux/shared/logger/Logger;->logErrorExtended(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    iget-object v0, v0, Lcom/termux/shared/file/FileUtils$ReadSerializableObjectResult;->error:Lcom/termux/shared/errors/Error;

    invoke-static {v0}, Lcom/termux/shared/errors/Error;->getMinimalErrorString(Lcom/termux/shared/errors/Error;)Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x1

    invoke-static {p0, v0, v4}, Lcom/termux/shared/logger/Logger;->showToast(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 129
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    .line 131
    :cond_1
    iget-object v0, v0, Lcom/termux/shared/file/FileUtils$ReadSerializableObjectResult;->serializableObject:Ljava/io/Serializable;

    if-eqz v0, :cond_3

    .line 132
    check-cast v0, Lcom/termux/shared/models/ReportInfo;

    iput-object v0, p0, Lcom/termux/shared/activities/ReportActivity;->mReportInfo:Lcom/termux/shared/models/ReportInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 135
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v3, v4}, Lcom/termux/shared/logger/Logger;->logErrorAndShowToast(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failure while getting "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " serialized object from file at path \""

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/termux/shared/activities/ReportActivity;->mReportInfoFilePath:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1, v0}, Lcom/termux/shared/logger/Logger;->logStackTraceWithMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 140
    :cond_2
    iget-object v0, p0, Lcom/termux/shared/activities/ReportActivity;->mBundle:Landroid/os/Bundle;

    sget-object v1, Lcom/termux/shared/activities/ReportActivity;->EXTRA_REPORT_INFO_OBJECT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/termux/shared/models/ReportInfo;

    iput-object v0, p0, Lcom/termux/shared/activities/ReportActivity;->mReportInfo:Lcom/termux/shared/models/ReportInfo;

    .line 143
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/termux/shared/activities/ReportActivity;->mReportInfo:Lcom/termux/shared/models/ReportInfo;

    if-nez v0, :cond_4

    .line 144
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 148
    :cond_4
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 150
    iget-object v1, p0, Lcom/termux/shared/activities/ReportActivity;->mReportInfo:Lcom/termux/shared/models/ReportInfo;

    iget-object v1, v1, Lcom/termux/shared/models/ReportInfo;->reportTitle:Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 151
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 153
    :cond_5
    const-string v1, "Termux App Report"

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 157
    :cond_6
    :goto_2
    sget v0, Lcom/termux/shared/R$id;->recycler_view:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    .line 159
    invoke-static {p0}, Lcom/termux/shared/markdown/MarkdownUtils;->getRecyclerMarkwonBuilder(Landroid/content/Context;)Lio/noties/markwon/Markwon;

    move-result-object v1

    .line 161
    sget v2, Lcom/termux/shared/R$layout;->markdown_adapter_node_default:I

    invoke-static {v2}, Lio/noties/markwon/recycler/MarkwonAdapter;->builderTextViewIsRoot(I)Lio/noties/markwon/recycler/MarkwonAdapter$Builder;

    move-result-object v2

    sget v3, Lcom/termux/shared/R$layout;->markdown_adapter_node_code_block:I

    sget v4, Lcom/termux/shared/R$id;->code_text_view:I

    .line 162
    invoke-static {v3, v4}, Lio/noties/markwon/recycler/SimpleEntry;->create(II)Lio/noties/markwon/recycler/SimpleEntry;

    move-result-object v3

    const-class v4, Lorg/commonmark/node/FencedCodeBlock;

    invoke-interface {v2, v4, v3}, Lio/noties/markwon/recycler/MarkwonAdapter$Builder;->include(Ljava/lang/Class;Lio/noties/markwon/recycler/MarkwonAdapter$Entry;)Lio/noties/markwon/recycler/MarkwonAdapter$Builder;

    move-result-object v2

    .line 163
    invoke-interface {v2}, Lio/noties/markwon/recycler/MarkwonAdapter$Builder;->build()Lio/noties/markwon/recycler/MarkwonAdapter;

    move-result-object v2

    .line 165
    new-instance v3, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v3, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 166
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 168
    invoke-direct {p0}, Lcom/termux/shared/activities/ReportActivity;->generateReportActivityMarkdownString()V

    .line 169
    iget-object v0, p0, Lcom/termux/shared/activities/ReportActivity;->mReportActivityMarkdownString:Ljava/lang/String;

    invoke-virtual {v2, v1, v0}, Lio/noties/markwon/recycler/MarkwonAdapter;->setMarkdown(Lio/noties/markwon/Markwon;Ljava/lang/String;)V

    .line 170
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    .line 209
    invoke-virtual {p0}, Landroid/app/Activity;->finishAndRemoveTask()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 74
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 75
    const-string v0, "ReportActivity"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lcom/termux/shared/logger/Logger;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    invoke-static {}, Lcom/termux/shared/theme/NightMode;->getAppNightMode()Lcom/termux/shared/theme/NightMode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/termux/shared/theme/NightMode;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/termux/shared/activity/media/AppCompatActivityUtils;->setNightMode(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/String;Z)V

    .line 79
    sget v0, Lcom/termux/shared/R$layout;->activity_report:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 81
    sget v0, Lcom/termux/shared/R$id;->toolbar:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    if-eqz v0, :cond_0

    .line 83
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    :cond_0
    const/4 v0, 0x0

    .line 86
    iput-object v0, p0, Lcom/termux/shared/activities/ReportActivity;->mBundle:Landroid/os/Bundle;

    .line 87
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 89
    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, p0, Lcom/termux/shared/activities/ReportActivity;->mBundle:Landroid/os/Bundle;

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    .line 91
    iput-object p1, p0, Lcom/termux/shared/activities/ReportActivity;->mBundle:Landroid/os/Bundle;

    .line 93
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/termux/shared/activities/ReportActivity;->updateUI()V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .line 194
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 195
    sget v1, Lcom/termux/shared/R$menu;->menu_report:I

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 197
    iget-object v0, p0, Lcom/termux/shared/activities/ReportActivity;->mReportInfo:Lcom/termux/shared/models/ReportInfo;

    iget-object v0, v0, Lcom/termux/shared/models/ReportInfo;->reportSaveFilePath:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 198
    sget v0, Lcom/termux/shared/R$id;->menu_item_save_report_to_file:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 200
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method protected onDestroy()V
    .locals 2

    .line 186
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    .line 187
    const-string v0, "ReportActivity"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/termux/shared/logger/Logger;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    iget-object v0, p0, Lcom/termux/shared/activities/ReportActivity;->mReportInfoFilePath:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/termux/shared/activities/ReportActivity;->deleteReportInfoFile(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2

    .line 99
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 100
    const-string v0, "ReportActivity"

    const-string v1, "onNewIntent"

    invoke-static {v0, v1}, Lcom/termux/shared/logger/Logger;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    if-eqz p1, :cond_0

    .line 105
    iget-object v0, p0, Lcom/termux/shared/activities/ReportActivity;->mReportInfoFilePath:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/termux/shared/activities/ReportActivity;->deleteReportInfoFile(Landroid/content/Context;Ljava/lang/String;)V

    .line 106
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, p0, Lcom/termux/shared/activities/ReportActivity;->mBundle:Landroid/os/Bundle;

    .line 107
    invoke-direct {p0}, Lcom/termux/shared/activities/ReportActivity;->updateUI()V

    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6

    .line 214
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    .line 215
    sget v0, Lcom/termux/shared/R$id;->menu_item_share_report:I

    if-ne p1, v0, :cond_0

    .line 216
    sget p1, Lcom/termux/shared/R$string;->title_report_text:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/termux/shared/activities/ReportActivity;->mReportInfo:Lcom/termux/shared/models/ReportInfo;

    invoke-static {v0}, Lcom/termux/shared/models/ReportInfo;->getReportInfoMarkdownString(Lcom/termux/shared/models/ReportInfo;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/termux/shared/interact/ShareUtils;->shareText(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 217
    :cond_0
    sget v0, Lcom/termux/shared/R$id;->menu_item_copy_report:I

    if-ne p1, v0, :cond_1

    .line 218
    iget-object p1, p0, Lcom/termux/shared/activities/ReportActivity;->mReportInfo:Lcom/termux/shared/models/ReportInfo;

    invoke-static {p1}, Lcom/termux/shared/models/ReportInfo;->getReportInfoMarkdownString(Lcom/termux/shared/models/ReportInfo;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/termux/shared/interact/ShareUtils;->copyTextToClipboard(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 219
    :cond_1
    sget v0, Lcom/termux/shared/R$id;->menu_item_save_report_to_file:I

    if-ne p1, v0, :cond_2

    .line 220
    iget-object p1, p0, Lcom/termux/shared/activities/ReportActivity;->mReportInfo:Lcom/termux/shared/models/ReportInfo;

    iget-object v1, p1, Lcom/termux/shared/models/ReportInfo;->reportSaveFileLabel:Ljava/lang/String;

    iget-object v2, p1, Lcom/termux/shared/models/ReportInfo;->reportSaveFilePath:Ljava/lang/String;

    .line 221
    invoke-static {p1}, Lcom/termux/shared/models/ReportInfo;->getReportInfoMarkdownString(Lcom/termux/shared/models/ReportInfo;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    const/16 v5, 0x3e8

    move-object v0, p0

    .line 220
    invoke-static/range {v0 .. v5}, Lcom/termux/shared/interact/ShareUtils;->saveTextToFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 6

    .line 230
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 231
    array-length p2, p3

    const-string v0, "ReportActivity"

    if-lez p2, :cond_0

    const/4 p2, 0x0

    aget p2, p3, p2

    if-nez p2, :cond_0

    .line 232
    const-string p2, "Storage permission granted by user on request."

    invoke-static {v0, p2}, Lcom/termux/shared/logger/Logger;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p2, 0x3e8

    if-ne p1, p2, :cond_1

    .line 234
    iget-object p1, p0, Lcom/termux/shared/activities/ReportActivity;->mReportInfo:Lcom/termux/shared/models/ReportInfo;

    iget-object v1, p1, Lcom/termux/shared/models/ReportInfo;->reportSaveFileLabel:Ljava/lang/String;

    iget-object v2, p1, Lcom/termux/shared/models/ReportInfo;->reportSaveFilePath:Ljava/lang/String;

    .line 235
    invoke-static {p1}, Lcom/termux/shared/models/ReportInfo;->getReportInfoMarkdownString(Lcom/termux/shared/models/ReportInfo;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, -0x1

    move-object v0, p0

    .line 234
    invoke-static/range {v0 .. v5}, Lcom/termux/shared/interact/ShareUtils;->saveTextToFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    goto :goto_0

    .line 239
    :cond_0
    const-string p1, "Storage permission denied by user on request."

    invoke-static {v0, p1}, Lcom/termux/shared/logger/Logger;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 176
    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 177
    iget-object v0, p0, Lcom/termux/shared/activities/ReportActivity;->mBundle:Landroid/os/Bundle;

    sget-object v1, Lcom/termux/shared/activities/ReportActivity;->EXTRA_REPORT_INFO_OBJECT_FILE_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/termux/shared/activities/ReportActivity;->mReportInfoFilePath:Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 180
    :cond_0
    sget-object v0, Lcom/termux/shared/activities/ReportActivity;->EXTRA_REPORT_INFO_OBJECT:Ljava/lang/String;

    iget-object v1, p0, Lcom/termux/shared/activities/ReportActivity;->mReportInfo:Lcom/termux/shared/models/ReportInfo;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    :goto_0
    return-void
.end method
