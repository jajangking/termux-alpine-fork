.class public abstract Lcom/termux/shared/termux/theme/TermuxThemeUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static setAppNightMode(Landroid/content/Context;)V
    .locals 0

    .line 17
    invoke-static {p0}, Lcom/termux/shared/termux/settings/properties/TermuxSharedProperties;->getNightMode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/termux/shared/theme/NightMode;->setAppNightMode(Ljava/lang/String;)V

    return-void
.end method
