.class public Lcom/termux/app/terminal/TermuxSessionsListViewController;
.super Landroid/widget/ArrayAdapter;
.source "TermuxSessionsListViewController.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Lcom/termux/shared/shell/TermuxSession;",
        ">;",
        "Landroid/widget/AdapterView$OnItemClickListener;",
        "Landroid/widget/AdapterView$OnItemLongClickListener;"
    }
.end annotation


# instance fields
.field final boldSpan:Landroid/text/style/StyleSpan;

.field final italicSpan:Landroid/text/style/StyleSpan;

.field final mActivity:Lcom/termux/app/TermuxActivity;


# direct methods
.method public constructor <init>(Lcom/termux/app/TermuxActivity;Ljava/util/List;)V
    .locals 2
    .param p1, "activity"    # Lcom/termux/app/TermuxActivity;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "activity",
            "sessionList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/termux/app/TermuxActivity;",
            "Ljava/util/List<",
            "Lcom/termux/shared/shell/TermuxSession;",
            ">;)V"
        }
    .end annotation

    .line 36
    .local p2, "sessionList":Ljava/util/List;, "Ljava/util/List<Lcom/termux/shared/shell/TermuxSession;>;"
    invoke-virtual {p1}, Lcom/termux/app/TermuxActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b0033

    invoke-direct {p0, v0, v1, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 32
    new-instance v0, Landroid/text/style/StyleSpan;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/text/style/StyleSpan;-><init>(I)V

    iput-object v0, p0, Lcom/termux/app/terminal/TermuxSessionsListViewController;->boldSpan:Landroid/text/style/StyleSpan;

    .line 33
    new-instance v0, Landroid/text/style/StyleSpan;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/text/style/StyleSpan;-><init>(I)V

    iput-object v0, p0, Lcom/termux/app/terminal/TermuxSessionsListViewController;->italicSpan:Landroid/text/style/StyleSpan;

    .line 37
    iput-object p1, p0, Lcom/termux/app/terminal/TermuxSessionsListViewController;->mActivity:Lcom/termux/app/TermuxActivity;

    .line 38
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 17
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "position",
            "convertView",
            "parent"
        }
    .end annotation

    .line 44
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 45
    .local v1, "sessionRowView":Landroid/view/View;
    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 46
    iget-object v3, v0, Lcom/termux/app/terminal/TermuxSessionsListViewController;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-virtual {v3}, Lcom/termux/app/TermuxActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    .line 47
    .local v3, "inflater":Landroid/view/LayoutInflater;
    const v4, 0x7f0b0033

    move-object/from16 v5, p3

    invoke-virtual {v3, v4, v5, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    .line 45
    .end local v3    # "inflater":Landroid/view/LayoutInflater;
    :cond_0
    move-object/from16 v5, p3

    .line 50
    :goto_0
    const v3, 0x7f08015a

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 52
    .local v3, "sessionTitleView":Landroid/widget/TextView;
    invoke-virtual/range {p0 .. p1}, Lcom/termux/app/terminal/TermuxSessionsListViewController;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/termux/shared/shell/TermuxSession;

    invoke-virtual {v4}, Lcom/termux/shared/shell/TermuxSession;->getTerminalSession()Lcom/termux/terminal/TerminalSession;

    move-result-object v4

    .line 53
    .local v4, "sessionAtRow":Lcom/termux/terminal/TerminalSession;
    if-nez v4, :cond_1

    .line 54
    const-string v2, "null session"

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    return-object v1

    .line 58
    :cond_1
    iget-object v6, v0, Lcom/termux/app/terminal/TermuxSessionsListViewController;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-virtual {v6}, Lcom/termux/app/TermuxActivity;->getProperties()Lcom/termux/app/settings/properties/TermuxAppSharedProperties;

    move-result-object v6

    invoke-virtual {v6}, Lcom/termux/app/settings/properties/TermuxAppSharedProperties;->isUsingBlackUI()Z

    move-result v6

    .line 60
    .local v6, "isUsingBlackUI":Z
    if-eqz v6, :cond_2

    .line 61
    iget-object v7, v0, Lcom/termux/app/terminal/TermuxSessionsListViewController;->mActivity:Lcom/termux/app/TermuxActivity;

    const v8, 0x7f070097

    .line 62
    invoke-static {v7, v8}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 61
    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 66
    :cond_2
    iget-object v7, v4, Lcom/termux/terminal/TerminalSession;->mSessionName:Ljava/lang/String;

    .line 67
    .local v7, "name":Ljava/lang/String;
    invoke-virtual {v4}, Lcom/termux/terminal/TerminalSession;->getTitle()Ljava/lang/String;

    move-result-object v8

    .line 69
    .local v8, "sessionTitle":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    add-int/lit8 v10, p1, 0x1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "] "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 70
    .local v9, "numberPart":Ljava/lang/String;
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    const-string v11, ""

    if-eqz v10, :cond_3

    move-object v10, v11

    goto :goto_1

    :cond_3
    move-object v10, v7

    .line 71
    .local v10, "sessionNamePart":Ljava/lang/String;
    :goto_1
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_4

    goto :goto_3

    :cond_4
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_5

    goto :goto_2

    :cond_5
    const-string v11, "\n"

    :goto_2
    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 73
    .local v11, "sessionTitlePart":Ljava/lang/String;
    :goto_3
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 74
    .local v12, "fullSessionTitle":Ljava/lang/String;
    new-instance v13, Landroid/text/SpannableString;

    invoke-direct {v13, v12}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 75
    .local v13, "fullSessionTitleStyled":Landroid/text/SpannableString;
    iget-object v14, v0, Lcom/termux/app/terminal/TermuxSessionsListViewController;->boldSpan:Landroid/text/style/StyleSpan;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v15

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v16

    add-int v15, v15, v16

    const/16 v5, 0x21

    invoke-virtual {v13, v14, v2, v15, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 76
    iget-object v2, v0, Lcom/termux/app/terminal/TermuxSessionsListViewController;->italicSpan:Landroid/text/style/StyleSpan;

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v14

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v15

    add-int/2addr v14, v15

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v15

    invoke-virtual {v13, v2, v14, v15, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 78
    invoke-virtual {v3, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    invoke-virtual {v4}, Lcom/termux/terminal/TerminalSession;->isRunning()Z

    move-result v2

    .line 82
    .local v2, "sessionRunning":Z
    if-eqz v2, :cond_6

    .line 83
    invoke-virtual {v3}, Landroid/widget/TextView;->getPaintFlags()I

    move-result v5

    and-int/lit8 v5, v5, -0x11

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setPaintFlags(I)V

    goto :goto_4

    .line 85
    :cond_6
    invoke-virtual {v3}, Landroid/widget/TextView;->getPaintFlags()I

    move-result v5

    or-int/lit8 v5, v5, 0x10

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setPaintFlags(I)V

    .line 87
    :goto_4
    if-eqz v6, :cond_7

    const/4 v5, -0x1

    goto :goto_5

    :cond_7
    const/high16 v5, -0x1000000

    .line 88
    .local v5, "defaultColor":I
    :goto_5
    if-nez v2, :cond_9

    invoke-virtual {v4}, Lcom/termux/terminal/TerminalSession;->getExitStatus()I

    move-result v14

    if-nez v14, :cond_8

    goto :goto_6

    :cond_8
    const/high16 v14, -0x10000

    goto :goto_7

    :cond_9
    :goto_6
    move v14, v5

    .line 89
    .local v14, "color":I
    :goto_7
    invoke-virtual {v3, v14}, Landroid/widget/TextView;->setTextColor(I)V

    .line 90
    return-object v1
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "parent",
            "view",
            "position",
            "id"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 95
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p0, p3}, Lcom/termux/app/terminal/TermuxSessionsListViewController;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/termux/shared/shell/TermuxSession;

    .line 96
    .local v0, "clickedSession":Lcom/termux/shared/shell/TermuxSession;
    iget-object v1, p0, Lcom/termux/app/terminal/TermuxSessionsListViewController;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-virtual {v1}, Lcom/termux/app/TermuxActivity;->getTermuxTerminalSessionClient()Lcom/termux/app/terminal/TermuxTerminalSessionClient;

    move-result-object v1

    invoke-virtual {v0}, Lcom/termux/shared/shell/TermuxSession;->getTerminalSession()Lcom/termux/terminal/TerminalSession;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/termux/app/terminal/TermuxTerminalSessionClient;->setCurrentSession(Lcom/termux/terminal/TerminalSession;)V

    .line 97
    iget-object v1, p0, Lcom/termux/app/terminal/TermuxSessionsListViewController;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-virtual {v1}, Lcom/termux/app/TermuxActivity;->getDrawer()Landroidx/drawerlayout/widget/DrawerLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/drawerlayout/widget/DrawerLayout;->closeDrawers()V

    .line 98
    return-void
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 3
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "parent",
            "view",
            "position",
            "id"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .line 102
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p0, p3}, Lcom/termux/app/terminal/TermuxSessionsListViewController;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/termux/shared/shell/TermuxSession;

    .line 103
    .local v0, "selectedSession":Lcom/termux/shared/shell/TermuxSession;
    iget-object v1, p0, Lcom/termux/app/terminal/TermuxSessionsListViewController;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-virtual {v1}, Lcom/termux/app/TermuxActivity;->getTermuxTerminalSessionClient()Lcom/termux/app/terminal/TermuxTerminalSessionClient;

    move-result-object v1

    invoke-virtual {v0}, Lcom/termux/shared/shell/TermuxSession;->getTerminalSession()Lcom/termux/terminal/TerminalSession;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/termux/app/terminal/TermuxTerminalSessionClient;->renameSession(Lcom/termux/terminal/TerminalSession;)V

    .line 104
    const/4 v1, 0x1

    return v1
.end method
