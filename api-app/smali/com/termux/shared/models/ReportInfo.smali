.class public Lcom/termux/shared/models/ReportInfo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L
    .annotation build Landroidx/annotation/Keep;
    .end annotation
.end field


# instance fields
.field public addReportInfoHeaderToMarkdown:Z

.field public reportSaveFileLabel:Ljava/lang/String;

.field public reportSaveFilePath:Ljava/lang/String;

.field public reportString:Ljava/lang/String;

.field public reportStringPrefix:Ljava/lang/String;

.field public reportStringSuffix:Ljava/lang/String;

.field public final reportTimestamp:Ljava/lang/String;

.field public final reportTitle:Ljava/lang/String;

.field public final sender:Ljava/lang/String;

.field public final userAction:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 52
    iput-boolean v0, p0, Lcom/termux/shared/models/ReportInfo;->addReportInfoHeaderToMarkdown:Z

    .line 60
    iput-object p1, p0, Lcom/termux/shared/models/ReportInfo;->userAction:Ljava/lang/String;

    .line 61
    iput-object p2, p0, Lcom/termux/shared/models/ReportInfo;->sender:Ljava/lang/String;

    .line 62
    iput-object p3, p0, Lcom/termux/shared/models/ReportInfo;->reportTitle:Ljava/lang/String;

    .line 63
    invoke-static {}, Lcom/termux/shared/android/AndroidUtils;->getCurrentMilliSecondUTCTimeStamp()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/termux/shared/models/ReportInfo;->reportTimestamp:Ljava/lang/String;

    return-void
.end method

.method public static getReportInfoMarkdownString(Lcom/termux/shared/models/ReportInfo;)Ljava/lang/String;
    .locals 5

    if-nez p0, :cond_0

    .line 102
    const-string p0, "null"

    return-object p0

    .line 104
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 106
    iget-boolean v1, p0, Lcom/termux/shared/models/ReportInfo;->addReportInfoHeaderToMarkdown:Z

    if-eqz v1, :cond_1

    .line 107
    const-string v1, "## Report Info\n\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "User Action"

    iget-object v3, p0, Lcom/termux/shared/models/ReportInfo;->userAction:Ljava/lang/String;

    const-string v4, "-"

    invoke-static {v2, v3, v4}, Lcom/termux/shared/markdown/MarkdownUtils;->getSingleLineMarkdownStringEntry(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Sender"

    iget-object v3, p0, Lcom/termux/shared/models/ReportInfo;->sender:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lcom/termux/shared/markdown/MarkdownUtils;->getSingleLineMarkdownStringEntry(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Report Timestamp"

    iget-object v2, p0, Lcom/termux/shared/models/ReportInfo;->reportTimestamp:Ljava/lang/String;

    invoke-static {v1, v2, v4}, Lcom/termux/shared/markdown/MarkdownUtils;->getSingleLineMarkdownStringEntry(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    const-string v1, "\n##\n\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    :cond_1
    iget-object p0, p0, Lcom/termux/shared/models/ReportInfo;->reportString:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public setAddReportInfoHeaderToMarkdown(Z)V
    .locals 0

    .line 79
    iput-boolean p1, p0, Lcom/termux/shared/models/ReportInfo;->addReportInfoHeaderToMarkdown:Z

    return-void
.end method

.method public setReportSaveFileLabel(Ljava/lang/String;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/termux/shared/models/ReportInfo;->reportSaveFileLabel:Ljava/lang/String;

    return-void
.end method

.method public setReportSaveFileLabelAndPath(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 83
    invoke-virtual {p0, p1}, Lcom/termux/shared/models/ReportInfo;->setReportSaveFileLabel(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p0, p2}, Lcom/termux/shared/models/ReportInfo;->setReportSaveFilePath(Ljava/lang/String;)V

    return-void
.end method

.method public setReportSaveFilePath(Ljava/lang/String;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/termux/shared/models/ReportInfo;->reportSaveFilePath:Ljava/lang/String;

    return-void
.end method

.method public setReportString(Ljava/lang/String;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/termux/shared/models/ReportInfo;->reportString:Ljava/lang/String;

    return-void
.end method

.method public setReportStringSuffix(Ljava/lang/String;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/termux/shared/models/ReportInfo;->reportStringSuffix:Ljava/lang/String;

    return-void
.end method
