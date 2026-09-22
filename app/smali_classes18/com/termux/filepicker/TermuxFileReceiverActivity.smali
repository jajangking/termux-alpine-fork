.class public Lcom/termux/filepicker/TermuxFileReceiverActivity;
.super Landroid/app/Activity;
.source "TermuxFileReceiverActivity.java"


# static fields
.field private static final API_TAG:Ljava/lang/String; = "TermuxFileReceiver"

.field static final EDITOR_PROGRAM:Ljava/lang/String; = "/data/data/com.termux.alpine/files/home/bin/termux-file-editor"

.field private static final LOG_TAG:Ljava/lang/String; = "TermuxFileReceiverActivity"

.field static final TERMUX_RECEIVEDIR:Ljava/lang/String; = "/data/data/com.termux.alpine/files/home/downloads"

.field static final URL_OPENER_PROGRAM:Ljava/lang/String; = "/data/data/com.termux.alpine/files/home/bin/termux-url-opener"


# instance fields
.field mFinishOnDismissNameDialog:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 42
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/termux/filepicker/TermuxFileReceiverActivity;->mFinishOnDismissNameDialog:Z

    return-void
.end method

.method static isSharedTextAnUrl(Ljava/lang/String;)Z
    .locals 2
    .param p0, "sharedText"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sharedText"
        }
    .end annotation

    .line 49
    const/4 v0, 0x0

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 51
    :cond_0
    sget-object v1, Landroid/util/Patterns;->WEB_URL:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-nez v1, :cond_1

    .line 52
    const-string v1, "magnet:\\?xt=urn:btih:.*?"

    invoke-static {v1, p0}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const/4 v0, 0x1

    .line 51
    :cond_2
    return v0

    .line 49
    :cond_3
    :goto_0
    return v0
.end method


# virtual methods
.method handleContentUri(Landroid/net/Uri;Ljava/lang/String;)V
    .locals 8
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "subjectFromIntent"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0
        }
        names = {
            "uri",
            "subjectFromIntent"
        }
    .end annotation

    .line 128
    const-string v0, "_display_name"

    const/4 v1, 0x0

    .line 130
    .local v1, "attachmentFileName":Ljava/lang/String;
    :try_start_0
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v4

    .line 131
    .local v4, "projection":[Ljava/lang/String;
    invoke-virtual {p0}, Lcom/termux/filepicker/TermuxFileReceiverActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    .local v2, "c":Landroid/database/Cursor;
    if-eqz v2, :cond_1

    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 133
    invoke-interface {v2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 134
    .local v0, "fileNameColumnId":I
    if-ltz v0, :cond_1

    invoke-interface {v2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v1, v3

    goto :goto_1

    .line 131
    .end local v0    # "fileNameColumnId":I
    :catchall_0
    move-exception v0

    if-eqz v2, :cond_0

    :try_start_2
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v3

    :try_start_3
    invoke-virtual {v0, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p1    # "uri":Landroid/net/Uri;
    .end local p2    # "subjectFromIntent":Ljava/lang/String;
    :cond_0
    :goto_0
    throw v0

    .line 136
    .restart local p1    # "uri":Landroid/net/Uri;
    .restart local p2    # "subjectFromIntent":Ljava/lang/String;
    :cond_1
    :goto_1
    if-eqz v2, :cond_2

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 138
    .end local v2    # "c":Landroid/database/Cursor;
    :cond_2
    if-nez v1, :cond_3

    move-object v1, p2

    .line 140
    :cond_3
    invoke-virtual {p0}, Lcom/termux/filepicker/TermuxFileReceiverActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v0

    .line 141
    .local v0, "in":Ljava/io/InputStream;
    invoke-virtual {p0, v0, v1}, Lcom/termux/filepicker/TermuxFileReceiverActivity;->promptNameAndSave(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 145
    .end local v0    # "in":Ljava/io/InputStream;
    .end local v1    # "attachmentFileName":Ljava/lang/String;
    .end local v4    # "projection":[Ljava/lang/String;
    goto :goto_2

    .line 142
    :catch_0
    move-exception v0

    .line 143
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to handle shared content:\n\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/termux/filepicker/TermuxFileReceiverActivity;->showErrorDialogAndQuit(Ljava/lang/String;)V

    .line 144
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleContentUri(uri="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") failed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TermuxFileReceiverActivity"

    invoke-static {v2, v1, v0}, Lcom/termux/shared/logger/Logger;->logStackTraceWithMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 146
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2
    return-void
.end method

.method handleUrlAndFinish(Ljava/lang/String;)V
    .locals 5
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "url"
        }
    .end annotation

    .line 217
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/data/com.termux.alpine/files/home/bin/termux-url-opener"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 218
    .local v0, "urlOpenerProgramFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v2

    if-nez v2, :cond_0

    .line 219
    const-string v1, "The following file does not exist:\n$HOME/bin/termux-url-opener\n\nCreate this file as a script or a symlink - it will be called with the shared URL as the first argument."

    invoke-virtual {p0, v1}, Lcom/termux/filepicker/TermuxFileReceiverActivity;->showErrorDialogAndQuit(Ljava/lang/String;)V

    .line 221
    return-void

    .line 226
    :cond_0
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/io/File;->setExecutable(Z)Z

    .line 228
    new-instance v3, Landroid/net/Uri$Builder;

    invoke-direct {v3}, Landroid/net/Uri$Builder;-><init>()V

    const-string v4, "file"

    invoke-virtual {v3, v4}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 230
    .local v1, "urlOpenerProgramUri":Landroid/net/Uri;
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.termux.service_execute"

    invoke-direct {v3, v4, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 231
    .local v3, "executeIntent":Landroid/content/Intent;
    const-class v4, Lcom/termux/app/TermuxService;

    invoke-virtual {v3, p0, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 232
    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v2, v4

    const-string v4, "com.termux.execute.arguments"

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 233
    invoke-virtual {p0, v3}, Lcom/termux/filepicker/TermuxFileReceiverActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 234
    invoke-virtual {p0}, Lcom/termux/filepicker/TermuxFileReceiverActivity;->finish()V

    .line 235
    return-void
.end method

.method public synthetic lambda$promptNameAndSave$2$TermuxFileReceiverActivity(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 7
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "text"    # Ljava/lang/String;

    .line 150
    invoke-virtual {p0, p1, p2}, Lcom/termux/filepicker/TermuxFileReceiverActivity;->saveStreamWithName(Ljava/io/InputStream;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 151
    .local v0, "outFile":Ljava/io/File;
    if-nez v0, :cond_0

    return-void

    .line 153
    :cond_0
    new-instance v1, Ljava/io/File;

    const-string v2, "/data/data/com.termux.alpine/files/home/bin/termux-file-editor"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 154
    .local v1, "editorProgramFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v3

    if-nez v3, :cond_1

    .line 155
    const-string v2, "The following file does not exist:\n$HOME/bin/termux-file-editor\n\nCreate this file as a script or a symlink - it will be called with the received file as only argument."

    invoke-virtual {p0, v2}, Lcom/termux/filepicker/TermuxFileReceiverActivity;->showErrorDialogAndQuit(Ljava/lang/String;)V

    .line 157
    return-void

    .line 162
    :cond_1
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/io/File;->setExecutable(Z)Z

    .line 164
    new-instance v4, Landroid/net/Uri$Builder;

    invoke-direct {v4}, Landroid/net/Uri$Builder;-><init>()V

    const-string v5, "file"

    invoke-virtual {v4, v5}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    .line 166
    .local v2, "scriptUri":Landroid/net/Uri;
    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.termux.service_execute"

    invoke-direct {v4, v5, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 167
    .local v4, "executeIntent":Landroid/content/Intent;
    const-class v5, Lcom/termux/app/TermuxService;

    invoke-virtual {v4, p0, v5}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 168
    new-array v3, v3, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v5

    const-string v5, "com.termux.execute.arguments"

    invoke-virtual {v4, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 169
    invoke-virtual {p0, v4}, Lcom/termux/filepicker/TermuxFileReceiverActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 170
    invoke-virtual {p0}, Lcom/termux/filepicker/TermuxFileReceiverActivity;->finish()V

    .line 171
    return-void
.end method

.method public synthetic lambda$promptNameAndSave$3$TermuxFileReceiverActivity(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 3
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "text"    # Ljava/lang/String;

    .line 173
    invoke-virtual {p0, p1, p2}, Lcom/termux/filepicker/TermuxFileReceiverActivity;->saveStreamWithName(Ljava/io/InputStream;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 175
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.termux.service_execute"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 176
    .local v0, "executeIntent":Landroid/content/Intent;
    const-string v1, "com.termux.execute.cwd"

    const-string v2, "/data/data/com.termux.alpine/files/home/downloads"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 177
    const-class v1, Lcom/termux/app/TermuxService;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 178
    invoke-virtual {p0, v0}, Lcom/termux/filepicker/TermuxFileReceiverActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 179
    invoke-virtual {p0}, Lcom/termux/filepicker/TermuxFileReceiverActivity;->finish()V

    .line 180
    return-void
.end method

.method public synthetic lambda$promptNameAndSave$4$TermuxFileReceiverActivity(Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .line 181
    invoke-virtual {p0}, Lcom/termux/filepicker/TermuxFileReceiverActivity;->finish()V

    return-void
.end method

.method public synthetic lambda$promptNameAndSave$5$TermuxFileReceiverActivity(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .line 182
    iget-boolean v0, p0, Lcom/termux/filepicker/TermuxFileReceiverActivity;->mFinishOnDismissNameDialog:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/termux/filepicker/TermuxFileReceiverActivity;->finish()V

    .line 183
    :cond_0
    return-void
.end method

.method public synthetic lambda$showErrorDialogAndQuit$0$TermuxFileReceiverActivity(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 121
    invoke-virtual {p0}, Lcom/termux/filepicker/TermuxFileReceiverActivity;->finish()V

    return-void
.end method

.method public synthetic lambda$showErrorDialogAndQuit$1$TermuxFileReceiverActivity(Landroid/content/DialogInterface;)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .line 123
    invoke-virtual {p0}, Lcom/termux/filepicker/TermuxFileReceiverActivity;->finish()V

    return-void
.end method

.method protected onResume()V
    .locals 11

    .line 57
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 59
    invoke-virtual {p0}, Lcom/termux/filepicker/TermuxFileReceiverActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 60
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 61
    .local v1, "action":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v2

    .line 62
    .local v2, "type":Ljava/lang/String;
    invoke-virtual {v0}, Landroid/content/Intent;->getScheme()Ljava/lang/String;

    move-result-object v3

    .line 64
    .local v3, "scheme":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Intent Received:\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Lcom/termux/shared/data/IntentUtils;->getIntentString(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "TermuxFileReceiverActivity"

    invoke-static {v5, v4}, Lcom/termux/shared/logger/Logger;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    const-string v4, "android.intent.extra.TITLE"

    const/4 v5, 0x0

    invoke-static {v0, v4, v5}, Lcom/termux/shared/data/IntentUtils;->getStringExtraIfSet(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 68
    .local v4, "sharedTitle":Ljava/lang/String;
    const-string v6, "android.intent.action.SEND"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    if-eqz v2, :cond_5

    .line 69
    const-string v6, "android.intent.extra.TEXT"

    invoke-virtual {v0, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 70
    .local v6, "sharedText":Ljava/lang/String;
    const-string v7, "android.intent.extra.STREAM"

    invoke-virtual {v0, v7}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Landroid/net/Uri;

    .line 72
    .local v7, "sharedUri":Landroid/net/Uri;
    if-eqz v7, :cond_0

    .line 73
    invoke-virtual {p0, v7, v4}, Lcom/termux/filepicker/TermuxFileReceiverActivity;->handleContentUri(Landroid/net/Uri;Ljava/lang/String;)V

    goto :goto_0

    .line 74
    :cond_0
    if-eqz v6, :cond_4

    .line 75
    invoke-static {v6}, Lcom/termux/filepicker/TermuxFileReceiverActivity;->isSharedTextAnUrl(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 76
    invoke-virtual {p0, v6}, Lcom/termux/filepicker/TermuxFileReceiverActivity;->handleUrlAndFinish(Ljava/lang/String;)V

    goto :goto_0

    .line 78
    :cond_1
    const-string v8, "android.intent.extra.SUBJECT"

    invoke-static {v0, v8, v5}, Lcom/termux/shared/data/IntentUtils;->getStringExtraIfSet(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 79
    .local v5, "subject":Ljava/lang/String;
    if-nez v5, :cond_2

    move-object v5, v4

    .line 80
    :cond_2
    if-eqz v5, :cond_3

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".txt"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 81
    :cond_3
    new-instance v8, Ljava/io/ByteArrayInputStream;

    sget-object v9, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v6, v9}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {p0, v8, v5}, Lcom/termux/filepicker/TermuxFileReceiverActivity;->promptNameAndSave(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 82
    .end local v5    # "subject":Ljava/lang/String;
    goto :goto_0

    .line 84
    :cond_4
    const-string v5, "Send action without content - nothing to save."

    invoke-virtual {p0, v5}, Lcom/termux/filepicker/TermuxFileReceiverActivity;->showErrorDialogAndQuit(Ljava/lang/String;)V

    .line 86
    .end local v6    # "sharedText":Ljava/lang/String;
    .end local v7    # "sharedUri":Landroid/net/Uri;
    :goto_0
    goto :goto_2

    .line 87
    :cond_5
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    .line 89
    .local v5, "dataUri":Landroid/net/Uri;
    if-nez v5, :cond_6

    .line 90
    const-string v6, "Data uri not passed."

    invoke-virtual {p0, v6}, Lcom/termux/filepicker/TermuxFileReceiverActivity;->showErrorDialogAndQuit(Ljava/lang/String;)V

    .line 91
    return-void

    .line 94
    :cond_6
    const-string v6, "content"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 95
    invoke-virtual {p0, v5, v4}, Lcom/termux/filepicker/TermuxFileReceiverActivity;->handleContentUri(Landroid/net/Uri;Ljava/lang/String;)V

    goto :goto_2

    .line 96
    :cond_7
    const-string v6, "file"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 98
    invoke-virtual {v5}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v6

    .line 99
    .local v6, "path":Ljava/lang/String;
    invoke-static {v6}, Lcom/termux/shared/data/DataUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 100
    const-string v7, "File path from data uri is null, empty or invalid."

    invoke-virtual {p0, v7}, Lcom/termux/filepicker/TermuxFileReceiverActivity;->showErrorDialogAndQuit(Ljava/lang/String;)V

    .line 101
    return-void

    .line 104
    :cond_8
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 106
    .local v7, "file":Ljava/io/File;
    :try_start_0
    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 107
    .local v8, "in":Ljava/io/FileInputStream;
    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v8, v9}, Lcom/termux/filepicker/TermuxFileReceiverActivity;->promptNameAndSave(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    .end local v8    # "in":Ljava/io/FileInputStream;
    goto :goto_1

    .line 108
    :catch_0
    move-exception v8

    .line 109
    .local v8, "e":Ljava/io/FileNotFoundException;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Cannot open file: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v8}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/termux/filepicker/TermuxFileReceiverActivity;->showErrorDialogAndQuit(Ljava/lang/String;)V

    .line 111
    .end local v6    # "path":Ljava/lang/String;
    .end local v7    # "file":Ljava/io/File;
    .end local v8    # "e":Ljava/io/FileNotFoundException;
    :goto_1
    goto :goto_2

    .line 112
    :cond_9
    const-string v6, "Unable to receive any file or URL."

    invoke-virtual {p0, v6}, Lcom/termux/filepicker/TermuxFileReceiverActivity;->showErrorDialogAndQuit(Ljava/lang/String;)V

    .line 115
    .end local v5    # "dataUri":Landroid/net/Uri;
    :goto_2
    return-void
.end method

.method promptNameAndSave(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 10
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "attachmentFileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "in",
            "attachmentFileName"
        }
    .end annotation

    .line 149
    new-instance v4, Lcom/termux/filepicker/-$$Lambda$TermuxFileReceiverActivity$l0FJjfbug9g8f5I2eFThzIJs1HY;

    invoke-direct {v4, p0, p1}, Lcom/termux/filepicker/-$$Lambda$TermuxFileReceiverActivity$l0FJjfbug9g8f5I2eFThzIJs1HY;-><init>(Lcom/termux/filepicker/TermuxFileReceiverActivity;Ljava/io/InputStream;)V

    new-instance v6, Lcom/termux/filepicker/-$$Lambda$TermuxFileReceiverActivity$-G8Y8JsKZX3lJNl-dvBPexfkVII;

    invoke-direct {v6, p0, p1}, Lcom/termux/filepicker/-$$Lambda$TermuxFileReceiverActivity$-G8Y8JsKZX3lJNl-dvBPexfkVII;-><init>(Lcom/termux/filepicker/TermuxFileReceiverActivity;Ljava/io/InputStream;)V

    new-instance v8, Lcom/termux/filepicker/-$$Lambda$TermuxFileReceiverActivity$G6j1p72Eq_Pfjbe8JRA5hkjLqGM;

    invoke-direct {v8, p0}, Lcom/termux/filepicker/-$$Lambda$TermuxFileReceiverActivity$G6j1p72Eq_Pfjbe8JRA5hkjLqGM;-><init>(Lcom/termux/filepicker/TermuxFileReceiverActivity;)V

    new-instance v9, Lcom/termux/filepicker/-$$Lambda$TermuxFileReceiverActivity$coeJkn0FYEP3oVy1GyPpPH7d46U;

    invoke-direct {v9, p0}, Lcom/termux/filepicker/-$$Lambda$TermuxFileReceiverActivity$coeJkn0FYEP3oVy1GyPpPH7d46U;-><init>(Lcom/termux/filepicker/TermuxFileReceiverActivity;)V

    const v1, 0x7f1000f2

    const v3, 0x7f100023

    const v5, 0x7f100024

    const/high16 v7, 0x1040000

    move-object v0, p0

    move-object v2, p2

    invoke-static/range {v0 .. v9}, Lcom/termux/shared/interact/TextInputDialogUtils;->textInput(Landroid/app/Activity;ILjava/lang/String;ILcom/termux/shared/interact/TextInputDialogUtils$TextSetListener;ILcom/termux/shared/interact/TextInputDialogUtils$TextSetListener;ILcom/termux/shared/interact/TextInputDialogUtils$TextSetListener;Landroid/content/DialogInterface$OnDismissListener;)V

    .line 184
    return-void
.end method

.method public saveStreamWithName(Ljava/io/InputStream;Ljava/lang/String;)Ljava/io/File;
    .locals 7
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "attachmentFileName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "in",
            "attachmentFileName"
        }
    .end annotation

    .line 187
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/data/com.termux.alpine/files/home/downloads"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 189
    .local v0, "receiveDir":Ljava/io/File;
    invoke-static {p2}, Lcom/termux/shared/data/DataUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 190
    const-string v1, "File name cannot be null or empty"

    invoke-virtual {p0, v1}, Lcom/termux/filepicker/TermuxFileReceiverActivity;->showErrorDialogAndQuit(Ljava/lang/String;)V

    .line 191
    return-object v2

    .line 194
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_1

    .line 195
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot create directory: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/termux/filepicker/TermuxFileReceiverActivity;->showErrorDialogAndQuit(Ljava/lang/String;)V

    .line 196
    return-object v2

    .line 200
    :cond_1
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 201
    .local v1, "outFile":Ljava/io/File;
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 202
    .local v3, "f":Ljava/io/FileOutputStream;
    const/16 v4, 0x1000

    :try_start_1
    new-array v4, v4, [B

    .line 204
    .local v4, "buffer":[B
    :goto_0
    invoke-virtual {p1, v4}, Ljava/io/InputStream;->read([B)I

    move-result v5

    move v6, v5

    .local v6, "readBytes":I
    if-lez v5, :cond_2

    .line 205
    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, v6}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 207
    .end local v4    # "buffer":[B
    .end local v6    # "readBytes":I
    :cond_2
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 208
    .end local v3    # "f":Ljava/io/FileOutputStream;
    return-object v1

    .line 201
    .restart local v3    # "f":Ljava/io/FileOutputStream;
    :catchall_0
    move-exception v4

    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v5

    :try_start_4
    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "receiveDir":Ljava/io/File;
    .end local p1    # "in":Ljava/io/InputStream;
    .end local p2    # "attachmentFileName":Ljava/lang/String;
    :goto_1
    throw v4
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 209
    .end local v1    # "outFile":Ljava/io/File;
    .end local v3    # "f":Ljava/io/FileOutputStream;
    .restart local v0    # "receiveDir":Ljava/io/File;
    .restart local p1    # "in":Ljava/io/InputStream;
    .restart local p2    # "attachmentFileName":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 210
    .local v1, "e":Ljava/io/IOException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error saving file:\n\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/termux/filepicker/TermuxFileReceiverActivity;->showErrorDialogAndQuit(Ljava/lang/String;)V

    .line 211
    const-string v3, "TermuxFileReceiverActivity"

    const-string v4, "Error saving file"

    invoke-static {v3, v4, v1}, Lcom/termux/shared/logger/Logger;->logStackTraceWithMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 212
    return-object v2
.end method

.method showErrorDialogAndQuit(Ljava/lang/String;)V
    .locals 9
    .param p1, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation

    .line 118
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/termux/filepicker/TermuxFileReceiverActivity;->mFinishOnDismissNameDialog:Z

    .line 119
    new-instance v5, Lcom/termux/filepicker/-$$Lambda$TermuxFileReceiverActivity$JenSndf-_KWpb_uQCkaq86JaHxU;

    invoke-direct {v5, p0}, Lcom/termux/filepicker/-$$Lambda$TermuxFileReceiverActivity$JenSndf-_KWpb_uQCkaq86JaHxU;-><init>(Lcom/termux/filepicker/TermuxFileReceiverActivity;)V

    new-instance v8, Lcom/termux/filepicker/-$$Lambda$TermuxFileReceiverActivity$DMp9CLYVyQ5kkIfnyniPTvS4Pgc;

    invoke-direct {v8, p0}, Lcom/termux/filepicker/-$$Lambda$TermuxFileReceiverActivity$DMp9CLYVyQ5kkIfnyniPTvS4Pgc;-><init>(Lcom/termux/filepicker/TermuxFileReceiverActivity;)V

    const-string v2, "TermuxFileReceiver"

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move-object v3, p1

    invoke-static/range {v1 .. v8}, Lcom/termux/shared/interact/MessageDialogUtils;->showMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;Landroid/content/DialogInterface$OnDismissListener;)V

    .line 124
    return-void
.end method
