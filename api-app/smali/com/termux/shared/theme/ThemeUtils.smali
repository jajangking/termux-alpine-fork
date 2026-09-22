.class public abstract Lcom/termux/shared/theme/ThemeUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static getSystemAttrColor(Landroid/content/Context;I)I
    .locals 1

    const/4 v0, 0x0

    .line 66
    invoke-static {p0, p1, v0}, Lcom/termux/shared/theme/ThemeUtils;->getSystemAttrColor(Landroid/content/Context;II)I

    move-result p0

    return p0
.end method

.method public static getSystemAttrColor(Landroid/content/Context;II)I
    .locals 0

    .line 80
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    filled-new-array {p1}, [I

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object p0

    const/4 p1, 0x0

    .line 81
    invoke-virtual {p0, p1, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    .line 82
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return p1
.end method

.method public static getTextColorLink(Landroid/content/Context;)I
    .locals 1

    const v0, 0x101009b

    .line 59
    invoke-static {p0, v0}, Lcom/termux/shared/theme/ThemeUtils;->getSystemAttrColor(Landroid/content/Context;I)I

    move-result p0

    return p0
.end method

.method public static getTextColorPrimary(Landroid/content/Context;)I
    .locals 1

    const v0, 0x1010036

    .line 44
    invoke-static {p0, v0}, Lcom/termux/shared/theme/ThemeUtils;->getSystemAttrColor(Landroid/content/Context;I)I

    move-result p0

    return p0
.end method

.method public static isNightModeEnabled(Landroid/content/Context;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 23
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p0, p0, 0x30

    const/16 v1, 0x20

    if-ne p0, v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public static shouldEnableDarkTheme(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2

    .line 30
    sget-object v0, Lcom/termux/shared/theme/NightMode;->TRUE:Lcom/termux/shared/theme/NightMode;

    invoke-virtual {v0}, Lcom/termux/shared/theme/NightMode;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 32
    :cond_0
    sget-object v0, Lcom/termux/shared/theme/NightMode;->FALSE:Lcom/termux/shared/theme/NightMode;

    invoke-virtual {v0}, Lcom/termux/shared/theme/NightMode;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    return v1

    .line 34
    :cond_1
    sget-object v0, Lcom/termux/shared/theme/NightMode;->SYSTEM:Lcom/termux/shared/theme/NightMode;

    invoke-virtual {v0}, Lcom/termux/shared/theme/NightMode;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 35
    invoke-static {p0}, Lcom/termux/shared/theme/ThemeUtils;->isNightModeEnabled(Landroid/content/Context;)Z

    move-result p0

    return p0

    :cond_2
    return v1
.end method
