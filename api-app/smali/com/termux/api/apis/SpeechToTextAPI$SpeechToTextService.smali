.class public Lcom/termux/api/apis/SpeechToTextAPI$SpeechToTextService;
.super Landroid/app/IntentService;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/termux/api/apis/SpeechToTextAPI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SpeechToTextService"
.end annotation


# instance fields
.field protected mSpeechRecognizer:Landroid/speech/SpeechRecognizer;

.field final queueu:Ljava/util/concurrent/LinkedBlockingQueue;


# direct methods
.method public static synthetic $r8$lambda$gZcOnlZyw_0z36hw06f_5b7xaJc(Landroid/content/Context;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/termux/api/apis/SpeechToTextAPI$SpeechToTextService;->lambda$onCreate$0(Landroid/content/Context;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 33
    const-class v0, Lcom/termux/api/apis/SpeechToTextAPI$SpeechToTextService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/termux/api/apis/SpeechToTextAPI$SpeechToTextService;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 41
    new-instance p1, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {p1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object p1, p0, Lcom/termux/api/apis/SpeechToTextAPI$SpeechToTextService;->queueu:Ljava/util/concurrent/LinkedBlockingQueue;

    return-void
.end method

.method private static synthetic lambda$onCreate$0(Landroid/content/Context;Landroid/content/DialogInterface;I)V
    .locals 1

    .line 135
    new-instance p1, Landroid/content/Intent;

    const-string p2, "market://details?id=com.google.android.voicesearch"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {p1, v0, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 p2, 0x40080000    # 2.125f

    .line 138
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 139
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 4

    .line 47
    const-string v0, "SpeechToTextService"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lcom/termux/shared/logger/Logger;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    invoke-super {p0}, Landroid/app/IntentService;->onCreate()V

    .line 52
    invoke-static {p0}, Landroid/speech/SpeechRecognizer;->createSpeechRecognizer(Landroid/content/Context;)Landroid/speech/SpeechRecognizer;

    move-result-object v0

    iput-object v0, p0, Lcom/termux/api/apis/SpeechToTextAPI$SpeechToTextService;->mSpeechRecognizer:Landroid/speech/SpeechRecognizer;

    .line 54
    new-instance v1, Lcom/termux/api/apis/SpeechToTextAPI$SpeechToTextService$1;

    invoke-direct {v1, p0}, Lcom/termux/api/apis/SpeechToTextAPI$SpeechToTextService$1;-><init>(Lcom/termux/api/apis/SpeechToTextAPI$SpeechToTextService;)V

    invoke-virtual {v0, v1}, Landroid/speech/SpeechRecognizer;->setRecognitionListener(Landroid/speech/RecognitionListener;)V

    .line 125
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 126
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.speech.action.RECOGNIZE_SPEECH"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 127
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "For recognition it\u2019s necessary to install \"Google Voice Search\""

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Install Voice Search from Google Play?"

    .line 134
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/termux/api/apis/SpeechToTextAPI$SpeechToTextService$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/termux/api/apis/SpeechToTextAPI$SpeechToTextService$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;)V

    const-string v3, "Install"

    invoke-virtual {v0, v3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "Cancel"

    const/4 v3, 0x0

    .line 140
    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 141
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 144
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 145
    const-string v1, "android.speech.extra.PROMPT"

    const-string v2, "Enter shell command"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 146
    const-string v1, "android.speech.extra.LANGUAGE_MODEL"

    const-string v2, "free_form"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 147
    const-string v1, "android.speech.extra.MAX_RESULTS"

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 148
    const-string v1, "android.speech.extra.LANGUAGE"

    const-string v2, "en-US"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 149
    const-string v1, "android.speech.extra.PARTIAL_RESULTS"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 150
    iget-object v1, p0, Lcom/termux/api/apis/SpeechToTextAPI$SpeechToTextService;->mSpeechRecognizer:Landroid/speech/SpeechRecognizer;

    invoke-virtual {v1, v0}, Landroid/speech/SpeechRecognizer;->startListening(Landroid/content/Intent;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 155
    const-string v0, "SpeechToTextService"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/termux/shared/logger/Logger;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    invoke-super {p0}, Landroid/app/IntentService;->onDestroy()V

    .line 158
    iget-object v0, p0, Lcom/termux/api/apis/SpeechToTextAPI$SpeechToTextService;->mSpeechRecognizer:Landroid/speech/SpeechRecognizer;

    invoke-virtual {v0}, Landroid/speech/SpeechRecognizer;->destroy()V

    return-void
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 2

    .line 163
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onHandleIntent:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/termux/shared/data/IntentUtils;->getIntentString(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SpeechToTextService"

    invoke-static {v1, v0}, Lcom/termux/shared/logger/Logger;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    new-instance v0, Lcom/termux/api/apis/SpeechToTextAPI$SpeechToTextService$2;

    invoke-direct {v0, p0}, Lcom/termux/api/apis/SpeechToTextAPI$SpeechToTextService$2;-><init>(Lcom/termux/api/apis/SpeechToTextAPI$SpeechToTextService;)V

    invoke-static {p0, p1, v0}, Lcom/termux/api/util/ResultReturner;->returnData(Ljava/lang/Object;Landroid/content/Intent;Lcom/termux/api/util/ResultReturner$ResultWriter;)V

    return-void
.end method
