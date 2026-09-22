.class public Lcom/termux/shared/interact/MessageDialogUtils;
.super Ljava/lang/Object;
.source "MessageDialogUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static exitAppWithErrorMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "titleText"    # Ljava/lang/String;
    .param p2, "messageText"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "titleText",
            "messageText"
        }
    .end annotation

    .line 96
    sget-object v0, Lcom/termux/shared/interact/-$$Lambda$MessageDialogUtils$xSM_QW3fZ1SHNILseu3Te1h0krM;->INSTANCE:Lcom/termux/shared/interact/-$$Lambda$MessageDialogUtils$xSM_QW3fZ1SHNILseu3Te1h0krM;

    invoke-static {p0, p1, p2, v0}, Lcom/termux/shared/interact/MessageDialogUtils;->showMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnDismissListener;)V

    .line 97
    return-void
.end method

.method static synthetic lambda$exitAppWithErrorMessage$1(Landroid/content/DialogInterface;)V
    .locals 1
    .param p0, "dialog"    # Landroid/content/DialogInterface;

    .line 96
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    return-void
.end method

.method static synthetic lambda$showMessage$0(Landroid/app/AlertDialog;Landroid/content/DialogInterface;)V
    .locals 3
    .param p0, "dialog"    # Landroid/app/AlertDialog;
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;

    .line 83
    const-string v0, "dialog"

    invoke-static {v0}, Lcom/termux/shared/logger/Logger;->logError(Ljava/lang/String;)V

    .line 84
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    .line 85
    .local v0, "button":Landroid/widget/Button;
    const/high16 v1, -0x1000000

    if-eqz v0, :cond_0

    .line 86
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 87
    :cond_0
    const/4 v2, -0x2

    invoke-virtual {p0, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    .line 88
    if-eqz v0, :cond_1

    .line 89
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 90
    :cond_1
    return-void
.end method

.method public static showMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnDismissListener;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "titleText"    # Ljava/lang/String;
    .param p2, "messageText"    # Ljava/lang/String;
    .param p3, "onDismiss"    # Landroid/content/DialogInterface$OnDismissListener;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x10
        }
        names = {
            "context",
            "titleText",
            "messageText",
            "onDismiss"
        }
    .end annotation

    .line 28
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v7, p3

    invoke-static/range {v0 .. v7}, Lcom/termux/shared/interact/MessageDialogUtils;->showMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnDismissListener;)V

    .line 29
    return-void
.end method

.method public static showMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnDismissListener;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "titleText"    # Ljava/lang/String;
    .param p2, "messageText"    # Ljava/lang/String;
    .param p3, "positiveText"    # Ljava/lang/String;
    .param p4, "onPositiveButton"    # Landroid/content/DialogInterface$OnClickListener;
    .param p5, "negativeText"    # Ljava/lang/String;
    .param p6, "onNegativeButton"    # Landroid/content/DialogInterface$OnClickListener;
    .param p7, "onDismiss"    # Landroid/content/DialogInterface$OnDismissListener;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x10,
            0x0,
            0x10,
            0x10
        }
        names = {
            "context",
            "titleText",
            "messageText",
            "positiveText",
            "onPositiveButton",
            "negativeText",
            "onNegativeButton",
            "onDismiss"
        }
    .end annotation

    .line 54
    new-instance v0, Landroid/app/AlertDialog$Builder;

    sget v1, Lcom/termux/shared/R$style;->Theme_AppCompat_Light_Dialog:I

    invoke-direct {v0, p0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 56
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const-string v1, "layout_inflater"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 57
    .local v1, "inflater":Landroid/view/LayoutInflater;
    sget v2, Lcom/termux/shared/R$layout;->dialog_show_message:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 58
    .local v2, "view":Landroid/view/View;
    if-eqz v2, :cond_1

    .line 59
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 61
    sget v3, Lcom/termux/shared/R$id;->dialog_title:I

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 62
    .local v3, "titleView":Landroid/widget/TextView;
    if-eqz v3, :cond_0

    .line 63
    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    :cond_0
    sget v4, Lcom/termux/shared/R$id;->dialog_message:I

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 66
    .local v4, "messageView":Landroid/widget/TextView;
    if-eqz v4, :cond_1

    .line 67
    invoke-virtual {v4, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    .end local v3    # "titleView":Landroid/widget/TextView;
    .end local v4    # "messageView":Landroid/widget/TextView;
    :cond_1
    if-nez p3, :cond_2

    .line 71
    const v3, 0x104000a

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    .line 72
    :cond_2
    invoke-virtual {v0, p3, p4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 74
    if-eqz p5, :cond_3

    .line 75
    invoke-virtual {v0, p5, p6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 77
    :cond_3
    if-eqz p7, :cond_4

    .line 78
    invoke-virtual {v0, p7}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    .line 80
    :cond_4
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    .line 82
    .local v3, "dialog":Landroid/app/AlertDialog;
    new-instance v4, Lcom/termux/shared/interact/-$$Lambda$MessageDialogUtils$27AtkOJm0u9gGNd9TDkahBq3IXU;

    invoke-direct {v4, v3}, Lcom/termux/shared/interact/-$$Lambda$MessageDialogUtils$27AtkOJm0u9gGNd9TDkahBq3IXU;-><init>(Landroid/app/AlertDialog;)V

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 92
    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .line 93
    return-void
.end method
