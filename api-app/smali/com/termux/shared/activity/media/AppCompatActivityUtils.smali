.class public abstract Lcom/termux/shared/activity/media/AppCompatActivityUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static setNightMode(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/String;Z)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 28
    :cond_0
    invoke-static {p1}, Lcom/termux/shared/theme/NightMode;->modeOf(Ljava/lang/String;)Lcom/termux/shared/theme/NightMode;

    move-result-object p1

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    if-eqz p0, :cond_2

    .line 32
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getDelegate()Landroidx/appcompat/app/AppCompatDelegate;

    move-result-object p0

    invoke-virtual {p1}, Lcom/termux/shared/theme/NightMode;->getMode()I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatDelegate;->setLocalNightMode(I)V

    goto :goto_0

    .line 35
    :cond_1
    invoke-virtual {p1}, Lcom/termux/shared/theme/NightMode;->getMode()I

    move-result p0

    invoke-static {p0}, Landroidx/appcompat/app/AppCompatDelegate;->setDefaultNightMode(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static setShowBackButtonInActionBar(Landroidx/appcompat/app/AppCompatActivity;Z)V
    .locals 0

    .line 108
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p0

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 111
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 112
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 114
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 115
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static setToolbar(Landroidx/appcompat/app/AppCompatActivity;I)V
    .locals 0

    .line 47
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/Toolbar;

    if-eqz p1, :cond_0

    .line 49
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    :cond_0
    return-void
.end method

.method public static setToolbarTitle(Landroidx/appcompat/app/AppCompatActivity;ILjava/lang/String;I)V
    .locals 1

    .line 61
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/appcompat/widget/Toolbar;

    if-eqz p1, :cond_1

    .line 64
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 66
    invoke-virtual {v0, p2}, Landroidx/appcompat/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    if-eqz p3, :cond_1

    .line 70
    :try_start_0
    invoke-virtual {p1, p0, p3}, Landroidx/appcompat/widget/Toolbar;->setTitleTextAppearance(Landroid/content/Context;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 72
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Failed to set toolbar title appearance to style resource id "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AppCompatActivityUtils"

    invoke-static {p2, p1, p0}, Lcom/termux/shared/logger/Logger;->logStackTraceWithMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method
