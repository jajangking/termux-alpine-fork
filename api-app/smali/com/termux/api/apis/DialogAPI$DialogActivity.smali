.class public Lcom/termux/api/apis/DialogAPI$DialogActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/termux/api/apis/DialogAPI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DialogActivity"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/termux/api/apis/DialogAPI$DialogActivity$InputMethodFactory;,
        Lcom/termux/api/apis/DialogAPI$DialogActivity$InputMethod;,
        Lcom/termux/api/apis/DialogAPI$DialogActivity$InputResultListener;,
        Lcom/termux/api/apis/DialogAPI$DialogActivity$InputResult;,
        Lcom/termux/api/apis/DialogAPI$DialogActivity$InputDialog;,
        Lcom/termux/api/apis/DialogAPI$DialogActivity$SpeechInputMethod;,
        Lcom/termux/api/apis/DialogAPI$DialogActivity$SpinnerInputMethod;,
        Lcom/termux/api/apis/DialogAPI$DialogActivity$BottomSheetInputMethod;,
        Lcom/termux/api/apis/DialogAPI$DialogActivity$RadioInputMethod;,
        Lcom/termux/api/apis/DialogAPI$DialogActivity$TimeInputMethod;,
        Lcom/termux/api/apis/DialogAPI$DialogActivity$TextInputMethod;,
        Lcom/termux/api/apis/DialogAPI$DialogActivity$DateInputMethod;,
        Lcom/termux/api/apis/DialogAPI$DialogActivity$CounterInputMethod;,
        Lcom/termux/api/apis/DialogAPI$DialogActivity$ConfirmInputMethod;,
        Lcom/termux/api/apis/DialogAPI$DialogActivity$CheckBoxInputMethod;,
        Lcom/termux/api/apis/DialogAPI$DialogActivity$Value;
    }
.end annotation


# instance fields
.field private mInputMethod:Lcom/termux/api/apis/DialogAPI$DialogActivity$InputMethod;

.field private volatile resultReturned:Z


# direct methods
.method public static synthetic $r8$lambda$J8oz6qynSJZ28kyDvL7HwJgadZI(Lcom/termux/api/apis/DialogAPI$DialogActivity;Landroid/content/Context;Lcom/termux/api/apis/DialogAPI$DialogActivity$InputResult;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/termux/api/apis/DialogAPI$DialogActivity;->lambda$onCreate$0(Landroid/content/Context;Lcom/termux/api/apis/DialogAPI$DialogActivity$InputResult;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fputresultReturned(Lcom/termux/api/apis/DialogAPI$DialogActivity;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/termux/api/apis/DialogAPI$DialogActivity;->resultReturned:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$smdismissDialog(Landroid/app/Dialog;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/termux/api/apis/DialogAPI$DialogActivity;->dismissDialog(Landroid/app/Dialog;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 77
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    const/4 v0, 0x0

    .line 81
    iput-boolean v0, p0, Lcom/termux/api/apis/DialogAPI$DialogActivity;->resultReturned:Z

    return-void
.end method

.method private static dismissDialog(Landroid/app/Dialog;)V
    .locals 2

    if-eqz p0, :cond_0

    .line 139
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 141
    const-string v0, "DialogActivity"

    const-string v1, "Failed tp dismiss dialog"

    invoke-static {v0, v1, p0}, Lcom/termux/shared/logger/Logger;->logStackTraceWithMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method static getInputValues(Landroid/content/Intent;)[Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    .line 149
    new-array v1, v0, [Ljava/lang/String;

    if-eqz p0, :cond_0

    .line 151
    const-string v2, "input_values"

    invoke-virtual {p0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 152
    invoke-virtual {p0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "(?<!\\\\),"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 153
    array-length v1, p0

    new-array v1, v1, [Ljava/lang/String;

    .line 156
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 157
    aget-object v2, p0, v0

    .line 158
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, "\\,"

    const-string v4, ","

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private synthetic lambda$onCreate$0(Landroid/content/Context;Lcom/termux/api/apis/DialogAPI$DialogActivity$InputResult;)V
    .locals 0

    .line 104
    invoke-virtual {p0, p1, p2}, Lcom/termux/api/apis/DialogAPI$DialogActivity;->postResult(Landroid/content/Context;Lcom/termux/api/apis/DialogAPI$DialogActivity$InputResult;)V

    .line 105
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 86
    const-string v0, "DialogActivity"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lcom/termux/shared/logger/Logger;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 89
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    .line 93
    const-string v0, "input_method"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, ""

    .line 96
    :goto_0
    invoke-static {p0}, Lcom/termux/shared/termux/theme/TermuxThemeUtils;->setAppNightMode(Landroid/content/Context;)V

    .line 97
    invoke-static {}, Lcom/termux/shared/theme/NightMode;->getAppNightMode()Lcom/termux/shared/theme/NightMode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/termux/shared/theme/NightMode;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/termux/shared/theme/ThemeUtils;->shouldEnableDarkTheme(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 99
    sget v0, Lcom/termux/api/R$style;->DialogTheme_Dark:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->setTheme(I)V

    .line 101
    :cond_1
    invoke-static {p1, p0}, Lcom/termux/api/apis/DialogAPI$DialogActivity$InputMethodFactory;->get(Ljava/lang/String;Landroidx/appcompat/app/AppCompatActivity;)Lcom/termux/api/apis/DialogAPI$DialogActivity$InputMethod;

    move-result-object v0

    iput-object v0, p0, Lcom/termux/api/apis/DialogAPI$DialogActivity;->mInputMethod:Lcom/termux/api/apis/DialogAPI$DialogActivity$InputMethod;

    if-eqz v0, :cond_2

    .line 103
    new-instance p1, Lcom/termux/api/apis/DialogAPI$DialogActivity$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0, p0}, Lcom/termux/api/apis/DialogAPI$DialogActivity$$ExternalSyntheticLambda0;-><init>(Lcom/termux/api/apis/DialogAPI$DialogActivity;Landroid/content/Context;)V

    invoke-interface {v0, p0, p1}, Lcom/termux/api/apis/DialogAPI$DialogActivity$InputMethod;->create(Landroidx/appcompat/app/AppCompatActivity;Lcom/termux/api/apis/DialogAPI$DialogActivity$InputResultListener;)V

    goto :goto_1

    .line 108
    :cond_2
    new-instance v0, Lcom/termux/api/apis/DialogAPI$DialogActivity$InputResult;

    invoke-direct {v0}, Lcom/termux/api/apis/DialogAPI$DialogActivity$InputResult;-><init>()V

    .line 109
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown Input Method: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/termux/api/apis/DialogAPI$DialogActivity$InputResult;->error:Ljava/lang/String;

    .line 110
    invoke-virtual {p0, p0, v0}, Lcom/termux/api/apis/DialogAPI$DialogActivity;->postResult(Landroid/content/Context;Lcom/termux/api/apis/DialogAPI$DialogActivity$InputResult;)V

    :goto_1
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 124
    const-string v0, "DialogActivity"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/termux/shared/logger/Logger;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    const/4 v0, 0x0

    .line 128
    invoke-virtual {p0, p0, v0}, Lcom/termux/api/apis/DialogAPI$DialogActivity;->postResult(Landroid/content/Context;Lcom/termux/api/apis/DialogAPI$DialogActivity$InputResult;)V

    .line 130
    iget-object v0, p0, Lcom/termux/api/apis/DialogAPI$DialogActivity;->mInputMethod:Lcom/termux/api/apis/DialogAPI$DialogActivity$InputMethod;

    if-eqz v0, :cond_0

    .line 131
    invoke-interface {v0}, Lcom/termux/api/apis/DialogAPI$DialogActivity$InputMethod;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 132
    invoke-static {v0}, Lcom/termux/api/apis/DialogAPI$DialogActivity;->dismissDialog(Landroid/app/Dialog;)V

    :cond_0
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2

    .line 116
    const-string v0, "DialogActivity"

    const-string v1, "onNewIntent"

    invoke-static {v0, v1}, Lcom/termux/shared/logger/Logger;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 119
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    return-void
.end method

.method protected declared-synchronized postResult(Landroid/content/Context;Lcom/termux/api/apis/DialogAPI$DialogActivity$InputResult;)V
    .locals 2

    monitor-enter p0

    .line 168
    :try_start_0
    iget-boolean v0, p0, Lcom/termux/api/apis/DialogAPI$DialogActivity;->resultReturned:Z

    if-eqz v0, :cond_0

    .line 169
    const-string p1, "DialogActivity"

    const-string p2, "Ignoring call to postResult"

    invoke-static {p1, p2}, Lcom/termux/shared/logger/Logger;->logDebug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 170
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 172
    :cond_0
    :try_start_1
    const-string v0, "DialogActivity"

    const-string v1, "postResult"

    invoke-static {v0, v1}, Lcom/termux/shared/logger/Logger;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    new-instance v1, Lcom/termux/api/apis/DialogAPI$DialogActivity$1;

    invoke-direct {v1, p0, p2}, Lcom/termux/api/apis/DialogAPI$DialogActivity$1;-><init>(Lcom/termux/api/apis/DialogAPI$DialogActivity;Lcom/termux/api/apis/DialogAPI$DialogActivity$InputResult;)V

    invoke-static {p1, v0, v1}, Lcom/termux/api/util/ResultReturner;->returnData(Ljava/lang/Object;Landroid/content/Intent;Lcom/termux/api/util/ResultReturner$ResultWriter;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 212
    monitor-exit p0

    return-void

    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method
