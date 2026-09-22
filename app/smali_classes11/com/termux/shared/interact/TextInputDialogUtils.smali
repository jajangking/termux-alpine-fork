.class public final Lcom/termux/shared/interact/TextInputDialogUtils;
.super Ljava/lang/Object;
.source "TextInputDialogUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/termux/shared/interact/TextInputDialogUtils$TextSetListener;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$textInput$0(Lcom/termux/shared/interact/TextInputDialogUtils$TextSetListener;Landroid/widget/EditText;[Landroid/app/AlertDialog;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p0, "onPositive"    # Lcom/termux/shared/interact/TextInputDialogUtils$TextSetListener;
    .param p1, "input"    # Landroid/widget/EditText;
    .param p2, "dialogHolder"    # [Landroid/app/AlertDialog;
    .param p3, "v"    # Landroid/widget/TextView;
    .param p4, "actionId"    # I
    .param p5, "event"    # Landroid/view/KeyEvent;

    .line 40
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/termux/shared/interact/TextInputDialogUtils$TextSetListener;->onTextSet(Ljava/lang/String;)V

    .line 41
    const/4 v0, 0x0

    aget-object v0, p2, v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 42
    const/4 v0, 0x1

    return v0
.end method

.method static synthetic lambda$textInput$1(Lcom/termux/shared/interact/TextInputDialogUtils$TextSetListener;Landroid/widget/EditText;Landroid/content/DialogInterface;I)V
    .locals 1
    .param p0, "onPositive"    # Lcom/termux/shared/interact/TextInputDialogUtils$TextSetListener;
    .param p1, "input"    # Landroid/widget/EditText;
    .param p2, "d"    # Landroid/content/DialogInterface;
    .param p3, "whichButton"    # I

    .line 58
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/termux/shared/interact/TextInputDialogUtils$TextSetListener;->onTextSet(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$textInput$2(Lcom/termux/shared/interact/TextInputDialogUtils$TextSetListener;Landroid/widget/EditText;Landroid/content/DialogInterface;I)V
    .locals 1
    .param p0, "onNeutral"    # Lcom/termux/shared/interact/TextInputDialogUtils$TextSetListener;
    .param p1, "input"    # Landroid/widget/EditText;
    .param p2, "dialog"    # Landroid/content/DialogInterface;
    .param p3, "which"    # I

    .line 61
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/termux/shared/interact/TextInputDialogUtils$TextSetListener;->onTextSet(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$textInput$3(Lcom/termux/shared/interact/TextInputDialogUtils$TextSetListener;Landroid/widget/EditText;Landroid/content/DialogInterface;I)V
    .locals 1
    .param p0, "onNegative"    # Lcom/termux/shared/interact/TextInputDialogUtils$TextSetListener;
    .param p1, "input"    # Landroid/widget/EditText;
    .param p2, "dialog"    # Landroid/content/DialogInterface;
    .param p3, "which"    # I

    .line 67
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/termux/shared/interact/TextInputDialogUtils$TextSetListener;->onTextSet(Ljava/lang/String;)V

    return-void
.end method

.method public static textInput(Landroid/app/Activity;ILjava/lang/String;ILcom/termux/shared/interact/TextInputDialogUtils$TextSetListener;ILcom/termux/shared/interact/TextInputDialogUtils$TextSetListener;ILcom/termux/shared/interact/TextInputDialogUtils$TextSetListener;Landroid/content/DialogInterface$OnDismissListener;)V
    .locals 16
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "titleText"    # I
    .param p2, "initialText"    # Ljava/lang/String;
    .param p3, "positiveButtonText"    # I
    .param p4, "onPositive"    # Lcom/termux/shared/interact/TextInputDialogUtils$TextSetListener;
    .param p5, "neutralButtonText"    # I
    .param p6, "onNeutral"    # Lcom/termux/shared/interact/TextInputDialogUtils$TextSetListener;
    .param p7, "negativeButtonText"    # I
    .param p8, "onNegative"    # Lcom/termux/shared/interact/TextInputDialogUtils$TextSetListener;
    .param p9, "onDismiss"    # Landroid/content/DialogInterface$OnDismissListener;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x10,
            0x0,
            0x10,
            0x0,
            0x10,
            0x10
        }
        names = {
            "activity",
            "titleText",
            "initialText",
            "positiveButtonText",
            "onPositive",
            "neutralButtonText",
            "onNeutral",
            "negativeButtonText",
            "onNegative",
            "onDismiss"
        }
    .end annotation

    .line 30
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p6

    move-object/from16 v5, p8

    move-object/from16 v6, p9

    new-instance v7, Landroid/widget/EditText;

    invoke-direct {v7, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 31
    .local v7, "input":Landroid/widget/EditText;
    invoke-virtual {v7}, Landroid/widget/EditText;->setSingleLine()V

    .line 32
    if-eqz v1, :cond_0

    .line 33
    invoke-virtual {v7, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 34
    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v9

    invoke-static {v8, v9}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 37
    :cond_0
    const/4 v8, 0x1

    new-array v9, v8, [Landroid/app/AlertDialog;

    .line 38
    .local v9, "dialogHolder":[Landroid/app/AlertDialog;
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    const/16 v11, 0x42

    invoke-virtual {v7, v10, v11}, Landroid/widget/EditText;->setImeActionLabel(Ljava/lang/CharSequence;I)V

    .line 39
    new-instance v10, Lcom/termux/shared/interact/-$$Lambda$TextInputDialogUtils$nLBn1Jc5bksYu-Uoclc_dZwj_Nc;

    invoke-direct {v10, v3, v7, v9}, Lcom/termux/shared/interact/-$$Lambda$TextInputDialogUtils$nLBn1Jc5bksYu-Uoclc_dZwj_Nc;-><init>(Lcom/termux/shared/interact/TextInputDialogUtils$TextSetListener;Landroid/widget/EditText;[Landroid/app/AlertDialog;)V

    invoke-virtual {v7, v10}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 45
    const/high16 v10, 0x3f800000    # 1.0f

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v11

    invoke-static {v8, v10, v11}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v10

    .line 47
    .local v10, "dipInPixels":F
    const/high16 v11, 0x41800000    # 16.0f

    mul-float/2addr v11, v10

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v11

    .line 48
    .local v11, "paddingTopAndSides":I
    const/high16 v12, 0x41c00000    # 24.0f

    mul-float/2addr v12, v10

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v12

    .line 50
    .local v12, "paddingBottom":I
    new-instance v13, Landroid/widget/LinearLayout;

    invoke-direct {v13, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 51
    .local v13, "layout":Landroid/widget/LinearLayout;
    invoke-virtual {v13, v8}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 52
    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v14, -0x1

    const/4 v15, -0x2

    invoke-direct {v8, v14, v15}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v13, v8}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 53
    invoke-virtual {v13, v11, v11, v11, v12}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 54
    invoke-virtual {v13, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 56
    new-instance v8, Landroid/app/AlertDialog$Builder;

    invoke-direct {v8, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 57
    move/from16 v14, p1

    invoke-virtual {v8, v14}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    invoke-virtual {v8, v13}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    new-instance v15, Lcom/termux/shared/interact/-$$Lambda$TextInputDialogUtils$xWc0yeFlvDPP4l2yDNjLxhsdWqk;

    invoke-direct {v15, v3, v7}, Lcom/termux/shared/interact/-$$Lambda$TextInputDialogUtils$xWc0yeFlvDPP4l2yDNjLxhsdWqk;-><init>(Lcom/termux/shared/interact/TextInputDialogUtils$TextSetListener;Landroid/widget/EditText;)V

    .line 58
    invoke-virtual {v8, v2, v15}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    .line 60
    .local v8, "builder":Landroid/app/AlertDialog$Builder;
    if-eqz v4, :cond_1

    .line 61
    new-instance v15, Lcom/termux/shared/interact/-$$Lambda$TextInputDialogUtils$w-70USFgERJPOo9XW4iDs9jDK9Y;

    invoke-direct {v15, v4, v7}, Lcom/termux/shared/interact/-$$Lambda$TextInputDialogUtils$w-70USFgERJPOo9XW4iDs9jDK9Y;-><init>(Lcom/termux/shared/interact/TextInputDialogUtils$TextSetListener;Landroid/widget/EditText;)V

    move/from16 v0, p5

    invoke-virtual {v8, v0, v15}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 60
    :cond_1
    move/from16 v0, p5

    .line 64
    :goto_0
    if-nez v5, :cond_2

    .line 65
    const/high16 v15, 0x1040000

    const/4 v0, 0x0

    invoke-virtual {v8, v15, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move/from16 v15, p7

    goto :goto_1

    .line 67
    :cond_2
    new-instance v0, Lcom/termux/shared/interact/-$$Lambda$TextInputDialogUtils$2YYonDD0wTltZaWpj5BrMCMvzkw;

    invoke-direct {v0, v5, v7}, Lcom/termux/shared/interact/-$$Lambda$TextInputDialogUtils$2YYonDD0wTltZaWpj5BrMCMvzkw;-><init>(Lcom/termux/shared/interact/TextInputDialogUtils$TextSetListener;Landroid/widget/EditText;)V

    move/from16 v15, p7

    invoke-virtual {v8, v15, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 70
    :goto_1
    if-eqz v6, :cond_3

    .line 71
    invoke-virtual {v8, v6}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    .line 73
    :cond_3
    invoke-virtual {v8}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, v9, v1

    .line 74
    aget-object v0, v9, v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 75
    aget-object v0, v9, v1

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 76
    return-void
.end method
