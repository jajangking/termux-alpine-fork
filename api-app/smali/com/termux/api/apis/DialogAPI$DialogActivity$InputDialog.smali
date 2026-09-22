.class abstract Lcom/termux/api/apis/DialogAPI$DialogActivity$InputDialog;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/termux/api/apis/DialogAPI$DialogActivity$InputMethod;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/termux/api/apis/DialogAPI$DialogActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "InputDialog"
.end annotation


# instance fields
.field activity:Landroidx/appcompat/app/AppCompatActivity;

.field dialog:Landroid/app/Dialog;

.field inputResult:Lcom/termux/api/apis/DialogAPI$DialogActivity$InputResult;

.field resultListener:Lcom/termux/api/apis/DialogAPI$DialogActivity$InputResultListener;

.field widgetView:Landroid/view/View;


# direct methods
.method public static synthetic $r8$lambda$BLFrLLwNIMTTVk1LuybaAE2FtpE(Lcom/termux/api/apis/DialogAPI$DialogActivity$InputDialog;Lcom/termux/api/apis/DialogAPI$DialogActivity$InputResultListener;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/termux/api/apis/DialogAPI$DialogActivity$InputDialog;->lambda$getClickListener$0(Lcom/termux/api/apis/DialogAPI$DialogActivity$InputResultListener;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$r51_zZO3J66nf4nX1pVn7lKVADc(Lcom/termux/api/apis/DialogAPI$DialogActivity$InputDialog;Landroid/content/DialogInterface;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/termux/api/apis/DialogAPI$DialogActivity$InputDialog;->lambda$getDismissListener$1(Landroid/content/DialogInterface;)V

    return-void
.end method

.method constructor <init>(Landroidx/appcompat/app/AppCompatActivity;)V
    .locals 1

    .line 953
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 929
    new-instance v0, Lcom/termux/api/apis/DialogAPI$DialogActivity$InputResult;

    invoke-direct {v0}, Lcom/termux/api/apis/DialogAPI$DialogActivity$InputResult;-><init>()V

    iput-object v0, p0, Lcom/termux/api/apis/DialogAPI$DialogActivity$InputDialog;->inputResult:Lcom/termux/api/apis/DialogAPI$DialogActivity$InputResult;

    .line 954
    iput-object p1, p0, Lcom/termux/api/apis/DialogAPI$DialogActivity$InputDialog;->activity:Landroidx/appcompat/app/AppCompatActivity;

    .line 955
    invoke-virtual {p0, p1}, Lcom/termux/api/apis/DialogAPI$DialogActivity$InputDialog;->createWidgetView(Landroidx/appcompat/app/AppCompatActivity;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/termux/api/apis/DialogAPI$DialogActivity$InputDialog;->widgetView:Landroid/view/View;

    .line 956
    invoke-virtual {p0, p1}, Lcom/termux/api/apis/DialogAPI$DialogActivity$InputDialog;->initActivityDisplay(Landroid/app/Activity;)V

    return-void
.end method

.method private synthetic lambda$getClickListener$0(Lcom/termux/api/apis/DialogAPI$DialogActivity$InputResultListener;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1006
    invoke-virtual {p0, p3}, Lcom/termux/api/apis/DialogAPI$DialogActivity$InputDialog;->onDialogClick(I)Lcom/termux/api/apis/DialogAPI$DialogActivity$InputResult;

    move-result-object p2

    .line 1007
    invoke-interface {p1, p2}, Lcom/termux/api/apis/DialogAPI$DialogActivity$InputResultListener;->onResult(Lcom/termux/api/apis/DialogAPI$DialogActivity$InputResult;)V

    return-void
.end method

.method private synthetic lambda$getDismissListener$1(Landroid/content/DialogInterface;)V
    .locals 0

    .line 1014
    iget-object p1, p0, Lcom/termux/api/apis/DialogAPI$DialogActivity$InputDialog;->activity:Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {p1}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    .line 1015
    invoke-virtual {p0}, Lcom/termux/api/apis/DialogAPI$DialogActivity$InputDialog;->onDismissed()V

    return-void
.end method


# virtual methods
.method public create(Landroidx/appcompat/app/AppCompatActivity;Lcom/termux/api/apis/DialogAPI$DialogActivity$InputResultListener;)V
    .locals 0

    .line 966
    iput-object p2, p0, Lcom/termux/api/apis/DialogAPI$DialogActivity$InputDialog;->resultListener:Lcom/termux/api/apis/DialogAPI$DialogActivity$InputResultListener;

    .line 969
    invoke-virtual {p0, p2}, Lcom/termux/api/apis/DialogAPI$DialogActivity$InputDialog;->getClickListener(Lcom/termux/api/apis/DialogAPI$DialogActivity$InputResultListener;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object p2

    .line 972
    invoke-virtual {p0, p1, p2}, Lcom/termux/api/apis/DialogAPI$DialogActivity$InputDialog;->getDialogBuilder(Landroidx/appcompat/app/AppCompatActivity;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/termux/api/apis/DialogAPI$DialogActivity$InputDialog;->dialog:Landroid/app/Dialog;

    .line 973
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method abstract createWidgetView(Landroidx/appcompat/app/AppCompatActivity;)Landroid/view/View;
.end method

.method getClickListener(Lcom/termux/api/apis/DialogAPI$DialogActivity$InputResultListener;)Landroid/content/DialogInterface$OnClickListener;
    .locals 1

    .line 1005
    new-instance v0, Lcom/termux/api/apis/DialogAPI$DialogActivity$InputDialog$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Lcom/termux/api/apis/DialogAPI$DialogActivity$InputDialog$$ExternalSyntheticLambda1;-><init>(Lcom/termux/api/apis/DialogAPI$DialogActivity$InputDialog;Lcom/termux/api/apis/DialogAPI$DialogActivity$InputResultListener;)V

    return-object v0
.end method

.method public getDialog()Landroid/app/Dialog;
    .locals 1

    .line 961
    iget-object v0, p0, Lcom/termux/api/apis/DialogAPI$DialogActivity$InputDialog;->dialog:Landroid/app/Dialog;

    return-object v0
.end method

.method getDialogBuilder(Landroidx/appcompat/app/AppCompatActivity;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
    .locals 4

    .line 1023
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 1024
    iget-object v1, p0, Lcom/termux/api/apis/DialogAPI$DialogActivity$InputDialog;->widgetView:Landroid/view/View;

    invoke-virtual {p0, p1, v1}, Lcom/termux/api/apis/DialogAPI$DialogActivity$InputDialog;->getLayoutView(Landroidx/appcompat/app/AppCompatActivity;Landroid/view/View;)Landroid/view/View;

    move-result-object v1

    .line 1026
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1027
    const-string p1, "input_title"

    invoke-virtual {v0, p1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    invoke-virtual {v2, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 1028
    invoke-virtual {p0}, Lcom/termux/api/apis/DialogAPI$DialogActivity$InputDialog;->getNegativeButtonText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 1029
    invoke-virtual {p0}, Lcom/termux/api/apis/DialogAPI$DialogActivity$InputDialog;->getPositiveButtonText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 1030
    invoke-virtual {p0}, Lcom/termux/api/apis/DialogAPI$DialogActivity$InputDialog;->getDismissListener()Landroid/content/DialogInterface$OnDismissListener;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 1031
    invoke-virtual {p1, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    return-object p1
.end method

.method getDismissListener()Landroid/content/DialogInterface$OnDismissListener;
    .locals 1

    .line 1012
    new-instance v0, Lcom/termux/api/apis/DialogAPI$DialogActivity$InputDialog$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/termux/api/apis/DialogAPI$DialogActivity$InputDialog$$ExternalSyntheticLambda0;-><init>(Lcom/termux/api/apis/DialogAPI$DialogActivity$InputDialog;)V

    return-object v0
.end method

.method getFrameLayout(Landroidx/appcompat/app/AppCompatActivity;)Landroid/widget/FrameLayout;
    .locals 3

    .line 1051
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 1052
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {p1, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x38

    .line 1055
    invoke-virtual {p1, v1, v1, v1, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 1057
    invoke-virtual {p1, v1, v1, v1, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 1058
    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method getLayoutView(Landroidx/appcompat/app/AppCompatActivity;Landroid/view/View;)Landroid/view/View;
    .locals 2

    .line 990
    invoke-virtual {p0, p1}, Lcom/termux/api/apis/DialogAPI$DialogActivity$InputDialog;->getFrameLayout(Landroidx/appcompat/app/AppCompatActivity;)Landroid/widget/FrameLayout;

    move-result-object v0

    .line 991
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 993
    invoke-virtual {p2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 994
    invoke-virtual {v0, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const/4 p2, 0x0

    .line 995
    invoke-virtual {v0, p2}, Landroid/view/View;->setScrollbarFadingEnabled(Z)V

    .line 998
    new-instance p2, Landroid/widget/ScrollView;

    invoke-direct {p2, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 999
    invoke-virtual {p2, v0}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    return-object p2
.end method

.method getNegativeButtonText()Ljava/lang/String;
    .locals 1

    .line 1036
    const-string v0, "Cancel"

    return-object v0
.end method

.method getPositiveButtonText()Ljava/lang/String;
    .locals 1

    .line 1040
    const-string v0, "OK"

    return-object v0
.end method

.method getResult()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method initActivityDisplay(Landroid/app/Activity;)V
    .locals 1

    const/4 v0, 0x0

    .line 982
    invoke-virtual {p1, v0}, Landroid/app/Activity;->setFinishOnTouchOutside(Z)V

    const/4 v0, 0x1

    .line 983
    invoke-virtual {p1, v0}, Landroid/app/Activity;->requestWindowFeature(I)Z

    return-void
.end method

.method onDialogClick(I)Lcom/termux/api/apis/DialogAPI$DialogActivity$InputResult;
    .locals 2

    .line 1067
    iget-object v0, p0, Lcom/termux/api/apis/DialogAPI$DialogActivity$InputDialog;->inputResult:Lcom/termux/api/apis/DialogAPI$DialogActivity$InputResult;

    iput p1, v0, Lcom/termux/api/apis/DialogAPI$DialogActivity$InputResult;->code:I

    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    .line 1071
    invoke-virtual {p0}, Lcom/termux/api/apis/DialogAPI$DialogActivity$InputDialog;->getResult()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/termux/api/apis/DialogAPI$DialogActivity$InputResult;->text:Ljava/lang/String;

    .line 1073
    :cond_0
    iget-object p1, p0, Lcom/termux/api/apis/DialogAPI$DialogActivity$InputDialog;->inputResult:Lcom/termux/api/apis/DialogAPI$DialogActivity$InputResult;

    return-object p1
.end method

.method onDismissed()V
    .locals 0

    .line 1044
    invoke-virtual {p0}, Lcom/termux/api/apis/DialogAPI$DialogActivity$InputDialog;->postCanceledResult()V

    return-void
.end method

.method postCanceledResult()V
    .locals 2

    .line 977
    iget-object v0, p0, Lcom/termux/api/apis/DialogAPI$DialogActivity$InputDialog;->inputResult:Lcom/termux/api/apis/DialogAPI$DialogActivity$InputResult;

    const/4 v1, -0x2

    iput v1, v0, Lcom/termux/api/apis/DialogAPI$DialogActivity$InputResult;->code:I

    .line 978
    iget-object v1, p0, Lcom/termux/api/apis/DialogAPI$DialogActivity$InputDialog;->resultListener:Lcom/termux/api/apis/DialogAPI$DialogActivity$InputResultListener;

    invoke-interface {v1, v0}, Lcom/termux/api/apis/DialogAPI$DialogActivity$InputResultListener;->onResult(Lcom/termux/api/apis/DialogAPI$DialogActivity$InputResult;)V

    return-void
.end method
