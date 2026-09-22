.class public Lcom/termux/shared/shell/command/result/ResultConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public resultBundleKey:Ljava/lang/String;

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

    return-void
.end method

.method public static getResultConfigLogString(Lcom/termux/shared/shell/command/result/ResultConfig;Z)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    .line 77
    const-string p0, "null"

    return-object p0

    .line 79
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 81
    const-string v1, "Result Pending: `"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/termux/shared/shell/command/result/ResultConfig;->isCommandWithPendingResult()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "`\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    iget-object v1, p0, Lcom/termux/shared/shell/command/result/ResultConfig;->resultPendingIntent:Landroid/app/PendingIntent;

    if-eqz v1, :cond_1

    .line 84
    invoke-virtual {p0, p1}, Lcom/termux/shared/shell/command/result/ResultConfig;->getResultPendingIntentVariablesLogString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    iget-object v1, p0, Lcom/termux/shared/shell/command/result/ResultConfig;->resultDirectoryPath:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 86
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    :cond_1
    iget-object v1, p0, Lcom/termux/shared/shell/command/result/ResultConfig;->resultDirectoryPath:Ljava/lang/String;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 90
    invoke-virtual {p0, p1}, Lcom/termux/shared/shell/command/result/ResultConfig;->getResultDirectoryVariablesLogString(Z)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getResultDirectoryVariablesLogString(Z)Ljava/lang/String;
    .locals 5

    .line 123
    iget-object v0, p0, Lcom/termux/shared/shell/command/result/ResultConfig;->resultDirectoryPath:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string p1, "Result Directory Path: -"

    return-object p1

    .line 125
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 127
    const-string v1, "Result Directory Path"

    iget-object v2, p0, Lcom/termux/shared/shell/command/result/ResultConfig;->resultDirectoryPath:Ljava/lang/String;

    const-string v3, "-"

    invoke-static {v1, v2, v3}, Lcom/termux/shared/logger/Logger;->getSingleLineLogStringEntry(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/termux/shared/shell/command/result/ResultConfig;->resultSingleFile:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v4, "Result Single File"

    invoke-static {v4, v2, v3}, Lcom/termux/shared/logger/Logger;->getSingleLineLogStringEntry(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_1

    .line 130
    iget-object v2, p0, Lcom/termux/shared/shell/command/result/ResultConfig;->resultFileBasename:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 131
    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Result File Basename"

    iget-object v4, p0, Lcom/termux/shared/shell/command/result/ResultConfig;->resultFileBasename:Ljava/lang/String;

    invoke-static {v2, v4, v3}, Lcom/termux/shared/logger/Logger;->getSingleLineLogStringEntry(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    if-eqz p1, :cond_3

    .line 132
    iget-object v2, p0, Lcom/termux/shared/shell/command/result/ResultConfig;->resultFileOutputFormat:Ljava/lang/String;

    if-eqz v2, :cond_4

    .line 133
    :cond_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Result File Output Format"

    iget-object v4, p0, Lcom/termux/shared/shell/command/result/ResultConfig;->resultFileOutputFormat:Ljava/lang/String;

    invoke-static {v2, v4, v3}, Lcom/termux/shared/logger/Logger;->getSingleLineLogStringEntry(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    if-eqz p1, :cond_5

    .line 134
    iget-object v2, p0, Lcom/termux/shared/shell/command/result/ResultConfig;->resultFileErrorFormat:Ljava/lang/String;

    if-eqz v2, :cond_6

    .line 135
    :cond_5
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Result File Error Format"

    iget-object v4, p0, Lcom/termux/shared/shell/command/result/ResultConfig;->resultFileErrorFormat:Ljava/lang/String;

    invoke-static {v2, v4, v3}, Lcom/termux/shared/logger/Logger;->getSingleLineLogStringEntry(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    if-eqz p1, :cond_7

    .line 136
    iget-object p1, p0, Lcom/termux/shared/shell/command/result/ResultConfig;->resultFilesSuffix:Ljava/lang/String;

    if-eqz p1, :cond_8

    .line 137
    :cond_7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "Result Files Suffix"

    iget-object v1, p0, Lcom/termux/shared/shell/command/result/ResultConfig;->resultFilesSuffix:Ljava/lang/String;

    invoke-static {p1, v1, v3}, Lcom/termux/shared/logger/Logger;->getSingleLineLogStringEntry(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    :cond_8
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getResultPendingIntentVariablesLogString(Z)Ljava/lang/String;
    .locals 5

    .line 96
    iget-object v0, p0, Lcom/termux/shared/shell/command/result/ResultConfig;->resultPendingIntent:Landroid/app/PendingIntent;

    if-nez v0, :cond_0

    const-string p1, "Result PendingIntent Creator: -"

    return-object p1

    .line 98
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 100
    const-string v1, "Result PendingIntent Creator: `"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/termux/shared/shell/command/result/ResultConfig;->resultPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "`"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    const-string v1, "-"

    const-string v2, "\n"

    if-eqz p1, :cond_1

    iget-object v3, p0, Lcom/termux/shared/shell/command/result/ResultConfig;->resultBundleKey:Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 103
    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "Result Bundle Key"

    iget-object v4, p0, Lcom/termux/shared/shell/command/result/ResultConfig;->resultBundleKey:Ljava/lang/String;

    invoke-static {v3, v4, v1}, Lcom/termux/shared/logger/Logger;->getSingleLineLogStringEntry(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    if-eqz p1, :cond_3

    .line 104
    iget-object v3, p0, Lcom/termux/shared/shell/command/result/ResultConfig;->resultStdoutKey:Ljava/lang/String;

    if-eqz v3, :cond_4

    .line 105
    :cond_3
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "Result Stdout Key"

    iget-object v4, p0, Lcom/termux/shared/shell/command/result/ResultConfig;->resultStdoutKey:Ljava/lang/String;

    invoke-static {v3, v4, v1}, Lcom/termux/shared/logger/Logger;->getSingleLineLogStringEntry(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    if-eqz p1, :cond_5

    .line 106
    iget-object v3, p0, Lcom/termux/shared/shell/command/result/ResultConfig;->resultStderrKey:Ljava/lang/String;

    if-eqz v3, :cond_6

    .line 107
    :cond_5
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "Result Stderr Key"

    iget-object v4, p0, Lcom/termux/shared/shell/command/result/ResultConfig;->resultStderrKey:Ljava/lang/String;

    invoke-static {v3, v4, v1}, Lcom/termux/shared/logger/Logger;->getSingleLineLogStringEntry(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    if-eqz p1, :cond_7

    .line 108
    iget-object v3, p0, Lcom/termux/shared/shell/command/result/ResultConfig;->resultExitCodeKey:Ljava/lang/String;

    if-eqz v3, :cond_8

    .line 109
    :cond_7
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "Result Exit Code Key"

    iget-object v4, p0, Lcom/termux/shared/shell/command/result/ResultConfig;->resultExitCodeKey:Ljava/lang/String;

    invoke-static {v3, v4, v1}, Lcom/termux/shared/logger/Logger;->getSingleLineLogStringEntry(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    if-eqz p1, :cond_9

    .line 110
    iget-object v3, p0, Lcom/termux/shared/shell/command/result/ResultConfig;->resultErrCodeKey:Ljava/lang/String;

    if-eqz v3, :cond_a

    .line 111
    :cond_9
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "Result Err Code Key"

    iget-object v4, p0, Lcom/termux/shared/shell/command/result/ResultConfig;->resultErrCodeKey:Ljava/lang/String;

    invoke-static {v3, v4, v1}, Lcom/termux/shared/logger/Logger;->getSingleLineLogStringEntry(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_a
    if-eqz p1, :cond_b

    .line 112
    iget-object v3, p0, Lcom/termux/shared/shell/command/result/ResultConfig;->resultErrmsgKey:Ljava/lang/String;

    if-eqz v3, :cond_c

    .line 113
    :cond_b
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "Result Error Key"

    iget-object v4, p0, Lcom/termux/shared/shell/command/result/ResultConfig;->resultErrmsgKey:Ljava/lang/String;

    invoke-static {v3, v4, v1}, Lcom/termux/shared/logger/Logger;->getSingleLineLogStringEntry(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_c
    if-eqz p1, :cond_d

    .line 114
    iget-object v3, p0, Lcom/termux/shared/shell/command/result/ResultConfig;->resultStdoutOriginalLengthKey:Ljava/lang/String;

    if-eqz v3, :cond_e

    .line 115
    :cond_d
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "Result Stdout Original Length Key"

    iget-object v4, p0, Lcom/termux/shared/shell/command/result/ResultConfig;->resultStdoutOriginalLengthKey:Ljava/lang/String;

    invoke-static {v3, v4, v1}, Lcom/termux/shared/logger/Logger;->getSingleLineLogStringEntry(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_e
    if-eqz p1, :cond_f

    .line 116
    iget-object p1, p0, Lcom/termux/shared/shell/command/result/ResultConfig;->resultStderrOriginalLengthKey:Ljava/lang/String;

    if-eqz p1, :cond_10

    .line 117
    :cond_f
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "Result Stderr Original Length Key"

    iget-object v2, p0, Lcom/termux/shared/shell/command/result/ResultConfig;->resultStderrOriginalLengthKey:Ljava/lang/String;

    invoke-static {p1, v2, v1}, Lcom/termux/shared/logger/Logger;->getSingleLineLogStringEntry(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    :cond_10
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public isCommandWithPendingResult()Z
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/termux/shared/shell/command/result/ResultConfig;->resultPendingIntent:Landroid/app/PendingIntent;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/termux/shared/shell/command/result/ResultConfig;->resultDirectoryPath:Ljava/lang/String;

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

    const/4 v0, 0x1

    .line 66
    invoke-static {p0, v0}, Lcom/termux/shared/shell/command/result/ResultConfig;->getResultConfigLogString(Lcom/termux/shared/shell/command/result/ResultConfig;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
