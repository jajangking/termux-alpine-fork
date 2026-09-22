.class Lcom/termux/api/apis/DialogAPI$DialogActivity$1;
.super Lcom/termux/api/util/ResultReturner$ResultJsonWriter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/termux/api/apis/DialogAPI$DialogActivity;->postResult(Landroid/content/Context;Lcom/termux/api/apis/DialogAPI$DialogActivity$InputResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/termux/api/apis/DialogAPI$DialogActivity;

.field final synthetic val$resultParam:Lcom/termux/api/apis/DialogAPI$DialogActivity$InputResult;


# direct methods
.method constructor <init>(Lcom/termux/api/apis/DialogAPI$DialogActivity;Lcom/termux/api/apis/DialogAPI$DialogActivity$InputResult;)V
    .locals 0

    .line 175
    iput-object p1, p0, Lcom/termux/api/apis/DialogAPI$DialogActivity$1;->this$0:Lcom/termux/api/apis/DialogAPI$DialogActivity;

    iput-object p2, p0, Lcom/termux/api/apis/DialogAPI$DialogActivity$1;->val$resultParam:Lcom/termux/api/apis/DialogAPI$DialogActivity$InputResult;

    invoke-direct {p0}, Lcom/termux/api/util/ResultReturner$ResultJsonWriter;-><init>()V

    return-void
.end method


# virtual methods
.method public writeJson(Landroid/util/JsonWriter;)V
    .locals 8

    .line 179
    invoke-virtual {p1}, Landroid/util/JsonWriter;->beginObject()Landroid/util/JsonWriter;

    .line 181
    iget-object v0, p0, Lcom/termux/api/apis/DialogAPI$DialogActivity$1;->val$resultParam:Lcom/termux/api/apis/DialogAPI$DialogActivity$InputResult;

    if-nez v0, :cond_0

    .line 183
    new-instance v0, Lcom/termux/api/apis/DialogAPI$DialogActivity$InputResult;

    invoke-direct {v0}, Lcom/termux/api/apis/DialogAPI$DialogActivity$InputResult;-><init>()V

    const/4 v1, -0x2

    .line 184
    iput v1, v0, Lcom/termux/api/apis/DialogAPI$DialogActivity$InputResult;->code:I

    .line 187
    :cond_0
    const-string v1, "code"

    invoke-virtual {p1, v1}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v1

    iget v2, v0, Lcom/termux/api/apis/DialogAPI$DialogActivity$InputResult;->code:I

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/util/JsonWriter;->value(J)Landroid/util/JsonWriter;

    .line 188
    const-string v1, "text"

    invoke-virtual {p1, v1}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v2

    iget-object v3, v0, Lcom/termux/api/apis/DialogAPI$DialogActivity$InputResult;->text:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 189
    sget v2, Lcom/termux/api/apis/DialogAPI$DialogActivity$InputResult;->index:I

    const/4 v3, -0x1

    const-string v4, "index"

    if-le v2, v3, :cond_1

    .line 190
    invoke-virtual {p1, v4}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v2

    sget v3, Lcom/termux/api/apis/DialogAPI$DialogActivity$InputResult;->index:I

    int-to-long v5, v3

    invoke-virtual {v2, v5, v6}, Landroid/util/JsonWriter;->value(J)Landroid/util/JsonWriter;

    .line 192
    :cond_1
    iget-object v2, v0, Lcom/termux/api/apis/DialogAPI$DialogActivity$InputResult;->values:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 193
    const-string v2, "values"

    invoke-virtual {p1, v2}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 194
    invoke-virtual {p1}, Landroid/util/JsonWriter;->beginArray()Landroid/util/JsonWriter;

    .line 195
    iget-object v2, v0, Lcom/termux/api/apis/DialogAPI$DialogActivity$InputResult;->values:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/termux/api/apis/DialogAPI$DialogActivity$Value;

    .line 196
    invoke-virtual {p1}, Landroid/util/JsonWriter;->beginObject()Landroid/util/JsonWriter;

    .line 197
    invoke-virtual {p1, v4}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v5

    iget v6, v3, Lcom/termux/api/apis/DialogAPI$DialogActivity$Value;->index:I

    int-to-long v6, v6

    invoke-virtual {v5, v6, v7}, Landroid/util/JsonWriter;->value(J)Landroid/util/JsonWriter;

    .line 198
    invoke-virtual {p1, v1}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v5

    iget-object v3, v3, Lcom/termux/api/apis/DialogAPI$DialogActivity$Value;->text:Ljava/lang/String;

    invoke-virtual {v5, v3}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 199
    invoke-virtual {p1}, Landroid/util/JsonWriter;->endObject()Landroid/util/JsonWriter;

    goto :goto_0

    .line 201
    :cond_2
    invoke-virtual {p1}, Landroid/util/JsonWriter;->endArray()Landroid/util/JsonWriter;

    .line 203
    :cond_3
    iget-object v1, v0, Lcom/termux/api/apis/DialogAPI$DialogActivity$InputResult;->error:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 204
    const-string v1, "error"

    invoke-virtual {p1, v1}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v1

    iget-object v0, v0, Lcom/termux/api/apis/DialogAPI$DialogActivity$InputResult;->error:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/util/JsonWriter;->value(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 207
    :cond_4
    invoke-virtual {p1}, Landroid/util/JsonWriter;->endObject()Landroid/util/JsonWriter;

    .line 208
    invoke-virtual {p1}, Landroid/util/JsonWriter;->flush()V

    .line 209
    iget-object p1, p0, Lcom/termux/api/apis/DialogAPI$DialogActivity$1;->this$0:Lcom/termux/api/apis/DialogAPI$DialogActivity;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/termux/api/apis/DialogAPI$DialogActivity;->-$$Nest$fputresultReturned(Lcom/termux/api/apis/DialogAPI$DialogActivity;Z)V

    return-void
.end method
