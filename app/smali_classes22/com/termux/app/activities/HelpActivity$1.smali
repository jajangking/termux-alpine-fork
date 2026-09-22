.class Lcom/termux/app/activities/HelpActivity$1;
.super Landroid/webkit/WebViewClient;
.source "HelpActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/termux/app/activities/HelpActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/termux/app/activities/HelpActivity;

.field final synthetic val$progressLayout:Landroid/widget/RelativeLayout;


# direct methods
.method constructor <init>(Lcom/termux/app/activities/HelpActivity;Landroid/widget/RelativeLayout;)V
    .locals 0
    .param p1, "this$0"    # Lcom/termux/app/activities/HelpActivity;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$progressLayout"
        }
    .end annotation

    .line 41
    iput-object p1, p0, Lcom/termux/app/activities/HelpActivity$1;->this$0:Lcom/termux/app/activities/HelpActivity;

    iput-object p2, p0, Lcom/termux/app/activities/HelpActivity$1;->val$progressLayout:Landroid/widget/RelativeLayout;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "url"
        }
    .end annotation

    .line 62
    iget-object v0, p0, Lcom/termux/app/activities/HelpActivity$1;->this$0:Lcom/termux/app/activities/HelpActivity;

    iget-object v1, v0, Lcom/termux/app/activities/HelpActivity;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0, v1}, Lcom/termux/app/activities/HelpActivity;->setContentView(Landroid/view/View;)V

    .line 63
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 5
    .param p1, "view"    # Landroid/webkit/WebView;
    .param p2, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "url"
        }
    .end annotation

    .line 44
    const-string v0, "https://wiki.termux.com"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    const-string v0, "https://wiki.termux.com/"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 51
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/termux/app/activities/HelpActivity$1;->this$0:Lcom/termux/app/activities/HelpActivity;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v3, 0x10000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/termux/app/activities/HelpActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    nop

    .line 57
    const/4 v0, 0x1

    return v0

    .line 52
    :catch_0
    move-exception v0

    .line 54
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    iget-object v2, p0, Lcom/termux/app/activities/HelpActivity$1;->this$0:Lcom/termux/app/activities/HelpActivity;

    iget-object v3, p0, Lcom/termux/app/activities/HelpActivity$1;->val$progressLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v3}, Lcom/termux/app/activities/HelpActivity;->setContentView(Landroid/view/View;)V

    .line 55
    return v1

    .line 46
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/termux/app/activities/HelpActivity$1;->this$0:Lcom/termux/app/activities/HelpActivity;

    iget-object v2, p0, Lcom/termux/app/activities/HelpActivity$1;->val$progressLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Lcom/termux/app/activities/HelpActivity;->setContentView(Landroid/view/View;)V

    .line 47
    return v1
.end method
