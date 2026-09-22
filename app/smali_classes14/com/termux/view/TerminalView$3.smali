.class Lcom/termux/view/TerminalView$3;
.super Ljava/lang/Object;
.source "TerminalView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/termux/view/TerminalView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/termux/view/TerminalView;


# direct methods
.method constructor <init>(Lcom/termux/view/TerminalView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/termux/view/TerminalView;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 1440
    iput-object p1, p0, Lcom/termux/view/TerminalView$3;->this$0:Lcom/termux/view/TerminalView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1443
    iget-object v0, p0, Lcom/termux/view/TerminalView$3;->this$0:Lcom/termux/view/TerminalView;

    invoke-static {v0}, Lcom/termux/view/TerminalView;->access$200(Lcom/termux/view/TerminalView;)Landroid/view/ActionMode;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1444
    iget-object v0, p0, Lcom/termux/view/TerminalView$3;->this$0:Lcom/termux/view/TerminalView;

    invoke-static {v0}, Lcom/termux/view/TerminalView;->access$200(Lcom/termux/view/TerminalView;)Landroid/view/ActionMode;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/ActionMode;->hide(J)V

    .line 1446
    :cond_0
    return-void
.end method
