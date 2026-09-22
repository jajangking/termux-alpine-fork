.class public abstract Lcom/termux/api/apis/TelephonyAPI;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static bridge synthetic -$$Nest$smwriteIfKnown(Landroid/util/JsonWriter;Ljava/lang/String;I)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/termux/api/apis/TelephonyAPI;->writeIfKnown(Landroid/util/JsonWriter;Ljava/lang/String;I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smwriteIfKnown(Landroid/util/JsonWriter;Ljava/lang/String;J)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lcom/termux/api/apis/TelephonyAPI;->writeIfKnown(Landroid/util/JsonWriter;Ljava/lang/String;J)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smwriteIfKnown(Landroid/util/JsonWriter;Ljava/lang/String;[I)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/termux/api/apis/TelephonyAPI;->writeIfKnown(Landroid/util/JsonWriter;Ljava/lang/String;[I)V

    return-void
.end method

.method public static onReceiveTelephonyCall(Lcom/termux/api/TermuxApiReceiver;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .line 400
    const-string v0, "onReceiveTelephonyCall"

    const-string v1, "TelephonyAPI"

    invoke-static {v1, v0}, Lcom/termux/shared/logger/Logger;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    const-string v0, "number"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 404
    const-string p1, "No \'number\' extra"

    invoke-static {v1, p1}, Lcom/termux/shared/logger/Logger;->logError(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    invoke-static {p0, p2}, Lcom/termux/api/util/ResultReturner;->noteDone(Landroid/content/BroadcastReceiver;Landroid/content/Intent;)V

    return-void

    .line 409
    :cond_0
    const-string v2, "#"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 410
    const-string v3, "%23"

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 412
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tel:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 414
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.CALL"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v3, 0x10000000

    .line 415
    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 416
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 419
    :try_start_0
    invoke-virtual {p1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 421
    const-string v0, "Exception in phone call"

    invoke-static {v1, v0, p1}, Lcom/termux/shared/logger/Logger;->logStackTraceWithMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 424
    :goto_0
    invoke-static {p0, p2}, Lcom/termux/api/util/ResultReturner;->noteDone(Landroid/content/BroadcastReceiver;Landroid/content/Intent;)V

    return-void
.end method

.method public static onReceiveTelephonyCellInfo(Lcom/termux/api/TermuxApiReceiver;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 55
    const-string v0, "TelephonyAPI"

    const-string v1, "onReceiveTelephonyCellInfo"

    invoke-static {v0, v1}, Lcom/termux/shared/logger/Logger;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    new-instance v0, Lcom/termux/api/apis/TelephonyAPI$1;

    invoke-direct {v0, p1}, Lcom/termux/api/apis/TelephonyAPI$1;-><init>(Landroid/content/Context;)V

    invoke-static {p0, p2, v0}, Lcom/termux/api/util/ResultReturner;->returnData(Ljava/lang/Object;Landroid/content/Intent;Lcom/termux/api/util/ResultReturner$ResultWriter;)V

    return-void
.end method

.method public static onReceiveTelephonyDeviceInfo(Lcom/termux/api/TermuxApiReceiver;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 189
    const-string v0, "TelephonyAPI"

    const-string v1, "onReceiveTelephonyDeviceInfo"

    invoke-static {v0, v1}, Lcom/termux/shared/logger/Logger;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    new-instance v0, Lcom/termux/api/apis/TelephonyAPI$2;

    invoke-direct {v0, p1}, Lcom/termux/api/apis/TelephonyAPI$2;-><init>(Landroid/content/Context;)V

    invoke-static {p0, p2, v0}, Lcom/termux/api/util/ResultReturner;->returnData(Ljava/lang/Object;Landroid/content/Intent;Lcom/termux/api/util/ResultReturner$ResultWriter;)V

    return-void
.end method

.method private static writeIfKnown(Landroid/util/JsonWriter;Ljava/lang/String;I)V
    .locals 1

    const v0, 0x7fffffff

    if-eq p2, v0, :cond_0

    .line 39
    invoke-virtual {p0, p1}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object p0

    int-to-long p1, p2

    invoke-virtual {p0, p1, p2}, Landroid/util/JsonWriter;->value(J)Landroid/util/JsonWriter;

    :cond_0
    return-void
.end method

.method private static writeIfKnown(Landroid/util/JsonWriter;Ljava/lang/String;J)V
    .locals 2

    const-wide v0, 0x7fffffffffffffffL

    cmp-long v0, p2, v0

    if-eqz v0, :cond_0

    .line 42
    invoke-virtual {p0, p1}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object p0

    invoke-virtual {p0, p2, p3}, Landroid/util/JsonWriter;->value(J)Landroid/util/JsonWriter;

    :cond_0
    return-void
.end method

.method private static writeIfKnown(Landroid/util/JsonWriter;Ljava/lang/String;[I)V
    .locals 2

    if-eqz p2, :cond_1

    .line 46
    invoke-virtual {p0, p1}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 47
    invoke-virtual {p0}, Landroid/util/JsonWriter;->beginArray()Landroid/util/JsonWriter;

    const/4 p1, 0x0

    .line 48
    :goto_0
    array-length v0, p2

    if-ge p1, v0, :cond_0

    aget v0, p2, p1

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Landroid/util/JsonWriter;->value(J)Landroid/util/JsonWriter;

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 49
    :cond_0
    invoke-virtual {p0}, Landroid/util/JsonWriter;->endArray()Landroid/util/JsonWriter;

    :cond_1
    return-void
.end method
