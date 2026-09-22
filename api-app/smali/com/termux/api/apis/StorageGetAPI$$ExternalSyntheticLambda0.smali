.class public final synthetic Lcom/termux/api/apis/StorageGetAPI$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/termux/api/util/ResultReturner$ResultWriter;


# instance fields
.field public final synthetic f$0:Landroid/content/Intent;

.field public final synthetic f$1:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Intent;Landroid/content/Context;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/termux/api/apis/StorageGetAPI$$ExternalSyntheticLambda0;->f$0:Landroid/content/Intent;

    iput-object p2, p0, Lcom/termux/api/apis/StorageGetAPI$$ExternalSyntheticLambda0;->f$1:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final writeResult(Ljava/io/PrintWriter;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/termux/api/apis/StorageGetAPI$$ExternalSyntheticLambda0;->f$0:Landroid/content/Intent;

    iget-object v1, p0, Lcom/termux/api/apis/StorageGetAPI$$ExternalSyntheticLambda0;->f$1:Landroid/content/Context;

    invoke-static {v0, v1, p1}, Lcom/termux/api/apis/StorageGetAPI;->$r8$lambda$lrWbJaKYeQLovvY8wCM4XXTYZBw(Landroid/content/Intent;Landroid/content/Context;Ljava/io/PrintWriter;)V

    return-void
.end method
