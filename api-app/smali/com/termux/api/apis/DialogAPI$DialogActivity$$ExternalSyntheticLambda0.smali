.class public final synthetic Lcom/termux/api/apis/DialogAPI$DialogActivity$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/termux/api/apis/DialogAPI$DialogActivity$InputResultListener;


# instance fields
.field public final synthetic f$0:Lcom/termux/api/apis/DialogAPI$DialogActivity;

.field public final synthetic f$1:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lcom/termux/api/apis/DialogAPI$DialogActivity;Landroid/content/Context;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/termux/api/apis/DialogAPI$DialogActivity$$ExternalSyntheticLambda0;->f$0:Lcom/termux/api/apis/DialogAPI$DialogActivity;

    iput-object p2, p0, Lcom/termux/api/apis/DialogAPI$DialogActivity$$ExternalSyntheticLambda0;->f$1:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final onResult(Lcom/termux/api/apis/DialogAPI$DialogActivity$InputResult;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/termux/api/apis/DialogAPI$DialogActivity$$ExternalSyntheticLambda0;->f$0:Lcom/termux/api/apis/DialogAPI$DialogActivity;

    iget-object v1, p0, Lcom/termux/api/apis/DialogAPI$DialogActivity$$ExternalSyntheticLambda0;->f$1:Landroid/content/Context;

    invoke-static {v0, v1, p1}, Lcom/termux/api/apis/DialogAPI$DialogActivity;->$r8$lambda$J8oz6qynSJZ28kyDvL7HwJgadZI(Lcom/termux/api/apis/DialogAPI$DialogActivity;Landroid/content/Context;Lcom/termux/api/apis/DialogAPI$DialogActivity$InputResult;)V

    return-void
.end method
