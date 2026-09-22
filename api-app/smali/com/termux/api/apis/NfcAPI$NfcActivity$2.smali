.class Lcom/termux/api/apis/NfcAPI$NfcActivity$2;
.super Lcom/termux/api/util/ResultReturner$ResultJsonWriter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/termux/api/apis/NfcAPI$NfcActivity;->postResult(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/termux/api/apis/NfcAPI$NfcActivity;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/termux/api/apis/NfcAPI$NfcActivity;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 156
    iput-object p1, p0, Lcom/termux/api/apis/NfcAPI$NfcActivity$2;->this$0:Lcom/termux/api/apis/NfcAPI$NfcActivity;

    iput-object p2, p0, Lcom/termux/api/apis/NfcAPI$NfcActivity$2;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/termux/api/apis/NfcAPI$NfcActivity$2;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Lcom/termux/api/util/ResultReturner$ResultJsonWriter;-><init>()V

    return-void
.end method


# virtual methods
.method public writeJson(Landroid/util/JsonWriter;)V
    .locals 8

    .line 159
    const-string v0, "postResult"

    const-string v1, "NfcActivity"

    invoke-static {v1, v0}, Lcom/termux/shared/logger/Logger;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    :try_start_0
    iget-object v0, p0, Lcom/termux/api/apis/NfcAPI$NfcActivity$2;->this$0:Lcom/termux/api/apis/NfcAPI$NfcActivity;

    iget-object v0, v0, Lcom/termux/api/apis/NfcAPI$NfcActivity;->mode:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, 0x355996

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, 0x1

    if-eq v2, v3, :cond_1

    const v3, 0x6c257df

    if-eq v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, "write"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v4

    goto :goto_1

    :catch_0
    move-exception v0

    goto/16 :goto_5

    :cond_1
    const-string v2, "read"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_2

    move v0, v6

    goto :goto_1

    :cond_2
    :goto_0
    move v0, v5

    :goto_1
    const-string v2, "Wrong Params"

    if-eqz v0, :cond_b

    if-eq v0, v6, :cond_3

    .line 191
    :try_start_1
    iget-object v0, p0, Lcom/termux/api/apis/NfcAPI$NfcActivity$2;->this$0:Lcom/termux/api/apis/NfcAPI$NfcActivity;

    const-string v1, "Should be correct mode value "

    invoke-virtual {v0, p1, v2, v1}, Lcom/termux/api/apis/NfcAPI$NfcActivity;->onUnexpectedAction(Landroid/util/JsonWriter;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 175
    :cond_3
    iget-object v0, p0, Lcom/termux/api/apis/NfcAPI$NfcActivity$2;->this$0:Lcom/termux/api/apis/NfcAPI$NfcActivity;

    iget-object v0, v0, Lcom/termux/api/apis/NfcAPI$NfcActivity;->param:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v3, -0x3e0e56f5

    const/4 v7, 0x2

    if-eq v1, v3, :cond_6

    const v3, 0x30228f

    if-eq v1, v3, :cond_5

    const v3, 0x685847c

    if-eq v1, v3, :cond_4

    goto :goto_2

    :cond_4
    const-string v1, "short"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_3

    :cond_5
    const-string v1, "full"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    move v4, v6

    goto :goto_3

    :cond_6
    const-string v1, "noData"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    move v4, v7

    goto :goto_3

    :cond_7
    :goto_2
    move v4, v5

    :goto_3
    if-eqz v4, :cond_a

    if-eq v4, v6, :cond_9

    if-eq v4, v7, :cond_8

    .line 186
    iget-object v0, p0, Lcom/termux/api/apis/NfcAPI$NfcActivity$2;->this$0:Lcom/termux/api/apis/NfcAPI$NfcActivity;

    const-string v1, "Should be correct param value"

    invoke-virtual {v0, p1, v2, v1}, Lcom/termux/api/apis/NfcAPI$NfcActivity;->onUnexpectedAction(Landroid/util/JsonWriter;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 183
    :cond_8
    iget-object v0, p0, Lcom/termux/api/apis/NfcAPI$NfcActivity$2;->this$0:Lcom/termux/api/apis/NfcAPI$NfcActivity;

    iget-object v1, p0, Lcom/termux/api/apis/NfcAPI$NfcActivity$2;->val$intent:Landroid/content/Intent;

    invoke-virtual {v0, v1, p1}, Lcom/termux/api/apis/NfcAPI$NfcActivity;->readNDEFTag(Landroid/content/Intent;Landroid/util/JsonWriter;)V

    goto :goto_6

    .line 180
    :cond_9
    iget-object v0, p0, Lcom/termux/api/apis/NfcAPI$NfcActivity$2;->this$0:Lcom/termux/api/apis/NfcAPI$NfcActivity;

    iget-object v1, p0, Lcom/termux/api/apis/NfcAPI$NfcActivity$2;->val$intent:Landroid/content/Intent;

    invoke-virtual {v0, v1, p1}, Lcom/termux/api/apis/NfcAPI$NfcActivity;->readFullNDEFTag(Landroid/content/Intent;Landroid/util/JsonWriter;)V

    goto :goto_6

    .line 177
    :cond_a
    iget-object v0, p0, Lcom/termux/api/apis/NfcAPI$NfcActivity$2;->this$0:Lcom/termux/api/apis/NfcAPI$NfcActivity;

    iget-object v1, p0, Lcom/termux/api/apis/NfcAPI$NfcActivity$2;->val$intent:Landroid/content/Intent;

    invoke-virtual {v0, v1, p1}, Lcom/termux/api/apis/NfcAPI$NfcActivity;->readNDEFTag(Landroid/content/Intent;Landroid/util/JsonWriter;)V

    goto :goto_6

    .line 163
    :cond_b
    iget-object v0, p0, Lcom/termux/api/apis/NfcAPI$NfcActivity$2;->this$0:Lcom/termux/api/apis/NfcAPI$NfcActivity;

    iget-object v0, v0, Lcom/termux/api/apis/NfcAPI$NfcActivity;->param:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    const v4, 0x36452d

    if-eq v3, v4, :cond_c

    goto :goto_4

    :cond_c
    const-string v3, "text"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 165
    const-string v0, "Write start"

    invoke-static {v1, v0}, Lcom/termux/shared/logger/Logger;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    iget-object v0, p0, Lcom/termux/api/apis/NfcAPI$NfcActivity$2;->this$0:Lcom/termux/api/apis/NfcAPI$NfcActivity;

    iget-object v2, p0, Lcom/termux/api/apis/NfcAPI$NfcActivity$2;->val$context:Landroid/content/Context;

    iget-object v3, p0, Lcom/termux/api/apis/NfcAPI$NfcActivity$2;->val$intent:Landroid/content/Intent;

    invoke-virtual {v0, v2, v3}, Lcom/termux/api/apis/NfcAPI$NfcActivity;->onReceiveNfcWrite(Landroid/content/Context;Landroid/content/Intent;)V

    .line 167
    const-string v0, "Write end"

    invoke-static {v1, v0}, Lcom/termux/shared/logger/Logger;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 170
    :cond_d
    :goto_4
    iget-object v0, p0, Lcom/termux/api/apis/NfcAPI$NfcActivity$2;->this$0:Lcom/termux/api/apis/NfcAPI$NfcActivity;

    const-string v1, "Should be text for TAG"

    invoke-virtual {v0, p1, v2, v1}, Lcom/termux/api/apis/NfcAPI$NfcActivity;->onUnexpectedAction(Landroid/util/JsonWriter;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_6

    .line 195
    :goto_5
    iget-object v1, p0, Lcom/termux/api/apis/NfcAPI$NfcActivity$2;->this$0:Lcom/termux/api/apis/NfcAPI$NfcActivity;

    const-string v2, "exception"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, p1, v2, v0}, Lcom/termux/api/apis/NfcAPI$NfcActivity;->onUnexpectedAction(Landroid/util/JsonWriter;Ljava/lang/String;Ljava/lang/String;)V

    :goto_6
    return-void
.end method
