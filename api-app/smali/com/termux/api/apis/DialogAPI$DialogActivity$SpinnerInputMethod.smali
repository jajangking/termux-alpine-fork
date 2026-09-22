.class Lcom/termux/api/apis/DialogAPI$DialogActivity$SpinnerInputMethod;
.super Lcom/termux/api/apis/DialogAPI$DialogActivity$InputDialog;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/termux/api/apis/DialogAPI$DialogActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SpinnerInputMethod"
.end annotation


# direct methods
.method constructor <init>(Landroidx/appcompat/app/AppCompatActivity;)V
    .locals 0

    .line 756
    invoke-direct {p0, p1}, Lcom/termux/api/apis/DialogAPI$DialogActivity$InputDialog;-><init>(Landroidx/appcompat/app/AppCompatActivity;)V

    return-void
.end method


# virtual methods
.method bridge synthetic createWidgetView(Landroidx/appcompat/app/AppCompatActivity;)Landroid/view/View;
    .locals 0

    .line 753
    invoke-virtual {p0, p1}, Lcom/termux/api/apis/DialogAPI$DialogActivity$SpinnerInputMethod;->createWidgetView(Landroidx/appcompat/app/AppCompatActivity;)Landroid/widget/Spinner;

    move-result-object p1

    return-object p1
.end method

.method createWidgetView(Landroidx/appcompat/app/AppCompatActivity;)Landroid/widget/Spinner;
    .locals 4

    .line 767
    new-instance v0, Landroid/widget/Spinner;

    invoke-direct {v0, p1}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;)V

    .line 769
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 770
    invoke-static {v1}, Lcom/termux/api/apis/DialogAPI$DialogActivity;->getInputValues(Landroid/content/Intent;)[Ljava/lang/String;

    move-result-object v1

    .line 771
    new-instance v2, Landroid/widget/ArrayAdapter;

    sget v3, Lcom/termux/api/R$layout;->spinner_item:I

    invoke-direct {v2, p1, v3, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 773
    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    return-object v0
.end method

.method getResult()Ljava/lang/String;
    .locals 1

    .line 761
    iget-object v0, p0, Lcom/termux/api/apis/DialogAPI$DialogActivity$InputDialog;->widgetView:Landroid/view/View;

    check-cast v0, Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v0

    sput v0, Lcom/termux/api/apis/DialogAPI$DialogActivity$InputResult;->index:I

    .line 762
    iget-object v0, p0, Lcom/termux/api/apis/DialogAPI$DialogActivity$InputDialog;->widgetView:Landroid/view/View;

    check-cast v0, Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/AdapterView;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
