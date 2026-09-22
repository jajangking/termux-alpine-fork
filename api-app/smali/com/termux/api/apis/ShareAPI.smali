.class public abstract Lcom/termux/api/apis/ShareAPI;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/termux/api/apis/ShareAPI$ContentProvider;
    }
.end annotation


# direct methods
.method public static synthetic $r8$lambda$mAyZu0iazdjJ_L6pcv7y4ngoe0U(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Context;Ljava/io/PrintWriter;)V
    .locals 0

    .line 0
    invoke-static/range {p0 .. p6}, Lcom/termux/api/apis/ShareAPI;->lambda$onReceive$0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Context;Ljava/io/PrintWriter;)V

    return-void
.end method

.method private static synthetic lambda$onReceive$0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Context;Ljava/io/PrintWriter;)V
    .locals 2

    .line 85
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 86
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result p0

    if-eqz p0, :cond_5

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_1

    .line 91
    :cond_0
    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    .line 92
    invoke-virtual {p0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 95
    const-string p6, "com.termux.alpine.sharedfiles"

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {p6, v1}, Lcom/termux/shared/net/uri/UriUtils;->getContentUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p6

    const v1, 0x10000001

    .line 96
    invoke-virtual {p0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    if-nez p2, :cond_1

    .line 100
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p2

    const/16 v0, 0x2e

    .line 101
    invoke-virtual {p2, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 102
    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    .line 103
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v0

    .line 105
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_1

    .line 106
    const-string p2, "application/octet-stream"

    :cond_1
    if-eqz p3, :cond_2

    .line 111
    const-string v0, "android.intent.extra.SUBJECT"

    invoke-virtual {p0, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 113
    :cond_2
    const-string p3, "android.intent.action.SEND"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 114
    const-string p1, "android.intent.extra.STREAM"

    invoke-virtual {p0, p1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 115
    invoke-virtual {p0, p2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 117
    :cond_3
    invoke-virtual {p0, p6, p2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    :goto_0
    if-nez p4, :cond_4

    .line 121
    invoke-virtual {p5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/termux/api/R$string;->share_file_chooser_title:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p0

    const/high16 p1, 0x10000000

    invoke-virtual {p0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p0

    .line 123
    :cond_4
    invoke-virtual {p5, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void

    .line 87
    :cond_5
    :goto_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "ERROR: Not a readable file: \'"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p6, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public static onReceive(Lcom/termux/api/TermuxApiReceiver;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10

    .line 31
    const-string v0, "onReceive"

    const-string v1, "ShareAPI"

    invoke-static {v1, v0}, Lcom/termux/shared/logger/Logger;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    const-string v0, "file"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 34
    const-string v0, "title"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 35
    const-string v0, "content-type"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 36
    const-string v0, "default-receiver"

    const/4 v2, 0x0

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    .line 37
    const-string v0, "action"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 40
    const-string v4, "android.intent.action.VIEW"

    if-nez v0, :cond_0

    goto :goto_3

    :cond_0
    const/4 v8, -0x1

    .line 43
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v9

    sparse-switch v9, :sswitch_data_0

    :goto_0
    move v2, v8

    goto :goto_1

    :sswitch_0
    const-string v2, "view"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    goto :goto_1

    :sswitch_1
    const-string v2, "send"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x1

    goto :goto_1

    :sswitch_2
    const-string v9, "edit"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    goto :goto_0

    :cond_3
    :goto_1
    packed-switch v2, :pswitch_data_0

    .line 54
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid action \'"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\', using \'view\'"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/termux/shared/logger/Logger;->logError(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_2
    move-object v4, v0

    goto :goto_3

    .line 49
    :pswitch_0
    const-string v0, "android.intent.action.SEND"

    goto :goto_2

    .line 46
    :pswitch_1
    const-string v0, "android.intent.action.EDIT"

    goto :goto_2

    :goto_3
    :pswitch_2
    if-nez v3, :cond_4

    .line 62
    new-instance v0, Lcom/termux/api/apis/ShareAPI$1;

    invoke-direct {v0, v4, v6, v5, p1}, Lcom/termux/api/apis/ShareAPI$1;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    invoke-static {p0, p2, v0}, Lcom/termux/api/util/ResultReturner;->returnData(Ljava/lang/Object;Landroid/content/Intent;Lcom/termux/api/util/ResultReturner$ResultWriter;)V

    goto :goto_4

    .line 84
    :cond_4
    new-instance v0, Lcom/termux/api/apis/ShareAPI$$ExternalSyntheticLambda0;

    move-object v2, v0

    move-object v8, p1

    invoke-direct/range {v2 .. v8}, Lcom/termux/api/apis/ShareAPI$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Context;)V

    invoke-static {p0, p2, v0}, Lcom/termux/api/util/ResultReturner;->returnData(Ljava/lang/Object;Landroid/content/Intent;Lcom/termux/api/util/ResultReturner$ResultWriter;)V

    :goto_4
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x2f6e0a -> :sswitch_2
        0x35cf88 -> :sswitch_1
        0x373aa5 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
