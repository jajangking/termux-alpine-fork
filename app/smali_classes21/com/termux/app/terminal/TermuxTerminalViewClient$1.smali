.class Lcom/termux/app/terminal/TermuxTerminalViewClient$1;
.super Ljava/lang/Object;
.source "TermuxTerminalViewClient.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/termux/app/terminal/TermuxTerminalViewClient;->setSoftKeyboardState(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/termux/app/terminal/TermuxTerminalViewClient;


# direct methods
.method constructor <init>(Lcom/termux/app/terminal/TermuxTerminalViewClient;)V
    .locals 0
    .param p1, "this$0"    # Lcom/termux/app/terminal/TermuxTerminalViewClient;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 580
    iput-object p1, p0, Lcom/termux/app/terminal/TermuxTerminalViewClient$1;->this$0:Lcom/termux/app/terminal/TermuxTerminalViewClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "hasFocus"
        }
    .end annotation

    .line 585
    const/4 v0, 0x0

    .line 586
    .local v0, "textInputViewHasFocus":Z
    iget-object v1, p0, Lcom/termux/app/terminal/TermuxTerminalViewClient$1;->this$0:Lcom/termux/app/terminal/TermuxTerminalViewClient;

    iget-object v1, v1, Lcom/termux/app/terminal/TermuxTerminalViewClient;->mActivity:Lcom/termux/app/TermuxActivity;

    const v2, 0x7f08018f

    invoke-virtual {v1, v2}, Lcom/termux/app/TermuxActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 587
    .local v1, "textInputView":Landroid/widget/EditText;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/widget/EditText;->hasFocus()Z

    move-result v0

    .line 589
    :cond_0
    const/4 v2, 0x0

    const-string v3, "TermuxTerminalViewClient"

    if-nez p2, :cond_2

    if-eqz v0, :cond_1

    goto :goto_0

    .line 595
    :cond_1
    const-string v4, "Hiding soft keyboard on focus change"

    invoke-static {v3, v4}, Lcom/termux/shared/logger/Logger;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 590
    :cond_2
    :goto_0
    iget-object v4, p0, Lcom/termux/app/terminal/TermuxTerminalViewClient$1;->this$0:Lcom/termux/app/terminal/TermuxTerminalViewClient;

    invoke-static {v4}, Lcom/termux/app/terminal/TermuxTerminalViewClient;->access$000(Lcom/termux/app/terminal/TermuxTerminalViewClient;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 591
    iget-object v3, p0, Lcom/termux/app/terminal/TermuxTerminalViewClient$1;->this$0:Lcom/termux/app/terminal/TermuxTerminalViewClient;

    invoke-static {v3, v2}, Lcom/termux/app/terminal/TermuxTerminalViewClient;->access$002(Lcom/termux/app/terminal/TermuxTerminalViewClient;Z)Z

    return-void

    .line 593
    :cond_3
    const-string v4, "Showing soft keyboard on focus change"

    invoke-static {v3, v4}, Lcom/termux/shared/logger/Logger;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 598
    :goto_1
    iget-object v3, p0, Lcom/termux/app/terminal/TermuxTerminalViewClient$1;->this$0:Lcom/termux/app/terminal/TermuxTerminalViewClient;

    invoke-static {v3}, Lcom/termux/app/terminal/TermuxTerminalViewClient;->access$100(Lcom/termux/app/terminal/TermuxTerminalViewClient;)Ljava/lang/Runnable;

    move-result-object v3

    iget-object v4, p0, Lcom/termux/app/terminal/TermuxTerminalViewClient$1;->this$0:Lcom/termux/app/terminal/TermuxTerminalViewClient;

    iget-object v4, v4, Lcom/termux/app/terminal/TermuxTerminalViewClient;->mActivity:Lcom/termux/app/TermuxActivity;

    iget-object v5, p0, Lcom/termux/app/terminal/TermuxTerminalViewClient$1;->this$0:Lcom/termux/app/terminal/TermuxTerminalViewClient;

    iget-object v5, v5, Lcom/termux/app/terminal/TermuxTerminalViewClient;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-virtual {v5}, Lcom/termux/app/TermuxActivity;->getTerminalView()Lcom/termux/view/TerminalView;

    move-result-object v5

    if-nez p2, :cond_4

    if-eqz v0, :cond_5

    :cond_4
    const/4 v2, 0x1

    :cond_5
    invoke-static {v3, v4, v5, v2}, Lcom/termux/shared/view/KeyboardUtils;->setSoftKeyboardVisibility(Ljava/lang/Runnable;Landroid/app/Activity;Landroid/view/View;Z)V

    .line 599
    return-void
.end method
