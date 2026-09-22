.class public Lcom/termux/shared/activities/ReportActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "ReportActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/termux/shared/activities/ReportActivity$NewInstanceResult;,
        Lcom/termux/shared/activities/ReportActivity$ReportActivityBroadcastReceiver;
    }
.end annotation


# static fields
.field private static final ACTION_DELETE_REPORT_INFO_OBJECT_FILE:Ljava/lang/String;

.field public static final ACTIVITY_TEXT_SIZE_LIMIT_IN_BYTES:I = 0xfa000

.field private static final CACHE_DIR_BASENAME:Ljava/lang/String; = "report_activity"

.field private static final CACHE_FILE_BASENAME_PREFIX:Ljava/lang/String; = "report_info_"

.field private static final CLASS_NAME:Ljava/lang/String;

.field private static final EXTRA_REPORT_INFO_OBJECT:Ljava/lang/String;

.field private static final EXTRA_REPORT_INFO_OBJECT_FILE_PATH:Ljava/lang/String;

.field private static final LOG_TAG:Ljava/lang/String; = "ReportActivity"

.field public static final REQUEST_GRANT_STORAGE_PERMISSION_FOR_SAVE_FILE:I = 0x3e8


# instance fields
.field private mBundle:Landroid/os/Bundle;

.field private mReportActivityMarkdownString:Ljava/lang/String;

.field private mReportInfo:Lcom/termux/shared/models/ReportInfo;

.field private mReportInfoFilePath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 50
    const-class v0, Lcom/termux/shared/activities/ReportActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/termux/shared/activities/ReportActivity;->CLASS_NAME:Ljava/lang/String;

    .line 51
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".ACTION_DELETE_REPORT_INFO_OBJECT_FILE"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/termux/shared/activities/ReportActivity;->ACTION_DELETE_REPORT_INFO_OBJECT_FILE:Ljava/lang/String;

    .line 53
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".EXTRA_REPORT_INFO_OBJECT"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/termux/shared/activities/ReportActivity;->EXTRA_REPORT_INFO_OBJECT:Ljava/lang/String;

    .line 54
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".EXTRA_REPORT_INFO_OBJECT_FILE_PATH"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/termux/shared/activities/ReportActivity;->EXTRA_REPORT_INFO_OBJECT_FILE_PATH:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;I)Lcom/termux/shared/models/errors/Error;
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # I

    .line 48
    invoke-static {p0, p1}, Lcom/termux/shared/activities/ReportActivity;->deleteReportInfoFilesOlderThanXDaysInner(Landroid/content/Context;I)Lcom/termux/shared/models/errors/Error;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 48
    sget-object v0, Lcom/termux/shared/activities/ReportActivity;->ACTION_DELETE_REPORT_INFO_OBJECT_FILE:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .line 48
    sget-object v0, Lcom/termux/shared/activities/ReportActivity;->EXTRA_REPORT_INFO_OBJECT_FILE_PATH:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # Ljava/lang/String;

    .line 48
    invoke-static {p0, p1}, Lcom/termux/shared/activities/ReportActivity;->deleteReportInfoFile(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private static createContentIntent(Landroid/content/Context;Lcom/termux/shared/models/ReportInfo;Ljava/lang/String;)Landroid/content/Intent;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "reportInfo"    # Lcom/termux/shared/models/ReportInfo;
    .param p2, "reportInfoFilePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "context",
            "reportInfo",
            "reportInfoFilePath"
        }
    .end annotation

    .line 351
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/termux/shared/activities/ReportActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 352
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 354
    .local v1, "bundle":Landroid/os/Bundle;
    if-eqz p2, :cond_0

    .line 355
    sget-object v2, Lcom/termux/shared/activities/ReportActivity;->EXTRA_REPORT_INFO_OBJECT_FILE_PATH:Ljava/lang/String;

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 357
    :cond_0
    sget-object v2, Lcom/termux/shared/activities/ReportActivity;->EXTRA_REPORT_INFO_OBJECT:Ljava/lang/String;

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 360
    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 365
    const/high16 v2, 0x30080000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 366
    return-object v0
.end method

.method private static createDeleteIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "reportInfoFilePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "context",
            "reportInfoFilePath"
        }
    .end annotation

    .line 371
    if-nez p1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 373
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/termux/shared/activities/ReportActivity$ReportActivityBroadcastReceiver;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 374
    .local v0, "intent":Landroid/content/Intent;
    sget-object v1, Lcom/termux/shared/activities/ReportActivity;->ACTION_DELETE_REPORT_INFO_OBJECT_FILE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 376
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 377
    .local v1, "bundle":Landroid/os/Bundle;
    sget-object v2, Lcom/termux/shared/activities/ReportActivity;->EXTRA_REPORT_INFO_OBJECT_FILE_PATH:Ljava/lang/String;

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 380
    return-object v0
.end method

.method private static deleteReportInfoFile(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "reportInfoFilePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "reportInfoFilePath"
        }
    .end annotation

    .line 394
    if-eqz p0, :cond_3

    if-nez p1, :cond_0

    goto/16 :goto_1

    .line 397
    :cond_0
    invoke-static {p0}, Lcom/termux/shared/activities/ReportActivity;->getReportInfoDirectoryPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 398
    .local v0, "reportInfoDirectoryPath":Ljava/lang/String;
    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/termux/shared/file/FileUtils;->getCanonicalPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 399
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "\""

    const-string v3, " serialized object file at path \""

    const-string v4, "ReportActivity"

    if-nez v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "/"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 400
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Deleting "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v5, Lcom/termux/shared/models/ReportInfo;

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/termux/shared/logger/Logger;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    const-class v1, Lcom/termux/shared/models/ReportInfo;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, p1, v2}, Lcom/termux/shared/file/FileUtils;->deleteRegularFile(Ljava/lang/String;Ljava/lang/String;Z)Lcom/termux/shared/models/errors/Error;

    move-result-object v1

    .line 402
    .local v1, "error":Lcom/termux/shared/models/errors/Error;
    if-eqz v1, :cond_1

    .line 403
    invoke-virtual {v1}, Lcom/termux/shared/models/errors/Error;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/termux/shared/logger/Logger;->logErrorExtended(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    .end local v1    # "error":Lcom/termux/shared/models/errors/Error;
    :cond_1
    goto :goto_0

    .line 406
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Not deleting "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v5, Lcom/termux/shared/models/ReportInfo;

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\" since its not under \""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/termux/shared/logger/Logger;->logError(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    :goto_0
    return-void

    .line 394
    .end local v0    # "reportInfoDirectoryPath":Ljava/lang/String;
    :cond_3
    :goto_1
    return-void
.end method

.method public static deleteReportInfoFilesOlderThanXDays(Landroid/content/Context;IZ)Lcom/termux/shared/models/errors/Error;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "days"    # I
    .param p2, "isSynchronous"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0,
            0x10
        }
        names = {
            "context",
            "days",
            "isSynchronous"
        }
    .end annotation

    .line 427
    if-eqz p2, :cond_0

    .line 428
    invoke-static {p0, p1}, Lcom/termux/shared/activities/ReportActivity;->deleteReportInfoFilesOlderThanXDaysInner(Landroid/content/Context;I)Lcom/termux/shared/models/errors/Error;

    move-result-object v0

    return-object v0

    .line 430
    :cond_0
    new-instance v0, Lcom/termux/shared/activities/ReportActivity$1;

    invoke-direct {v0, p0, p1}, Lcom/termux/shared/activities/ReportActivity$1;-><init>(Landroid/content/Context;I)V

    .line 435
    invoke-virtual {v0}, Lcom/termux/shared/activities/ReportActivity$1;->start()V

    .line 436
    const/4 v0, 0x0

    return-object v0
.end method

.method private static deleteReportInfoFilesOlderThanXDaysInner(Landroid/content/Context;I)Lcom/termux/shared/models/errors/Error;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "days"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0
        }
        names = {
            "context",
            "days"
        }
    .end annotation

    .line 442
    invoke-static {p0}, Lcom/termux/shared/activities/ReportActivity;->getReportInfoDirectoryPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    .line 443
    .local v6, "reportInfoDirectoryPath":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Deleting "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/termux/shared/models/ReportInfo;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " serialized object files under directory path \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\" older than "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " days"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ReportActivity"

    invoke-static {v1, v0}, Lcom/termux/shared/logger/Logger;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 444
    const-class v0, Lcom/termux/shared/models/ReportInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/termux/shared/file/filesystem/FileType;->REGULAR:Lcom/termux/shared/file/filesystem/FileType;

    invoke-virtual {v1}, Lcom/termux/shared/file/filesystem/FileType;->getValue()I

    move-result v5

    const/4 v2, 0x0

    const/4 v4, 0x1

    move-object v1, v6

    move v3, p1

    invoke-static/range {v0 .. v5}, Lcom/termux/shared/file/FileUtils;->deleteFilesOlderThanXDays(Ljava/lang/String;Ljava/lang/String;Lorg/apache/commons/io/filefilter/IOFileFilter;IZI)Lcom/termux/shared/models/errors/Error;

    move-result-object v0

    return-object v0
.end method

.method private generateReportActivityMarkdownString()V
    .locals 13

    .line 245
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 247
    .local v0, "reportString":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/termux/shared/activities/ReportActivity;->mReportInfo:Lcom/termux/shared/models/ReportInfo;

    iget-object v1, v1, Lcom/termux/shared/models/ReportInfo;->reportStringPrefix:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 248
    iget-object v1, p0, Lcom/termux/shared/activities/ReportActivity;->mReportInfo:Lcom/termux/shared/models/ReportInfo;

    iget-object v1, v1, Lcom/termux/shared/models/ReportInfo;->reportStringPrefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    :cond_0
    iget-object v1, p0, Lcom/termux/shared/activities/ReportActivity;->mReportInfo:Lcom/termux/shared/models/ReportInfo;

    invoke-static {v1}, Lcom/termux/shared/models/ReportInfo;->getReportInfoMarkdownString(Lcom/termux/shared/models/ReportInfo;)Ljava/lang/String;

    move-result-object v1

    .line 251
    .local v1, "reportMarkdownString":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    array-length v2, v2

    .line 252
    .local v2, "reportMarkdownStringSize":I
    const/4 v3, 0x0

    .line 253
    .local v3, "truncated":Z
    const-string v4, " and will be truncated"

    const-string v5, " is greater than "

    const-string v6, "ReportActivity"

    const/4 v7, 0x0

    const/4 v8, 0x1

    const v9, 0xfa000

    if-le v2, v9, :cond_1

    .line 254
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/termux/shared/activities/ReportActivity;->mReportInfo:Lcom/termux/shared/models/ReportInfo;

    iget-object v11, v11, Lcom/termux/shared/models/ReportInfo;->reportTitle:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " report string size "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v6, v10}, Lcom/termux/shared/logger/Logger;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    invoke-static {v1, v9, v8, v7, v8}, Lcom/termux/shared/data/DataUtils;->getTruncatedCommandOutput(Ljava/lang/String;IZZZ)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    const/4 v3, 0x1

    goto :goto_0

    .line 258
    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    :goto_0
    const/4 v1, 0x0

    .line 264
    iget-object v10, p0, Lcom/termux/shared/activities/ReportActivity;->mReportInfo:Lcom/termux/shared/models/ReportInfo;

    iget-object v10, v10, Lcom/termux/shared/models/ReportInfo;->reportStringSuffix:Ljava/lang/String;

    if-eqz v10, :cond_2

    .line 265
    iget-object v10, p0, Lcom/termux/shared/activities/ReportActivity;->mReportInfo:Lcom/termux/shared/models/ReportInfo;

    iget-object v10, v10, Lcom/termux/shared/models/ReportInfo;->reportStringSuffix:Ljava/lang/String;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    .line 268
    .local v10, "reportStringSize":I
    if-le v10, v9, :cond_3

    .line 270
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v12, p0, Lcom/termux/shared/activities/ReportActivity;->mReportInfo:Lcom/termux/shared/models/ReportInfo;

    iget-object v12, v12, Lcom/termux/shared/models/ReportInfo;->reportTitle:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " report string total size "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Lcom/termux/shared/logger/Logger;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget v5, Lcom/termux/shared/R$string;->msg_report_truncated:I

    invoke-virtual {p0, v5}, Lcom/termux/shared/activities/ReportActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 272
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v9, v8, v7, v7}, Lcom/termux/shared/data/DataUtils;->getTruncatedCommandOutput(Ljava/lang/String;IZZZ)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/termux/shared/activities/ReportActivity;->mReportActivityMarkdownString:Ljava/lang/String;

    goto :goto_1

    .line 273
    :cond_3
    if-eqz v3, :cond_4

    .line 274
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget v5, Lcom/termux/shared/R$string;->msg_report_truncated:I

    invoke-virtual {p0, v5}, Lcom/termux/shared/activities/ReportActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/termux/shared/activities/ReportActivity;->mReportActivityMarkdownString:Ljava/lang/String;

    goto :goto_1

    .line 276
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/termux/shared/activities/ReportActivity;->mReportActivityMarkdownString:Ljava/lang/String;

    .line 279
    :goto_1
    return-void
.end method

.method private static getReportInfoDirectoryPath(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 390
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/termux/shared/file/FileUtils;->getCanonicalPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "report_activity"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static newInstance(Landroid/content/Context;Lcom/termux/shared/models/ReportInfo;)Lcom/termux/shared/activities/ReportActivity$NewInstanceResult;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "reportInfo"    # Lcom/termux/shared/models/ReportInfo;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "context",
            "reportInfo"
        }
    .end annotation

    .line 330
    invoke-static {p1}, Lcom/termux/shared/data/DataUtils;->getSerializedSize(Ljava/io/Serializable;)J

    move-result-wide v0

    .line 331
    .local v0, "size":J
    const-wide/32 v2, 0x19000

    cmp-long v2, v0, v2

    const/4 v3, 0x0

    if-lez v2, :cond_1

    .line 332
    invoke-static {p0}, Lcom/termux/shared/activities/ReportActivity;->getReportInfoDirectoryPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 333
    .local v2, "reportInfoDirectoryPath":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "report_info_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/termux/shared/models/ReportInfo;->reportTimestamp:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 334
    .local v4, "reportInfoFilePath":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p1, Lcom/termux/shared/models/ReportInfo;->reportTitle:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-class v6, Lcom/termux/shared/models/ReportInfo;

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " serialized object size "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is greater than "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const v6, 0x19000

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " and it will be written to file at path \""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "ReportActivity"

    invoke-static {v6, v5}, Lcom/termux/shared/logger/Logger;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    const-class v5, Lcom/termux/shared/models/ReportInfo;

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v4, p1}, Lcom/termux/shared/file/FileUtils;->writeSerializableObjectToFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/Serializable;)Lcom/termux/shared/models/errors/Error;

    move-result-object v5

    .line 336
    .local v5, "error":Lcom/termux/shared/models/errors/Error;
    if-eqz v5, :cond_0

    .line 337
    invoke-virtual {v5}, Lcom/termux/shared/models/errors/Error;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/termux/shared/logger/Logger;->logErrorExtended(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    invoke-static {v5}, Lcom/termux/shared/models/errors/Error;->getMinimalErrorString(Lcom/termux/shared/models/errors/Error;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    invoke-static {p0, v6, v7}, Lcom/termux/shared/logger/Logger;->showToast(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 339
    new-instance v6, Lcom/termux/shared/activities/ReportActivity$NewInstanceResult;

    invoke-direct {v6, v3, v3}, Lcom/termux/shared/activities/ReportActivity$NewInstanceResult;-><init>(Landroid/content/Intent;Landroid/content/Intent;)V

    return-object v6

    .line 342
    :cond_0
    new-instance v6, Lcom/termux/shared/activities/ReportActivity$NewInstanceResult;

    invoke-static {p0, v3, v4}, Lcom/termux/shared/activities/ReportActivity;->createContentIntent(Landroid/content/Context;Lcom/termux/shared/models/ReportInfo;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    .line 343
    invoke-static {p0, v4}, Lcom/termux/shared/activities/ReportActivity;->createDeleteIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    invoke-direct {v6, v3, v7}, Lcom/termux/shared/activities/ReportActivity$NewInstanceResult;-><init>(Landroid/content/Intent;Landroid/content/Intent;)V

    .line 342
    return-object v6

    .line 345
    .end local v2    # "reportInfoDirectoryPath":Ljava/lang/String;
    .end local v4    # "reportInfoFilePath":Ljava/lang/String;
    .end local v5    # "error":Lcom/termux/shared/models/errors/Error;
    :cond_1
    new-instance v2, Lcom/termux/shared/activities/ReportActivity$NewInstanceResult;

    invoke-static {p0, p1, v3}, Lcom/termux/shared/activities/ReportActivity;->createContentIntent(Landroid/content/Context;Lcom/termux/shared/models/ReportInfo;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    invoke-direct {v2, v4, v3}, Lcom/termux/shared/activities/ReportActivity$NewInstanceResult;-><init>(Landroid/content/Intent;Landroid/content/Intent;)V

    return-object v2
.end method

.method public static startReportActivity(Landroid/content/Context;Lcom/termux/shared/models/ReportInfo;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "reportInfo"    # Lcom/termux/shared/models/ReportInfo;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0
        }
        names = {
            "context",
            "reportInfo"
        }
    .end annotation

    .line 306
    invoke-static {p0, p1}, Lcom/termux/shared/activities/ReportActivity;->newInstance(Landroid/content/Context;Lcom/termux/shared/models/ReportInfo;)Lcom/termux/shared/activities/ReportActivity$NewInstanceResult;

    move-result-object v0

    .line 307
    .local v0, "result":Lcom/termux/shared/activities/ReportActivity$NewInstanceResult;
    iget-object v1, v0, Lcom/termux/shared/activities/ReportActivity$NewInstanceResult;->contentIntent:Landroid/content/Intent;

    if-nez v1, :cond_0

    return-void

    .line 308
    :cond_0
    iget-object v1, v0, Lcom/termux/shared/activities/ReportActivity$NewInstanceResult;->contentIntent:Landroid/content/Intent;

    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 309
    return-void
.end method

.method private updateUI()V
    .locals 7

    .line 109
    iget-object v0, p0, Lcom/termux/shared/activities/ReportActivity;->mBundle:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 110
    invoke-virtual {p0}, Lcom/termux/shared/activities/ReportActivity;->finish()V

    return-void

    .line 113
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/termux/shared/activities/ReportActivity;->mReportInfo:Lcom/termux/shared/models/ReportInfo;

    .line 114
    iput-object v1, p0, Lcom/termux/shared/activities/ReportActivity;->mReportInfoFilePath:Ljava/lang/String;

    .line 116
    sget-object v1, Lcom/termux/shared/activities/ReportActivity;->EXTRA_REPORT_INFO_OBJECT_FILE_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 117
    iget-object v0, p0, Lcom/termux/shared/activities/ReportActivity;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/termux/shared/activities/ReportActivity;->mReportInfoFilePath:Ljava/lang/String;

    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/termux/shared/models/ReportInfo;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " serialized object will be read from file at path \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/termux/shared/activities/ReportActivity;->mReportInfoFilePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ReportActivity"

    invoke-static {v2, v0}, Lcom/termux/shared/logger/Logger;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    iget-object v0, p0, Lcom/termux/shared/activities/ReportActivity;->mReportInfoFilePath:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 121
    :try_start_0
    const-class v0, Lcom/termux/shared/models/ReportInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/termux/shared/activities/ReportActivity;->mReportInfoFilePath:Ljava/lang/String;

    const-class v4, Lcom/termux/shared/models/ReportInfo;

    const/4 v5, 0x0

    invoke-static {v0, v3, v4, v5}, Lcom/termux/shared/file/FileUtils;->readSerializableObjectFromFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Z)Lcom/termux/shared/file/FileUtils$ReadSerializableObjectResult;

    move-result-object v0

    .line 122
    .local v0, "result":Lcom/termux/shared/file/FileUtils$ReadSerializableObjectResult;
    iget-object v3, v0, Lcom/termux/shared/file/FileUtils$ReadSerializableObjectResult;->error:Lcom/termux/shared/models/errors/Error;

    if-eqz v3, :cond_1

    .line 123
    iget-object v3, v0, Lcom/termux/shared/file/FileUtils$ReadSerializableObjectResult;->error:Lcom/termux/shared/models/errors/Error;

    invoke-virtual {v3}, Lcom/termux/shared/models/errors/Error;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/termux/shared/logger/Logger;->logErrorExtended(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    iget-object v3, v0, Lcom/termux/shared/file/FileUtils$ReadSerializableObjectResult;->error:Lcom/termux/shared/models/errors/Error;

    invoke-static {v3}, Lcom/termux/shared/models/errors/Error;->getMinimalErrorString(Lcom/termux/shared/models/errors/Error;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {p0, v3, v4}, Lcom/termux/shared/logger/Logger;->showToast(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 125
    invoke-virtual {p0}, Lcom/termux/shared/activities/ReportActivity;->finish()V

    return-void

    .line 127
    :cond_1
    iget-object v3, v0, Lcom/termux/shared/file/FileUtils$ReadSerializableObjectResult;->serializableObject:Ljava/io/Serializable;

    if-eqz v3, :cond_2

    .line 128
    iget-object v3, v0, Lcom/termux/shared/file/FileUtils$ReadSerializableObjectResult;->serializableObject:Ljava/io/Serializable;

    check-cast v3, Lcom/termux/shared/models/ReportInfo;

    iput-object v3, p0, Lcom/termux/shared/activities/ReportActivity;->mReportInfo:Lcom/termux/shared/models/ReportInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 130
    .end local v0    # "result":Lcom/termux/shared/file/FileUtils$ReadSerializableObjectResult;
    :catch_0
    move-exception v0

    .line 131
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v2, v3}, Lcom/termux/shared/logger/Logger;->logErrorAndShowToast(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failure while getting "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-class v4, Lcom/termux/shared/models/ReportInfo;

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " serialized object from file at path \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/termux/shared/activities/ReportActivity;->mReportInfoFilePath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1, v0}, Lcom/termux/shared/logger/Logger;->logStackTraceWithMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 133
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_0
    goto :goto_1

    .line 136
    :cond_3
    iget-object v0, p0, Lcom/termux/shared/activities/ReportActivity;->mBundle:Landroid/os/Bundle;

    sget-object v1, Lcom/termux/shared/activities/ReportActivity;->EXTRA_REPORT_INFO_OBJECT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/termux/shared/models/ReportInfo;

    iput-object v0, p0, Lcom/termux/shared/activities/ReportActivity;->mReportInfo:Lcom/termux/shared/models/ReportInfo;

    .line 139
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/termux/shared/activities/ReportActivity;->mReportInfo:Lcom/termux/shared/models/ReportInfo;

    if-nez v0, :cond_5

    .line 140
    invoke-virtual {p0}, Lcom/termux/shared/activities/ReportActivity;->finish()V

    return-void

    .line 144
    :cond_5
    invoke-virtual {p0}, Lcom/termux/shared/activities/ReportActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    .line 145
    .local v0, "actionBar":Landroidx/appcompat/app/ActionBar;
    if-eqz v0, :cond_7

    .line 146
    iget-object v1, p0, Lcom/termux/shared/activities/ReportActivity;->mReportInfo:Lcom/termux/shared/models/ReportInfo;

    iget-object v1, v1, Lcom/termux/shared/models/ReportInfo;->reportTitle:Ljava/lang/String;

    if-eqz v1, :cond_6

    .line 147
    iget-object v1, p0, Lcom/termux/shared/activities/ReportActivity;->mReportInfo:Lcom/termux/shared/models/ReportInfo;

    iget-object v1, v1, Lcom/termux/shared/models/ReportInfo;->reportTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 149
    :cond_6
    const-string v1, "Termux App Report"

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 153
    :cond_7
    :goto_2
    sget v1, Lcom/termux/shared/R$id;->recycler_view:I

    invoke-virtual {p0, v1}, Lcom/termux/shared/activities/ReportActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    .line 155
    .local v1, "recyclerView":Landroidx/recyclerview/widget/RecyclerView;
    invoke-static {p0}, Lcom/termux/shared/markdown/MarkdownUtils;->getRecyclerMarkwonBuilder(Landroid/content/Context;)Lio/noties/markwon/Markwon;

    move-result-object v2

    .line 157
    .local v2, "markwon":Lio/noties/markwon/Markwon;
    sget v3, Lcom/termux/shared/R$layout;->markdown_adapter_node_default:I

    invoke-static {v3}, Lio/noties/markwon/recycler/MarkwonAdapter;->builderTextViewIsRoot(I)Lio/noties/markwon/recycler/MarkwonAdapter$Builder;

    move-result-object v3

    const-class v4, Lorg/commonmark/node/FencedCodeBlock;

    sget v5, Lcom/termux/shared/R$layout;->markdown_adapter_node_code_block:I

    sget v6, Lcom/termux/shared/R$id;->code_text_view:I

    .line 158
    invoke-static {v5, v6}, Lio/noties/markwon/recycler/SimpleEntry;->create(II)Lio/noties/markwon/recycler/SimpleEntry;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lio/noties/markwon/recycler/MarkwonAdapter$Builder;->include(Ljava/lang/Class;Lio/noties/markwon/recycler/MarkwonAdapter$Entry;)Lio/noties/markwon/recycler/MarkwonAdapter$Builder;

    move-result-object v3

    .line 159
    invoke-interface {v3}, Lio/noties/markwon/recycler/MarkwonAdapter$Builder;->build()Lio/noties/markwon/recycler/MarkwonAdapter;

    move-result-object v3

    .line 161
    .local v3, "adapter":Lio/noties/markwon/recycler/MarkwonAdapter;
    new-instance v4, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v4, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v4}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 162
    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 164
    invoke-direct {p0}, Lcom/termux/shared/activities/ReportActivity;->generateReportActivityMarkdownString()V

    .line 165
    iget-object v4, p0, Lcom/termux/shared/activities/ReportActivity;->mReportActivityMarkdownString:Ljava/lang/String;

    invoke-virtual {v3, v2, v4}, Lio/noties/markwon/recycler/MarkwonAdapter;->setMarkdown(Lio/noties/markwon/Markwon;Ljava/lang/String;)V

    .line 166
    invoke-virtual {v3}, Lio/noties/markwon/recycler/MarkwonAdapter;->notifyDataSetChanged()V

    .line 167
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    .line 205
    invoke-virtual {p0}, Lcom/termux/shared/activities/ReportActivity;->finishAndRemoveTask()V

    .line 206
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 72
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 73
    const-string v0, "ReportActivity"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lcom/termux/shared/logger/Logger;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    sget v0, Lcom/termux/shared/R$layout;->activity_report:I

    invoke-virtual {p0, v0}, Lcom/termux/shared/activities/ReportActivity;->setContentView(I)V

    .line 77
    sget v0, Lcom/termux/shared/R$id;->toolbar:I

    invoke-virtual {p0, v0}, Lcom/termux/shared/activities/ReportActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    .line 78
    .local v0, "toolbar":Landroidx/appcompat/widget/Toolbar;
    if-eqz v0, :cond_0

    .line 79
    invoke-virtual {p0, v0}, Lcom/termux/shared/activities/ReportActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 82
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/termux/shared/activities/ReportActivity;->mBundle:Landroid/os/Bundle;

    .line 83
    invoke-virtual {p0}, Lcom/termux/shared/activities/ReportActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 84
    .local v1, "intent":Landroid/content/Intent;
    if-eqz v1, :cond_1

    .line 85
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    iput-object v2, p0, Lcom/termux/shared/activities/ReportActivity;->mBundle:Landroid/os/Bundle;

    goto :goto_0

    .line 86
    :cond_1
    if-eqz p1, :cond_2

    .line 87
    iput-object p1, p0, Lcom/termux/shared/activities/ReportActivity;->mBundle:Landroid/os/Bundle;

    .line 89
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/termux/shared/activities/ReportActivity;->updateUI()V

    .line 91
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "menu"
        }
    .end annotation

    .line 190
    invoke-virtual {p0}, Lcom/termux/shared/activities/ReportActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 191
    .local v0, "inflater":Landroid/view/MenuInflater;
    sget v1, Lcom/termux/shared/R$menu;->menu_report:I

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 193
    iget-object v1, p0, Lcom/termux/shared/activities/ReportActivity;->mReportInfo:Lcom/termux/shared/models/ReportInfo;

    iget-object v1, v1, Lcom/termux/shared/models/ReportInfo;->reportSaveFilePath:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 194
    sget v1, Lcom/termux/shared/R$id;->menu_item_save_report_to_file:I

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 195
    .local v1, "item":Landroid/view/MenuItem;
    if-eqz v1, :cond_0

    .line 196
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 199
    .end local v1    # "item":Landroid/view/MenuItem;
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method protected onDestroy()V
    .locals 2

    .line 182
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    .line 183
    const-string v0, "ReportActivity"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/termux/shared/logger/Logger;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    iget-object v0, p0, Lcom/termux/shared/activities/ReportActivity;->mReportInfoFilePath:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/termux/shared/activities/ReportActivity;->deleteReportInfoFile(Landroid/content/Context;Ljava/lang/String;)V

    .line 186
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "intent"
        }
    .end annotation

    .line 95
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 96
    const-string v0, "ReportActivity"

    const-string v1, "onNewIntent"

    invoke-static {v0, v1}, Lcom/termux/shared/logger/Logger;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    invoke-virtual {p0, p1}, Lcom/termux/shared/activities/ReportActivity;->setIntent(Landroid/content/Intent;)V

    .line 100
    if-eqz p1, :cond_0

    .line 101
    iget-object v0, p0, Lcom/termux/shared/activities/ReportActivity;->mReportInfoFilePath:Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/termux/shared/activities/ReportActivity;->deleteReportInfoFile(Landroid/content/Context;Ljava/lang/String;)V

    .line 102
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/termux/shared/activities/ReportActivity;->mBundle:Landroid/os/Bundle;

    .line 103
    invoke-direct {p0}, Lcom/termux/shared/activities/ReportActivity;->updateUI()V

    .line 105
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 8
    .param p1, "item"    # Landroid/view/MenuItem;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "item"
        }
    .end annotation

    .line 210
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 211
    .local v0, "id":I
    sget v1, Lcom/termux/shared/R$id;->menu_item_share_report:I

    if-ne v0, v1, :cond_0

    .line 212
    sget v1, Lcom/termux/shared/R$string;->title_report_text:I

    invoke-virtual {p0, v1}, Lcom/termux/shared/activities/ReportActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/termux/shared/activities/ReportActivity;->mReportInfo:Lcom/termux/shared/models/ReportInfo;

    invoke-static {v2}, Lcom/termux/shared/models/ReportInfo;->getReportInfoMarkdownString(Lcom/termux/shared/models/ReportInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v1, v2}, Lcom/termux/shared/interact/ShareUtils;->shareText(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 213
    :cond_0
    sget v1, Lcom/termux/shared/R$id;->menu_item_copy_report:I

    if-ne v0, v1, :cond_1

    .line 214
    iget-object v1, p0, Lcom/termux/shared/activities/ReportActivity;->mReportInfo:Lcom/termux/shared/models/ReportInfo;

    invoke-static {v1}, Lcom/termux/shared/models/ReportInfo;->getReportInfoMarkdownString(Lcom/termux/shared/models/ReportInfo;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lcom/termux/shared/interact/ShareUtils;->copyTextToClipboard(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 215
    :cond_1
    sget v1, Lcom/termux/shared/R$id;->menu_item_save_report_to_file:I

    if-ne v0, v1, :cond_2

    .line 216
    iget-object v1, p0, Lcom/termux/shared/activities/ReportActivity;->mReportInfo:Lcom/termux/shared/models/ReportInfo;

    iget-object v3, v1, Lcom/termux/shared/models/ReportInfo;->reportSaveFileLabel:Ljava/lang/String;

    iget-object v1, p0, Lcom/termux/shared/activities/ReportActivity;->mReportInfo:Lcom/termux/shared/models/ReportInfo;

    iget-object v4, v1, Lcom/termux/shared/models/ReportInfo;->reportSaveFilePath:Ljava/lang/String;

    iget-object v1, p0, Lcom/termux/shared/activities/ReportActivity;->mReportInfo:Lcom/termux/shared/models/ReportInfo;

    .line 217
    invoke-static {v1}, Lcom/termux/shared/models/ReportInfo;->getReportInfoMarkdownString(Lcom/termux/shared/models/ReportInfo;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    const/16 v7, 0x3e8

    .line 216
    move-object v2, p0

    invoke-static/range {v2 .. v7}, Lcom/termux/shared/interact/ShareUtils;->saveTextToFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    .line 221
    :cond_2
    :goto_0
    const/4 v1, 0x0

    return v1
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 7
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "requestCode",
            "permissions",
            "grantResults"
        }
    .end annotation

    .line 226
    invoke-super {p0, p1, p2, p3}, Landroidx/appcompat/app/AppCompatActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 227
    array-length v0, p3

    const-string v1, "ReportActivity"

    if-lez v0, :cond_0

    const/4 v0, 0x0

    aget v0, p3, v0

    if-nez v0, :cond_0

    .line 228
    const-string v0, "Storage permission granted by user on request."

    invoke-static {v1, v0}, Lcom/termux/shared/logger/Logger;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_1

    .line 230
    iget-object v0, p0, Lcom/termux/shared/activities/ReportActivity;->mReportInfo:Lcom/termux/shared/models/ReportInfo;

    iget-object v2, v0, Lcom/termux/shared/models/ReportInfo;->reportSaveFileLabel:Ljava/lang/String;

    iget-object v0, p0, Lcom/termux/shared/activities/ReportActivity;->mReportInfo:Lcom/termux/shared/models/ReportInfo;

    iget-object v3, v0, Lcom/termux/shared/models/ReportInfo;->reportSaveFilePath:Ljava/lang/String;

    iget-object v0, p0, Lcom/termux/shared/activities/ReportActivity;->mReportInfo:Lcom/termux/shared/models/ReportInfo;

    .line 231
    invoke-static {v0}, Lcom/termux/shared/models/ReportInfo;->getReportInfoMarkdownString(Lcom/termux/shared/models/ReportInfo;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    const/4 v6, -0x1

    .line 230
    move-object v1, p0

    invoke-static/range {v1 .. v6}, Lcom/termux/shared/interact/ShareUtils;->saveTextToFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    goto :goto_0

    .line 235
    :cond_0
    const-string v0, "Storage permission denied by user on request."

    invoke-static {v1, v0}, Lcom/termux/shared/logger/Logger;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    :cond_1
    :goto_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "outState"
        }
    .end annotation

    .line 172
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 173
    iget-object v0, p0, Lcom/termux/shared/activities/ReportActivity;->mBundle:Landroid/os/Bundle;

    sget-object v1, Lcom/termux/shared/activities/ReportActivity;->EXTRA_REPORT_INFO_OBJECT_FILE_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/termux/shared/activities/ReportActivity;->mReportInfoFilePath:Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 176
    :cond_0
    sget-object v0, Lcom/termux/shared/activities/ReportActivity;->EXTRA_REPORT_INFO_OBJECT:Ljava/lang/String;

    iget-object v1, p0, Lcom/termux/shared/activities/ReportActivity;->mReportInfo:Lcom/termux/shared/models/ReportInfo;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 178
    :goto_0
    return-void
.end method
