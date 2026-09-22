.class public Lcom/termux/api/apis/DialogAPI$DialogActivity$BottomSheetInputMethod;
.super Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;
.source "SourceFile"

# interfaces
.implements Lcom/termux/api/apis/DialogAPI$DialogActivity$InputMethod;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/termux/api/apis/DialogAPI$DialogActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BottomSheetInputMethod"
.end annotation


# instance fields
.field private resultListener:Lcom/termux/api/apis/DialogAPI$DialogActivity$InputResultListener;


# direct methods
.method public static synthetic $r8$lambda$K-4Ehyj3AMiut8mWvGIdFmj5weE(Lcom/termux/api/apis/DialogAPI$DialogActivity$BottomSheetInputMethod;[Ljava/lang/String;ILandroid/app/Dialog;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/termux/api/apis/DialogAPI$DialogActivity$BottomSheetInputMethod;->lambda$setupDialog$0([Ljava/lang/String;ILandroid/app/Dialog;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 639
    invoke-direct {p0}, Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;-><init>()V

    return-void
.end method

.method private synthetic lambda$setupDialog$0([Ljava/lang/String;ILandroid/app/Dialog;Landroid/view/View;)V
    .locals 0

    .line 694
    new-instance p4, Lcom/termux/api/apis/DialogAPI$DialogActivity$InputResult;

    invoke-direct {p4}, Lcom/termux/api/apis/DialogAPI$DialogActivity$InputResult;-><init>()V

    .line 695
    aget-object p1, p1, p2

    iput-object p1, p4, Lcom/termux/api/apis/DialogAPI$DialogActivity$InputResult;->text:Ljava/lang/String;

    .line 696
    sput p2, Lcom/termux/api/apis/DialogAPI$DialogActivity$InputResult;->index:I

    .line 697
    invoke-static {p3}, Lcom/termux/api/apis/DialogAPI$DialogActivity;->-$$Nest$smdismissDialog(Landroid/app/Dialog;)V

    .line 698
    iget-object p1, p0, Lcom/termux/api/apis/DialogAPI$DialogActivity$BottomSheetInputMethod;->resultListener:Lcom/termux/api/apis/DialogAPI$DialogActivity$InputResultListener;

    invoke-interface {p1, p4}, Lcom/termux/api/apis/DialogAPI$DialogActivity$InputResultListener;->onResult(Lcom/termux/api/apis/DialogAPI$DialogActivity$InputResult;)V

    return-void
.end method


# virtual methods
.method public create(Landroidx/appcompat/app/AppCompatActivity;Lcom/termux/api/apis/DialogAPI$DialogActivity$InputResultListener;)V
    .locals 0

    .line 645
    iput-object p2, p0, Lcom/termux/api/apis/DialogAPI$DialogActivity$BottomSheetInputMethod;->resultListener:Lcom/termux/api/apis/DialogAPI$DialogActivity$InputResultListener;

    .line 646
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const-string p2, "BOTTOM_SHEET"

    invoke-virtual {p0, p1, p2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method protected hideKeyboard()V
    .locals 1

    .line 716
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/termux/shared/view/KeyboardUtils;->setSoftKeyboardAlwaysHiddenFlags(Landroid/app/Activity;)V

    return-void
.end method

.method protected isCurrentAppTermux()Z
    .locals 6

    .line 727
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 728
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    .line 729
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 730
    iget v3, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v4, 0x64

    if-ne v3, v4, :cond_0

    .line 731
    iget-object v1, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    array-length v3, v1

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, v1, v2

    .line 732
    const-string v5, "com.termux"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v2
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2

    .line 653
    new-instance p1, Lcom/termux/api/apis/DialogAPI$DialogActivity$BottomSheetInputMethod$1;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->getTheme()I

    move-result v1

    invoke-direct {p1, p0, v0, v1}, Lcom/termux/api/apis/DialogAPI$DialogActivity$BottomSheetInputMethod$1;-><init>(Lcom/termux/api/apis/DialogAPI$DialogActivity$BottomSheetInputMethod;Landroid/content/Context;I)V

    return-object p1
.end method

.method protected postCanceledResult()V
    .locals 2

    .line 742
    new-instance v0, Lcom/termux/api/apis/DialogAPI$DialogActivity$InputResult;

    invoke-direct {v0}, Lcom/termux/api/apis/DialogAPI$DialogActivity$InputResult;-><init>()V

    const/4 v1, -0x2

    .line 743
    iput v1, v0, Lcom/termux/api/apis/DialogAPI$DialogActivity$InputResult;->code:I

    .line 744
    iget-object v1, p0, Lcom/termux/api/apis/DialogAPI$DialogActivity$BottomSheetInputMethod;->resultListener:Lcom/termux/api/apis/DialogAPI$DialogActivity$InputResultListener;

    invoke-interface {v1, v0}, Lcom/termux/api/apis/DialogAPI$DialogActivity$InputResultListener;->onResult(Lcom/termux/api/apis/DialogAPI$DialogActivity$InputResult;)V

    return-void
.end method

.method public setupDialog(Landroid/app/Dialog;I)V
    .locals 5

    .line 679
    new-instance p2, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/16 v0, 0x64

    .line 680
    invoke-virtual {p2, v0}, Landroid/view/View;->setMinimumHeight(I)V

    const/16 v0, 0x10

    .line 681
    invoke-virtual {p2, v0, v0, v0, v0}, Landroid/view/View;->setPadding(IIII)V

    const/4 v0, 0x1

    .line 682
    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 684
    new-instance v0, Landroidx/core/widget/NestedScrollView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/core/widget/NestedScrollView;-><init>(Landroid/content/Context;)V

    .line 685
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v1}, Lcom/termux/api/apis/DialogAPI$DialogActivity;->getInputValues(Landroid/content/Intent;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 687
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_0

    .line 689
    new-instance v3, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 690
    aget-object v4, v1, v2

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v4, 0x41a00000    # 20.0f

    .line 691
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextSize(F)V

    const/16 v4, 0x38

    .line 692
    invoke-virtual {v3, v4, v4, v4, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 693
    new-instance v4, Lcom/termux/api/apis/DialogAPI$DialogActivity$BottomSheetInputMethod$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0, v1, v2, p1}, Lcom/termux/api/apis/DialogAPI$DialogActivity$BottomSheetInputMethod$$ExternalSyntheticLambda0;-><init>(Lcom/termux/api/apis/DialogAPI$DialogActivity$BottomSheetInputMethod;[Ljava/lang/String;ILandroid/app/Dialog;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 701
    invoke-virtual {p2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 703
    :cond_0
    invoke-virtual {v0, p2}, Landroidx/core/widget/NestedScrollView;->addView(Landroid/view/View;)V

    .line 704
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 705
    invoke-virtual {p0}, Lcom/termux/api/apis/DialogAPI$DialogActivity$BottomSheetInputMethod;->hideKeyboard()V

    return-void
.end method

.method protected showKeyboard()V
    .locals 2

    .line 720
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/termux/shared/view/KeyboardUtils;->showSoftKeyboard(Landroid/content/Context;Landroid/view/View;)V

    return-void
.end method
