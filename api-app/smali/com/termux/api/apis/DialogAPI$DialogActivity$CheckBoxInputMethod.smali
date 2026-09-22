.class Lcom/termux/api/apis/DialogAPI$DialogActivity$CheckBoxInputMethod;
.super Lcom/termux/api/apis/DialogAPI$DialogActivity$InputDialog;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/termux/api/apis/DialogAPI$DialogActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CheckBoxInputMethod"
.end annotation


# direct methods
.method constructor <init>(Landroidx/appcompat/app/AppCompatActivity;)V
    .locals 0

    .line 299
    invoke-direct {p0, p1}, Lcom/termux/api/apis/DialogAPI$DialogActivity$InputDialog;-><init>(Landroidx/appcompat/app/AppCompatActivity;)V

    return-void
.end method


# virtual methods
.method bridge synthetic createWidgetView(Landroidx/appcompat/app/AppCompatActivity;)Landroid/view/View;
    .locals 0

    .line 296
    invoke-virtual {p0, p1}, Lcom/termux/api/apis/DialogAPI$DialogActivity$CheckBoxInputMethod;->createWidgetView(Landroidx/appcompat/app/AppCompatActivity;)Landroid/widget/LinearLayout;

    move-result-object p1

    return-object p1
.end method

.method createWidgetView(Landroidx/appcompat/app/AppCompatActivity;)Landroid/widget/LinearLayout;
    .locals 6

    .line 304
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    .line 305
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 307
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0x20

    .line 308
    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 309
    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 311
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-static {v2}, Lcom/termux/api/apis/DialogAPI$DialogActivity;->getInputValues(Landroid/content/Intent;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 313
    :goto_0
    array-length v4, v2

    if-ge v3, v4, :cond_0

    .line 314
    aget-object v4, v2, v3

    .line 316
    new-instance v5, Landroid/widget/CheckBox;

    invoke-direct {v5, p1}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    .line 317
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 318
    invoke-virtual {v5, v3}, Landroid/view/View;->setId(I)V

    const/high16 v4, 0x41900000    # 18.0f

    .line 319
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setTextSize(F)V

    const/16 v4, 0x10

    .line 320
    invoke-virtual {v5, v4, v4, v4, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 321
    invoke-virtual {v5, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 323
    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method getResult()Ljava/lang/String;
    .locals 7

    .line 330
    iget-object v0, p0, Lcom/termux/api/apis/DialogAPI$DialogActivity$InputDialog;->widgetView:Landroid/view/View;

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 332
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 333
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 334
    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_1

    .line 337
    iget-object v4, p0, Lcom/termux/api/apis/DialogAPI$DialogActivity$InputDialog;->widgetView:Landroid/view/View;

    check-cast v4, Landroid/widget/LinearLayout;

    invoke-virtual {v4, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    .line 338
    invoke-virtual {v4}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 339
    new-instance v5, Lcom/termux/api/apis/DialogAPI$DialogActivity$Value;

    invoke-direct {v5}, Lcom/termux/api/apis/DialogAPI$DialogActivity$Value;-><init>()V

    .line 340
    iput v3, v5, Lcom/termux/api/apis/DialogAPI$DialogActivity$Value;->index:I

    .line 341
    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/termux/api/apis/DialogAPI$DialogActivity$Value;->text:Ljava/lang/String;

    .line 342
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 343
    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 346
    :cond_1
    iget-object v0, p0, Lcom/termux/api/apis/DialogAPI$DialogActivity$InputDialog;->inputResult:Lcom/termux/api/apis/DialogAPI$DialogActivity$InputResult;

    iput-object v1, v0, Lcom/termux/api/apis/DialogAPI$DialogActivity$InputResult;->values:Ljava/util/List;

    .line 348
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ", $"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
