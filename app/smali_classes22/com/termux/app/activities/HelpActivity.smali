.class public final Lcom/termux/app/activities/HelpActivity;
.super Landroid/app/Activity;
.source "HelpActivity.java"


# instance fields
.field mWebView:Landroid/webkit/WebView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/termux/app/activities/HelpActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/termux/app/activities/HelpActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    goto :goto_0

    .line 73
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 75
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 24
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 26
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 27
    .local v0, "progressLayout":Landroid/widget/RelativeLayout;
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 28
    .local v1, "lParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 29
    new-instance v2, Landroid/widget/ProgressBar;

    invoke-direct {v2, p0}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    .line 30
    .local v2, "progressBar":Landroid/widget/ProgressBar;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 31
    invoke-virtual {v2, v1}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 32
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 34
    new-instance v4, Landroid/webkit/WebView;

    invoke-direct {v4, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/termux/app/activities/HelpActivity;->mWebView:Landroid/webkit/WebView;

    .line 35
    invoke-virtual {v4}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v4

    .line 36
    .local v4, "settings":Landroid/webkit/WebSettings;
    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 37
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/webkit/WebSettings;->setAppCacheEnabled(Z)V

    .line 38
    invoke-virtual {p0, v0}, Lcom/termux/app/activities/HelpActivity;->setContentView(Landroid/view/View;)V

    .line 39
    iget-object v5, p0, Lcom/termux/app/activities/HelpActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v5, v3}, Landroid/webkit/WebView;->clearCache(Z)V

    .line 41
    iget-object v3, p0, Lcom/termux/app/activities/HelpActivity;->mWebView:Landroid/webkit/WebView;

    new-instance v5, Lcom/termux/app/activities/HelpActivity$1;

    invoke-direct {v5, p0, v0}, Lcom/termux/app/activities/HelpActivity$1;-><init>(Lcom/termux/app/activities/HelpActivity;Landroid/widget/RelativeLayout;)V

    invoke-virtual {v3, v5}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 65
    iget-object v3, p0, Lcom/termux/app/activities/HelpActivity;->mWebView:Landroid/webkit/WebView;

    const-string v5, "https://wiki.termux.com"

    invoke-virtual {v3, v5}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 66
    return-void
.end method
