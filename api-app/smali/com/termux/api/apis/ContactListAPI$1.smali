.class Lcom/termux/api/apis/ContactListAPI$1;
.super Lcom/termux/api/util/ResultReturner$ResultJsonWriter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/termux/api/apis/ContactListAPI;->onReceive(Lcom/termux/api/TermuxApiReceiver;Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/termux/api/apis/ContactListAPI$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Lcom/termux/api/util/ResultReturner$ResultJsonWriter;-><init>()V

    return-void
.end method


# virtual methods
.method public writeJson(Landroid/util/JsonWriter;)V
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/termux/api/apis/ContactListAPI$1;->val$context:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/termux/api/apis/ContactListAPI;->listContacts(Landroid/content/Context;Landroid/util/JsonWriter;)V

    return-void
.end method
