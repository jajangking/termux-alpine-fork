.class public Lcom/termux/shared/logger/Logger;
.super Ljava/lang/Object;
.source "Logger.java"


# static fields
.field private static CURRENT_LOG_LEVEL:I = 0x0

.field public static final DEFAULT_LOG_LEVEL:I = 0x1

.field public static final DEFAULT_LOG_TAG:Ljava/lang/String; = "Termux"

.field public static final LOGGER_ENTRY_MAX_PAYLOAD:I = 0xfe4

.field public static final LOGGER_ENTRY_MAX_SAFE_PAYLOAD:I = 0xfa0

.field public static final LOG_LEVEL_DEBUG:I = 0x2

.field public static final LOG_LEVEL_NORMAL:I = 0x1

.field public static final LOG_LEVEL_OFF:I = 0x0

.field public static final LOG_LEVEL_VERBOSE:I = 0x3

.field public static final MAX_LOG_LEVEL:I = 0x3


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    const/4 v0, 0x1

    sput v0, Lcom/termux/shared/logger/Logger;->CURRENT_LOG_LEVEL:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFullTag(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "tag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tag"
        }
    .end annotation

    .line 430
    const-string v0, "Termux"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 431
    return-object p0

    .line 433
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Termux:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getLogLevel()I
    .locals 1

    .line 414
    sget v0, Lcom/termux/shared/logger/Logger;->CURRENT_LOG_LEVEL:I

    return v0
.end method

.method public static getLogLevelLabel(Landroid/content/Context;IZ)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "logLevel"    # I
    .param p2, "addDefaultTag"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "context",
            "logLevel",
            "addDefaultTag"
        }
    .end annotation

    .line 397
    packed-switch p1, :pswitch_data_0

    .line 402
    sget v0, Lcom/termux/shared/R$string;->log_level_unknown:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .local v0, "logLabel":Ljava/lang/String;
    goto :goto_0

    .line 401
    .end local v0    # "logLabel":Ljava/lang/String;
    :pswitch_0
    sget v0, Lcom/termux/shared/R$string;->log_level_verbose:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "logLabel":Ljava/lang/String;
    goto :goto_0

    .line 400
    .end local v0    # "logLabel":Ljava/lang/String;
    :pswitch_1
    sget v0, Lcom/termux/shared/R$string;->log_level_debug:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "logLabel":Ljava/lang/String;
    goto :goto_0

    .line 399
    .end local v0    # "logLabel":Ljava/lang/String;
    :pswitch_2
    sget v0, Lcom/termux/shared/R$string;->log_level_normal:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "logLabel":Ljava/lang/String;
    goto :goto_0

    .line 398
    .end local v0    # "logLabel":Ljava/lang/String;
    :pswitch_3
    sget v0, Lcom/termux/shared/R$string;->log_level_off:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 405
    .restart local v0    # "logLabel":Ljava/lang/String;
    :goto_0
    if-eqz p2, :cond_0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 406
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (default)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 408
    :cond_0
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getLogLevelLabelsArray(Landroid/content/Context;[Ljava/lang/CharSequence;Z)[Ljava/lang/CharSequence;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "logLevels"    # [Ljava/lang/CharSequence;
    .param p2, "addDefaultTag"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "logLevels",
            "addDefaultTag"
        }
    .end annotation

    .line 384
    if-nez p1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 386
    :cond_0
    array-length v0, p1

    new-array v0, v0, [Ljava/lang/CharSequence;

    .line 388
    .local v0, "logLevelLabels":[Ljava/lang/CharSequence;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 389
    aget-object v2, p1, v1

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {p0, v2, p2}, Lcom/termux/shared/logger/Logger;->getLogLevelLabel(Landroid/content/Context;IZ)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 388
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 392
    .end local v1    # "i":I
    :cond_1
    return-object v0
.end method

.method public static getLogLevelsArray()[Ljava/lang/CharSequence;
    .locals 3

    .line 375
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/CharSequence;

    .line 376
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 377
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 378
    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 379
    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 375
    return-object v0
.end method

.method public static getMessageAndStackTraceString(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 2
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "message",
            "throwable"
        }
    .end annotation

    .line 253
    if-nez p0, :cond_0

    if-nez p1, :cond_0

    .line 254
    const/4 v0, 0x0

    return-object v0

    .line 255
    :cond_0
    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    .line 256
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/termux/shared/logger/Logger;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 257
    :cond_1
    if-nez p1, :cond_2

    .line 258
    return-object p0

    .line 260
    :cond_2
    invoke-static {p1}, Lcom/termux/shared/logger/Logger;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMessageAndStackTracesString(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
    .locals 3
    .param p0, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "message",
            "throwablesList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 264
    .local p1, "throwablesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    const/4 v0, 0x0

    if-nez p0, :cond_1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 265
    :cond_0
    return-object v0

    .line 266
    :cond_1
    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_2

    .line 267
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/termux/shared/logger/Logger;->getStackTracesStringArray(Ljava/util/List;)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/termux/shared/logger/Logger;->getStackTracesString(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 268
    :cond_2
    if-eqz p1, :cond_4

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    .line 271
    :cond_3
    invoke-static {p1}, Lcom/termux/shared/logger/Logger;->getStackTracesStringArray(Ljava/util/List;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/termux/shared/logger/Logger;->getStackTracesString(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 269
    :cond_4
    :goto_0
    return-object p0
.end method

.method public static getMultiLineLogStringEntry(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "label"    # Ljava/lang/String;
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "def"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "label",
            "object",
            "def"
        }
    .end annotation

    .line 358
    if-eqz p1, :cond_0

    .line 359
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":\n```\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n```\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 361
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSingleLineLogStringEntry(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "label"    # Ljava/lang/String;
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "def"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "label",
            "object",
            "def"
        }
    .end annotation

    .line 351
    if-eqz p1, :cond_0

    .line 352
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": `"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "`"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 354
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 4
    .param p0, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "throwable"
        }
    .end annotation

    .line 277
    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 279
    :cond_0
    const/4 v0, 0x0

    .line 282
    .local v0, "stackTraceString":Ljava/lang/String;
    :try_start_0
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 283
    .local v1, "errors":Ljava/io/StringWriter;
    new-instance v2, Ljava/io/PrintWriter;

    invoke-direct {v2, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 284
    .local v2, "pw":Ljava/io/PrintWriter;
    invoke-virtual {p0, v2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 285
    invoke-virtual {v2}, Ljava/io/PrintWriter;->close()V

    .line 286
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    .line 287
    invoke-virtual {v1}, Ljava/io/StringWriter;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 290
    .end local v1    # "errors":Ljava/io/StringWriter;
    .end local v2    # "pw":Ljava/io/PrintWriter;
    goto :goto_0

    .line 288
    :catch_0
    move-exception v1

    .line 289
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 292
    .end local v1    # "e":Ljava/io/IOException;
    :goto_0
    return-object v0
.end method

.method public static getStackTracesMarkdownString(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "label"    # Ljava/lang/String;
    .param p1, "stackTraceStringArray"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "label",
            "stackTraceStringArray"
        }
    .end annotation

    .line 331
    if-nez p0, :cond_0

    const-string p0, "StackTraces"

    .line 332
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "### "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 334
    .local v0, "stackTracesString":Ljava/lang/StringBuilder;
    if-eqz p1, :cond_3

    array-length v1, p1

    if-nez v1, :cond_1

    goto :goto_1

    .line 337
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-eq v1, v2, :cond_4

    .line 338
    array-length v2, p1

    const/4 v3, 0x1

    if-le v2, v3, :cond_2

    .line 339
    const-string v2, "\n\n\n#### Stacktrace "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 341
    :cond_2
    const-string v2, "\n\n```\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, p1, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n```"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 337
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 335
    .end local v1    # "i":I
    :cond_3
    :goto_1
    const-string v1, "\n\n`-`"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 345
    :cond_4
    const-string v1, "\n##\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 347
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getStackTracesString(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "label"    # Ljava/lang/String;
    .param p1, "stackTraceStringArray"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "label",
            "stackTraceStringArray"
        }
    .end annotation

    .line 313
    if-nez p0, :cond_0

    const-string p0, "StackTraces:"

    .line 314
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 316
    .local v0, "stackTracesString":Ljava/lang/StringBuilder;
    if-eqz p1, :cond_3

    array-length v1, p1

    if-nez v1, :cond_1

    goto :goto_1

    .line 319
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-eq v1, v2, :cond_4

    .line 320
    array-length v2, p1

    const/4 v3, 0x1

    if-le v2, v3, :cond_2

    .line 321
    const-string v2, "\n\nStacktrace "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 323
    :cond_2
    const-string v2, "\n```\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, p1, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 319
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 317
    .end local v1    # "i":I
    :cond_3
    :goto_1
    const-string v1, " -"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 327
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getStackTracesStringArray(Ljava/lang/Throwable;)[Ljava/lang/String;
    .locals 1
    .param p0, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "throwable"
        }
    .end annotation

    .line 298
    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/termux/shared/logger/Logger;->getStackTracesStringArray(Ljava/util/List;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getStackTracesStringArray(Ljava/util/List;)[Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "throwablesList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 302
    .local p0, "throwablesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 303
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 304
    .local v0, "stackTraceStringArray":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 305
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Throwable;

    invoke-static {v2}, Lcom/termux/shared/logger/Logger;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 304
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 307
    .end local v1    # "i":I
    :cond_1
    return-object v0
.end method

.method public static isLogLevelValid(Ljava/lang/Integer;)Z
    .locals 2
    .param p0, "logLevel"    # Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "logLevel"
        }
    .end annotation

    .line 437
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x3

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$showToast$0(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "toastText"    # Ljava/lang/String;
    .param p2, "longDuration"    # Z

    .line 369
    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public static logDebug(Ljava/lang/String;)V
    .locals 2
    .param p0, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation

    .line 163
    const/4 v0, 0x3

    const-string v1, "Termux"

    invoke-static {v0, v1, p0}, Lcom/termux/shared/logger/Logger;->logMessage(ILjava/lang/String;Ljava/lang/String;)V

    .line 164
    return-void
.end method

.method public static logDebug(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "tag",
            "message"
        }
    .end annotation

    .line 159
    const/4 v0, 0x3

    invoke-static {v0, p0, p1}, Lcom/termux/shared/logger/Logger;->logMessage(ILjava/lang/String;Ljava/lang/String;)V

    .line 160
    return-void
.end method

.method public static logDebugAndShowToast(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "message"
        }
    .end annotation

    .line 223
    const-string v0, "Termux"

    invoke-static {p0, v0, p1}, Lcom/termux/shared/logger/Logger;->logDebugAndShowToast(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    return-void
.end method

.method public static logDebugAndShowToast(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "tag",
            "message"
        }
    .end annotation

    .line 214
    if-nez p0, :cond_0

    return-void

    .line 216
    :cond_0
    sget v0, Lcom/termux/shared/logger/Logger;->CURRENT_LOG_LEVEL:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_1

    .line 217
    invoke-static {p1, p2}, Lcom/termux/shared/logger/Logger;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    const/4 v0, 0x1

    invoke-static {p0, p2, v0}, Lcom/termux/shared/logger/Logger;->showToast(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 220
    :cond_1
    return-void
.end method

.method public static logDebugExtended(Ljava/lang/String;)V
    .locals 2
    .param p0, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation

    .line 171
    const/4 v0, 0x3

    const-string v1, "Termux"

    invoke-static {v0, v1, p0}, Lcom/termux/shared/logger/Logger;->logExtendedMessage(ILjava/lang/String;Ljava/lang/String;)V

    .line 172
    return-void
.end method

.method public static logDebugExtended(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "tag",
            "message"
        }
    .end annotation

    .line 167
    const/4 v0, 0x3

    invoke-static {v0, p0, p1}, Lcom/termux/shared/logger/Logger;->logExtendedMessage(ILjava/lang/String;Ljava/lang/String;)V

    .line 168
    return-void
.end method

.method public static logError(Ljava/lang/String;)V
    .locals 2
    .param p0, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation

    .line 109
    const/4 v0, 0x6

    const-string v1, "Termux"

    invoke-static {v0, v1, p0}, Lcom/termux/shared/logger/Logger;->logMessage(ILjava/lang/String;Ljava/lang/String;)V

    .line 110
    return-void
.end method

.method public static logError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "tag",
            "message"
        }
    .end annotation

    .line 105
    const/4 v0, 0x6

    invoke-static {v0, p0, p1}, Lcom/termux/shared/logger/Logger;->logMessage(ILjava/lang/String;Ljava/lang/String;)V

    .line 106
    return-void
.end method

.method public static logErrorAndShowToast(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "message"
        }
    .end annotation

    .line 208
    const-string v0, "Termux"

    invoke-static {p0, v0, p1}, Lcom/termux/shared/logger/Logger;->logErrorAndShowToast(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    return-void
.end method

.method public static logErrorAndShowToast(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "tag",
            "message"
        }
    .end annotation

    .line 199
    if-nez p0, :cond_0

    return-void

    .line 201
    :cond_0
    sget v0, Lcom/termux/shared/logger/Logger;->CURRENT_LOG_LEVEL:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_1

    .line 202
    invoke-static {p1, p2}, Lcom/termux/shared/logger/Logger;->logError(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    invoke-static {p0, p2, v1}, Lcom/termux/shared/logger/Logger;->showToast(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 205
    :cond_1
    return-void
.end method

.method public static logErrorExtended(Ljava/lang/String;)V
    .locals 2
    .param p0, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation

    .line 117
    const/4 v0, 0x6

    const-string v1, "Termux"

    invoke-static {v0, v1, p0}, Lcom/termux/shared/logger/Logger;->logExtendedMessage(ILjava/lang/String;Ljava/lang/String;)V

    .line 118
    return-void
.end method

.method public static logErrorExtended(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "tag",
            "message"
        }
    .end annotation

    .line 113
    const/4 v0, 0x6

    invoke-static {v0, p0, p1}, Lcom/termux/shared/logger/Logger;->logExtendedMessage(ILjava/lang/String;Ljava/lang/String;)V

    .line 114
    return-void
.end method

.method public static logExtendedMessage(ILjava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p0, "logLevel"    # I
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "logLevel",
            "tag",
            "message"
        }
    .end annotation

    .line 69
    if-nez p2, :cond_0

    return-void

    .line 73
    :cond_0
    const-string v0, ""

    .line 76
    .local v0, "prefix":Ljava/lang/String;
    invoke-static {p1}, Lcom/termux/shared/logger/Logger;->getFullTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    rsub-int v1, v1, 0xfdc

    add-int/lit8 v1, v1, -0x4

    .line 78
    .local v1, "maxEntrySize":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 80
    .local v2, "messagesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_0
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    .line 81
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v1, :cond_2

    .line 82
    move v3, v1

    .line 83
    .local v3, "cutOffIndex":I
    const/16 v4, 0xa

    invoke-virtual {p2, v4, v3}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v4

    .line 84
    .local v4, "nextNewlineIndex":I
    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    .line 85
    add-int/lit8 v3, v4, 0x1

    .line 87
    :cond_1
    const/4 v5, 0x0

    invoke-virtual {p2, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    invoke-virtual {p2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 90
    .end local v3    # "cutOffIndex":I
    .end local v4    # "nextNewlineIndex":I
    :cond_2
    invoke-interface {v2, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    :cond_3
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_5

    .line 96
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_4

    .line 97
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v5, v3, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 98
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, p1, v4}, Lcom/termux/shared/logger/Logger;->logMessage(ILjava/lang/String;Ljava/lang/String;)V

    .line 95
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 100
    .end local v3    # "i":I
    :cond_5
    return-void
.end method

.method public static logInfo(Ljava/lang/String;)V
    .locals 2
    .param p0, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation

    .line 145
    const/4 v0, 0x4

    const-string v1, "Termux"

    invoke-static {v0, v1, p0}, Lcom/termux/shared/logger/Logger;->logMessage(ILjava/lang/String;Ljava/lang/String;)V

    .line 146
    return-void
.end method

.method public static logInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "tag",
            "message"
        }
    .end annotation

    .line 141
    const/4 v0, 0x4

    invoke-static {v0, p0, p1}, Lcom/termux/shared/logger/Logger;->logMessage(ILjava/lang/String;Ljava/lang/String;)V

    .line 142
    return-void
.end method

.method public static logInfoExtended(Ljava/lang/String;)V
    .locals 2
    .param p0, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation

    .line 153
    const/4 v0, 0x4

    const-string v1, "Termux"

    invoke-static {v0, v1, p0}, Lcom/termux/shared/logger/Logger;->logExtendedMessage(ILjava/lang/String;Ljava/lang/String;)V

    .line 154
    return-void
.end method

.method public static logInfoExtended(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "tag",
            "message"
        }
    .end annotation

    .line 149
    const/4 v0, 0x4

    invoke-static {v0, p0, p1}, Lcom/termux/shared/logger/Logger;->logExtendedMessage(ILjava/lang/String;Ljava/lang/String;)V

    .line 150
    return-void
.end method

.method public static logMessage(ILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "logPriority"    # I
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "logPriority",
            "tag",
            "message"
        }
    .end annotation

    .line 56
    const/4 v0, 0x1

    const/4 v1, 0x6

    if-ne p0, v1, :cond_0

    sget v1, Lcom/termux/shared/logger/Logger;->CURRENT_LOG_LEVEL:I

    if-lt v1, v0, :cond_0

    .line 57
    invoke-static {p1}, Lcom/termux/shared/logger/Logger;->getFullTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 58
    :cond_0
    const/4 v1, 0x5

    if-ne p0, v1, :cond_1

    sget v1, Lcom/termux/shared/logger/Logger;->CURRENT_LOG_LEVEL:I

    if-lt v1, v0, :cond_1

    .line 59
    invoke-static {p1}, Lcom/termux/shared/logger/Logger;->getFullTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 60
    :cond_1
    const/4 v1, 0x4

    if-ne p0, v1, :cond_2

    sget v1, Lcom/termux/shared/logger/Logger;->CURRENT_LOG_LEVEL:I

    if-lt v1, v0, :cond_2

    .line 61
    invoke-static {p1}, Lcom/termux/shared/logger/Logger;->getFullTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 62
    :cond_2
    const/4 v0, 0x2

    const/4 v1, 0x3

    if-ne p0, v1, :cond_3

    sget v2, Lcom/termux/shared/logger/Logger;->CURRENT_LOG_LEVEL:I

    if-lt v2, v0, :cond_3

    .line 63
    invoke-static {p1}, Lcom/termux/shared/logger/Logger;->getFullTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 64
    :cond_3
    if-ne p0, v0, :cond_4

    sget v0, Lcom/termux/shared/logger/Logger;->CURRENT_LOG_LEVEL:I

    if-lt v0, v1, :cond_4

    .line 65
    invoke-static {p1}, Lcom/termux/shared/logger/Logger;->getFullTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    :cond_4
    :goto_0
    return-void
.end method

.method public static logStackTrace(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "tag",
            "throwable"
        }
    .end annotation

    .line 237
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/termux/shared/logger/Logger;->logStackTraceWithMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 238
    return-void
.end method

.method public static logStackTrace(Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "throwable"
        }
    .end annotation

    .line 241
    const-string v0, "Termux"

    const/4 v1, 0x0

    invoke-static {v0, v1, p0}, Lcom/termux/shared/logger/Logger;->logStackTraceWithMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 242
    return-void
.end method

.method public static logStackTraceWithMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "tag",
            "message",
            "throwable"
        }
    .end annotation

    .line 229
    invoke-static {p1, p2}, Lcom/termux/shared/logger/Logger;->getMessageAndStackTraceString(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/termux/shared/logger/Logger;->logErrorExtended(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    return-void
.end method

.method public static logStackTraceWithMessage(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "message",
            "throwable"
        }
    .end annotation

    .line 233
    const-string v0, "Termux"

    invoke-static {v0, p0, p1}, Lcom/termux/shared/logger/Logger;->logStackTraceWithMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 234
    return-void
.end method

.method public static logStackTracesWithMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "tag",
            "message",
            "throwablesList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .line 247
    .local p2, "throwablesList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Throwable;>;"
    invoke-static {p1, p2}, Lcom/termux/shared/logger/Logger;->getMessageAndStackTracesString(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/termux/shared/logger/Logger;->logErrorExtended(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    return-void
.end method

.method public static logVerbose(Ljava/lang/String;)V
    .locals 2
    .param p0, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation

    .line 181
    const/4 v0, 0x2

    const-string v1, "Termux"

    invoke-static {v0, v1, p0}, Lcom/termux/shared/logger/Logger;->logMessage(ILjava/lang/String;Ljava/lang/String;)V

    .line 182
    return-void
.end method

.method public static logVerbose(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "tag",
            "message"
        }
    .end annotation

    .line 177
    const/4 v0, 0x2

    invoke-static {v0, p0, p1}, Lcom/termux/shared/logger/Logger;->logMessage(ILjava/lang/String;Ljava/lang/String;)V

    .line 178
    return-void
.end method

.method public static logVerboseExtended(Ljava/lang/String;)V
    .locals 2
    .param p0, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation

    .line 189
    const/4 v0, 0x2

    const-string v1, "Termux"

    invoke-static {v0, v1, p0}, Lcom/termux/shared/logger/Logger;->logExtendedMessage(ILjava/lang/String;Ljava/lang/String;)V

    .line 190
    return-void
.end method

.method public static logVerboseExtended(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "tag",
            "message"
        }
    .end annotation

    .line 185
    const/4 v0, 0x2

    invoke-static {v0, p0, p1}, Lcom/termux/shared/logger/Logger;->logExtendedMessage(ILjava/lang/String;Ljava/lang/String;)V

    .line 186
    return-void
.end method

.method public static logVerboseForce(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "tag",
            "message"
        }
    .end annotation

    .line 193
    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    return-void
.end method

.method public static logWarn(Ljava/lang/String;)V
    .locals 2
    .param p0, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation

    .line 127
    const/4 v0, 0x5

    const-string v1, "Termux"

    invoke-static {v0, v1, p0}, Lcom/termux/shared/logger/Logger;->logMessage(ILjava/lang/String;Ljava/lang/String;)V

    .line 128
    return-void
.end method

.method public static logWarn(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "tag",
            "message"
        }
    .end annotation

    .line 123
    const/4 v0, 0x5

    invoke-static {v0, p0, p1}, Lcom/termux/shared/logger/Logger;->logMessage(ILjava/lang/String;Ljava/lang/String;)V

    .line 124
    return-void
.end method

.method public static logWarnExtended(Ljava/lang/String;)V
    .locals 2
    .param p0, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation

    .line 135
    const/4 v0, 0x5

    const-string v1, "Termux"

    invoke-static {v0, v1, p0}, Lcom/termux/shared/logger/Logger;->logExtendedMessage(ILjava/lang/String;Ljava/lang/String;)V

    .line 136
    return-void
.end method

.method public static logWarnExtended(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "tag",
            "message"
        }
    .end annotation

    .line 131
    const/4 v0, 0x5

    invoke-static {v0, p0, p1}, Lcom/termux/shared/logger/Logger;->logExtendedMessage(ILjava/lang/String;Ljava/lang/String;)V

    .line 132
    return-void
.end method

.method public static setLogLevel(Landroid/content/Context;I)I
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "logLevel"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "logLevel"
        }
    .end annotation

    .line 418
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/termux/shared/logger/Logger;->isLogLevelValid(Ljava/lang/Integer;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 419
    sput p1, Lcom/termux/shared/logger/Logger;->CURRENT_LOG_LEVEL:I

    goto :goto_0

    .line 421
    :cond_0
    sput v1, Lcom/termux/shared/logger/Logger;->CURRENT_LOG_LEVEL:I

    .line 423
    :goto_0
    if-eqz p0, :cond_1

    .line 424
    sget v0, Lcom/termux/shared/R$string;->log_level_value:I

    new-array v2, v1, [Ljava/lang/Object;

    sget v3, Lcom/termux/shared/logger/Logger;->CURRENT_LOG_LEVEL:I

    const/4 v4, 0x0

    invoke-static {p0, v3, v4}, Lcom/termux/shared/logger/Logger;->getLogLevelLabel(Landroid/content/Context;IZ)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v1}, Lcom/termux/shared/logger/Logger;->showToast(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 426
    :cond_1
    sget v0, Lcom/termux/shared/logger/Logger;->CURRENT_LOG_LEVEL:I

    return v0
.end method

.method public static shouldEnableLoggingForCustomLogLevel(Ljava/lang/Integer;)Z
    .locals 3
    .param p0, "customLogLevel"    # Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "customLogLevel"
        }
    .end annotation

    .line 443
    const/4 v0, 0x0

    if-eqz p0, :cond_3

    sget v1, Lcom/termux/shared/logger/Logger;->CURRENT_LOG_LEVEL:I

    if-lez v1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-gtz v1, :cond_0

    goto :goto_1

    .line 444
    :cond_0
    invoke-static {p0}, Lcom/termux/shared/logger/Logger;->isLogLevelValid(Ljava/lang/Integer;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x3

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    .line 445
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sget v2, Lcom/termux/shared/logger/Logger;->CURRENT_LOG_LEVEL:I

    if-lt v1, v2, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0

    .line 443
    :cond_3
    :goto_1
    return v0
.end method

.method public static showToast(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "toastText"    # Ljava/lang/String;
    .param p2, "longDuration"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x0
        }
        names = {
            "context",
            "toastText",
            "longDuration"
        }
    .end annotation

    .line 367
    if-eqz p0, :cond_1

    invoke-static {p1}, Lcom/termux/shared/data/DataUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 369
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/termux/shared/logger/-$$Lambda$Logger$wWaVtEiVpYpaI9rDhMNt1ytaWvc;

    invoke-direct {v1, p0, p1, p2}, Lcom/termux/shared/logger/-$$Lambda$Logger$wWaVtEiVpYpaI9rDhMNt1ytaWvc;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 370
    return-void

    .line 367
    :cond_1
    :goto_0
    return-void
.end method
