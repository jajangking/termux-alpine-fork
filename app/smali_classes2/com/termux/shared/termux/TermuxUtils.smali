.class public Lcom/termux/shared/termux/TermuxUtils;
.super Ljava/lang/Object;
.source "TermuxUtils.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "TermuxUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static geAPTInfoMarkdownString(Landroid/content/Context;)Ljava/lang/String;
    .locals 14
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "context"
        }
    .end annotation

    .line 410
    const-string v0, "TermuxUtils"

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/termux/shared/R$raw;->apt_info_script:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v1

    .line 412
    .local v1, "inputStream":Ljava/io/InputStream;
    const/4 v2, 0x0

    :try_start_0
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v3

    invoke-static {v1, v3}, Lorg/apache/commons/io/IOUtils;->toString(Ljava/io/InputStream;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 416
    .local v3, "aptInfoScript":Ljava/lang/String;
    nop

    .line 418
    invoke-static {v1}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 420
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    goto/16 :goto_1

    .line 425
    :cond_0
    const-string v4, "@TERMUX_PREFIX@"

    invoke-static {v4}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "/data/data/com.termux.alpine/files/usr"

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 427
    new-instance v4, Lcom/termux/shared/models/ExecutionCommand;

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x1

    const/4 v13, 0x0

    const-string v8, "/data/data/com.termux.alpine/files/usr/bin/bash"

    move-object v6, v4

    move-object v10, v3

    invoke-direct/range {v6 .. v13}, Lcom/termux/shared/models/ExecutionCommand;-><init>(Ljava/lang/Integer;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 428
    .local v4, "executionCommand":Lcom/termux/shared/models/ExecutionCommand;
    const-string v6, "APT Info Command"

    iput-object v6, v4, Lcom/termux/shared/models/ExecutionCommand;->commandLabel:Ljava/lang/String;

    .line 429
    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iput-object v6, v4, Lcom/termux/shared/models/ExecutionCommand;->backgroundCustomLogLevel:Ljava/lang/Integer;

    .line 430
    new-instance v6, Lcom/termux/shared/shell/TermuxShellEnvironmentClient;

    invoke-direct {v6}, Lcom/termux/shared/shell/TermuxShellEnvironmentClient;-><init>()V

    invoke-static {p0, v4, v2, v6, v5}, Lcom/termux/shared/shell/TermuxTask;->execute(Landroid/content/Context;Lcom/termux/shared/models/ExecutionCommand;Lcom/termux/shared/shell/TermuxTask$TermuxTaskClient;Lcom/termux/shared/shell/ShellEnvironmentClient;Z)Lcom/termux/shared/shell/TermuxTask;

    move-result-object v5

    .line 431
    .local v5, "termuxTask":Lcom/termux/shared/shell/TermuxTask;
    if-eqz v5, :cond_3

    invoke-virtual {v4}, Lcom/termux/shared/models/ExecutionCommand;->isSuccessful()Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, v4, Lcom/termux/shared/models/ExecutionCommand;->resultData:Lcom/termux/shared/models/ResultData;

    iget-object v6, v6, Lcom/termux/shared/models/ResultData;->exitCode:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_0

    .line 436
    :cond_1
    iget-object v2, v4, Lcom/termux/shared/models/ExecutionCommand;->resultData:Lcom/termux/shared/models/ResultData;

    iget-object v2, v2, Lcom/termux/shared/models/ResultData;->stderr:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 437
    invoke-virtual {v4}, Lcom/termux/shared/models/ExecutionCommand;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/termux/shared/logger/Logger;->logErrorExtended(Ljava/lang/String;Ljava/lang/String;)V

    .line 439
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 441
    .local v0, "markdownString":Ljava/lang/StringBuilder;
    const-string v2, "## "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "Termux"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, " APT Info\n\n"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 442
    iget-object v2, v4, Lcom/termux/shared/models/ExecutionCommand;->resultData:Lcom/termux/shared/models/ResultData;

    iget-object v2, v2, Lcom/termux/shared/models/ResultData;->stdout:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 443
    const-string v2, "\n##\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 445
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 432
    .end local v0    # "markdownString":Ljava/lang/StringBuilder;
    :cond_3
    :goto_0
    invoke-virtual {v4}, Lcom/termux/shared/models/ExecutionCommand;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/termux/shared/logger/Logger;->logErrorExtended(Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    return-object v2

    .line 421
    .end local v4    # "executionCommand":Lcom/termux/shared/models/ExecutionCommand;
    .end local v5    # "termuxTask":Lcom/termux/shared/shell/TermuxTask;
    :cond_4
    :goto_1
    const-string v4, "The APT info script is null or empty"

    invoke-static {v0, v4}, Lcom/termux/shared/logger/Logger;->logError(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    return-object v2

    .line 413
    .end local v3    # "aptInfoScript":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 414
    .local v3, "e":Ljava/io/IOException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to get APT info script: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/termux/shared/logger/Logger;->logError(Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    return-object v2
.end method

.method public static getAPKRelease(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "signingCertificateSHA256Digest"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "signingCertificateSHA256Digest"
        }
    .end annotation

    .line 519
    if-nez p0, :cond_0

    const-string v0, "null"

    return-object v0

    .line 521
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_1
    goto :goto_0

    :sswitch_0
    const-string v2, "738F0A30A04D3C8A1BE304AF18D0779BCF3EA88FB60808F657A3521861C2EBF9"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    goto :goto_0

    :sswitch_1
    const-string v2, "B6DA01480EEFD5FBF2CD3771B8D1021EC791304BDD6C4BF41D3FAABAD48EE5E1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :sswitch_2
    const-string v2, "228FB2CFE90831C1499EC3CCAF61E96E8E1CE70766B9474672CE427334D41C42"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 529
    const-string v0, "Unknown"

    return-object v0

    .line 527
    :pswitch_0
    const-string v0, "Google Play Store"

    return-object v0

    .line 525
    :pswitch_1
    const-string v0, "Github"

    return-object v0

    .line 523
    :pswitch_2
    const-string v0, "F-Droid"

    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x51543647 -> :sswitch_2
        -0x3dd0a505 -> :sswitch_1
        -0x3828258c -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getAppInfoMarkdownString(Landroid/content/Context;Z)Ljava/lang/String;
    .locals 10
    .param p0, "currentPackageContext"    # Landroid/content/Context;
    .param p1, "returnTermuxPackageInfoToo"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "currentPackageContext",
            "returnTermuxPackageInfoToo"
        }
    .end annotation

    .line 253
    if-nez p0, :cond_0

    const-string v0, "null"

    return-object v0

    .line 255
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 257
    .local v0, "markdownString":Ljava/lang/StringBuilder;
    invoke-static {p0}, Lcom/termux/shared/termux/TermuxUtils;->getTermuxPackageContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v1

    .line 259
    .local v1, "termuxPackageContext":Landroid/content/Context;
    const/4 v2, 0x0

    .line 260
    .local v2, "termuxPackageName":Ljava/lang/String;
    const/4 v3, 0x0

    .line 261
    .local v3, "termuxAppName":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 262
    invoke-static {v1}, Lcom/termux/shared/packages/PackageUtils;->getPackageNameForPackage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 263
    invoke-static {v1}, Lcom/termux/shared/packages/PackageUtils;->getAppNameForPackage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 266
    :cond_1
    invoke-static {p0}, Lcom/termux/shared/packages/PackageUtils;->getPackageNameForPackage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 267
    .local v4, "currentPackageName":Ljava/lang/String;
    invoke-static {p0}, Lcom/termux/shared/packages/PackageUtils;->getAppNameForPackage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 269
    .local v5, "currentAppName":Ljava/lang/String;
    if-eqz v2, :cond_2

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v6, 0x1

    goto :goto_0

    :cond_2
    const/4 v6, 0x0

    .line 272
    .local v6, "isTermuxPackage":Z
    :goto_0
    const-string v7, " App Info\n"

    const-string v8, "## "

    if-eqz p1, :cond_3

    if-nez v6, :cond_3

    .line 273
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " App Info (Current)\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 275
    :cond_3
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    :goto_1
    invoke-static {p0}, Lcom/termux/shared/termux/TermuxUtils;->getAppInfoMarkdownStringInner(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    if-eqz p1, :cond_4

    if-eqz v1, :cond_4

    if-nez v6, :cond_4

    .line 279
    const-string v8, "\n\n## "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    invoke-static {v1}, Lcom/termux/shared/termux/TermuxUtils;->getAppInfoMarkdownStringInner(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    :cond_4
    const-string v7, "\n##\n"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7
.end method

.method public static getAppInfoMarkdownStringInner(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "context"
        }
    .end annotation

    .line 295
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 297
    .local v0, "markdownString":Ljava/lang/StringBuilder;
    invoke-static {p0}, Lcom/termux/shared/termux/AndroidUtils;->getAppInfoMarkdownString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    const/4 v1, 0x1

    invoke-static {p0, v1, v1}, Lcom/termux/shared/file/TermuxFileUtils;->isTermuxFilesDirectoryAccessible(Landroid/content/Context;ZZ)Lcom/termux/shared/models/errors/Error;

    move-result-object v1

    .line 301
    .local v1, "error":Lcom/termux/shared/models/errors/Error;
    if-eqz v1, :cond_0

    .line 302
    const-string v2, "TERMUX_FILES_DIR"

    const-string v3, "/data/data/com.termux.alpine/files"

    invoke-static {v0, v2, v3}, Lcom/termux/shared/termux/AndroidUtils;->appendPropertyToMarkdown(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 303
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "false - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Lcom/termux/shared/models/errors/Error;->getMinimalErrorString(Lcom/termux/shared/models/errors/Error;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "IS_TERMUX_FILES_DIR_ACCESSIBLE"

    invoke-static {v0, v3, v2}, Lcom/termux/shared/termux/AndroidUtils;->appendPropertyToMarkdown(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 306
    :cond_0
    invoke-static {p0}, Lcom/termux/shared/packages/PackageUtils;->getSigningCertificateSHA256DigestForPackage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 307
    .local v2, "signingCertificateSHA256Digest":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 308
    invoke-static {v2}, Lcom/termux/shared/termux/TermuxUtils;->getAPKRelease(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "APK_RELEASE"

    invoke-static {v0, v4, v3}, Lcom/termux/shared/termux/AndroidUtils;->appendPropertyToMarkdown(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 309
    const-string v3, "SIGNING_CERTIFICATE_SHA256_DIGEST"

    invoke-static {v0, v3, v2}, Lcom/termux/shared/termux/AndroidUtils;->appendPropertyToMarkdown(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 312
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static getImportantLinksMarkdownString(Landroid/content/Context;)Ljava/lang/String;
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "context"
        }
    .end annotation

    .line 365
    if-nez p0, :cond_0

    const-string v0, "null"

    return-object v0

    .line 367
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 369
    .local v0, "markdownString":Ljava/lang/StringBuilder;
    const-string v1, "## Important Links"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 371
    const-string v1, "\n\n### Github\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 372
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Termux"

    const-string v4, "https://github.com/termux/termux-app"

    invoke-static {v3, v4}, Lcom/termux/shared/markdown/MarkdownUtils;->getLinkMarkdownString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "  "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 373
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "Termux:API"

    const-string v6, "https://github.com/termux/termux-api"

    invoke-static {v5, v6}, Lcom/termux/shared/markdown/MarkdownUtils;->getLinkMarkdownString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 374
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "Termux:Boot"

    const-string v6, "https://github.com/termux/termux-boot"

    invoke-static {v5, v6}, Lcom/termux/shared/markdown/MarkdownUtils;->getLinkMarkdownString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 375
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "Termux:Float"

    const-string v6, "https://github.com/termux/termux-float"

    invoke-static {v5, v6}, Lcom/termux/shared/markdown/MarkdownUtils;->getLinkMarkdownString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 376
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "Termux:Styling"

    const-string v6, "https://github.com/termux/termux-styling"

    invoke-static {v5, v6}, Lcom/termux/shared/markdown/MarkdownUtils;->getLinkMarkdownString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 377
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "Termux:Tasker"

    const-string v6, "https://github.com/termux/termux-tasker"

    invoke-static {v5, v6}, Lcom/termux/shared/markdown/MarkdownUtils;->getLinkMarkdownString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 378
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "Termux:Widget"

    const-string v6, "https://github.com/termux/termux-widget"

    invoke-static {v5, v6}, Lcom/termux/shared/markdown/MarkdownUtils;->getLinkMarkdownString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 379
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "termux-packages"

    const-string v6, "https://github.com/termux/termux-packages"

    invoke-static {v5, v6}, Lcom/termux/shared/markdown/MarkdownUtils;->getLinkMarkdownString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 381
    const-string v2, "\n\n### Email\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 382
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "support@termux.dev"

    const-string v7, "mailto:support@termux.dev"

    invoke-static {v6, v7}, Lcom/termux/shared/markdown/MarkdownUtils;->getLinkMarkdownString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 384
    const-string v2, "\n\n### Reddit\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 385
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "r/termux"

    const-string v7, "https://www.reddit.com/r/termux"

    invoke-static {v6, v7}, Lcom/termux/shared/markdown/MarkdownUtils;->getLinkMarkdownString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 387
    const-string v2, "\n\n### Wiki\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 388
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "Termux Wiki"

    const-string v7, "https://wiki.termux.com"

    invoke-static {v6, v7}, Lcom/termux/shared/markdown/MarkdownUtils;->getLinkMarkdownString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 389
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "https://github.com/termux/termux-app/wiki"

    invoke-static {v3, v6}, Lcom/termux/shared/markdown/MarkdownUtils;->getLinkMarkdownString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 390
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "https://github.com/termux/termux-packages/wiki"

    invoke-static {v5, v2}, Lcom/termux/shared/markdown/MarkdownUtils;->getLinkMarkdownString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 392
    const-string v1, "\n##\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 394
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getLogcatDumpMarkdownString(Landroid/content/Context;)Ljava/lang/String;
    .locals 12
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "context"
        }
    .end annotation

    .line 481
    const-string v0, "/system/bin/logcat -d -t 3000 2>&1"

    .line 485
    .local v0, "logcatScript":Ljava/lang/String;
    new-instance v9, Lcom/termux/shared/models/ExecutionCommand;

    const/4 v10, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v11, "\n"

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v3, "/system/bin/sh"

    const/4 v4, 0x0

    const-string v6, "/"

    const/4 v7, 0x1

    const/4 v8, 0x1

    move-object v1, v9

    invoke-direct/range {v1 .. v8}, Lcom/termux/shared/models/ExecutionCommand;-><init>(Ljava/lang/Integer;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 486
    .local v1, "executionCommand":Lcom/termux/shared/models/ExecutionCommand;
    const-string v2, "Logcat dump command"

    iput-object v2, v1, Lcom/termux/shared/models/ExecutionCommand;->commandLabel:Ljava/lang/String;

    .line 487
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v1, Lcom/termux/shared/models/ExecutionCommand;->backgroundCustomLogLevel:Ljava/lang/Integer;

    .line 488
    new-instance v2, Lcom/termux/shared/shell/TermuxShellEnvironmentClient;

    invoke-direct {v2}, Lcom/termux/shared/shell/TermuxShellEnvironmentClient;-><init>()V

    const/4 v3, 0x0

    invoke-static {p0, v1, v3, v2, v10}, Lcom/termux/shared/shell/TermuxTask;->execute(Landroid/content/Context;Lcom/termux/shared/models/ExecutionCommand;Lcom/termux/shared/shell/TermuxTask$TermuxTaskClient;Lcom/termux/shared/shell/ShellEnvironmentClient;Z)Lcom/termux/shared/shell/TermuxTask;

    move-result-object v2

    .line 489
    .local v2, "termuxTask":Lcom/termux/shared/shell/TermuxTask;
    const-string v4, "TermuxUtils"

    if-eqz v2, :cond_4

    invoke-virtual {v1}, Lcom/termux/shared/models/ExecutionCommand;->isSuccessful()Z

    move-result v5

    if-nez v5, :cond_0

    goto/16 :goto_0

    .line 495
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 496
    .local v3, "logcatOutput":Ljava/lang/StringBuilder;
    const-string v5, "$ "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 497
    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v1, Lcom/termux/shared/models/ExecutionCommand;->resultData:Lcom/termux/shared/models/ResultData;

    iget-object v6, v6, Lcom/termux/shared/models/ResultData;->stdout:Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 499
    iget-object v5, v1, Lcom/termux/shared/models/ExecutionCommand;->resultData:Lcom/termux/shared/models/ResultData;

    iget-object v5, v5, Lcom/termux/shared/models/ResultData;->stderr:Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    xor-int/2addr v5, v10

    .line 500
    .local v5, "stderrSet":Z
    iget-object v6, v1, Lcom/termux/shared/models/ExecutionCommand;->resultData:Lcom/termux/shared/models/ResultData;

    iget-object v6, v6, Lcom/termux/shared/models/ResultData;->exitCode:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-nez v6, :cond_1

    if-eqz v5, :cond_3

    .line 501
    :cond_1
    invoke-virtual {v1}, Lcom/termux/shared/models/ExecutionCommand;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/termux/shared/logger/Logger;->logErrorExtended(Ljava/lang/String;Ljava/lang/String;)V

    .line 502
    if-eqz v5, :cond_2

    .line 503
    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, v1, Lcom/termux/shared/models/ExecutionCommand;->resultData:Lcom/termux/shared/models/ResultData;

    iget-object v6, v6, Lcom/termux/shared/models/ResultData;->stderr:Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 504
    :cond_2
    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "exit code: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, v1, Lcom/termux/shared/models/ExecutionCommand;->resultData:Lcom/termux/shared/models/ResultData;

    iget-object v6, v6, Lcom/termux/shared/models/ResultData;->exitCode:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 508
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 509
    .local v4, "markdownString":Ljava/lang/StringBuilder;
    const-string v6, "## Logcat Dump\n\n"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 510
    const-string v6, "\n\n"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v10}, Lcom/termux/shared/markdown/MarkdownUtils;->getMarkdownCodeForString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 511
    const-string v6, "\n##\n"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 513
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6

    .line 490
    .end local v3    # "logcatOutput":Ljava/lang/StringBuilder;
    .end local v4    # "markdownString":Ljava/lang/StringBuilder;
    .end local v5    # "stderrSet":Z
    :cond_4
    :goto_0
    invoke-virtual {v1}, Lcom/termux/shared/models/ExecutionCommand;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/termux/shared/logger/Logger;->logErrorExtended(Ljava/lang/String;Ljava/lang/String;)V

    .line 491
    return-object v3
.end method

.method public static getReportIssueMarkdownString(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "context"
        }
    .end annotation

    .line 322
    if-nez p0, :cond_0

    const-string v0, "null"

    return-object v0

    .line 324
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 326
    .local v0, "markdownString":Ljava/lang/StringBuilder;
    const-string v1, "## Where To Report An Issue"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 328
    const-string v1, "\n\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/termux/shared/R$string;->msg_report_issue:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "https://wiki.termux.com"

    aput-object v5, v3, v4

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 330
    const-string v1, "\n\n### Email\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 331
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "support@termux.dev"

    const-string v4, "mailto:support@termux.dev"

    invoke-static {v3, v4}, Lcom/termux/shared/markdown/MarkdownUtils;->getLinkMarkdownString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "  "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 333
    const-string v1, "\n\n### Reddit\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 334
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "r/termux"

    const-string v5, "https://www.reddit.com/r/termux"

    invoke-static {v4, v5}, Lcom/termux/shared/markdown/MarkdownUtils;->getLinkMarkdownString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 336
    const-string v1, "\n\n### Github Issues for Termux apps\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 337
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "Termux"

    const-string v5, "https://github.com/termux/termux-app/issues"

    invoke-static {v4, v5}, Lcom/termux/shared/markdown/MarkdownUtils;->getLinkMarkdownString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 338
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "Termux:API"

    const-string v5, "https://github.com/termux/termux-api/issues"

    invoke-static {v4, v5}, Lcom/termux/shared/markdown/MarkdownUtils;->getLinkMarkdownString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 339
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "Termux:Boot"

    const-string v5, "https://github.com/termux/termux-boot/issues"

    invoke-static {v4, v5}, Lcom/termux/shared/markdown/MarkdownUtils;->getLinkMarkdownString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 340
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "Termux:Float"

    const-string v5, "https://github.com/termux/termux-float/issues"

    invoke-static {v4, v5}, Lcom/termux/shared/markdown/MarkdownUtils;->getLinkMarkdownString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 341
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "Termux:Styling"

    const-string v5, "https://github.com/termux/termux-styling/issues"

    invoke-static {v4, v5}, Lcom/termux/shared/markdown/MarkdownUtils;->getLinkMarkdownString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 342
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "Termux:Tasker"

    const-string v5, "https://github.com/termux/termux-tasker/issues"

    invoke-static {v4, v5}, Lcom/termux/shared/markdown/MarkdownUtils;->getLinkMarkdownString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 343
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "Termux:Widget"

    const-string v5, "https://github.com/termux/termux-widget/issues"

    invoke-static {v4, v5}, Lcom/termux/shared/markdown/MarkdownUtils;->getLinkMarkdownString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 345
    const-string v1, "\n\n### Github Issues for Termux packages\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 346
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "termux-packages"

    const-string v5, "https://github.com/termux/termux-packages/issues"

    invoke-static {v4, v5}, Lcom/termux/shared/markdown/MarkdownUtils;->getLinkMarkdownString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 347
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "game-packages"

    const-string v5, "https://github.com/termux/game-packages/issues"

    invoke-static {v4, v5}, Lcom/termux/shared/markdown/MarkdownUtils;->getLinkMarkdownString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 348
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "science-packages"

    const-string v5, "https://github.com/termux/science-packages/issues"

    invoke-static {v4, v5}, Lcom/termux/shared/markdown/MarkdownUtils;->getLinkMarkdownString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 349
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "termux-root-packages"

    const-string v5, "https://github.com/termux/termux-root-packages/issues"

    invoke-static {v4, v5}, Lcom/termux/shared/markdown/MarkdownUtils;->getLinkMarkdownString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 350
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "unstable-packages"

    const-string v5, "https://github.com/termux/unstable-packages/issues"

    invoke-static {v4, v5}, Lcom/termux/shared/markdown/MarkdownUtils;->getLinkMarkdownString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 351
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "x11-packages"

    const-string v4, "https://github.com/termux/x11-packages/issues"

    invoke-static {v2, v4}, Lcom/termux/shared/markdown/MarkdownUtils;->getLinkMarkdownString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 353
    const-string v1, "\n##\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 355
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getTermuxAPIPackageContext(Landroid/content/Context;)Landroid/content/Context;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 52
    const-string v0, "com.termux.api"

    invoke-static {p0, v0}, Lcom/termux/shared/packages/PackageUtils;->getContextForPackage(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public static getTermuxAppPID(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "context"
        }
    .end annotation

    .line 542
    const-string v0, "com.termux.alpine"

    invoke-static {p0, v0}, Lcom/termux/shared/packages/PackageUtils;->getPackagePID(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getTermuxBootPackageContext(Landroid/content/Context;)Landroid/content/Context;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 62
    const-string v0, "com.termux.boot"

    invoke-static {p0, v0}, Lcom/termux/shared/packages/PackageUtils;->getContextForPackage(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public static getTermuxDebugMarkdownString(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "context"
        }
    .end annotation

    .line 455
    invoke-static {p0}, Lcom/termux/shared/file/TermuxFileUtils;->getTermuxFilesStatMarkdownString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 456
    .local v0, "statInfo":Ljava/lang/String;
    invoke-static {p0}, Lcom/termux/shared/termux/TermuxUtils;->getLogcatDumpMarkdownString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 458
    .local v1, "logcatInfo":Ljava/lang/String;
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 459
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 460
    :cond_0
    if-eqz v0, :cond_1

    .line 461
    return-object v0

    .line 463
    :cond_1
    return-object v1
.end method

.method public static getTermuxFloatPackageContext(Landroid/content/Context;)Landroid/content/Context;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 72
    const-string v0, "com.termux.window"

    invoke-static {p0, v0}, Lcom/termux/shared/packages/PackageUtils;->getContextForPackage(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public static getTermuxPackageContext(Landroid/content/Context;)Landroid/content/Context;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 42
    const-string v0, "com.termux.alpine"

    invoke-static {p0, v0}, Lcom/termux/shared/packages/PackageUtils;->getContextForPackage(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public static getTermuxPluginAppsInfoMarkdownString(Landroid/content/Context;)Ljava/lang/String;
    .locals 6
    .param p0, "currentPackageContext"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "currentPackageContext"
        }
    .end annotation

    .line 216
    if-nez p0, :cond_0

    const-string v0, "null"

    return-object v0

    .line 218
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 220
    .local v0, "markdownString":Ljava/lang/StringBuilder;
    sget-object v1, Lcom/termux/shared/termux/TermuxConstants;->TERMUX_PLUGIN_APP_PACKAGE_NAMES_LIST:Ljava/util/List;

    .line 222
    .local v1, "termuxPluginAppPackageNamesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v1, :cond_3

    .line 223
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 224
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 225
    .local v3, "termuxPluginAppPackageName":Ljava/lang/String;
    invoke-static {p0, v3}, Lcom/termux/shared/packages/PackageUtils;->getContextForPackage(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Context;

    move-result-object v4

    .line 227
    .local v4, "termuxPluginAppContext":Landroid/content/Context;
    if-eqz v4, :cond_2

    .line 228
    if-eqz v2, :cond_1

    .line 229
    const-string v5, "\n\n"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    :cond_1
    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/termux/shared/termux/TermuxUtils;->getAppInfoMarkdownString(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    .end local v3    # "termuxPluginAppPackageName":Ljava/lang/String;
    .end local v4    # "termuxPluginAppContext":Landroid/content/Context;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 235
    .end local v2    # "i":I
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 236
    const/4 v2, 0x0

    return-object v2

    .line 238
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getTermuxStylingPackageContext(Landroid/content/Context;)Landroid/content/Context;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 82
    const-string v0, "com.termux.styling"

    invoke-static {p0, v0}, Lcom/termux/shared/packages/PackageUtils;->getContextForPackage(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public static getTermuxTaskerPackageContext(Landroid/content/Context;)Landroid/content/Context;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 92
    const-string v0, "com.termux.tasker"

    invoke-static {p0, v0}, Lcom/termux/shared/packages/PackageUtils;->getContextForPackage(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public static getTermuxWidgetPackageContext(Landroid/content/Context;)Landroid/content/Context;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 102
    const-string v0, "com.termux.widget"

    invoke-static {p0, v0}, Lcom/termux/shared/packages/PackageUtils;->getContextForPackage(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public static isTermuxAPIAppInstalled(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "context"
        }
    .end annotation

    .line 144
    const-string v0, "Termux:API"

    const-string v1, "com.termux.api"

    invoke-static {p0, v0, v1}, Lcom/termux/shared/packages/PackageUtils;->isAppInstalled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isTermuxAppAccessible(Landroid/content/Context;)Ljava/lang/String;
    .locals 8
    .param p0, "currentPackageContext"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "currentPackageContext"
        }
    .end annotation

    .line 163
    invoke-static {p0}, Lcom/termux/shared/termux/TermuxUtils;->isTermuxAppInstalled(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 164
    .local v0, "errmsg":Ljava/lang/String;
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 165
    invoke-static {p0}, Lcom/termux/shared/termux/TermuxUtils;->getTermuxPackageContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v3

    .line 167
    .local v3, "termuxPackageContext":Landroid/content/Context;
    if-nez v3, :cond_0

    .line 168
    sget v4, Lcom/termux/shared/R$string;->error_termux_app_package_context_not_accessible:I

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 170
    :cond_0
    if-nez v0, :cond_1

    .line 172
    invoke-static {v2, v2}, Lcom/termux/shared/file/TermuxFileUtils;->isTermuxPrefixDirectoryAccessible(ZZ)Lcom/termux/shared/models/errors/Error;

    move-result-object v4

    .line 173
    .local v4, "error":Lcom/termux/shared/models/errors/Error;
    if-eqz v4, :cond_1

    .line 174
    sget v5, Lcom/termux/shared/R$string;->error_termux_prefix_dir_path_not_accessible:I

    new-array v6, v1, [Ljava/lang/Object;

    .line 175
    invoke-static {p0}, Lcom/termux/shared/packages/PackageUtils;->getAppNameForPackage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    .line 174
    invoke-virtual {p0, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 179
    .end local v3    # "termuxPackageContext":Landroid/content/Context;
    .end local v4    # "error":Lcom/termux/shared/models/errors/Error;
    :cond_1
    if-eqz v0, :cond_2

    .line 180
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/termux/shared/R$string;->msg_termux_app_required_by_app:I

    new-array v1, v1, [Ljava/lang/Object;

    .line 181
    invoke-static {p0}, Lcom/termux/shared/packages/PackageUtils;->getAppNameForPackage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v1, v2

    .line 180
    invoke-virtual {p0, v4, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 183
    :cond_2
    const/4 v1, 0x0

    return-object v1
.end method

.method public static isTermuxAppInstalled(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "context"
        }
    .end annotation

    .line 132
    const-string v0, "Termux"

    const-string v1, "com.termux.alpine"

    invoke-static {p0, v0, v1}, Lcom/termux/shared/packages/PackageUtils;->isAppInstalled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static sendTermuxOpenedBroadcast(Landroid/content/Context;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 195
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.termux.app.OPENED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 196
    .local v0, "broadcast":Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 200
    .local v1, "matches":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 201
    .local v3, "info":Landroid/content/pm/ResolveInfo;
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 202
    .local v4, "explicitBroadcast":Landroid/content/Intent;
    new-instance v5, Landroid/content/ComponentName;

    iget-object v6, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v7, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    .local v5, "cname":Landroid/content/ComponentName;
    invoke-virtual {v4, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 205
    invoke-virtual {p0, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 206
    .end local v3    # "info":Landroid/content/pm/ResolveInfo;
    .end local v4    # "explicitBroadcast":Landroid/content/Intent;
    .end local v5    # "cname":Landroid/content/ComponentName;
    goto :goto_0

    .line 207
    :cond_0
    return-void
.end method
