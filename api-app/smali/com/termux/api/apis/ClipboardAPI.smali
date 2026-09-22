.class public abstract Lcom/termux/api/apis/ClipboardAPI;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static synthetic $r8$lambda$8ClRZmgOjypQL8sAs3zVNOTCeyo(Landroid/content/ClipData;Landroid/content/Context;Ljava/io/PrintWriter;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/termux/api/apis/ClipboardAPI;->lambda$onReceive$0(Landroid/content/ClipData;Landroid/content/Context;Ljava/io/PrintWriter;)V

    return-void
.end method

.method public static synthetic $r8$lambda$MZiDh5ZbBLyfuxtEOHUPKbZGgQA(Ljava/lang/String;Landroid/content/ClipData;Landroid/content/Context;Ljava/io/PrintWriter;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lcom/termux/api/apis/ClipboardAPI;->lambda$onReceive$1(Ljava/lang/String;Landroid/content/ClipData;Landroid/content/Context;Ljava/io/PrintWriter;)V

    return-void
.end method

.method private static synthetic lambda$onReceive$0(Landroid/content/ClipData;Landroid/content/Context;Ljava/io/PrintWriter;)V
    .locals 4

    if-nez p0, :cond_0

    .line 44
    const-string p0, ""

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_1

    .line 46
    :cond_0
    invoke-virtual {p0}, Landroid/content/ClipData;->getItemCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 48
    invoke-virtual {p0, v1}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v2

    .line 49
    invoke-virtual {v2, p1}, Landroid/content/ClipData$Item;->coerceToText(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 50
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 51
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method private static synthetic lambda$onReceive$1(Ljava/lang/String;Landroid/content/ClipData;Landroid/content/Context;Ljava/io/PrintWriter;)V
    .locals 3

    if-nez p0, :cond_2

    if-nez p1, :cond_0

    .line 68
    const-string p0, ""

    invoke-virtual {p3, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_1

    .line 70
    :cond_0
    invoke-virtual {p1}, Landroid/content/ClipData;->getItemCount()I

    move-result p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p0, :cond_2

    .line 72
    invoke-virtual {p1, v0}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v1

    .line 73
    invoke-virtual {v1, p2}, Landroid/content/ClipData$Item;->coerceToText(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 74
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 75
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public static onReceive(Lcom/termux/api/TermuxApiReceiver;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .line 21
    const-string v0, "ClipboardAPI"

    const-string v1, "onReceive"

    invoke-static {v0, v1}, Lcom/termux/shared/logger/Logger;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    const-string v0, "clipboard"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    .line 24
    invoke-virtual {v0}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v1

    .line 26
    const-string v2, "api_version"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "2"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 28
    const-string v2, "set"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 30
    new-instance p1, Lcom/termux/api/apis/ClipboardAPI$1;

    invoke-direct {p1, v0}, Lcom/termux/api/apis/ClipboardAPI$1;-><init>(Landroid/content/ClipboardManager;)V

    invoke-static {p0, p2, p1}, Lcom/termux/api/util/ResultReturner;->returnData(Ljava/lang/Object;Landroid/content/Intent;Lcom/termux/api/util/ResultReturner$ResultWriter;)V

    goto :goto_0

    .line 42
    :cond_0
    new-instance v0, Lcom/termux/api/apis/ClipboardAPI$$ExternalSyntheticLambda0;

    invoke-direct {v0, v1, p1}, Lcom/termux/api/apis/ClipboardAPI$$ExternalSyntheticLambda0;-><init>(Landroid/content/ClipData;Landroid/content/Context;)V

    invoke-static {p0, p2, v0}, Lcom/termux/api/util/ResultReturner;->returnData(Ljava/lang/Object;Landroid/content/Intent;Lcom/termux/api/util/ResultReturner$ResultWriter;)V

    goto :goto_0

    .line 58
    :cond_1
    const-string v2, "text"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 61
    const-string v3, ""

    invoke-static {v3, v2}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 64
    :cond_2
    new-instance v0, Lcom/termux/api/apis/ClipboardAPI$$ExternalSyntheticLambda1;

    invoke-direct {v0, v2, v1, p1}, Lcom/termux/api/apis/ClipboardAPI$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;Landroid/content/ClipData;Landroid/content/Context;)V

    invoke-static {p0, p2, v0}, Lcom/termux/api/util/ResultReturner;->returnData(Ljava/lang/Object;Landroid/content/Intent;Lcom/termux/api/util/ResultReturner$ResultWriter;)V

    :goto_0
    return-void
.end method
