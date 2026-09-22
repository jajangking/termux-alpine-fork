.class public Lcom/termux/shared/models/ResultConfig;
.super Ljava/lang/Object;
.source "ResultConfig.java"


# instance fields
.field public resultBundleKey:Ljava/lang/String;

.field public resultDirectoryAllowedParentPath:Ljava/lang/String;

.field public resultDirectoryPath:Ljava/lang/String;

.field public resultErrCodeKey:Ljava/lang/String;

.field public resultErrmsgKey:Ljava/lang/String;

.field public resultExitCodeKey:Ljava/lang/String;

.field public resultFileBasename:Ljava/lang/String;

.field public resultFileErrorFormat:Ljava/lang/String;

.field public resultFileOutputFormat:Ljava/lang/String;

.field public resultFilesSuffix:Ljava/lang/String;

.field public resultPendingIntent:Landroid/app/PendingIntent;

.field public resultSingleFile:Z

.field public resultStderrKey:Ljava/lang/String;

.field public resultStderrOriginalLengthKey:Ljava/lang/String;

.field public resultStdoutKey:Ljava/lang/String;

.field public resultStdoutOriginalLengthKey:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    return-void
.end method

.method public static getResultConfigLogString(Lcom/termux/shared/models/ResultConfig;Z)Ljava/lang/String;
    .locals 3
    .param p0, "resultConfig"    # Lcom/termux/shared/models/ResultConfig;
    .param p1, "ignoreNull"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0
        }
        names = {
            "resultConfig",
            "ignoreNull"
        }
    .end annotation

    .line 77
    if-nez p0, :cond_0

    const-string v0, "null"

    return-object v0

    .line 79
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 81
    .local v0, "logString":Ljava/lang/StringBuilder;
    const-string v1, "Result Pending: `"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/termux/shared/models/ResultConfig;->isCommandWithPendingResult()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "`\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    iget-object v1, p0, Lcom/termux/shared/models/ResultConfig;->resultPendingIntent:Landroid/app/PendingIntent;

    if-eqz v1, :cond_1

    .line 84
    invoke-virtual {p0, p1}, Lcom/termux/shared/models/ResultConfig;->getResultPendingIntentVariablesLogString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    iget-object v1, p0, Lcom/termux/shared/models/ResultConfig;->resultDirectoryPath:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 86
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    :cond_1
    iget-object v1, p0, Lcom/termux/shared/models/ResultConfig;->resultDirectoryPath:Ljava/lang/String;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 90
    invoke-virtual {p0, p1}, Lcom/termux/shared/models/ResultConfig;->getResultDirectoryVariablesLogString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getResultConfigMarkdownString(Lcom/termux/shared/models/ResultConfig;)Ljava/lang/String;
    .locals 6
    .param p0, "resultConfig"    # Lcom/termux/shared/models/ResultConfig;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "resultConfig"
        }
    .end annotation

    .line 149
    if-nez p0, :cond_0

    const-string v0, "null"

    return-object v0

    .line 151
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 153
    .local v0, "markdownString":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/termux/shared/models/ResultConfig;->resultPendingIntent:Landroid/app/PendingIntent;

    const-string v2, "-"

    if-eqz v1, :cond_1

    .line 154
    invoke-virtual {v1}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object v1

    const-string v3, "Result PendingIntent Creator"

    invoke-static {v3, v1, v2}, Lcom/termux/shared/markdown/MarkdownUtils;->getSingleLineMarkdownStringEntry(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 156
    :cond_1
    const-string v1, "**Result PendingIntent Creator:** -  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    :goto_0
    iget-object v1, p0, Lcom/termux/shared/models/ResultConfig;->resultDirectoryPath:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 159
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/termux/shared/models/ResultConfig;->resultDirectoryPath:Ljava/lang/String;

    const-string v5, "Result Directory Path"

    invoke-static {v5, v4, v2}, Lcom/termux/shared/markdown/MarkdownUtils;->getSingleLineMarkdownStringEntry(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/termux/shared/models/ResultConfig;->resultSingleFile:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const-string v5, "Result Single File"

    invoke-static {v5, v4, v2}, Lcom/termux/shared/markdown/MarkdownUtils;->getSingleLineMarkdownStringEntry(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/termux/shared/models/ResultConfig;->resultFileBasename:Ljava/lang/String;

    const-string v5, "Result File Basename"

    invoke-static {v5, v4, v2}, Lcom/termux/shared/markdown/MarkdownUtils;->getSingleLineMarkdownStringEntry(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/termux/shared/models/ResultConfig;->resultFileOutputFormat:Ljava/lang/String;

    const-string v5, "Result File Output Format"

    invoke-static {v5, v4, v2}, Lcom/termux/shared/markdown/MarkdownUtils;->getSingleLineMarkdownStringEntry(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/termux/shared/models/ResultConfig;->resultFileErrorFormat:Ljava/lang/String;

    const-string v5, "Result File Error Format"

    invoke-static {v5, v4, v2}, Lcom/termux/shared/markdown/MarkdownUtils;->getSingleLineMarkdownStringEntry(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/termux/shared/models/ResultConfig;->resultFilesSuffix:Ljava/lang/String;

    const-string v4, "Result Files Suffix"

    invoke-static {v4, v3, v2}, Lcom/termux/shared/markdown/MarkdownUtils;->getSingleLineMarkdownStringEntry(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public getResultDirectoryVariablesLogString(Z)Ljava/lang/String;
    .locals 6
    .param p1, "ignoreNull"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ignoreNull"
        }
    .end annotation

    .line 123
    iget-object v0, p0, Lcom/termux/shared/models/ResultConfig;->resultDirectoryPath:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "Result Directory Path: -"

    return-object v0

    .line 125
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 127
    .local v0, "resultDirectoryVariablesString":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/termux/shared/models/ResultConfig;->resultDirectoryPath:Ljava/lang/String;

    const-string v2, "Result Directory Path"

    const-string v3, "-"

    invoke-static {v2, v1, v3}, Lcom/termux/shared/logger/Logger;->getSingleLineLogStringEntry(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v4, p0, Lcom/termux/shared/models/ResultConfig;->resultSingleFile:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const-string v5, "Result Single File"

    invoke-static {v5, v4, v3}, Lcom/termux/shared/logger/Logger;->getSingleLineLogStringEntry(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    if-eqz p1, :cond_1

    iget-object v2, p0, Lcom/termux/shared/models/ResultConfig;->resultFileBasename:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 131
    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/termux/shared/models/ResultConfig;->resultFileBasename:Ljava/lang/String;

    const-string v5, "Result File Basename"

    invoke-static {v5, v4, v3}, Lcom/termux/shared/logger/Logger;->getSingleLineLogStringEntry(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    :cond_2
    if-eqz p1, :cond_3

    iget-object v2, p0, Lcom/termux/shared/models/ResultConfig;->resultFileOutputFormat:Ljava/lang/String;

    if-eqz v2, :cond_4

    .line 133
    :cond_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/termux/shared/models/ResultConfig;->resultFileOutputFormat:Ljava/lang/String;

    const-string v5, "Result File Output Format"

    invoke-static {v5, v4, v3}, Lcom/termux/shared/logger/Logger;->getSingleLineLogStringEntry(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    :cond_4
    if-eqz p1, :cond_5

    iget-object v2, p0, Lcom/termux/shared/models/ResultConfig;->resultFileErrorFormat:Ljava/lang/String;

    if-eqz v2, :cond_6

    .line 135
    :cond_5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/termux/shared/models/ResultConfig;->resultFileErrorFormat:Ljava/lang/String;

    const-string v5, "Result File Error Format"

    invoke-static {v5, v4, v3}, Lcom/termux/shared/logger/Logger;->getSingleLineLogStringEntry(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    :cond_6
    if-eqz p1, :cond_7

    iget-object v2, p0, Lcom/termux/shared/models/ResultConfig;->resultFilesSuffix:Ljava/lang/String;

    if-eqz v2, :cond_8

    .line 137
    :cond_7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/termux/shared/models/ResultConfig;->resultFilesSuffix:Ljava/lang/String;

    const-string v4, "Result Files Suffix"

    invoke-static {v4, v2, v3}, Lcom/termux/shared/logger/Logger;->getSingleLineLogStringEntry(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    :cond_8
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getResultPendingIntentVariablesLogString(Z)Ljava/lang/String;
    .locals 6
    .param p1, "ignoreNull"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ignoreNull"
        }
    .end annotation

    .line 96
    iget-object v0, p0, Lcom/termux/shared/models/ResultConfig;->resultPendingIntent:Landroid/app/PendingIntent;

    if-nez v0, :cond_0

    const-string v0, "Result PendingIntent Creator: -"

    return-object v0

    .line 98
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 100
    .local v0, "resultPendingIntentVariablesString":Ljava/lang/StringBuilder;
    const-string v1, "Result PendingIntent Creator: `"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/termux/shared/models/ResultConfig;->resultPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "`"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    const-string v1, "-"

    const-string v2, "\n"

    if-eqz p1, :cond_1

    iget-object v3, p0, Lcom/termux/shared/models/ResultConfig;->resultBundleKey:Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 103
    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/termux/shared/models/ResultConfig;->resultBundleKey:Ljava/lang/String;

    const-string v5, "Result Bundle Key"

    invoke-static {v5, v4, v1}, Lcom/termux/shared/logger/Logger;->getSingleLineLogStringEntry(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    :cond_2
    if-eqz p1, :cond_3

    iget-object v3, p0, Lcom/termux/shared/models/ResultConfig;->resultStdoutKey:Ljava/lang/String;

    if-eqz v3, :cond_4

    .line 105
    :cond_3
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/termux/shared/models/ResultConfig;->resultStdoutKey:Ljava/lang/String;

    const-string v5, "Result Stdout Key"

    invoke-static {v5, v4, v1}, Lcom/termux/shared/logger/Logger;->getSingleLineLogStringEntry(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    :cond_4
    if-eqz p1, :cond_5

    iget-object v3, p0, Lcom/termux/shared/models/ResultConfig;->resultStderrKey:Ljava/lang/String;

    if-eqz v3, :cond_6

    .line 107
    :cond_5
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/termux/shared/models/ResultConfig;->resultStderrKey:Ljava/lang/String;

    const-string v5, "Result Stderr Key"

    invoke-static {v5, v4, v1}, Lcom/termux/shared/logger/Logger;->getSingleLineLogStringEntry(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    :cond_6
    if-eqz p1, :cond_7

    iget-object v3, p0, Lcom/termux/shared/models/ResultConfig;->resultExitCodeKey:Ljava/lang/String;

    if-eqz v3, :cond_8

    .line 109
    :cond_7
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/termux/shared/models/ResultConfig;->resultExitCodeKey:Ljava/lang/String;

    const-string v5, "Result Exit Code Key"

    invoke-static {v5, v4, v1}, Lcom/termux/shared/logger/Logger;->getSingleLineLogStringEntry(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    :cond_8
    if-eqz p1, :cond_9

    iget-object v3, p0, Lcom/termux/shared/models/ResultConfig;->resultErrCodeKey:Ljava/lang/String;

    if-eqz v3, :cond_a

    .line 111
    :cond_9
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/termux/shared/models/ResultConfig;->resultErrCodeKey:Ljava/lang/String;

    const-string v5, "Result Err Code Key"

    invoke-static {v5, v4, v1}, Lcom/termux/shared/logger/Logger;->getSingleLineLogStringEntry(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    :cond_a
    if-eqz p1, :cond_b

    iget-object v3, p0, Lcom/termux/shared/models/ResultConfig;->resultErrmsgKey:Ljava/lang/String;

    if-eqz v3, :cond_c

    .line 113
    :cond_b
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/termux/shared/models/ResultConfig;->resultErrmsgKey:Ljava/lang/String;

    const-string v5, "Result Error Key"

    invoke-static {v5, v4, v1}, Lcom/termux/shared/logger/Logger;->getSingleLineLogStringEntry(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    :cond_c
    if-eqz p1, :cond_d

    iget-object v3, p0, Lcom/termux/shared/models/ResultConfig;->resultStdoutOriginalLengthKey:Ljava/lang/String;

    if-eqz v3, :cond_e

    .line 115
    :cond_d
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/termux/shared/models/ResultConfig;->resultStdoutOriginalLengthKey:Ljava/lang/String;

    const-string v5, "Result Stdout Original Length Key"

    invoke-static {v5, v4, v1}, Lcom/termux/shared/logger/Logger;->getSingleLineLogStringEntry(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    :cond_e
    if-eqz p1, :cond_f

    iget-object v3, p0, Lcom/termux/shared/models/ResultConfig;->resultStderrOriginalLengthKey:Ljava/lang/String;

    if-eqz v3, :cond_10

    .line 117
    :cond_f
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/termux/shared/models/ResultConfig;->resultStderrOriginalLengthKey:Ljava/lang/String;

    const-string v4, "Result Stderr Original Length Key"

    invoke-static {v4, v3, v1}, Lcom/termux/shared/logger/Logger;->getSingleLineLogStringEntry(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    :cond_10
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public isCommandWithPendingResult()Z
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/termux/shared/models/ResultConfig;->resultPendingIntent:Landroid/app/PendingIntent;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/termux/shared/models/ResultConfig;->resultDirectoryPath:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 66
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/termux/shared/models/ResultConfig;->getResultConfigLogString(Lcom/termux/shared/models/ResultConfig;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
