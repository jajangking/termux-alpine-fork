.class Lcom/termux/api/apis/ClipboardAPI$1;
.super Lcom/termux/api/util/ResultReturner$WithStringInput;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/termux/api/apis/ClipboardAPI;->onReceive(Lcom/termux/api/TermuxApiReceiver;Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$clipboard:Landroid/content/ClipboardManager;


# direct methods
.method constructor <init>(Landroid/content/ClipboardManager;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/termux/api/apis/ClipboardAPI$1;->val$clipboard:Landroid/content/ClipboardManager;

    invoke-direct {p0}, Lcom/termux/api/util/ResultReturner$WithStringInput;-><init>()V

    return-void
.end method


# virtual methods
.method protected trimInput()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeResult(Ljava/io/PrintWriter;)V
    .locals 2

    .line 38
    iget-object p1, p0, Lcom/termux/api/apis/ClipboardAPI$1;->val$clipboard:Landroid/content/ClipboardManager;

    const-string v0, ""

    iget-object v1, p0, Lcom/termux/api/util/ResultReturner$WithStringInput;->inputString:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    return-void
.end method
