.class public final synthetic Lcom/termux/api/apis/ToastAPI$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/termux/api/apis/ToastAPI$1;

.field public final synthetic f$1:Landroid/content/Context;

.field public final synthetic f$2:I

.field public final synthetic f$3:I

.field public final synthetic f$4:I

.field public final synthetic f$5:I


# direct methods
.method public synthetic constructor <init>(Lcom/termux/api/apis/ToastAPI$1;Landroid/content/Context;IIII)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/termux/api/apis/ToastAPI$1$$ExternalSyntheticLambda0;->f$0:Lcom/termux/api/apis/ToastAPI$1;

    iput-object p2, p0, Lcom/termux/api/apis/ToastAPI$1$$ExternalSyntheticLambda0;->f$1:Landroid/content/Context;

    iput p3, p0, Lcom/termux/api/apis/ToastAPI$1$$ExternalSyntheticLambda0;->f$2:I

    iput p4, p0, Lcom/termux/api/apis/ToastAPI$1$$ExternalSyntheticLambda0;->f$3:I

    iput p5, p0, Lcom/termux/api/apis/ToastAPI$1$$ExternalSyntheticLambda0;->f$4:I

    iput p6, p0, Lcom/termux/api/apis/ToastAPI$1$$ExternalSyntheticLambda0;->f$5:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 0
    iget-object v0, p0, Lcom/termux/api/apis/ToastAPI$1$$ExternalSyntheticLambda0;->f$0:Lcom/termux/api/apis/ToastAPI$1;

    iget-object v1, p0, Lcom/termux/api/apis/ToastAPI$1$$ExternalSyntheticLambda0;->f$1:Landroid/content/Context;

    iget v2, p0, Lcom/termux/api/apis/ToastAPI$1$$ExternalSyntheticLambda0;->f$2:I

    iget v3, p0, Lcom/termux/api/apis/ToastAPI$1$$ExternalSyntheticLambda0;->f$3:I

    iget v4, p0, Lcom/termux/api/apis/ToastAPI$1$$ExternalSyntheticLambda0;->f$4:I

    iget v5, p0, Lcom/termux/api/apis/ToastAPI$1$$ExternalSyntheticLambda0;->f$5:I

    invoke-static/range {v0 .. v5}, Lcom/termux/api/apis/ToastAPI$1;->$r8$lambda$Gc32RpgqMcUw8RTrGzkQL6JbETw(Lcom/termux/api/apis/ToastAPI$1;Landroid/content/Context;IIII)V

    return-void
.end method
