.class Lcom/termux/view/TerminalView$2;
.super Landroid/view/inputmethod/BaseInputConnection;
.source "TerminalView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/termux/view/TerminalView;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/termux/view/TerminalView;


# direct methods
.method constructor <init>(Lcom/termux/view/TerminalView;Landroid/view/View;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/termux/view/TerminalView;
    .param p2, "targetView"    # Landroid/view/View;
    .param p3, "fullEditor"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0
        }
        names = {
            "this$0",
            "targetView",
            "fullEditor"
        }
    .end annotation

    .line 335
    iput-object p1, p0, Lcom/termux/view/TerminalView$2;->this$0:Lcom/termux/view/TerminalView;

    invoke-direct {p0, p2, p3}, Landroid/view/inputmethod/BaseInputConnection;-><init>(Landroid/view/View;Z)V

    return-void
.end method


# virtual methods
.method public commitText(Ljava/lang/CharSequence;I)Z
    .locals 3
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "newCursorPosition"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "text",
            "newCursorPosition"
        }
    .end annotation

    .line 349
    invoke-static {}, Lcom/termux/view/TerminalView;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 350
    iget-object v0, p0, Lcom/termux/view/TerminalView$2;->this$0:Lcom/termux/view/TerminalView;

    iget-object v0, v0, Lcom/termux/view/TerminalView;->mClient:Lcom/termux/view/TerminalViewClient;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IME: commitText(\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TerminalView"

    invoke-interface {v0, v2, v1}, Lcom/termux/view/TerminalViewClient;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/view/inputmethod/BaseInputConnection;->commitText(Ljava/lang/CharSequence;I)Z

    .line 354
    iget-object v0, p0, Lcom/termux/view/TerminalView$2;->this$0:Lcom/termux/view/TerminalView;

    iget-object v0, v0, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    const/4 v1, 0x1

    if-nez v0, :cond_1

    return v1

    .line 356
    :cond_1
    invoke-virtual {p0}, Lcom/termux/view/TerminalView$2;->getEditable()Landroid/text/Editable;

    move-result-object v0

    .line 357
    .local v0, "content":Landroid/text/Editable;
    invoke-virtual {p0, v0}, Lcom/termux/view/TerminalView$2;->sendTextToTerminal(Ljava/lang/CharSequence;)V

    .line 358
    invoke-interface {v0}, Landroid/text/Editable;->clear()V

    .line 359
    return v1
.end method

.method public deleteSurroundingText(II)Z
    .locals 3
    .param p1, "leftLength"    # I
    .param p2, "rightLength"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "leftLength",
            "rightLength"
        }
    .end annotation

    .line 364
    invoke-static {}, Lcom/termux/view/TerminalView;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 365
    iget-object v0, p0, Lcom/termux/view/TerminalView$2;->this$0:Lcom/termux/view/TerminalView;

    iget-object v0, v0, Lcom/termux/view/TerminalView;->mClient:Lcom/termux/view/TerminalViewClient;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IME: deleteSurroundingText("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TerminalView"

    invoke-interface {v0, v2, v1}, Lcom/termux/view/TerminalViewClient;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    :cond_0
    new-instance v0, Landroid/view/KeyEvent;

    const/4 v1, 0x0

    const/16 v2, 0x43

    invoke-direct {v0, v1, v2}, Landroid/view/KeyEvent;-><init>(II)V

    .line 369
    .local v0, "deleteKey":Landroid/view/KeyEvent;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p1, :cond_1

    invoke-virtual {p0, v0}, Lcom/termux/view/TerminalView$2;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 370
    .end local v1    # "i":I
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/view/inputmethod/BaseInputConnection;->deleteSurroundingText(II)Z

    move-result v1

    return v1
.end method

.method public finishComposingText()Z
    .locals 3

    .line 339
    invoke-static {}, Lcom/termux/view/TerminalView;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/termux/view/TerminalView$2;->this$0:Lcom/termux/view/TerminalView;

    iget-object v0, v0, Lcom/termux/view/TerminalView;->mClient:Lcom/termux/view/TerminalViewClient;

    const-string v1, "TerminalView"

    const-string v2, "IME: finishComposingText()"

    invoke-interface {v0, v1, v2}, Lcom/termux/view/TerminalViewClient;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    :cond_0
    invoke-super {p0}, Landroid/view/inputmethod/BaseInputConnection;->finishComposingText()Z

    .line 342
    invoke-virtual {p0}, Lcom/termux/view/TerminalView$2;->getEditable()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/termux/view/TerminalView$2;->sendTextToTerminal(Ljava/lang/CharSequence;)V

    .line 343
    invoke-virtual {p0}, Lcom/termux/view/TerminalView$2;->getEditable()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->clear()V

    .line 344
    const/4 v0, 0x1

    return v0
.end method

.method sendTextToTerminal(Ljava/lang/CharSequence;)V
    .locals 7
    .param p1, "text"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "text"
        }
    .end annotation

    .line 374
    iget-object v0, p0, Lcom/termux/view/TerminalView$2;->this$0:Lcom/termux/view/TerminalView;

    invoke-virtual {v0}, Lcom/termux/view/TerminalView;->stopTextSelectionMode()V

    .line 375
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 376
    .local v0, "textLengthInChars":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_5

    .line 377
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    .line 379
    .local v2, "firstChar":C
    invoke-static {v2}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 380
    add-int/lit8 v1, v1, 0x1

    if-ge v1, v0, :cond_0

    .line 381
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v3

    .local v3, "codePoint":I
    goto :goto_1

    .line 384
    .end local v3    # "codePoint":I
    :cond_0
    const v3, 0xfffd

    .restart local v3    # "codePoint":I
    goto :goto_1

    .line 387
    .end local v3    # "codePoint":I
    :cond_1
    move v3, v2

    .line 391
    .restart local v3    # "codePoint":I
    :goto_1
    iget-object v4, p0, Lcom/termux/view/TerminalView$2;->this$0:Lcom/termux/view/TerminalView;

    iget-object v4, v4, Lcom/termux/view/TerminalView;->mClient:Lcom/termux/view/TerminalViewClient;

    invoke-interface {v4}, Lcom/termux/view/TerminalViewClient;->readShiftKey()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 392
    invoke-static {v3}, Ljava/lang/Character;->toUpperCase(I)I

    move-result v3

    .line 394
    :cond_2
    const/4 v4, 0x0

    .line 395
    .local v4, "ctrlHeld":Z
    const/16 v5, 0x1f

    if-gt v3, v5, :cond_4

    const/16 v5, 0x1b

    if-eq v3, v5, :cond_4

    .line 396
    const/16 v5, 0xa

    if-ne v3, v5, :cond_3

    .line 401
    const/16 v3, 0xd

    .line 405
    :cond_3
    const/4 v4, 0x1

    .line 406
    packed-switch v3, :pswitch_data_0

    .line 420
    add-int/lit8 v3, v3, 0x60

    goto :goto_2

    .line 408
    :pswitch_0
    const/16 v3, 0x5f

    .line 409
    goto :goto_2

    .line 411
    :pswitch_1
    const/16 v3, 0x5e

    .line 412
    goto :goto_2

    .line 414
    :pswitch_2
    const/16 v3, 0x5d

    .line 415
    goto :goto_2

    .line 417
    :pswitch_3
    const/16 v3, 0x5c

    .line 425
    :cond_4
    :goto_2
    iget-object v5, p0, Lcom/termux/view/TerminalView$2;->this$0:Lcom/termux/view/TerminalView;

    const/4 v6, 0x0

    invoke-virtual {v5, v3, v4, v6}, Lcom/termux/view/TerminalView;->inputCodePoint(IZZ)V

    .line 376
    .end local v2    # "firstChar":C
    .end local v3    # "codePoint":I
    .end local v4    # "ctrlHeld":Z
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 427
    .end local v1    # "i":I
    :cond_5
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1c
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
