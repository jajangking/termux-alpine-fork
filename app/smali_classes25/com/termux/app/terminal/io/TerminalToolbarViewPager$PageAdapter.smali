.class public Lcom/termux/app/terminal/io/TerminalToolbarViewPager$PageAdapter;
.super Landroidx/viewpager/widget/PagerAdapter;
.source "TerminalToolbarViewPager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/termux/app/terminal/io/TerminalToolbarViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PageAdapter"
.end annotation


# instance fields
.field final mActivity:Lcom/termux/app/TermuxActivity;

.field mSavedTextInput:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/termux/app/TermuxActivity;Ljava/lang/String;)V
    .locals 0
    .param p1, "activity"    # Lcom/termux/app/TermuxActivity;
    .param p2, "savedTextInput"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "activity",
            "savedTextInput"
        }
    .end annotation

    .line 24
    invoke-direct {p0}, Landroidx/viewpager/widget/PagerAdapter;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/termux/app/terminal/io/TerminalToolbarViewPager$PageAdapter;->mActivity:Lcom/termux/app/TermuxActivity;

    .line 26
    iput-object p2, p0, Lcom/termux/app/terminal/io/TerminalToolbarViewPager$PageAdapter;->mSavedTextInput:Ljava/lang/String;

    .line 27
    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 1
    .param p1, "collection"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I
    .param p3, "view"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "collection",
            "position",
            "view"
        }
    .end annotation

    .line 88
    move-object v0, p3

    check-cast v0, Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 89
    return-void
.end method

.method public getCount()I
    .locals 1

    .line 31
    const/4 v0, 0x2

    return v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 7
    .param p1, "collection"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "collection",
            "position"
        }
    .end annotation

    .line 42
    iget-object v0, p0, Lcom/termux/app/terminal/io/TerminalToolbarViewPager$PageAdapter;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 44
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const/4 v1, 0x0

    if-nez p2, :cond_1

    .line 45
    const v2, 0x7f0b008c

    invoke-virtual {v0, v2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 46
    .local v1, "layout":Landroid/view/View;
    move-object v2, v1

    check-cast v2, Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysView;

    .line 47
    .local v2, "extraKeysView":Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysView;
    new-instance v3, Lcom/termux/app/terminal/io/TermuxTerminalExtraKeys;

    iget-object v4, p0, Lcom/termux/app/terminal/io/TerminalToolbarViewPager$PageAdapter;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-virtual {v4}, Lcom/termux/app/TermuxActivity;->getTerminalView()Lcom/termux/view/TerminalView;

    move-result-object v4

    iget-object v5, p0, Lcom/termux/app/terminal/io/TerminalToolbarViewPager$PageAdapter;->mActivity:Lcom/termux/app/TermuxActivity;

    .line 48
    invoke-virtual {v5}, Lcom/termux/app/TermuxActivity;->getTermuxTerminalViewClient()Lcom/termux/app/terminal/TermuxTerminalViewClient;

    move-result-object v5

    iget-object v6, p0, Lcom/termux/app/terminal/io/TerminalToolbarViewPager$PageAdapter;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-virtual {v6}, Lcom/termux/app/TermuxActivity;->getTermuxTerminalSessionClient()Lcom/termux/app/terminal/TermuxTerminalSessionClient;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6}, Lcom/termux/app/terminal/io/TermuxTerminalExtraKeys;-><init>(Lcom/termux/view/TerminalView;Lcom/termux/app/terminal/TermuxTerminalViewClient;Lcom/termux/app/terminal/TermuxTerminalSessionClient;)V

    .line 47
    invoke-virtual {v2, v3}, Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysView;->setExtraKeysViewClient(Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysView$IExtraKeysView;)V

    .line 49
    iget-object v3, p0, Lcom/termux/app/terminal/io/TerminalToolbarViewPager$PageAdapter;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-virtual {v3}, Lcom/termux/app/TermuxActivity;->getProperties()Lcom/termux/app/settings/properties/TermuxAppSharedProperties;

    move-result-object v3

    invoke-virtual {v3}, Lcom/termux/app/settings/properties/TermuxAppSharedProperties;->shouldExtraKeysTextBeAllCaps()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysView;->setButtonTextAllCaps(Z)V

    .line 50
    iget-object v3, p0, Lcom/termux/app/terminal/io/TerminalToolbarViewPager$PageAdapter;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-virtual {v3, v2}, Lcom/termux/app/TermuxActivity;->setExtraKeysView(Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysView;)V

    .line 51
    iget-object v3, p0, Lcom/termux/app/terminal/io/TerminalToolbarViewPager$PageAdapter;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-virtual {v3}, Lcom/termux/app/TermuxActivity;->getProperties()Lcom/termux/app/settings/properties/TermuxAppSharedProperties;

    move-result-object v3

    invoke-virtual {v3}, Lcom/termux/app/settings/properties/TermuxAppSharedProperties;->getExtraKeysInfo()Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysView;->reload(Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysInfo;)V

    .line 54
    iget-object v3, p0, Lcom/termux/app/terminal/io/TerminalToolbarViewPager$PageAdapter;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-virtual {v3}, Lcom/termux/app/TermuxActivity;->getProperties()Lcom/termux/app/settings/properties/TermuxAppSharedProperties;

    move-result-object v3

    invoke-virtual {v3}, Lcom/termux/app/settings/properties/TermuxAppSharedProperties;->isUsingFullScreen()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/termux/app/terminal/io/TerminalToolbarViewPager$PageAdapter;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-virtual {v3}, Lcom/termux/app/TermuxActivity;->getProperties()Lcom/termux/app/settings/properties/TermuxAppSharedProperties;

    move-result-object v3

    invoke-virtual {v3}, Lcom/termux/app/settings/properties/TermuxAppSharedProperties;->isUsingFullScreenWorkAround()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 55
    iget-object v3, p0, Lcom/termux/app/terminal/io/TerminalToolbarViewPager$PageAdapter;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-static {v3}, Lcom/termux/app/terminal/io/FullScreenWorkAround;->apply(Lcom/termux/app/TermuxActivity;)V

    .line 58
    .end local v2    # "extraKeysView":Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysView;
    :cond_0
    goto :goto_0

    .line 59
    .end local v1    # "layout":Landroid/view/View;
    :cond_1
    const v2, 0x7f0b008d

    invoke-virtual {v0, v2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 60
    .restart local v1    # "layout":Landroid/view/View;
    const v2, 0x7f08018f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 62
    .local v2, "editText":Landroid/widget/EditText;
    iget-object v3, p0, Lcom/termux/app/terminal/io/TerminalToolbarViewPager$PageAdapter;->mSavedTextInput:Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 63
    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 64
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/termux/app/terminal/io/TerminalToolbarViewPager$PageAdapter;->mSavedTextInput:Ljava/lang/String;

    .line 67
    :cond_2
    new-instance v3, Lcom/termux/app/terminal/io/-$$Lambda$TerminalToolbarViewPager$PageAdapter$WYFYJ0aUDU7kI-0JqFuWChVAg8I;

    invoke-direct {v3, p0, v2}, Lcom/termux/app/terminal/io/-$$Lambda$TerminalToolbarViewPager$PageAdapter$WYFYJ0aUDU7kI-0JqFuWChVAg8I;-><init>(Lcom/termux/app/terminal/io/TerminalToolbarViewPager$PageAdapter;Landroid/widget/EditText;)V

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 82
    .end local v2    # "editText":Landroid/widget/EditText;
    :goto_0
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 83
    return-object v1
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "object"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "object"
        }
    .end annotation

    .line 36
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public synthetic lambda$instantiateItem$0$TerminalToolbarViewPager$PageAdapter(Landroid/widget/EditText;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "editText"    # Landroid/widget/EditText;
    .param p2, "v"    # Landroid/widget/TextView;
    .param p3, "actionId"    # I
    .param p4, "event"    # Landroid/view/KeyEvent;

    .line 68
    iget-object v0, p0, Lcom/termux/app/terminal/io/TerminalToolbarViewPager$PageAdapter;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-virtual {v0}, Lcom/termux/app/TermuxActivity;->getCurrentSession()Lcom/termux/terminal/TerminalSession;

    move-result-object v0

    .line 69
    .local v0, "session":Lcom/termux/terminal/TerminalSession;
    if-eqz v0, :cond_2

    .line 70
    invoke-virtual {v0}, Lcom/termux/terminal/TerminalSession;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 71
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 72
    .local v1, "textToSend":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    const-string v1, "\r"

    .line 73
    :cond_0
    invoke-virtual {v0, v1}, Lcom/termux/terminal/TerminalSession;->write(Ljava/lang/String;)V

    .line 74
    .end local v1    # "textToSend":Ljava/lang/String;
    goto :goto_0

    .line 75
    :cond_1
    iget-object v1, p0, Lcom/termux/app/terminal/io/TerminalToolbarViewPager$PageAdapter;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-virtual {v1}, Lcom/termux/app/TermuxActivity;->getTermuxTerminalSessionClient()Lcom/termux/app/terminal/TermuxTerminalSessionClient;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/termux/app/terminal/TermuxTerminalSessionClient;->removeFinishedSession(Lcom/termux/terminal/TerminalSession;)V

    .line 77
    :goto_0
    const-string v1, ""

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 79
    :cond_2
    const/4 v1, 0x1

    return v1
.end method
