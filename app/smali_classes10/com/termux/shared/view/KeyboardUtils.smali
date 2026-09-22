.class public Lcom/termux/shared/view/KeyboardUtils;
.super Ljava/lang/Object;
.source "KeyboardUtils.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "KeyboardUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static areDisableSoftKeyboardFlagsSet(Landroid/app/Activity;)Z
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "activity"
        }
    .end annotation

    .line 96
    const/4 v0, 0x0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 97
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x20000

    and-int/2addr v1, v2

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0

    .line 96
    :cond_2
    :goto_0
    return v0
.end method

.method public static clearDisableSoftKeyboardFlags(Landroid/app/Activity;)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "activity"
        }
    .end annotation

    .line 91
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 92
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x20000

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 93
    :cond_0
    return-void
.end method

.method public static disableSoftKeyboard(Landroid/app/Activity;Landroid/view/View;)V
    .locals 0
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "view"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "activity",
            "view"
        }
    .end annotation

    .line 80
    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 81
    :cond_0
    invoke-static {p0, p1}, Lcom/termux/shared/view/KeyboardUtils;->hideSoftKeyboard(Landroid/content/Context;Landroid/view/View;)V

    .line 82
    invoke-static {p0}, Lcom/termux/shared/view/KeyboardUtils;->setDisableSoftKeyboardFlags(Landroid/app/Activity;)V

    .line 83
    return-void

    .line 80
    :cond_1
    :goto_0
    return-void
.end method

.method public static hideSoftKeyboard(Landroid/content/Context;Landroid/view/View;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "view"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "context",
            "view"
        }
    .end annotation

    .line 73
    if-eqz p0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    .line 74
    :cond_0
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 75
    .local v0, "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_1

    .line 76
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 77
    :cond_1
    return-void

    .line 73
    .end local v0    # "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    :cond_2
    :goto_0
    return-void
.end method

.method public static isHardKeyboardConnected(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "context"
        }
    .end annotation

    .line 148
    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 150
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 151
    .local v1, "config":Landroid/content/res/Configuration;
    iget v2, v1, Landroid/content/res/Configuration;->keyboard:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    iget v2, v1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    if-ne v2, v3, :cond_2

    :cond_1
    move v0, v3

    :cond_2
    return v0
.end method

.method public static isSoftKeyboardVisible(Landroid/app/Activity;)Z
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "activity"
        }
    .end annotation

    .line 122
    const-string v0, "KeyboardUtils"

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 123
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v1

    .line 124
    .local v1, "insets":Landroid/view/WindowInsets;
    if-eqz v1, :cond_0

    .line 125
    invoke-static {v1}, Landroidx/core/view/WindowInsetsCompat;->toWindowInsetsCompat(Landroid/view/WindowInsets;)Landroidx/core/view/WindowInsetsCompat;

    move-result-object v2

    .line 126
    .local v2, "insetsCompat":Landroidx/core/view/WindowInsetsCompat;
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->ime()I

    move-result v3

    invoke-virtual {v2, v3}, Landroidx/core/view/WindowInsetsCompat;->isVisible(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 127
    const-string v3, "Soft keyboard visible"

    invoke-static {v0, v3}, Lcom/termux/shared/logger/Logger;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    const/4 v0, 0x1

    return v0

    .line 133
    .end local v1    # "insets":Landroid/view/WindowInsets;
    .end local v2    # "insetsCompat":Landroidx/core/view/WindowInsetsCompat;
    :cond_0
    const-string v1, "Soft keyboard not visible"

    invoke-static {v0, v1}, Lcom/termux/shared/logger/Logger;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    const/4 v0, 0x0

    return v0
.end method

.method public static setDisableSoftKeyboardFlags(Landroid/app/Activity;)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "activity"
        }
    .end annotation

    .line 86
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 87
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x20000

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 88
    :cond_0
    return-void
.end method

.method public static setSoftInputModeAdjustResize(Landroid/app/Activity;)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "activity"
        }
    .end annotation

    .line 110
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 111
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 112
    :cond_0
    return-void
.end method

.method public static setSoftKeyboardAlwaysHiddenFlags(Landroid/app/Activity;)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "activity"
        }
    .end annotation

    .line 101
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 102
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 103
    :cond_0
    return-void
.end method

.method public static setSoftKeyboardVisibility(Ljava/lang/Runnable;Landroid/app/Activity;Landroid/view/View;Z)V
    .locals 2
    .param p0, "showSoftKeyboardRunnable"    # Ljava/lang/Runnable;
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "visible"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "showSoftKeyboardRunnable",
            "activity",
            "view",
            "visible"
        }
    .end annotation

    .line 22
    if-eqz p3, :cond_0

    .line 25
    const-wide/16 v0, 0x1f4

    invoke-virtual {p2, p0, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 27
    :cond_0
    invoke-virtual {p2, p0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 28
    invoke-static {p1, p2}, Lcom/termux/shared/view/KeyboardUtils;->hideSoftKeyboard(Landroid/content/Context;Landroid/view/View;)V

    .line 30
    :goto_0
    return-void
.end method

.method public static shouldSoftKeyboardBeDisabled(Landroid/content/Context;ZZ)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "isSoftKeyboardEnabled"    # Z
    .param p2, "isSoftKeyboardEnabledOnlyIfNoHardware"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "context",
            "isSoftKeyboardEnabled",
            "isSoftKeyboardEnabledOnlyIfNoHardware"
        }
    .end annotation

    .line 163
    if-nez p1, :cond_0

    .line 164
    const/4 v0, 0x1

    return v0

    .line 185
    :cond_0
    if-eqz p2, :cond_1

    .line 186
    invoke-static {p0}, Lcom/termux/shared/view/KeyboardUtils;->isHardKeyboardConnected(Landroid/content/Context;)Z

    move-result v0

    .line 187
    .local v0, "isHardKeyboardConnected":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Hardware keyboard connected="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "KeyboardUtils"

    invoke-static {v2, v1}, Lcom/termux/shared/logger/Logger;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    return v0

    .line 190
    .end local v0    # "isHardKeyboardConnected":Z
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static showSoftKeyboard(Landroid/content/Context;Landroid/view/View;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "view"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "context",
            "view"
        }
    .end annotation

    .line 66
    if-eqz p0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    .line 67
    :cond_0
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 68
    .local v0, "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_1

    .line 69
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 70
    :cond_1
    return-void

    .line 66
    .end local v0    # "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    :cond_2
    :goto_0
    return-void
.end method

.method public static toggleSoftKeyboard(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "context"
        }
    .end annotation

    .line 43
    if-nez p0, :cond_0

    return-void

    .line 44
    :cond_0
    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 45
    .local v0, "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_1

    .line 46
    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    .line 47
    :cond_1
    return-void
.end method
