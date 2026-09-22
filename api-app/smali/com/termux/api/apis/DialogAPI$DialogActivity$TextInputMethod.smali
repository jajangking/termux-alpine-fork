.class Lcom/termux/api/apis/DialogAPI$DialogActivity$TextInputMethod;
.super Lcom/termux/api/apis/DialogAPI$DialogActivity$InputDialog;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/termux/api/apis/DialogAPI$DialogActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TextInputMethod"
.end annotation


# direct methods
.method constructor <init>(Landroidx/appcompat/app/AppCompatActivity;)V
    .locals 0

    .line 522
    invoke-direct {p0, p1}, Lcom/termux/api/apis/DialogAPI$DialogActivity$InputDialog;-><init>(Landroidx/appcompat/app/AppCompatActivity;)V

    return-void
.end method


# virtual methods
.method bridge synthetic createWidgetView(Landroidx/appcompat/app/AppCompatActivity;)Landroid/view/View;
    .locals 0

    .line 519
    invoke-virtual {p0, p1}, Lcom/termux/api/apis/DialogAPI$DialogActivity$TextInputMethod;->createWidgetView(Landroidx/appcompat/app/AppCompatActivity;)Landroid/widget/EditText;

    move-result-object p1

    return-object p1
.end method

.method createWidgetView(Landroidx/appcompat/app/AppCompatActivity;)Landroid/widget/EditText;
    .locals 5

    .line 532
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 533
    new-instance v1, Landroid/widget/EditText;

    invoke-direct {v1, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 535
    const-string p1, "input_hint"

    invoke-virtual {v0, p1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 536
    invoke-virtual {v0, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 539
    :cond_0
    const-string p1, "multiple_lines"

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    .line 540
    const-string v3, "numeric"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 541
    const-string v4, "password"

    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz v3, :cond_1

    const/16 v0, 0x11

    goto :goto_0

    :cond_1
    const/16 v0, 0x81

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    :goto_0
    if-eqz p1, :cond_3

    const/high16 p1, 0x20000

    or-int/2addr v0, p1

    const/4 p1, 0x4

    .line 551
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setLines(I)V

    :cond_3
    if-eqz v3, :cond_4

    and-int/lit8 p1, v0, -0x2

    or-int/lit16 v0, p1, 0x3002

    .line 559
    :cond_4
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setInputType(I)V

    return-object v1
.end method

.method getResult()Ljava/lang/String;
    .locals 1

    .line 527
    iget-object v0, p0, Lcom/termux/api/apis/DialogAPI$DialogActivity$InputDialog;->widgetView:Landroid/view/View;

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
