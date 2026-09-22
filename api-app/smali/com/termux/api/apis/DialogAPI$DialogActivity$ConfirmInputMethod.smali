.class Lcom/termux/api/apis/DialogAPI$DialogActivity$ConfirmInputMethod;
.super Lcom/termux/api/apis/DialogAPI$DialogActivity$InputDialog;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/termux/api/apis/DialogAPI$DialogActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ConfirmInputMethod"
.end annotation


# direct methods
.method constructor <init>(Landroidx/appcompat/app/AppCompatActivity;)V
    .locals 0

    .line 360
    invoke-direct {p0, p1}, Lcom/termux/api/apis/DialogAPI$DialogActivity$InputDialog;-><init>(Landroidx/appcompat/app/AppCompatActivity;)V

    return-void
.end method


# virtual methods
.method bridge synthetic createWidgetView(Landroidx/appcompat/app/AppCompatActivity;)Landroid/view/View;
    .locals 0

    .line 357
    invoke-virtual {p0, p1}, Lcom/termux/api/apis/DialogAPI$DialogActivity$ConfirmInputMethod;->createWidgetView(Landroidx/appcompat/app/AppCompatActivity;)Landroid/widget/TextView;

    move-result-object p1

    return-object p1
.end method

.method createWidgetView(Landroidx/appcompat/app/AppCompatActivity;)Landroid/widget/TextView;
    .locals 3

    .line 371
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 372
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    .line 374
    const-string v1, "input_hint"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, "Confirm"

    .line 375
    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method getNegativeButtonText()Ljava/lang/String;
    .locals 1

    .line 381
    const-string v0, "No"

    return-object v0
.end method

.method getPositiveButtonText()Ljava/lang/String;
    .locals 1

    .line 386
    const-string v0, "Yes"

    return-object v0
.end method

.method onDialogClick(I)Lcom/termux/api/apis/DialogAPI$DialogActivity$InputResult;
    .locals 2

    .line 365
    iget-object v0, p0, Lcom/termux/api/apis/DialogAPI$DialogActivity$InputDialog;->inputResult:Lcom/termux/api/apis/DialogAPI$DialogActivity$InputResult;

    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    const-string p1, "yes"

    goto :goto_0

    :cond_0
    const-string p1, "no"

    :goto_0
    iput-object p1, v0, Lcom/termux/api/apis/DialogAPI$DialogActivity$InputResult;->text:Ljava/lang/String;

    return-object v0
.end method
