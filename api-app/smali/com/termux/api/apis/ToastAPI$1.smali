.class Lcom/termux/api/apis/ToastAPI$1;
.super Lcom/termux/api/util/ResultReturner$WithStringInput;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/termux/api/apis/ToastAPI;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$backgroundColor:I

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$durationExtra:I

.field final synthetic val$gravity:I

.field final synthetic val$handler:Landroid/os/Handler;

.field final synthetic val$textColor:I


# direct methods
.method public static synthetic $r8$lambda$Gc32RpgqMcUw8RTrGzkQL6JbETw(Lcom/termux/api/apis/ToastAPI$1;Landroid/content/Context;IIII)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lcom/termux/api/apis/ToastAPI$1;->lambda$writeResult$0(Landroid/content/Context;IIII)V

    return-void
.end method

.method constructor <init>(Landroid/os/Handler;Landroid/content/Context;IIII)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/termux/api/apis/ToastAPI$1;->val$handler:Landroid/os/Handler;

    iput-object p2, p0, Lcom/termux/api/apis/ToastAPI$1;->val$context:Landroid/content/Context;

    iput p3, p0, Lcom/termux/api/apis/ToastAPI$1;->val$durationExtra:I

    iput p4, p0, Lcom/termux/api/apis/ToastAPI$1;->val$backgroundColor:I

    iput p5, p0, Lcom/termux/api/apis/ToastAPI$1;->val$textColor:I

    iput p6, p0, Lcom/termux/api/apis/ToastAPI$1;->val$gravity:I

    invoke-direct {p0}, Lcom/termux/api/util/ResultReturner$WithStringInput;-><init>()V

    return-void
.end method

.method private synthetic lambda$writeResult$0(Landroid/content/Context;IIII)V
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/termux/api/util/ResultReturner$WithStringInput;->inputString:Ljava/lang/String;

    invoke-static {p1, v0, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 37
    invoke-virtual {p1}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object p2

    .line 39
    invoke-virtual {p2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 40
    invoke-virtual {v0, p3}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    const p3, 0x102000b

    .line 42
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 43
    invoke-virtual {p2, p4}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 p2, 0x0

    .line 45
    invoke-virtual {p1, p5, p2, p2}, Landroid/widget/Toast;->setGravity(III)V

    .line 46
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method


# virtual methods
.method public writeResult(Ljava/io/PrintWriter;)V
    .locals 8

    .line 35
    iget-object p1, p0, Lcom/termux/api/apis/ToastAPI$1;->val$handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/termux/api/apis/ToastAPI$1;->val$context:Landroid/content/Context;

    iget v3, p0, Lcom/termux/api/apis/ToastAPI$1;->val$durationExtra:I

    iget v4, p0, Lcom/termux/api/apis/ToastAPI$1;->val$backgroundColor:I

    iget v5, p0, Lcom/termux/api/apis/ToastAPI$1;->val$textColor:I

    iget v6, p0, Lcom/termux/api/apis/ToastAPI$1;->val$gravity:I

    new-instance v7, Lcom/termux/api/apis/ToastAPI$1$$ExternalSyntheticLambda0;

    move-object v0, v7

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/termux/api/apis/ToastAPI$1$$ExternalSyntheticLambda0;-><init>(Lcom/termux/api/apis/ToastAPI$1;Landroid/content/Context;IIII)V

    invoke-virtual {p1, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
