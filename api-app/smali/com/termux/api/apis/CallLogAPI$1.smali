.class Lcom/termux/api/apis/CallLogAPI$1;
.super Lcom/termux/api/util/ResultReturner$ResultJsonWriter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/termux/api/apis/CallLogAPI;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$limit:I

.field final synthetic val$offset:I


# direct methods
.method constructor <init>(Landroid/content/Context;II)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/termux/api/apis/CallLogAPI$1;->val$context:Landroid/content/Context;

    iput p2, p0, Lcom/termux/api/apis/CallLogAPI$1;->val$offset:I

    iput p3, p0, Lcom/termux/api/apis/CallLogAPI$1;->val$limit:I

    invoke-direct {p0}, Lcom/termux/api/util/ResultReturner$ResultJsonWriter;-><init>()V

    return-void
.end method


# virtual methods
.method public writeJson(Landroid/util/JsonWriter;)V
    .locals 3

    .line 34
    iget-object v0, p0, Lcom/termux/api/apis/CallLogAPI$1;->val$context:Landroid/content/Context;

    iget v1, p0, Lcom/termux/api/apis/CallLogAPI$1;->val$offset:I

    iget v2, p0, Lcom/termux/api/apis/CallLogAPI$1;->val$limit:I

    invoke-static {v0, p1, v1, v2}, Lcom/termux/api/apis/CallLogAPI;->-$$Nest$smgetCallLogs(Landroid/content/Context;Landroid/util/JsonWriter;II)V

    return-void
.end method
