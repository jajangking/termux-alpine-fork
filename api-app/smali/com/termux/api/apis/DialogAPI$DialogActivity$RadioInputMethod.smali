.class Lcom/termux/api/apis/DialogAPI$DialogActivity$RadioInputMethod;
.super Lcom/termux/api/apis/DialogAPI$DialogActivity$InputDialog;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/termux/api/apis/DialogAPI$DialogActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RadioInputMethod"
.end annotation


# instance fields
.field radioGroup:Landroid/widget/RadioGroup;


# direct methods
.method constructor <init>(Landroidx/appcompat/app/AppCompatActivity;)V
    .locals 0

    .line 596
    invoke-direct {p0, p1}, Lcom/termux/api/apis/DialogAPI$DialogActivity$InputDialog;-><init>(Landroidx/appcompat/app/AppCompatActivity;)V

    return-void
.end method


# virtual methods
.method bridge synthetic createWidgetView(Landroidx/appcompat/app/AppCompatActivity;)Landroid/view/View;
    .locals 0

    .line 592
    invoke-virtual {p0, p1}, Lcom/termux/api/apis/DialogAPI$DialogActivity$RadioInputMethod;->createWidgetView(Landroidx/appcompat/app/AppCompatActivity;)Landroid/widget/RadioGroup;

    move-result-object p1

    return-object p1
.end method

.method createWidgetView(Landroidx/appcompat/app/AppCompatActivity;)Landroid/widget/RadioGroup;
    .locals 6

    .line 601
    new-instance v0, Landroid/widget/RadioGroup;

    invoke-direct {v0, p1}, Landroid/widget/RadioGroup;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/termux/api/apis/DialogAPI$DialogActivity$RadioInputMethod;->radioGroup:Landroid/widget/RadioGroup;

    const/16 v1, 0x10

    .line 602
    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 604
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v0, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0x20

    .line 605
    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 606
    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 608
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-static {v2}, Lcom/termux/api/apis/DialogAPI$DialogActivity;->getInputValues(Landroid/content/Intent;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 610
    :goto_0
    array-length v4, v2

    if-ge v3, v4, :cond_0

    .line 611
    aget-object v4, v2, v3

    .line 613
    new-instance v5, Landroid/widget/RadioButton;

    invoke-direct {v5, p1}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;)V

    .line 614
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 615
    invoke-virtual {v5, v3}, Landroid/view/View;->setId(I)V

    const/high16 v4, 0x41900000    # 18.0f

    .line 616
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setTextSize(F)V

    .line 617
    invoke-virtual {v5, v1, v1, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 618
    invoke-virtual {v5, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 620
    iget-object v4, p0, Lcom/termux/api/apis/DialogAPI$DialogActivity$RadioInputMethod;->radioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 622
    :cond_0
    iget-object p1, p0, Lcom/termux/api/apis/DialogAPI$DialogActivity$RadioInputMethod;->radioGroup:Landroid/widget/RadioGroup;

    return-object p1
.end method

.method getResult()Ljava/lang/String;
    .locals 3

    .line 627
    iget-object v0, p0, Lcom/termux/api/apis/DialogAPI$DialogActivity$RadioInputMethod;->radioGroup:Landroid/widget/RadioGroup;

    iget-object v1, p0, Lcom/termux/api/apis/DialogAPI$DialogActivity$InputDialog;->widgetView:Landroid/view/View;

    check-cast v1, Landroid/widget/RadioGroup;

    invoke-virtual {v0}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 628
    iget-object v1, p0, Lcom/termux/api/apis/DialogAPI$DialogActivity$RadioInputMethod;->radioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    .line 629
    sput v0, Lcom/termux/api/apis/DialogAPI$DialogActivity$InputResult;->index:I

    if-eqz v1, :cond_0

    .line 630
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method
