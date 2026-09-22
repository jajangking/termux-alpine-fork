.class public Lcom/termux/shared/settings/preferences/TermuxFloatAppSharedPreferences;
.super Ljava/lang/Object;
.source "TermuxFloatAppSharedPreferences.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "TermuxFloatAppSharedPreferences"


# instance fields
.field private DEFAULT_FONTSIZE:I

.field private MAX_FONTSIZE:I

.field private MIN_FONTSIZE:I

.field private final mContext:Landroid/content/Context;

.field private final mMultiProcessSharedPreferences:Landroid/content/SharedPreferences;

.field private final mSharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/termux/shared/settings/preferences/TermuxFloatAppSharedPreferences;->mContext:Landroid/content/Context;

    .line 30
    invoke-static {p1}, Lcom/termux/shared/settings/preferences/TermuxFloatAppSharedPreferences;->getPrivateSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/termux/shared/settings/preferences/TermuxFloatAppSharedPreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 31
    invoke-static {p1}, Lcom/termux/shared/settings/preferences/TermuxFloatAppSharedPreferences;->getPrivateAndMultiProcessSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/termux/shared/settings/preferences/TermuxFloatAppSharedPreferences;->mMultiProcessSharedPreferences:Landroid/content/SharedPreferences;

    .line 33
    invoke-virtual {p0, p1}, Lcom/termux/shared/settings/preferences/TermuxFloatAppSharedPreferences;->setFontVariables(Landroid/content/Context;)V

    .line 34
    return-void
.end method

.method public static build(Landroid/content/Context;)Lcom/termux/shared/settings/preferences/TermuxFloatAppSharedPreferences;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "context"
        }
    .end annotation

    .line 45
    const-string v0, "com.termux.window"

    invoke-static {p0, v0}, Lcom/termux/shared/packages/PackageUtils;->getContextForPackage(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Context;

    move-result-object v0

    .line 46
    .local v0, "termuxFloatPackageContext":Landroid/content/Context;
    if-nez v0, :cond_0

    .line 47
    const/4 v1, 0x0

    return-object v1

    .line 49
    :cond_0
    new-instance v1, Lcom/termux/shared/settings/preferences/TermuxFloatAppSharedPreferences;

    invoke-direct {v1, v0}, Lcom/termux/shared/settings/preferences/TermuxFloatAppSharedPreferences;-><init>(Landroid/content/Context;)V

    return-object v1
.end method

.method public static build(Landroid/content/Context;Z)Lcom/termux/shared/settings/preferences/TermuxFloatAppSharedPreferences;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "exitAppOnError"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "context",
            "exitAppOnError"
        }
    .end annotation

    .line 62
    const-string v0, "com.termux.window"

    invoke-static {p0, v0, p1}, Lcom/termux/shared/packages/PackageUtils;->getContextForPackageOrExitApp(Landroid/content/Context;Ljava/lang/String;Z)Landroid/content/Context;

    move-result-object v0

    .line 63
    .local v0, "termuxFloatPackageContext":Landroid/content/Context;
    if-nez v0, :cond_0

    .line 64
    const/4 v1, 0x0

    return-object v1

    .line 66
    :cond_0
    new-instance v1, Lcom/termux/shared/settings/preferences/TermuxFloatAppSharedPreferences;

    invoke-direct {v1, v0}, Lcom/termux/shared/settings/preferences/TermuxFloatAppSharedPreferences;-><init>(Landroid/content/Context;)V

    return-object v1
.end method

.method private static getPrivateAndMultiProcessSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 75
    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 76
    :cond_0
    const-string v0, "com.termux.window_preferences"

    invoke-static {p0, v0}, Lcom/termux/shared/settings/preferences/SharedPreferenceUtils;->getPrivateAndMultiProcessSharedPreferences(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method private static getPrivateSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 70
    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 71
    :cond_0
    const-string v0, "com.termux.window_preferences"

    invoke-static {p0, v0}, Lcom/termux/shared/settings/preferences/SharedPreferenceUtils;->getPrivateSharedPreferences(Landroid/content/Context;Ljava/lang/String;)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public changeFontSize(Z)V
    .locals 3
    .param p1, "increase"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "increase"
        }
    .end annotation

    .line 139
    invoke-virtual {p0}, Lcom/termux/shared/settings/preferences/TermuxFloatAppSharedPreferences;->getFontSize()I

    move-result v0

    .line 141
    .local v0, "fontSize":I
    if-eqz p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    :goto_0
    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    .line 142
    iget v1, p0, Lcom/termux/shared/settings/preferences/TermuxFloatAppSharedPreferences;->MIN_FONTSIZE:I

    iget v2, p0, Lcom/termux/shared/settings/preferences/TermuxFloatAppSharedPreferences;->MAX_FONTSIZE:I

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 144
    invoke-virtual {p0, v0}, Lcom/termux/shared/settings/preferences/TermuxFloatAppSharedPreferences;->setFontSize(I)V

    .line 145
    return-void
.end method

.method public getFontSize()I
    .locals 3

    .line 130
    iget-object v0, p0, Lcom/termux/shared/settings/preferences/TermuxFloatAppSharedPreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    iget v1, p0, Lcom/termux/shared/settings/preferences/TermuxFloatAppSharedPreferences;->DEFAULT_FONTSIZE:I

    const-string v2, "fontsize"

    invoke-static {v0, v2, v1}, Lcom/termux/shared/settings/preferences/SharedPreferenceUtils;->getIntStoredAsString(Landroid/content/SharedPreferences;Ljava/lang/String;I)I

    move-result v0

    .line 131
    .local v0, "fontSize":I
    iget v1, p0, Lcom/termux/shared/settings/preferences/TermuxFloatAppSharedPreferences;->MIN_FONTSIZE:I

    iget v2, p0, Lcom/termux/shared/settings/preferences/TermuxFloatAppSharedPreferences;->MAX_FONTSIZE:I

    invoke-static {v0, v1, v2}, Lcom/termux/shared/data/DataUtils;->clamp(III)I

    move-result v1

    return v1
.end method

.method public getLogLevel(Z)I
    .locals 3
    .param p1, "readFromFile"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "readFromFile"
        }
    .end annotation

    .line 149
    const/4 v0, 0x1

    const-string v1, "log_level"

    if-eqz p1, :cond_0

    .line 150
    iget-object v2, p0, Lcom/termux/shared/settings/preferences/TermuxFloatAppSharedPreferences;->mMultiProcessSharedPreferences:Landroid/content/SharedPreferences;

    invoke-static {v2, v1, v0}, Lcom/termux/shared/settings/preferences/SharedPreferenceUtils;->getInt(Landroid/content/SharedPreferences;Ljava/lang/String;I)I

    move-result v0

    return v0

    .line 152
    :cond_0
    iget-object v2, p0, Lcom/termux/shared/settings/preferences/TermuxFloatAppSharedPreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-static {v2, v1, v0}, Lcom/termux/shared/settings/preferences/SharedPreferenceUtils;->getInt(Landroid/content/SharedPreferences;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getWindowHeight()I
    .locals 3

    .line 111
    iget-object v0, p0, Lcom/termux/shared/settings/preferences/TermuxFloatAppSharedPreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "window_height"

    const/16 v2, 0x1f4

    invoke-static {v0, v1, v2}, Lcom/termux/shared/settings/preferences/SharedPreferenceUtils;->getInt(Landroid/content/SharedPreferences;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getWindowWidth()I
    .locals 3

    .line 102
    iget-object v0, p0, Lcom/termux/shared/settings/preferences/TermuxFloatAppSharedPreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "window_width"

    const/16 v2, 0x1f4

    invoke-static {v0, v1, v2}, Lcom/termux/shared/settings/preferences/SharedPreferenceUtils;->getInt(Landroid/content/SharedPreferences;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getWindowX()I
    .locals 3

    .line 82
    iget-object v0, p0, Lcom/termux/shared/settings/preferences/TermuxFloatAppSharedPreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "window_x"

    const/16 v2, 0xc8

    invoke-static {v0, v1, v2}, Lcom/termux/shared/settings/preferences/SharedPreferenceUtils;->getInt(Landroid/content/SharedPreferences;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getWindowY()I
    .locals 3

    .line 91
    iget-object v0, p0, Lcom/termux/shared/settings/preferences/TermuxFloatAppSharedPreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "window_y"

    const/16 v2, 0xc8

    invoke-static {v0, v1, v2}, Lcom/termux/shared/settings/preferences/SharedPreferenceUtils;->getInt(Landroid/content/SharedPreferences;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public isTerminalViewKeyLoggingEnabled(Z)Z
    .locals 3
    .param p1, "readFromFile"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "readFromFile"
        }
    .end annotation

    .line 162
    const/4 v0, 0x0

    const-string v1, "terminal_view_key_logging_enabled"

    if-eqz p1, :cond_0

    .line 163
    iget-object v2, p0, Lcom/termux/shared/settings/preferences/TermuxFloatAppSharedPreferences;->mMultiProcessSharedPreferences:Landroid/content/SharedPreferences;

    invoke-static {v2, v1, v0}, Lcom/termux/shared/settings/preferences/SharedPreferenceUtils;->getBoolean(Landroid/content/SharedPreferences;Ljava/lang/String;Z)Z

    move-result v0

    return v0

    .line 165
    :cond_0
    iget-object v2, p0, Lcom/termux/shared/settings/preferences/TermuxFloatAppSharedPreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-static {v2, v1, v0}, Lcom/termux/shared/settings/preferences/SharedPreferenceUtils;->getBoolean(Landroid/content/SharedPreferences;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public setFontSize(I)V
    .locals 3
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 135
    iget-object v0, p0, Lcom/termux/shared/settings/preferences/TermuxFloatAppSharedPreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "fontsize"

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2}, Lcom/termux/shared/settings/preferences/SharedPreferenceUtils;->setIntStoredAsString(Landroid/content/SharedPreferences;Ljava/lang/String;IZ)V

    .line 136
    return-void
.end method

.method public setFontVariables(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 122
    invoke-static {p1}, Lcom/termux/shared/settings/preferences/TermuxAppSharedPreferences;->getDefaultFontSizes(Landroid/content/Context;)[I

    move-result-object v0

    .line 124
    .local v0, "sizes":[I
    const/4 v1, 0x0

    aget v1, v0, v1

    iput v1, p0, Lcom/termux/shared/settings/preferences/TermuxFloatAppSharedPreferences;->DEFAULT_FONTSIZE:I

    .line 125
    const/4 v1, 0x1

    aget v1, v0, v1

    iput v1, p0, Lcom/termux/shared/settings/preferences/TermuxFloatAppSharedPreferences;->MIN_FONTSIZE:I

    .line 126
    const/4 v1, 0x2

    aget v1, v0, v1

    iput v1, p0, Lcom/termux/shared/settings/preferences/TermuxFloatAppSharedPreferences;->MAX_FONTSIZE:I

    .line 127
    return-void
.end method

.method public setLogLevel(Landroid/content/Context;IZ)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "logLevel"    # I
    .param p3, "commitToFile"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "logLevel",
            "commitToFile"
        }
    .end annotation

    .line 156
    invoke-static {p1, p2}, Lcom/termux/shared/logger/Logger;->setLogLevel(Landroid/content/Context;I)I

    move-result p2

    .line 157
    iget-object v0, p0, Lcom/termux/shared/settings/preferences/TermuxFloatAppSharedPreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "log_level"

    invoke-static {v0, v1, p2, p3}, Lcom/termux/shared/settings/preferences/SharedPreferenceUtils;->setInt(Landroid/content/SharedPreferences;Ljava/lang/String;IZ)V

    .line 158
    return-void
.end method

.method public setTerminalViewKeyLoggingEnabled(ZZ)V
    .locals 2
    .param p1, "value"    # Z
    .param p2, "commitToFile"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "value",
            "commitToFile"
        }
    .end annotation

    .line 169
    iget-object v0, p0, Lcom/termux/shared/settings/preferences/TermuxFloatAppSharedPreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "terminal_view_key_logging_enabled"

    invoke-static {v0, v1, p1, p2}, Lcom/termux/shared/settings/preferences/SharedPreferenceUtils;->setBoolean(Landroid/content/SharedPreferences;Ljava/lang/String;ZZ)V

    .line 170
    return-void
.end method

.method public setWindowHeight(I)V
    .locals 3
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 116
    iget-object v0, p0, Lcom/termux/shared/settings/preferences/TermuxFloatAppSharedPreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "window_height"

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2}, Lcom/termux/shared/settings/preferences/SharedPreferenceUtils;->setInt(Landroid/content/SharedPreferences;Ljava/lang/String;IZ)V

    .line 117
    return-void
.end method

.method public setWindowWidth(I)V
    .locals 3
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 107
    iget-object v0, p0, Lcom/termux/shared/settings/preferences/TermuxFloatAppSharedPreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "window_width"

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2}, Lcom/termux/shared/settings/preferences/SharedPreferenceUtils;->setInt(Landroid/content/SharedPreferences;Ljava/lang/String;IZ)V

    .line 108
    return-void
.end method

.method public setWindowX(I)V
    .locals 3
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 87
    iget-object v0, p0, Lcom/termux/shared/settings/preferences/TermuxFloatAppSharedPreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "window_x"

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2}, Lcom/termux/shared/settings/preferences/SharedPreferenceUtils;->setInt(Landroid/content/SharedPreferences;Ljava/lang/String;IZ)V

    .line 88
    return-void
.end method

.method public setWindowY(I)V
    .locals 3
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 96
    iget-object v0, p0, Lcom/termux/shared/settings/preferences/TermuxFloatAppSharedPreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "window_y"

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2}, Lcom/termux/shared/settings/preferences/SharedPreferenceUtils;->setInt(Landroid/content/SharedPreferences;Ljava/lang/String;IZ)V

    .line 97
    return-void
.end method
