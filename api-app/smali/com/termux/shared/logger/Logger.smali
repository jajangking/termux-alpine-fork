.class public abstract Lcom/termux/shared/logger/Logger;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static CURRENT_LOG_LEVEL:I = 0x1

.field private static DEFAULT_LOG_TAG:Ljava/lang/String; = "Logger"


# direct methods
.method public static synthetic $r8$lambda$0X-tPgRyEIoidVOd1TySvpinOZc(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/termux/shared/logger/Logger;->lambda$showToast$0(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static getDefaultLogTag()Ljava/lang/String;
    .locals 1

    .line 447
    sget-object v0, Lcom/termux/shared/logger/Logger;->DEFAULT_LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static getFullTag(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 482
    sget-object v0, Lcom/termux/shared/logger/Logger;->DEFAULT_LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 485
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/termux/shared/logger/Logger;->DEFAULT_LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getLogLevel()I
    .locals 1

    .line 460
    sget v0, Lcom/termux/shared/logger/Logger;->CURRENT_LOG_LEVEL:I

    return v0
.end method

.method public static getLogLevelLabel(Landroid/content/Context;IZ)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x1

    if-eqz p1, :cond_3

    if-eq p1, v0, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    .line 434
    sget v1, Lcom/termux/shared/R$string;->log_level_unknown:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 433
    :cond_0
    sget v1, Lcom/termux/shared/R$string;->log_level_verbose:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 432
    :cond_1
    sget v1, Lcom/termux/shared/R$string;->log_level_debug:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 431
    :cond_2
    sget v1, Lcom/termux/shared/R$string;->log_level_normal:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 430
    :cond_3
    sget v1, Lcom/termux/shared/R$string;->log_level_off:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    if-eqz p2, :cond_4

    if-ne p1, v0, :cond_4

    .line 438
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " (default)"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_4
    return-object p0
.end method

.method public static getLogLevelLabelsArray(Landroid/content/Context;[Ljava/lang/CharSequence;Z)[Ljava/lang/CharSequence;
    .locals 3

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 418
    :cond_0
    array-length v0, p1

    new-array v0, v0, [Ljava/lang/CharSequence;

    const/4 v1, 0x0

    .line 420
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 421
    aget-object v2, p1, v1

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {p0, v2, p2}, Lcom/termux/shared/logger/Logger;->getLogLevelLabel(Landroid/content/Context;IZ)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static getLogLevelsArray()[Ljava/lang/CharSequence;
    .locals 9

    const/4 v0, 0x0

    .line 408
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    .line 409
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    .line 410
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x3

    .line 411
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/CharSequence;

    aput-object v1, v8, v0

    aput-object v3, v8, v2

    aput-object v5, v8, v4

    aput-object v7, v8, v6

    return-object v8
.end method

.method public static getMessageAndStackTraceString(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    .line 288
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ":\n"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/termux/shared/logger/Logger;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    if-nez p1, :cond_2

    return-object p0

    .line 292
    :cond_2
    invoke-static {p1}, Lcom/termux/shared/logger/Logger;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getMultiLineLogStringEntry(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_0

    .line 391
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ":\n```\n"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "\n```\n"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 393
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ": "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getSingleLineLogStringEntry(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_0

    .line 384
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ": `"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "`"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 386
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ": "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 314
    :cond_0
    :try_start_0
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 315
    new-instance v2, Ljava/io/PrintWriter;

    invoke-direct {v2, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 316
    invoke-virtual {p0, v2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 317
    invoke-virtual {v2}, Ljava/io/PrintWriter;->close()V

    .line 318
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    .line 319
    invoke-virtual {v1}, Ljava/io/StringWriter;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 321
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-object v0
.end method

.method public static getStackTracesMarkdownString(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    if-nez p0, :cond_0

    .line 363
    const-string p0, "StackTraces"

    .line 364
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "### "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_3

    .line 366
    array-length p0, p1

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    .line 369
    :goto_0
    array-length v1, p1

    if-eq p0, v1, :cond_4

    .line 370
    array-length v1, p1

    const/4 v2, 0x1

    if-le v1, v2, :cond_2

    .line 371
    const-string v1, "\n\n\n#### Stacktrace "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, p0, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 373
    :cond_2
    const-string v1, "\n\n```\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v1, p1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n```"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    .line 367
    :cond_3
    :goto_1
    const-string p0, "\n\n`-`"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 377
    :cond_4
    const-string p0, "\n##\n"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 379
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getStackTracesString(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    if-nez p0, :cond_0

    .line 345
    const-string p0, "StackTraces:"

    .line 346
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_3

    .line 348
    array-length p0, p1

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    .line 351
    :goto_0
    array-length v1, p1

    if-eq p0, v1, :cond_4

    .line 352
    array-length v1, p1

    const/4 v2, 0x1

    if-le v1, v2, :cond_2

    .line 353
    const-string v1, "\n\nStacktrace "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, p0, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 355
    :cond_2
    const-string v1, "\n```\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v2, p1, p0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    .line 349
    :cond_3
    :goto_1
    const-string p0, " -"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 359
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getStackTracesStringArray(Ljava/lang/Throwable;)[Ljava/lang/String;
    .locals 0

    .line 330
    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lcom/termux/shared/logger/Logger;->getStackTracesStringArray(Ljava/util/List;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getStackTracesStringArray(Ljava/util/List;)[Ljava/lang/String;
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 335
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 336
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 337
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Throwable;

    invoke-static {v2}, Lcom/termux/shared/logger/Logger;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static isLogLevelValid(Ljava/lang/Integer;)Z
    .locals 1

    if-eqz p0, :cond_0

    .line 489
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/4 v0, 0x3

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$showToast$0(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 0

    .line 401
    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public static logDebug(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x3

    .line 182
    invoke-static {v0, p0, p1}, Lcom/termux/shared/logger/Logger;->logMessage(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static logDebugExtended(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x3

    .line 190
    invoke-static {v0, p0, p1}, Lcom/termux/shared/logger/Logger;->logExtendedMessage(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static logError(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x6

    .line 110
    sget-object v1, Lcom/termux/shared/logger/Logger;->DEFAULT_LOG_TAG:Ljava/lang/String;

    invoke-static {v0, v1, p0}, Lcom/termux/shared/logger/Logger;->logMessage(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static logError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x6

    .line 106
    invoke-static {v0, p0, p1}, Lcom/termux/shared/logger/Logger;->logMessage(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static logErrorAndShowToast(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 235
    sget v0, Lcom/termux/shared/logger/Logger;->CURRENT_LOG_LEVEL:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    .line 236
    invoke-static {p1, p2}, Lcom/termux/shared/logger/Logger;->logError(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    invoke-static {p0, p2, v1}, Lcom/termux/shared/logger/Logger;->showToast(Landroid/content/Context;Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public static logErrorExtended(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x6

    .line 114
    invoke-static {v0, p0, p1}, Lcom/termux/shared/logger/Logger;->logExtendedMessage(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static logErrorPrivate(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 124
    sget v0, Lcom/termux/shared/logger/Logger;->CURRENT_LOG_LEVEL:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    const/4 v0, 0x6

    .line 125
    invoke-static {v0, p0, p1}, Lcom/termux/shared/logger/Logger;->logMessage(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static logExtendedMessage(ILjava/lang/String;Ljava/lang/String;)V
    .locals 5

    if-nez p2, :cond_0

    return-void

    .line 77
    :cond_0
    invoke-static {p1}, Lcom/termux/shared/logger/Logger;->getFullTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    rsub-int v0, v0, 0xfd8

    .line 79
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 81
    :goto_0
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_3

    .line 82
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v0, :cond_2

    const/16 v2, 0xa

    .line 84
    invoke-virtual {p2, v2, v0}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v2

    const/4 v4, -0x1

    if-eq v2, v4, :cond_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    move v2, v0

    .line 88
    :goto_1
    invoke-virtual {p2, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    invoke-virtual {p2, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 91
    :cond_2
    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    :cond_3
    const-string p2, ""

    :goto_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_5

    .line 97
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    if-le v0, v2, :cond_4

    .line 98
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "("

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v3, 0x1

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")\n"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 99
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/termux/shared/logger/Logger;->logMessage(ILjava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_5
    return-void
.end method

.method public static logInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x4

    .line 164
    invoke-static {v0, p0, p1}, Lcom/termux/shared/logger/Logger;->logMessage(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static logMessage(ILjava/lang/String;Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x6

    const/4 v1, 0x1

    if-ne p0, v0, :cond_0

    .line 57
    sget v0, Lcom/termux/shared/logger/Logger;->CURRENT_LOG_LEVEL:I

    if-lt v0, v1, :cond_0

    .line 58
    invoke-static {p1}, Lcom/termux/shared/logger/Logger;->getFullTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const/4 v0, 0x5

    if-ne p0, v0, :cond_1

    .line 59
    sget v0, Lcom/termux/shared/logger/Logger;->CURRENT_LOG_LEVEL:I

    if-lt v0, v1, :cond_1

    .line 60
    invoke-static {p1}, Lcom/termux/shared/logger/Logger;->getFullTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const/4 v0, 0x4

    if-ne p0, v0, :cond_2

    .line 61
    sget v0, Lcom/termux/shared/logger/Logger;->CURRENT_LOG_LEVEL:I

    if-lt v0, v1, :cond_2

    .line 62
    invoke-static {p1}, Lcom/termux/shared/logger/Logger;->getFullTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    const/4 v1, 0x3

    if-ne p0, v1, :cond_3

    .line 63
    sget v2, Lcom/termux/shared/logger/Logger;->CURRENT_LOG_LEVEL:I

    if-lt v2, v0, :cond_3

    .line 64
    invoke-static {p1}, Lcom/termux/shared/logger/Logger;->getFullTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    if-ne p0, v0, :cond_4

    .line 65
    sget p0, Lcom/termux/shared/logger/Logger;->CURRENT_LOG_LEVEL:I

    if-lt p0, v1, :cond_4

    .line 66
    invoke-static {p1}, Lcom/termux/shared/logger/Logger;->getFullTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_0
    return-void
.end method

.method public static logStackTraceWithMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 261
    invoke-static {p1, p2}, Lcom/termux/shared/logger/Logger;->getMessageAndStackTraceString(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/termux/shared/logger/Logger;->logErrorExtended(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static logStackTraceWithMessage(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 265
    sget-object v0, Lcom/termux/shared/logger/Logger;->DEFAULT_LOG_TAG:Ljava/lang/String;

    invoke-static {v0, p0, p1}, Lcom/termux/shared/logger/Logger;->logStackTraceWithMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static logVerbose(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x2

    .line 204
    sget-object v1, Lcom/termux/shared/logger/Logger;->DEFAULT_LOG_TAG:Ljava/lang/String;

    invoke-static {v0, v1, p0}, Lcom/termux/shared/logger/Logger;->logMessage(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static logVerbose(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x2

    .line 200
    invoke-static {v0, p0, p1}, Lcom/termux/shared/logger/Logger;->logMessage(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static logVerboseExtended(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x2

    .line 208
    invoke-static {v0, p0, p1}, Lcom/termux/shared/logger/Logger;->logExtendedMessage(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static logVerboseForce(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 216
    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static logWarn(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x5

    .line 146
    invoke-static {v0, p0, p1}, Lcom/termux/shared/logger/Logger;->logMessage(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setDefaultLogTag(Ljava/lang/String;)V
    .locals 2

    .line 454
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    const/16 v1, 0x16

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_0
    sput-object p0, Lcom/termux/shared/logger/Logger;->DEFAULT_LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public static setLogLevel(Landroid/content/Context;I)I
    .locals 3

    .line 464
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/termux/shared/logger/Logger;->isLogLevelValid(Ljava/lang/Integer;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 465
    sput p1, Lcom/termux/shared/logger/Logger;->CURRENT_LOG_LEVEL:I

    goto :goto_0

    .line 467
    :cond_0
    sput v1, Lcom/termux/shared/logger/Logger;->CURRENT_LOG_LEVEL:I

    :goto_0
    if-eqz p0, :cond_1

    .line 470
    sget p1, Lcom/termux/shared/R$string;->log_level_value:I

    sget v0, Lcom/termux/shared/logger/Logger;->CURRENT_LOG_LEVEL:I

    const/4 v2, 0x0

    invoke-static {p0, v0, v2}, Lcom/termux/shared/logger/Logger;->getLogLevelLabel(Landroid/content/Context;IZ)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v1}, Lcom/termux/shared/logger/Logger;->showToast(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 472
    :cond_1
    sget p0, Lcom/termux/shared/logger/Logger;->CURRENT_LOG_LEVEL:I

    return p0
.end method

.method public static shouldEnableLoggingForCustomLogLevel(Ljava/lang/Integer;)Z
    .locals 4

    .line 495
    sget v0, Lcom/termux/shared/logger/Logger;->CURRENT_LOG_LEVEL:I

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x1

    const/4 v3, 0x3

    if-nez p0, :cond_2

    if-lt v0, v3, :cond_1

    move v1, v2

    :cond_1
    return v1

    .line 497
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gtz v0, :cond_3

    return v1

    .line 498
    :cond_3
    invoke-static {p0}, Lcom/termux/shared/logger/Logger;->isLogLevelValid(Ljava/lang/Integer;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 499
    :cond_4
    sget p0, Lcom/termux/shared/logger/Logger;->CURRENT_LOG_LEVEL:I

    if-lt v3, p0, :cond_5

    move v1, v2

    :cond_5
    return v1
.end method

.method public static showToast(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 2

    if-eqz p0, :cond_1

    .line 399
    invoke-static {p1}, Lcom/termux/shared/data/DataUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 401
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/termux/shared/logger/Logger$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2}, Lcom/termux/shared/logger/Logger$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_0
    return-void
.end method
