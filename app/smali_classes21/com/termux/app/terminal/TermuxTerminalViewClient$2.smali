.class Lcom/termux/app/terminal/TermuxTerminalViewClient$2;
.super Ljava/lang/Thread;
.source "TermuxTerminalViewClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/termux/app/terminal/TermuxTerminalViewClient;->reportIssueFromTranscript(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/termux/app/terminal/TermuxTerminalViewClient;

.field final synthetic val$addTermuxDebugInfo:Z

.field final synthetic val$transcriptText:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/termux/app/terminal/TermuxTerminalViewClient;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/termux/app/terminal/TermuxTerminalViewClient;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$transcriptText",
            "val$addTermuxDebugInfo"
        }
    .end annotation

    .line 714
    iput-object p1, p0, Lcom/termux/app/terminal/TermuxTerminalViewClient$2;->this$0:Lcom/termux/app/terminal/TermuxTerminalViewClient;

    iput-object p2, p0, Lcom/termux/app/terminal/TermuxTerminalViewClient$2;->val$transcriptText:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/termux/app/terminal/TermuxTerminalViewClient$2;->val$addTermuxDebugInfo:Z

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 17

    .line 717
    move-object/from16 v0, p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 719
    .local v1, "reportString":Ljava/lang/StringBuilder;
    const-string v12, "Termux Report Issue"

    .line 721
    .local v12, "title":Ljava/lang/String;
    const-string v2, "## Transcript\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 722
    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/termux/app/terminal/TermuxTerminalViewClient$2;->val$transcriptText:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/termux/shared/markdown/MarkdownUtils;->getMarkdownCodeForString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 723
    const-string v2, "\n##\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 725
    const-string v2, "\n\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, v0, Lcom/termux/app/terminal/TermuxTerminalViewClient$2;->this$0:Lcom/termux/app/terminal/TermuxTerminalViewClient;

    iget-object v5, v5, Lcom/termux/app/terminal/TermuxTerminalViewClient;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-static {v5, v4}, Lcom/termux/shared/termux/TermuxUtils;->getAppInfoMarkdownString(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 726
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, v0, Lcom/termux/app/terminal/TermuxTerminalViewClient$2;->this$0:Lcom/termux/app/terminal/TermuxTerminalViewClient;

    iget-object v5, v5, Lcom/termux/app/terminal/TermuxTerminalViewClient;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-static {v5}, Lcom/termux/shared/termux/AndroidUtils;->getDeviceInfoMarkdownString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 728
    iget-object v3, v0, Lcom/termux/app/terminal/TermuxTerminalViewClient$2;->this$0:Lcom/termux/app/terminal/TermuxTerminalViewClient;

    iget-object v3, v3, Lcom/termux/app/terminal/TermuxTerminalViewClient;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-static {v3}, Lcom/termux/shared/termux/TermuxUtils;->geAPTInfoMarkdownString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v13

    .line 729
    .local v13, "termuxAptInfo":Ljava/lang/String;
    if-eqz v13, :cond_0

    .line 730
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 732
    :cond_0
    iget-boolean v3, v0, Lcom/termux/app/terminal/TermuxTerminalViewClient$2;->val$addTermuxDebugInfo:Z

    if-eqz v3, :cond_1

    .line 733
    iget-object v3, v0, Lcom/termux/app/terminal/TermuxTerminalViewClient$2;->this$0:Lcom/termux/app/terminal/TermuxTerminalViewClient;

    iget-object v3, v3, Lcom/termux/app/terminal/TermuxTerminalViewClient;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-static {v3}, Lcom/termux/shared/termux/TermuxUtils;->getTermuxDebugMarkdownString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 734
    .local v3, "termuxDebugInfo":Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 735
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 738
    .end local v3    # "termuxDebugInfo":Ljava/lang/String;
    :cond_1
    sget-object v3, Lcom/termux/app/models/UserAction;->REPORT_ISSUE_FROM_TRANSCRIPT:Lcom/termux/app/models/UserAction;

    invoke-virtual {v3}, Lcom/termux/app/models/UserAction;->getName()Ljava/lang/String;

    move-result-object v14

    .line 739
    .local v14, "userActionName":Ljava/lang/String;
    iget-object v3, v0, Lcom/termux/app/terminal/TermuxTerminalViewClient$2;->this$0:Lcom/termux/app/terminal/TermuxTerminalViewClient;

    iget-object v15, v3, Lcom/termux/app/terminal/TermuxTerminalViewClient;->mActivity:Lcom/termux/app/TermuxActivity;

    new-instance v11, Lcom/termux/shared/models/ReportInfo;

    const/4 v6, 0x0

    .line 742
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/termux/app/terminal/TermuxTerminalViewClient$2;->this$0:Lcom/termux/app/terminal/TermuxTerminalViewClient;

    iget-object v3, v3, Lcom/termux/app/terminal/TermuxTerminalViewClient;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-static {v3}, Lcom/termux/shared/termux/TermuxUtils;->getReportIssueMarkdownString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 745
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Termux-"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ".log"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 746
    invoke-static {v3, v4, v4}, Lcom/termux/shared/file/FileUtils;->sanitizeFileName(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    const-string v4, "com.termux.app.TermuxActivity"

    move-object v2, v11

    move-object v3, v14

    move-object v5, v12

    move-object v10, v14

    move-object v0, v11

    move-object/from16 v11, v16

    invoke-direct/range {v2 .. v11}, Lcom/termux/shared/models/ReportInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 739
    invoke-static {v15, v0}, Lcom/termux/shared/activities/ReportActivity;->startReportActivity(Landroid/content/Context;Lcom/termux/shared/models/ReportInfo;)V

    .line 747
    return-void
.end method
