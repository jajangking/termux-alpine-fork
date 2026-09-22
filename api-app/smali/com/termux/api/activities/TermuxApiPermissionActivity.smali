.class public Lcom/termux/api/activities/TermuxApiPermissionActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method public static varargs checkAndRequestPermissions(Landroid/content/Context;Landroid/content/Intent;[Ljava/lang/String;)Z
    .locals 6

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 32
    array-length v1, p2

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, p2, v3

    .line 33
    invoke-static {p0, v4}, Lcom/termux/shared/android/PermissionUtils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 34
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 38
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_2

    const/4 p0, 0x1

    return p0

    .line 41
    :cond_2
    new-instance p2, Lcom/termux/api/activities/TermuxApiPermissionActivity$1;

    invoke-direct {p2, v0}, Lcom/termux/api/activities/TermuxApiPermissionActivity$1;-><init>(Ljava/util/ArrayList;)V

    invoke-static {p0, p1, p2}, Lcom/termux/api/util/ResultReturner;->returnData(Ljava/lang/Object;Landroid/content/Intent;Lcom/termux/api/util/ResultReturner$ResultWriter;)V

    .line 52
    new-instance p2, Landroid/content/Intent;

    const-class v1, Lcom/termux/api/activities/TermuxApiPermissionActivity;

    invoke-direct {p2, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000000

    .line 53
    invoke-virtual {p2, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p2

    const-string v1, "com.termux.api.permission_extra"

    .line 54
    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    move-result-object p2

    .line 55
    invoke-static {p1, p2}, Lcom/termux/api/util/ResultReturner;->copyIntentExtras(Landroid/content/Intent;Landroid/content/Intent;)V

    .line 56
    invoke-virtual {p0, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return v2
.end method


# virtual methods
.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2

    .line 63
    const-string v0, "TermuxApiPermissionActivity"

    const-string v1, "onNewIntent"

    invoke-static {v0, v1}, Lcom/termux/shared/logger/Logger;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 66
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    return-void
.end method

.method protected onResume()V
    .locals 3

    .line 71
    const-string v0, "TermuxApiPermissionActivity"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Lcom/termux/shared/logger/Logger;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 74
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.termux.api.permission_extra"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    .line 75
    new-array v2, v1, [Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lcom/termux/shared/android/PermissionUtils;->requestPermissions(Landroid/content/Context;[Ljava/lang/String;I)Z

    .line 76
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method
