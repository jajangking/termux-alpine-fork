.class public final synthetic Lcom/termux/api/apis/ClipboardAPI$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/termux/api/util/ResultReturner$ResultWriter;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Landroid/content/ClipData;

.field public final synthetic f$2:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Landroid/content/ClipData;Landroid/content/Context;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/termux/api/apis/ClipboardAPI$$ExternalSyntheticLambda1;->f$0:Ljava/lang/String;

    iput-object p2, p0, Lcom/termux/api/apis/ClipboardAPI$$ExternalSyntheticLambda1;->f$1:Landroid/content/ClipData;

    iput-object p3, p0, Lcom/termux/api/apis/ClipboardAPI$$ExternalSyntheticLambda1;->f$2:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final writeResult(Ljava/io/PrintWriter;)V
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/termux/api/apis/ClipboardAPI$$ExternalSyntheticLambda1;->f$0:Ljava/lang/String;

    iget-object v1, p0, Lcom/termux/api/apis/ClipboardAPI$$ExternalSyntheticLambda1;->f$1:Landroid/content/ClipData;

    iget-object v2, p0, Lcom/termux/api/apis/ClipboardAPI$$ExternalSyntheticLambda1;->f$2:Landroid/content/Context;

    invoke-static {v0, v1, v2, p1}, Lcom/termux/api/apis/ClipboardAPI;->$r8$lambda$MZiDh5ZbBLyfuxtEOHUPKbZGgQA(Ljava/lang/String;Landroid/content/ClipData;Landroid/content/Context;Ljava/io/PrintWriter;)V

    return-void
.end method
