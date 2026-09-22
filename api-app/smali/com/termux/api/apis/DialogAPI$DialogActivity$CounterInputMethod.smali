.class Lcom/termux/api/apis/DialogAPI$DialogActivity$CounterInputMethod;
.super Lcom/termux/api/apis/DialogAPI$DialogActivity$InputDialog;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/termux/api/apis/DialogAPI$DialogActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CounterInputMethod"
.end annotation


# instance fields
.field counter:I

.field counterLabel:Landroid/widget/TextView;

.field max:I

.field min:I


# direct methods
.method public static synthetic $r8$lambda$jXemXfXgpPThX7pXghKSJ-WpIp0(Lcom/termux/api/apis/DialogAPI$DialogActivity$CounterInputMethod;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/termux/api/apis/DialogAPI$DialogActivity$CounterInputMethod;->lambda$createWidgetView$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$n5j1s-U5QAn966g4E6s_sMT2UqE(Lcom/termux/api/apis/DialogAPI$DialogActivity$CounterInputMethod;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/termux/api/apis/DialogAPI$DialogActivity$CounterInputMethod;->lambda$createWidgetView$0(Landroid/view/View;)V

    return-void
.end method

.method constructor <init>(Landroidx/appcompat/app/AppCompatActivity;)V
    .locals 0

    .line 407
    invoke-direct {p0, p1}, Lcom/termux/api/apis/DialogAPI$DialogActivity$InputDialog;-><init>(Landroidx/appcompat/app/AppCompatActivity;)V

    return-void
.end method

.method private synthetic lambda$createWidgetView$0(Landroid/view/View;)V
    .locals 0

    .line 416
    invoke-virtual {p0}, Lcom/termux/api/apis/DialogAPI$DialogActivity$CounterInputMethod;->increment()V

    return-void
.end method

.method private synthetic lambda$createWidgetView$1(Landroid/view/View;)V
    .locals 0

    .line 419
    invoke-virtual {p0}, Lcom/termux/api/apis/DialogAPI$DialogActivity$CounterInputMethod;->decrement()V

    return-void
.end method


# virtual methods
.method createWidgetView(Landroidx/appcompat/app/AppCompatActivity;)Landroid/view/View;
    .locals 2

    .line 412
    sget v0, Lcom/termux/api/R$layout;->dialog_counter:I

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 413
    sget v0, Lcom/termux/api/R$id;->counterTextView:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/termux/api/apis/DialogAPI$DialogActivity$CounterInputMethod;->counterLabel:Landroid/widget/TextView;

    .line 415
    sget v0, Lcom/termux/api/R$id;->incrementButton:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 416
    new-instance v1, Lcom/termux/api/apis/DialogAPI$DialogActivity$CounterInputMethod$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/termux/api/apis/DialogAPI$DialogActivity$CounterInputMethod$$ExternalSyntheticLambda0;-><init>(Lcom/termux/api/apis/DialogAPI$DialogActivity$CounterInputMethod;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 418
    sget v0, Lcom/termux/api/R$id;->decrementButton:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 419
    new-instance v1, Lcom/termux/api/apis/DialogAPI$DialogActivity$CounterInputMethod$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/termux/api/apis/DialogAPI$DialogActivity$CounterInputMethod$$ExternalSyntheticLambda1;-><init>(Lcom/termux/api/apis/DialogAPI$DialogActivity$CounterInputMethod;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 420
    invoke-virtual {p0}, Lcom/termux/api/apis/DialogAPI$DialogActivity$CounterInputMethod;->updateCounterRange()V

    return-object p1
.end method

.method decrement()V
    .locals 3

    .line 466
    iget v0, p0, Lcom/termux/api/apis/DialogAPI$DialogActivity$CounterInputMethod;->counter:I

    add-int/lit8 v1, v0, -0x1

    iget v2, p0, Lcom/termux/api/apis/DialogAPI$DialogActivity$CounterInputMethod;->min:I

    if-lt v1, v2, :cond_0

    add-int/lit8 v0, v0, -0x1

    .line 467
    iput v0, p0, Lcom/termux/api/apis/DialogAPI$DialogActivity$CounterInputMethod;->counter:I

    .line 468
    invoke-virtual {p0}, Lcom/termux/api/apis/DialogAPI$DialogActivity$CounterInputMethod;->updateLabel()V

    :cond_0
    return-void
.end method

.method getResult()Ljava/lang/String;
    .locals 1

    .line 451
    iget-object v0, p0, Lcom/termux/api/apis/DialogAPI$DialogActivity$CounterInputMethod;->counterLabel:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method increment()V
    .locals 3

    .line 459
    iget v0, p0, Lcom/termux/api/apis/DialogAPI$DialogActivity$CounterInputMethod;->counter:I

    add-int/lit8 v1, v0, 0x1

    iget v2, p0, Lcom/termux/api/apis/DialogAPI$DialogActivity$CounterInputMethod;->max:I

    if-gt v1, v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    .line 460
    iput v0, p0, Lcom/termux/api/apis/DialogAPI$DialogActivity$CounterInputMethod;->counter:I

    .line 461
    invoke-virtual {p0}, Lcom/termux/api/apis/DialogAPI$DialogActivity$CounterInputMethod;->updateLabel()V

    :cond_0
    return-void
.end method

.method updateCounterRange()V
    .locals 5

    .line 426
    iget-object v0, p0, Lcom/termux/api/apis/DialogAPI$DialogActivity$InputDialog;->activity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 428
    const-string v1, "input_range"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 429
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v0

    .line 430
    array-length v1, v0

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    .line 431
    iget-object v0, p0, Lcom/termux/api/apis/DialogAPI$DialogActivity$InputDialog;->inputResult:Lcom/termux/api/apis/DialogAPI$DialogActivity$InputResult;

    const-string v1, "Invalid range! Must be 3 int values!"

    iput-object v1, v0, Lcom/termux/api/apis/DialogAPI$DialogActivity$InputResult;->error:Ljava/lang/String;

    .line 432
    invoke-virtual {p0}, Lcom/termux/api/apis/DialogAPI$DialogActivity$InputDialog;->postCanceledResult()V

    .line 433
    iget-object v0, p0, Lcom/termux/api/apis/DialogAPI$DialogActivity$InputDialog;->dialog:Landroid/app/Dialog;

    invoke-static {v0}, Lcom/termux/api/apis/DialogAPI$DialogActivity;->-$$Nest$smdismissDialog(Landroid/app/Dialog;)V

    goto :goto_0

    .line 435
    :cond_0
    aget v1, v0, v3

    const/4 v2, 0x1

    aget v4, v0, v2

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, p0, Lcom/termux/api/apis/DialogAPI$DialogActivity$CounterInputMethod;->min:I

    .line 436
    aget v1, v0, v3

    aget v2, v0, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/termux/api/apis/DialogAPI$DialogActivity$CounterInputMethod;->max:I

    const/4 v1, 0x2

    .line 437
    aget v0, v0, v1

    iput v0, p0, Lcom/termux/api/apis/DialogAPI$DialogActivity$CounterInputMethod;->counter:I

    goto :goto_0

    .line 440
    :cond_1
    iput v3, p0, Lcom/termux/api/apis/DialogAPI$DialogActivity$CounterInputMethod;->min:I

    const/16 v0, 0x64

    .line 441
    iput v0, p0, Lcom/termux/api/apis/DialogAPI$DialogActivity$CounterInputMethod;->max:I

    const/16 v0, 0x32

    .line 444
    iput v0, p0, Lcom/termux/api/apis/DialogAPI$DialogActivity$CounterInputMethod;->counter:I

    .line 446
    :goto_0
    invoke-virtual {p0}, Lcom/termux/api/apis/DialogAPI$DialogActivity$CounterInputMethod;->updateLabel()V

    return-void
.end method

.method updateLabel()V
    .locals 2

    .line 455
    iget-object v0, p0, Lcom/termux/api/apis/DialogAPI$DialogActivity$CounterInputMethod;->counterLabel:Landroid/widget/TextView;

    iget v1, p0, Lcom/termux/api/apis/DialogAPI$DialogActivity$CounterInputMethod;->counter:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
