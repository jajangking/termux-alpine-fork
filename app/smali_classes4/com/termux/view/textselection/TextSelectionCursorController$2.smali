.class Lcom/termux/view/textselection/TextSelectionCursorController$2;
.super Landroid/view/ActionMode$Callback2;
.source "TextSelectionCursorController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/termux/view/textselection/TextSelectionCursorController;->setActionModeCallBacks()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/termux/view/textselection/TextSelectionCursorController;

.field final synthetic val$callback:Landroid/view/ActionMode$Callback;


# direct methods
.method constructor <init>(Lcom/termux/view/textselection/TextSelectionCursorController;Landroid/view/ActionMode$Callback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/termux/view/textselection/TextSelectionCursorController;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$callback"
        }
    .end annotation

    .line 167
    iput-object p1, p0, Lcom/termux/view/textselection/TextSelectionCursorController$2;->this$0:Lcom/termux/view/textselection/TextSelectionCursorController;

    iput-object p2, p0, Lcom/termux/view/textselection/TextSelectionCursorController$2;->val$callback:Landroid/view/ActionMode$Callback;

    invoke-direct {p0}, Landroid/view/ActionMode$Callback2;-><init>()V

    return-void
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "item"    # Landroid/view/MenuItem;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "mode",
            "item"
        }
    .end annotation

    .line 180
    iget-object v0, p0, Lcom/termux/view/textselection/TextSelectionCursorController$2;->val$callback:Landroid/view/ActionMode$Callback;

    invoke-interface {v0, p1, p2}, Landroid/view/ActionMode$Callback;->onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "mode",
            "menu"
        }
    .end annotation

    .line 170
    iget-object v0, p0, Lcom/termux/view/textselection/TextSelectionCursorController$2;->val$callback:Landroid/view/ActionMode$Callback;

    invoke-interface {v0, p1, p2}, Landroid/view/ActionMode$Callback;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 0
    .param p1, "mode"    # Landroid/view/ActionMode;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    .line 186
    return-void
.end method

.method public onGetContentRect(Landroid/view/ActionMode;Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 7
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "outRect"    # Landroid/graphics/Rect;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "mode",
            "view",
            "outRect"
        }
    .end annotation

    .line 190
    iget-object v0, p0, Lcom/termux/view/textselection/TextSelectionCursorController$2;->this$0:Lcom/termux/view/textselection/TextSelectionCursorController;

    invoke-static {v0}, Lcom/termux/view/textselection/TextSelectionCursorController;->access$200(Lcom/termux/view/textselection/TextSelectionCursorController;)I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/termux/view/textselection/TextSelectionCursorController$2;->this$0:Lcom/termux/view/textselection/TextSelectionCursorController;

    invoke-static {v1}, Lcom/termux/view/textselection/TextSelectionCursorController;->access$000(Lcom/termux/view/textselection/TextSelectionCursorController;)Lcom/termux/view/TerminalView;

    move-result-object v1

    iget-object v1, v1, Lcom/termux/view/TerminalView;->mRenderer:Lcom/termux/view/TerminalRenderer;

    invoke-virtual {v1}, Lcom/termux/view/TerminalRenderer;->getFontWidth()F

    move-result v1

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 191
    .local v0, "x1":I
    iget-object v1, p0, Lcom/termux/view/textselection/TextSelectionCursorController$2;->this$0:Lcom/termux/view/textselection/TextSelectionCursorController;

    invoke-static {v1}, Lcom/termux/view/textselection/TextSelectionCursorController;->access$300(Lcom/termux/view/textselection/TextSelectionCursorController;)I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/termux/view/textselection/TextSelectionCursorController$2;->this$0:Lcom/termux/view/textselection/TextSelectionCursorController;

    invoke-static {v2}, Lcom/termux/view/textselection/TextSelectionCursorController;->access$000(Lcom/termux/view/textselection/TextSelectionCursorController;)Lcom/termux/view/TerminalView;

    move-result-object v2

    iget-object v2, v2, Lcom/termux/view/TerminalView;->mRenderer:Lcom/termux/view/TerminalRenderer;

    invoke-virtual {v2}, Lcom/termux/view/TerminalRenderer;->getFontWidth()F

    move-result v2

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 192
    .local v1, "x2":I
    iget-object v2, p0, Lcom/termux/view/textselection/TextSelectionCursorController$2;->this$0:Lcom/termux/view/textselection/TextSelectionCursorController;

    invoke-static {v2}, Lcom/termux/view/textselection/TextSelectionCursorController;->access$400(Lcom/termux/view/textselection/TextSelectionCursorController;)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    iget-object v3, p0, Lcom/termux/view/textselection/TextSelectionCursorController$2;->this$0:Lcom/termux/view/textselection/TextSelectionCursorController;

    invoke-static {v3}, Lcom/termux/view/textselection/TextSelectionCursorController;->access$000(Lcom/termux/view/textselection/TextSelectionCursorController;)Lcom/termux/view/TerminalView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/termux/view/TerminalView;->getTopRow()I

    move-result v3

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/termux/view/textselection/TextSelectionCursorController$2;->this$0:Lcom/termux/view/textselection/TextSelectionCursorController;

    invoke-static {v3}, Lcom/termux/view/textselection/TextSelectionCursorController;->access$000(Lcom/termux/view/textselection/TextSelectionCursorController;)Lcom/termux/view/TerminalView;

    move-result-object v3

    iget-object v3, v3, Lcom/termux/view/TerminalView;->mRenderer:Lcom/termux/view/TerminalRenderer;

    invoke-virtual {v3}, Lcom/termux/view/TerminalRenderer;->getFontLineSpacing()I

    move-result v3

    mul-int/2addr v2, v3

    int-to-float v2, v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 193
    .local v2, "y1":I
    iget-object v3, p0, Lcom/termux/view/textselection/TextSelectionCursorController$2;->this$0:Lcom/termux/view/textselection/TextSelectionCursorController;

    invoke-static {v3}, Lcom/termux/view/textselection/TextSelectionCursorController;->access$500(Lcom/termux/view/textselection/TextSelectionCursorController;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    iget-object v4, p0, Lcom/termux/view/textselection/TextSelectionCursorController$2;->this$0:Lcom/termux/view/textselection/TextSelectionCursorController;

    invoke-static {v4}, Lcom/termux/view/textselection/TextSelectionCursorController;->access$000(Lcom/termux/view/textselection/TextSelectionCursorController;)Lcom/termux/view/TerminalView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/termux/view/TerminalView;->getTopRow()I

    move-result v4

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/termux/view/textselection/TextSelectionCursorController$2;->this$0:Lcom/termux/view/textselection/TextSelectionCursorController;

    invoke-static {v4}, Lcom/termux/view/textselection/TextSelectionCursorController;->access$000(Lcom/termux/view/textselection/TextSelectionCursorController;)Lcom/termux/view/TerminalView;

    move-result-object v4

    iget-object v4, v4, Lcom/termux/view/TerminalView;->mRenderer:Lcom/termux/view/TerminalRenderer;

    invoke-virtual {v4}, Lcom/termux/view/TerminalRenderer;->getFontLineSpacing()I

    move-result v4

    mul-int/2addr v3, v4

    int-to-float v3, v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 195
    .local v3, "y2":I
    if-le v0, v1, :cond_0

    .line 196
    move v4, v0

    .line 197
    .local v4, "tmp":I
    move v0, v1

    .line 198
    move v1, v4

    .line 201
    .end local v4    # "tmp":I
    :cond_0
    iget-object v4, p0, Lcom/termux/view/textselection/TextSelectionCursorController$2;->this$0:Lcom/termux/view/textselection/TextSelectionCursorController;

    invoke-static {v4}, Lcom/termux/view/textselection/TextSelectionCursorController;->access$000(Lcom/termux/view/textselection/TextSelectionCursorController;)Lcom/termux/view/TerminalView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/termux/view/TerminalView;->getBottom()I

    move-result v4

    .line 202
    .local v4, "terminalBottom":I
    iget-object v5, p0, Lcom/termux/view/textselection/TextSelectionCursorController$2;->this$0:Lcom/termux/view/textselection/TextSelectionCursorController;

    invoke-static {v5}, Lcom/termux/view/textselection/TextSelectionCursorController;->access$600(Lcom/termux/view/textselection/TextSelectionCursorController;)I

    move-result v5

    add-int/2addr v5, v2

    .line 203
    .local v5, "top":I
    iget-object v6, p0, Lcom/termux/view/textselection/TextSelectionCursorController$2;->this$0:Lcom/termux/view/textselection/TextSelectionCursorController;

    invoke-static {v6}, Lcom/termux/view/textselection/TextSelectionCursorController;->access$600(Lcom/termux/view/textselection/TextSelectionCursorController;)I

    move-result v6

    add-int/2addr v6, v3

    .line 204
    .local v6, "bottom":I
    if-le v5, v4, :cond_1

    move v5, v4

    .line 205
    :cond_1
    if-le v6, v4, :cond_2

    move v6, v4

    .line 207
    :cond_2
    invoke-virtual {p3, v0, v5, v1, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 208
    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1
    .param p1, "mode"    # Landroid/view/ActionMode;
    .param p2, "menu"    # Landroid/view/Menu;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "mode",
            "menu"
        }
    .end annotation

    .line 175
    const/4 v0, 0x0

    return v0
.end method
