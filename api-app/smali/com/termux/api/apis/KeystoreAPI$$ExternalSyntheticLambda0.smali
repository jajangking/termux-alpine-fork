.class public final synthetic Lcom/termux/api/apis/KeystoreAPI$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/termux/api/util/ResultReturner$ResultWriter;


# instance fields
.field public final synthetic f$0:Landroid/content/Intent;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Intent;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/termux/api/apis/KeystoreAPI$$ExternalSyntheticLambda0;->f$0:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public final writeResult(Ljava/io/PrintWriter;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/termux/api/apis/KeystoreAPI$$ExternalSyntheticLambda0;->f$0:Landroid/content/Intent;

    invoke-static {v0, p1}, Lcom/termux/api/apis/KeystoreAPI;->$r8$lambda$ehHAV5R-TeFP8RyQpYgjGv-oLuU(Landroid/content/Intent;Ljava/io/PrintWriter;)V

    return-void
.end method
