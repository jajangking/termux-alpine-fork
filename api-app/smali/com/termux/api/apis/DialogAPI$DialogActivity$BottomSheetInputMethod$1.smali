.class Lcom/termux/api/apis/DialogAPI$DialogActivity$BottomSheetInputMethod$1;
.super Lcom/google/android/material/bottomsheet/BottomSheetDialog;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/termux/api/apis/DialogAPI$DialogActivity$BottomSheetInputMethod;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/termux/api/apis/DialogAPI$DialogActivity$BottomSheetInputMethod;


# direct methods
.method constructor <init>(Lcom/termux/api/apis/DialogAPI$DialogActivity$BottomSheetInputMethod;Landroid/content/Context;I)V
    .locals 0

    .line 653
    iput-object p1, p0, Lcom/termux/api/apis/DialogAPI$DialogActivity$BottomSheetInputMethod$1;->this$0:Lcom/termux/api/apis/DialogAPI$DialogActivity$BottomSheetInputMethod;

    invoke-direct {p0, p2, p3}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 664
    invoke-super {p0}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->cancel()V

    .line 666
    iget-object v0, p0, Lcom/termux/api/apis/DialogAPI$DialogActivity$BottomSheetInputMethod$1;->this$0:Lcom/termux/api/apis/DialogAPI$DialogActivity$BottomSheetInputMethod;

    invoke-virtual {v0}, Lcom/termux/api/apis/DialogAPI$DialogActivity$BottomSheetInputMethod;->isCurrentAppTermux()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 667
    iget-object v0, p0, Lcom/termux/api/apis/DialogAPI$DialogActivity$BottomSheetInputMethod$1;->this$0:Lcom/termux/api/apis/DialogAPI$DialogActivity$BottomSheetInputMethod;

    invoke-virtual {v0}, Lcom/termux/api/apis/DialogAPI$DialogActivity$BottomSheetInputMethod;->showKeyboard()V

    .line 670
    :cond_0
    iget-object v0, p0, Lcom/termux/api/apis/DialogAPI$DialogActivity$BottomSheetInputMethod$1;->this$0:Lcom/termux/api/apis/DialogAPI$DialogActivity$BottomSheetInputMethod;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    .line 671
    iget-object v0, p0, Lcom/termux/api/apis/DialogAPI$DialogActivity$BottomSheetInputMethod$1;->this$0:Lcom/termux/api/apis/DialogAPI$DialogActivity$BottomSheetInputMethod;

    invoke-virtual {v0}, Lcom/termux/api/apis/DialogAPI$DialogActivity$BottomSheetInputMethod;->postCanceledResult()V

    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .line 656
    invoke-super {p0}, Landroidx/activity/ComponentDialog;->onBackPressed()V

    .line 658
    iget-object v0, p0, Lcom/termux/api/apis/DialogAPI$DialogActivity$BottomSheetInputMethod$1;->this$0:Lcom/termux/api/apis/DialogAPI$DialogActivity$BottomSheetInputMethod;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    .line 659
    iget-object v0, p0, Lcom/termux/api/apis/DialogAPI$DialogActivity$BottomSheetInputMethod$1;->this$0:Lcom/termux/api/apis/DialogAPI$DialogActivity$BottomSheetInputMethod;

    invoke-virtual {v0}, Lcom/termux/api/apis/DialogAPI$DialogActivity$BottomSheetInputMethod;->postCanceledResult()V

    return-void
.end method
