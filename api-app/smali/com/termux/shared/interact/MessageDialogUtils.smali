.class public abstract Lcom/termux/shared/interact/MessageDialogUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static synthetic $r8$lambda$Bl0Ytq5Y-Maj2ASmavM3JUoe8gQ(Landroid/app/AlertDialog;Landroid/content/DialogInterface;)V
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/termux/shared/interact/MessageDialogUtils;->lambda$showMessage$0(Landroid/app/AlertDialog;Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$MoSwinVZTGlUxG0ScKlCZ-GPu68(Landroid/content/DialogInterface;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/termux/shared/interact/MessageDialogUtils;->lambda$exitAppWithErrorMessage$1(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static exitAppWithErrorMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 96
    new-instance v0, Lcom/termux/shared/interact/MessageDialogUtils$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/termux/shared/interact/MessageDialogUtils$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {p0, p1, p2, v0}, Lcom/termux/shared/interact/MessageDialogUtils;->showMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnDismissListener;)V

    return-void
.end method

.method private static synthetic lambda$exitAppWithErrorMessage$1(Landroid/content/DialogInterface;)V
    .locals 0

    const/4 p0, 0x0

    .line 96
    invoke-static {p0}, Ljava/lang/System;->exit(I)V

    return-void
.end method

.method private static synthetic lambda$showMessage$0(Landroid/app/AlertDialog;Landroid/content/DialogInterface;)V
    .locals 1

    .line 83
    const-string p1, "dialog"

    invoke-static {p1}, Lcom/termux/shared/logger/Logger;->logError(Ljava/lang/String;)V

    const/4 p1, -0x1

    .line 84
    invoke-virtual {p0, p1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p1

    const/high16 v0, -0x1000000

    if-eqz p1, :cond_0

    .line 86
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    const/4 p1, -0x2

    .line 87
    invoke-virtual {p0, p1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 89
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_1
    return-void
.end method

.method public static showMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnDismissListener;)V
    .locals 8

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v7, p3

    .line 28
    invoke-static/range {v0 .. v7}, Lcom/termux/shared/interact/MessageDialogUtils;->showMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnDismissListener;)V

    return-void
.end method

.method public static showMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnDismissListener;)V
    .locals 4

    .line 54
    new-instance v0, Landroid/app/AlertDialog$Builder;

    sget v1, Lcom/termux/shared/R$style;->Theme_AppCompat_Light_Dialog:I

    invoke-direct {v0, p0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 56
    const-string v1, "layout_inflater"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 57
    sget v2, Lcom/termux/shared/R$layout;->dialog_show_message:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 59
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 61
    sget v2, Lcom/termux/shared/R$id;->dialog_title:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    if-eqz v2, :cond_0

    .line 63
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    :cond_0
    sget p1, Lcom/termux/shared/R$id;->dialog_message:I

    invoke-virtual {v1, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_1

    .line 67
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    if-nez p3, :cond_2

    const p1, 0x104000a

    .line 71
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    .line 72
    :cond_2
    invoke-virtual {v0, p3, p4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    if-eqz p5, :cond_3

    .line 75
    invoke-virtual {v0, p5, p6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :cond_3
    if-eqz p7, :cond_4

    .line 78
    invoke-virtual {v0, p7}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    .line 80
    :cond_4
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    .line 82
    new-instance p1, Lcom/termux/shared/interact/MessageDialogUtils$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lcom/termux/shared/interact/MessageDialogUtils$$ExternalSyntheticLambda1;-><init>(Landroid/app/AlertDialog;)V

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 92
    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method
