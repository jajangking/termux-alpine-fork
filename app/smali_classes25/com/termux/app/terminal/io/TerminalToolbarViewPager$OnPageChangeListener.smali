.class public Lcom/termux/app/terminal/io/TerminalToolbarViewPager$OnPageChangeListener;
.super Landroidx/viewpager/widget/ViewPager$SimpleOnPageChangeListener;
.source "TerminalToolbarViewPager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/termux/app/terminal/io/TerminalToolbarViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OnPageChangeListener"
.end annotation


# instance fields
.field final mActivity:Lcom/termux/app/TermuxActivity;

.field final mTerminalToolbarViewPager:Landroidx/viewpager/widget/ViewPager;


# direct methods
.method public constructor <init>(Lcom/termux/app/TermuxActivity;Landroidx/viewpager/widget/ViewPager;)V
    .locals 0
    .param p1, "activity"    # Lcom/termux/app/TermuxActivity;
    .param p2, "viewPager"    # Landroidx/viewpager/widget/ViewPager;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "activity",
            "viewPager"
        }
    .end annotation

    .line 100
    invoke-direct {p0}, Landroidx/viewpager/widget/ViewPager$SimpleOnPageChangeListener;-><init>()V

    .line 101
    iput-object p1, p0, Lcom/termux/app/terminal/io/TerminalToolbarViewPager$OnPageChangeListener;->mActivity:Lcom/termux/app/TermuxActivity;

    .line 102
    iput-object p2, p0, Lcom/termux/app/terminal/io/TerminalToolbarViewPager$OnPageChangeListener;->mTerminalToolbarViewPager:Landroidx/viewpager/widget/ViewPager;

    .line 103
    return-void
.end method


# virtual methods
.method public onPageSelected(I)V
    .locals 2
    .param p1, "position"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    .line 107
    if-nez p1, :cond_0

    .line 108
    iget-object v0, p0, Lcom/termux/app/terminal/io/TerminalToolbarViewPager$OnPageChangeListener;->mActivity:Lcom/termux/app/TermuxActivity;

    invoke-virtual {v0}, Lcom/termux/app/TermuxActivity;->getTerminalView()Lcom/termux/view/TerminalView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/termux/view/TerminalView;->requestFocus()Z

    goto :goto_0

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/termux/app/terminal/io/TerminalToolbarViewPager$OnPageChangeListener;->mTerminalToolbarViewPager:Landroidx/viewpager/widget/ViewPager;

    const v1, 0x7f08018f

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 111
    .local v0, "editText":Landroid/widget/EditText;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 113
    .end local v0    # "editText":Landroid/widget/EditText;
    :cond_1
    :goto_0
    return-void
.end method
