.class Lcom/termux/api/apis/SmsSendAPI$1;
.super Lcom/termux/api/util/ResultReturner$WithStringInput;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/termux/api/apis/SmsSendAPI;->onReceive(Lcom/termux/api/TermuxApiReceiver;Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/termux/api/apis/SmsSendAPI$1;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/termux/api/apis/SmsSendAPI$1;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Lcom/termux/api/util/ResultReturner$WithStringInput;-><init>()V

    return-void
.end method


# virtual methods
.method public writeResult(Ljava/io/PrintWriter;)V
    .locals 10

    .line 30
    iget-object p1, p0, Lcom/termux/api/apis/SmsSendAPI$1;->val$context:Landroid/content/Context;

    iget-object v0, p0, Lcom/termux/api/apis/SmsSendAPI$1;->val$intent:Landroid/content/Intent;

    invoke-static {p1, v0}, Lcom/termux/api/apis/SmsSendAPI;->getSmsManager(Landroid/content/Context;Landroid/content/Intent;)Landroid/telephony/SmsManager;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 33
    :cond_0
    iget-object v0, p0, Lcom/termux/api/apis/SmsSendAPI$1;->val$intent:Landroid/content/Intent;

    const-string v1, "recipients"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 37
    iget-object v2, p0, Lcom/termux/api/apis/SmsSendAPI$1;->val$intent:Landroid/content/Intent;

    const-string v3, "recipient"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    .line 38
    new-array v0, v0, [Ljava/lang/String;

    aput-object v2, v0, v1

    :cond_1
    if-eqz v0, :cond_3

    .line 41
    array-length v2, v0

    if-nez v2, :cond_2

    goto :goto_1

    .line 44
    :cond_2
    iget-object v2, p0, Lcom/termux/api/util/ResultReturner$WithStringInput;->inputString:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/telephony/SmsManager;->divideMessage(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    .line 45
    array-length v8, v0

    move v9, v1

    :goto_0
    if-ge v9, v8, :cond_4

    aget-object v2, v0, v9

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x0

    move-object v1, p1

    move-object v4, v7

    .line 46
    invoke-virtual/range {v1 .. v6}, Landroid/telephony/SmsManager;->sendMultipartTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 42
    :cond_3
    :goto_1
    const-string p1, "SmsSendAPI"

    const-string v0, "No recipient given"

    invoke-static {p1, v0}, Lcom/termux/shared/logger/Logger;->logError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    return-void
.end method
