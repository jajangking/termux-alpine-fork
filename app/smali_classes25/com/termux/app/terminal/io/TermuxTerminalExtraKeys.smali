.class public Lcom/termux/app/terminal/io/TermuxTerminalExtraKeys;
.super Lcom/termux/shared/terminal/io/TerminalExtraKeys;
.source "TermuxTerminalExtraKeys.java"


# instance fields
.field mTermuxTerminalSessionClient:Lcom/termux/app/terminal/TermuxTerminalSessionClient;

.field mTermuxTerminalViewClient:Lcom/termux/app/terminal/TermuxTerminalViewClient;


# direct methods
.method public constructor <init>(Lcom/termux/view/TerminalView;Lcom/termux/app/terminal/TermuxTerminalViewClient;Lcom/termux/app/terminal/TermuxTerminalSessionClient;)V
    .locals 0
    .param p1, "terminalView"    # Lcom/termux/view/TerminalView;
    .param p2, "termuxTerminalViewClient"    # Lcom/termux/app/terminal/TermuxTerminalViewClient;
    .param p3, "termuxTerminalSessionClient"    # Lcom/termux/app/terminal/TermuxTerminalSessionClient;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "terminalView",
            "termuxTerminalViewClient",
            "termuxTerminalSessionClient"
        }
    .end annotation

    .line 24
    invoke-direct {p0, p1}, Lcom/termux/shared/terminal/io/TerminalExtraKeys;-><init>(Lcom/termux/view/TerminalView;)V

    .line 25
    iput-object p2, p0, Lcom/termux/app/terminal/io/TermuxTerminalExtraKeys;->mTermuxTerminalViewClient:Lcom/termux/app/terminal/TermuxTerminalViewClient;

    .line 26
    iput-object p3, p0, Lcom/termux/app/terminal/io/TermuxTerminalExtraKeys;->mTermuxTerminalSessionClient:Lcom/termux/app/terminal/TermuxTerminalSessionClient;

    .line 27
    return-void
.end method


# virtual methods
.method public onTerminalExtraKeyButtonClick(Landroid/view/View;Ljava/lang/String;ZZZZ)V
    .locals 3
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

    .line 32
    const-string v0, "KEYBOARD"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 33
    iget-object v0, p0, Lcom/termux/app/terminal/io/TermuxTerminalExtraKeys;->mTermuxTerminalViewClient:Lcom/termux/app/terminal/TermuxTerminalViewClient;

    if-eqz v0, :cond_4

    .line 34
    invoke-virtual {v0}, Lcom/termux/app/terminal/TermuxTerminalViewClient;->onToggleSoftKeyboardRequest()V

    goto :goto_1

    .line 35
    :cond_0
    const-string v0, "DRAWER"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 36
    iget-object v0, p0, Lcom/termux/app/terminal/io/TermuxTerminalExtraKeys;->mTermuxTerminalViewClient:Lcom/termux/app/terminal/TermuxTerminalViewClient;

    invoke-virtual {v0}, Lcom/termux/app/terminal/TermuxTerminalViewClient;->getActivity()Lcom/termux/app/TermuxActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/termux/app/TermuxActivity;->getDrawer()Landroidx/drawerlayout/widget/DrawerLayout;

    move-result-object v0

    .line 37
    .local v0, "drawerLayout":Landroidx/drawerlayout/widget/DrawerLayout;
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroidx/drawerlayout/widget/DrawerLayout;->isDrawerOpen(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 38
    invoke-virtual {v0, v1}, Landroidx/drawerlayout/widget/DrawerLayout;->closeDrawer(I)V

    goto :goto_0

    .line 40
    :cond_1
    invoke-virtual {v0, v1}, Landroidx/drawerlayout/widget/DrawerLayout;->openDrawer(I)V

    .line 41
    .end local v0    # "drawerLayout":Landroidx/drawerlayout/widget/DrawerLayout;
    :goto_0
    goto :goto_1

    :cond_2
    const-string v0, "PASTE"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 42
    iget-object v0, p0, Lcom/termux/app/terminal/io/TermuxTerminalExtraKeys;->mTermuxTerminalSessionClient:Lcom/termux/app/terminal/TermuxTerminalSessionClient;

    if-eqz v0, :cond_4

    .line 43
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/termux/app/terminal/TermuxTerminalSessionClient;->onPasteTextFromClipboard(Lcom/termux/terminal/TerminalSession;)V

    goto :goto_1

    .line 45
    :cond_3
    invoke-super/range {p0 .. p6}, Lcom/termux/shared/terminal/io/TerminalExtraKeys;->onTerminalExtraKeyButtonClick(Landroid/view/View;Ljava/lang/String;ZZZZ)V

    .line 47
    :cond_4
    :goto_1
    return-void
.end method
