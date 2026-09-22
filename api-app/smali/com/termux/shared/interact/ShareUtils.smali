.class public abstract Lcom/termux/shared/interact/ShareUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static copyTextToClipboard(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 92
    invoke-static {p0, v0, p1, p2}, Lcom/termux/shared/interact/ShareUtils;->copyTextToClipboard(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static copyTextToClipboard(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    if-eqz p0, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    .line 108
    :cond_0
    const-string v0, "clipboard"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    if-nez v0, :cond_1

    return-void

    :cond_1
    const v1, 0x19000

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 112
    invoke-static {p2, v1, v2, v3, v3}, Lcom/termux/shared/data/DataUtils;->getTruncatedCommandOutput(Ljava/lang/String;IZZZ)Ljava/lang/String;

    move-result-object p2

    .line 111
    invoke-static {p1, p2}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    if-eqz p3, :cond_2

    .line 115
    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    .line 116
    invoke-static {p0, p3, v2}, Lcom/termux/shared/logger/Logger;->showToast(Landroid/content/Context;Ljava/lang/String;Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static openSystemAppChooser(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    .line 42
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CHOOSER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 43
    const-string v1, "android.intent.extra.INTENT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 44
    const-string p1, "android.intent.extra.TITLE"

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p1, 0x10000000

    .line 45
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 47
    :try_start_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 49
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Failed to open system chooser for:\n"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/termux/shared/data/IntentUtils;->getIntentString(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ShareUtils"

    invoke-static {p2, p1, p0}, Lcom/termux/shared/logger/Logger;->logStackTraceWithMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public static openUrl(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    .line 166
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 167
    :cond_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 168
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 170
    :try_start_0
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 175
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to open url \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\""

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ShareUtils"

    invoke-static {v0, p1, p0}, Lcom/termux/shared/logger/Logger;->logStackTraceWithMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 173
    :catch_1
    sget p1, Lcom/termux/shared/R$string;->title_open_url_with:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, v1, p1}, Lcom/termux/shared/interact/ShareUtils;->openSystemAppChooser(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static saveTextToFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V
    .locals 4

    if-eqz p0, :cond_6

    if-eqz p2, :cond_6

    .line 196
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    if-nez p3, :cond_0

    goto :goto_1

    .line 199
    :cond_0
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p2, v0, v1}, Lcom/termux/shared/file/FileUtils;->isPathInDirPath(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    const-string v2, "ShareUtils"

    if-nez v0, :cond_1

    const-string v0, "/sdcard"

    .line 200
    invoke-static {p2, v0, v1}, Lcom/termux/shared/file/FileUtils;->isPathInDirPath(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 201
    :cond_1
    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {p0, v0}, Lcom/termux/shared/android/PermissionUtils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 202
    sget p1, Lcom/termux/shared/R$string;->msg_storage_permission_not_granted:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, v2, p1}, Lcom/termux/shared/logger/Logger;->logErrorAndShowToast(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    if-ltz p5, :cond_3

    .line 205
    instance-of p1, p0, Landroidx/appcompat/app/AppCompatActivity;

    if-eqz p1, :cond_2

    .line 206
    check-cast p0, Landroidx/appcompat/app/AppCompatActivity;

    invoke-static {p0, v0, p5}, Lcom/termux/shared/android/PermissionUtils;->requestPermission(Landroid/content/Context;Ljava/lang/String;I)Z

    goto :goto_0

    .line 207
    :cond_2
    instance-of p1, p0, Landroid/app/Activity;

    if-eqz p1, :cond_3

    .line 208
    check-cast p0, Landroid/app/Activity;

    invoke-static {p0, v0, p5}, Lcom/termux/shared/android/PermissionUtils;->requestPermission(Landroid/content/Context;Ljava/lang/String;I)Z

    :cond_3
    :goto_0
    return-void

    .line 215
    :cond_4
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object p5

    const/4 v0, 0x0

    .line 214
    invoke-static {p1, p2, p5, p3, v0}, Lcom/termux/shared/file/FileUtils;->writeTextToFile(Ljava/lang/String;Ljava/lang/String;Ljava/nio/charset/Charset;Ljava/lang/String;Z)Lcom/termux/shared/errors/Error;

    move-result-object p3

    if-eqz p3, :cond_5

    .line 217
    invoke-virtual {p3}, Lcom/termux/shared/errors/Error;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/termux/shared/logger/Logger;->logErrorExtended(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    invoke-static {p3}, Lcom/termux/shared/errors/Error;->getMinimalErrorString(Lcom/termux/shared/errors/Error;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v1}, Lcom/termux/shared/logger/Logger;->showToast(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_1

    :cond_5
    if-eqz p4, :cond_6

    .line 221
    sget p3, Lcom/termux/shared/R$string;->msg_file_saved_successfully:I

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p3, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v1}, Lcom/termux/shared/logger/Logger;->showToast(Landroid/content/Context;Ljava/lang/String;Z)V

    :cond_6
    :goto_1
    return-void
.end method

.method public static shareText(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 61
    invoke-static {p0, p1, p2, v0}, Lcom/termux/shared/interact/ShareUtils;->shareText(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static shareText(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    if-eqz p0, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    .line 75
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 76
    const-string v1, "text/plain"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 77
    const-string v1, "android.intent.extra.SUBJECT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const p1, 0x19000

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 78
    invoke-static {p2, p1, v1, v2, v2}, Lcom/termux/shared/data/DataUtils;->getTruncatedCommandOutput(Ljava/lang/String;IZZZ)Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.intent.extra.TEXT"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 80
    invoke-static {p3}, Lcom/termux/shared/data/DataUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget p1, Lcom/termux/shared/R$string;->title_share_with:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    :cond_1
    invoke-static {p0, v0, p3}, Lcom/termux/shared/interact/ShareUtils;->openSystemAppChooser(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method
