.class public Lcom/termux/shared/terminal/io/TerminalExtraKeys;
.super Ljava/lang/Object;
.source "TerminalExtraKeys.java"

# interfaces
.implements Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysView$IExtraKeysView;


# instance fields
.field private final mTerminalView:Lcom/termux/view/TerminalView;


# direct methods
.method public constructor <init>(Lcom/termux/view/TerminalView;)V
    .locals 0
    .param p1, "terminalView"    # Lcom/termux/view/TerminalView;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "terminalView"
        }
    .end annotation

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/termux/shared/terminal/io/TerminalExtraKeys;->mTerminalView:Lcom/termux/view/TerminalView;

    .line 23
    return-void
.end method


# virtual methods
.method public synthetic lambda$onTerminalExtraKeyButtonClick$0$TerminalExtraKeys(ZZI)V
    .locals 1
    .param p1, "ctrlDown"    # Z
    .param p2, "altDown"    # Z
    .param p3, "codePoint"    # I

    .line 67
    iget-object v0, p0, Lcom/termux/shared/terminal/io/TerminalExtraKeys;->mTerminalView:Lcom/termux/view/TerminalView;

    invoke-virtual {v0, p3, p1, p2}, Lcom/termux/view/TerminalView;->inputCodePoint(IZZ)V

    .line 68
    return-void
.end method

.method public onExtraKeyButtonClick(Landroid/view/View;Lcom/termux/shared/terminal/io/extrakeys/ExtraKeyButton;Landroid/widget/Button;)V
    .locals 15
    .param p1, "view"    # Landroid/view/View;
    .param p2, "buttonInfo"    # Lcom/termux/shared/terminal/io/extrakeys/ExtraKeyButton;
    .param p3, "button"    # Landroid/widget/Button;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "view",
            "buttonInfo",
            "button"
        }
    .end annotation

    .line 27
    invoke-virtual/range {p2 .. p2}, Lcom/termux/shared/terminal/io/extrakeys/ExtraKeyButton;->isMacro()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 28
    invoke-virtual/range {p2 .. p2}, Lcom/termux/shared/terminal/io/extrakeys/ExtraKeyButton;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 29
    .local v0, "keys":[Ljava/lang/String;
    const/4 v1, 0x0

    .line 30
    .local v1, "ctrlDown":Z
    const/4 v2, 0x0

    .line 31
    .local v2, "altDown":Z
    const/4 v3, 0x0

    .line 32
    .local v3, "shiftDown":Z
    const/4 v4, 0x0

    .line 33
    .local v4, "fnDown":Z
    array-length v5, v0

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_4

    aget-object v14, v0, v6

    .line 34
    .local v14, "key":Ljava/lang/String;
    sget-object v7, Lcom/termux/shared/terminal/io/extrakeys/SpecialButton;->CTRL:Lcom/termux/shared/terminal/io/extrakeys/SpecialButton;

    invoke-virtual {v7}, Lcom/termux/shared/terminal/io/extrakeys/SpecialButton;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 35
    const/4 v1, 0x1

    goto :goto_1

    .line 36
    :cond_0
    sget-object v7, Lcom/termux/shared/terminal/io/extrakeys/SpecialButton;->ALT:Lcom/termux/shared/terminal/io/extrakeys/SpecialButton;

    invoke-virtual {v7}, Lcom/termux/shared/terminal/io/extrakeys/SpecialButton;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 37
    const/4 v2, 0x1

    goto :goto_1

    .line 38
    :cond_1
    sget-object v7, Lcom/termux/shared/terminal/io/extrakeys/SpecialButton;->SHIFT:Lcom/termux/shared/terminal/io/extrakeys/SpecialButton;

    invoke-virtual {v7}, Lcom/termux/shared/terminal/io/extrakeys/SpecialButton;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 39
    const/4 v3, 0x1

    goto :goto_1

    .line 40
    :cond_2
    sget-object v7, Lcom/termux/shared/terminal/io/extrakeys/SpecialButton;->FN:Lcom/termux/shared/terminal/io/extrakeys/SpecialButton;

    invoke-virtual {v7}, Lcom/termux/shared/terminal/io/extrakeys/SpecialButton;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 41
    const/4 v4, 0x1

    goto :goto_1

    .line 43
    :cond_3
    move-object v7, p0

    move-object/from16 v8, p1

    move-object v9, v14

    move v10, v1

    move v11, v2

    move v12, v3

    move v13, v4

    invoke-virtual/range {v7 .. v13}, Lcom/termux/shared/terminal/io/TerminalExtraKeys;->onTerminalExtraKeyButtonClick(Landroid/view/View;Ljava/lang/String;ZZZZ)V

    .line 44
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 33
    .end local v14    # "key":Ljava/lang/String;
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 47
    .end local v0    # "keys":[Ljava/lang/String;
    .end local v1    # "ctrlDown":Z
    .end local v2    # "altDown":Z
    .end local v3    # "shiftDown":Z
    .end local v4    # "fnDown":Z
    :cond_4
    goto :goto_2

    .line 48
    :cond_5
    invoke-virtual/range {p2 .. p2}, Lcom/termux/shared/terminal/io/extrakeys/ExtraKeyButton;->getKey()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v7, p0

    move-object/from16 v8, p1

    invoke-virtual/range {v7 .. v13}, Lcom/termux/shared/terminal/io/TerminalExtraKeys;->onTerminalExtraKeyButtonClick(Landroid/view/View;Ljava/lang/String;ZZZZ)V

    .line 50
    :goto_2
    return-void
.end method

.method protected onTerminalExtraKeyButtonClick(Landroid/view/View;Ljava/lang/String;ZZZZ)V
    .locals 16
    .param p1, "view"    # Landroid/view/View;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "ctrlDown"    # Z
    .param p4, "altDown"    # Z
    .param p5, "shiftDown"    # Z
    .param p6, "fnDown"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "view",
            "key",
            "ctrlDown",
            "altDown",
            "shiftDown",
            "fnDown"
        }
    .end annotation

    .line 53
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    sget-object v4, Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysConstants;->PRIMARY_KEY_CODES_FOR_STRINGS:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 54
    sget-object v4, Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysConstants;->PRIMARY_KEY_CODES_FOR_STRINGS:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 55
    .local v4, "keyCode":Ljava/lang/Integer;
    if-nez v4, :cond_0

    return-void

    .line 56
    :cond_0
    const/4 v5, 0x0

    .line 57
    .local v5, "metaState":I
    if-eqz v2, :cond_1

    or-int/lit16 v5, v5, 0x3000

    .line 58
    :cond_1
    if-eqz v3, :cond_2

    or-int/lit8 v5, v5, 0x12

    .line 59
    :cond_2
    if-eqz p5, :cond_3

    or-int/lit8 v5, v5, 0x41

    .line 60
    :cond_3
    if-eqz p6, :cond_4

    or-int/lit8 v5, v5, 0x8

    .line 62
    :cond_4
    new-instance v15, Landroid/view/KeyEvent;

    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v12

    const/4 v13, 0x0

    move-object v6, v15

    move v14, v5

    invoke-direct/range {v6 .. v14}, Landroid/view/KeyEvent;-><init>(JJIIII)V

    .line 63
    .local v6, "keyEvent":Landroid/view/KeyEvent;
    iget-object v7, v0, Lcom/termux/shared/terminal/io/TerminalExtraKeys;->mTerminalView:Lcom/termux/view/TerminalView;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-virtual {v7, v8, v6}, Lcom/termux/view/TerminalView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 64
    .end local v4    # "keyCode":Ljava/lang/Integer;
    .end local v5    # "metaState":I
    .end local v6    # "keyEvent":Landroid/view/KeyEvent;
    goto :goto_0

    .line 66
    :cond_5
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->codePoints()Ljava/util/stream/IntStream;

    move-result-object v4

    new-instance v5, Lcom/termux/shared/terminal/io/-$$Lambda$TerminalExtraKeys$EsGrmYxqjn70nYV1dHr3853O0lA;

    invoke-direct {v5, v0, v2, v3}, Lcom/termux/shared/terminal/io/-$$Lambda$TerminalExtraKeys$EsGrmYxqjn70nYV1dHr3853O0lA;-><init>(Lcom/termux/shared/terminal/io/TerminalExtraKeys;ZZ)V

    invoke-interface {v4, v5}, Ljava/util/stream/IntStream;->forEach(Ljava/util/function/IntConsumer;)V

    .line 70
    :goto_0
    return-void
.end method

.method public performExtraKeyButtonHapticFeedback(Landroid/view/View;Lcom/termux/shared/terminal/io/extrakeys/ExtraKeyButton;Landroid/widget/Button;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "buttonInfo"    # Lcom/termux/shared/terminal/io/extrakeys/ExtraKeyButton;
    .param p3, "button"    # Landroid/widget/Button;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "view",
            "buttonInfo",
            "button"
        }
    .end annotation

    .line 74
    const/4 v0, 0x0

    return v0
.end method
