.class Lcom/termux/api/apis/DialogAPI$DialogActivity$SpeechInputMethod;
.super Lcom/termux/api/apis/DialogAPI$DialogActivity$InputDialog;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/termux/api/apis/DialogAPI$DialogActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SpeechInputMethod"
.end annotation


# direct methods
.method public static synthetic $r8$lambda$Gx9fS9HQ87t8zsn6E3bWCY4QCu0(Landroid/speech/SpeechRecognizer;Lcom/termux/api/apis/DialogAPI$DialogActivity$InputResultListener;Lcom/termux/api/apis/DialogAPI$DialogActivity$InputResult;)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/termux/api/apis/DialogAPI$DialogActivity$SpeechInputMethod;->lambda$create$0(Landroid/speech/SpeechRecognizer;Lcom/termux/api/apis/DialogAPI$DialogActivity$InputResultListener;Lcom/termux/api/apis/DialogAPI$DialogActivity$InputResult;)V

    return-void
.end method

.method constructor <init>(Landroidx/appcompat/app/AppCompatActivity;)V
    .locals 0

    .line 786
    invoke-direct {p0, p1}, Lcom/termux/api/apis/DialogAPI$DialogActivity$InputDialog;-><init>(Landroidx/appcompat/app/AppCompatActivity;)V

    return-void
.end method

.method private createSpeechIntent()Landroid/content/Intent;
    .locals 3

    .line 841
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.speech.action.RECOGNIZE_SPEECH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 842
    const-string v1, "android.speech.extra.MAX_RESULTS"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 843
    const-string v1, "android.speech.extra.LANGUAGE_MODEL"

    const-string v2, "free_form"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method private createSpeechRecognizer(Landroidx/appcompat/app/AppCompatActivity;Lcom/termux/api/apis/DialogAPI$DialogActivity$InputResultListener;)Landroid/speech/SpeechRecognizer;
    .locals 1

    .line 848
    invoke-static {p1}, Landroid/speech/SpeechRecognizer;->createSpeechRecognizer(Landroid/content/Context;)Landroid/speech/SpeechRecognizer;

    move-result-object p1

    .line 849
    new-instance v0, Lcom/termux/api/apis/DialogAPI$DialogActivity$SpeechInputMethod$1;

    invoke-direct {v0, p0, p2}, Lcom/termux/api/apis/DialogAPI$DialogActivity$SpeechInputMethod$1;-><init>(Lcom/termux/api/apis/DialogAPI$DialogActivity$SpeechInputMethod;Lcom/termux/api/apis/DialogAPI$DialogActivity$InputResultListener;)V

    invoke-virtual {p1, v0}, Landroid/speech/SpeechRecognizer;->setRecognitionListener(Landroid/speech/RecognitionListener;)V

    return-object p1
.end method

.method private hasSpeechRecognizer(Landroid/content/Context;)Z
    .locals 2

    .line 836
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.speech.action.RECOGNIZE_SPEECH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p1

    .line 837
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method private static synthetic lambda$create$0(Landroid/speech/SpeechRecognizer;Lcom/termux/api/apis/DialogAPI$DialogActivity$InputResultListener;Lcom/termux/api/apis/DialogAPI$DialogActivity$InputResult;)V
    .locals 0

    .line 820
    invoke-virtual {p0}, Landroid/speech/SpeechRecognizer;->stopListening()V

    .line 821
    invoke-interface {p1, p2}, Lcom/termux/api/apis/DialogAPI$DialogActivity$InputResultListener;->onResult(Lcom/termux/api/apis/DialogAPI$DialogActivity$InputResult;)V

    return-void
.end method


# virtual methods
.method public create(Landroidx/appcompat/app/AppCompatActivity;Lcom/termux/api/apis/DialogAPI$DialogActivity$InputResultListener;)V
    .locals 4

    .line 804
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.permission.RECORD_AUDIO"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/termux/api/activities/TermuxApiPermissionActivity;->checkAndRequestPermissions(Landroid/content/Context;Landroid/content/Intent;[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 805
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 808
    :cond_0
    invoke-direct {p0, p1}, Lcom/termux/api/apis/DialogAPI$DialogActivity$SpeechInputMethod;->hasSpeechRecognizer(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 809
    const-string v0, "No voice recognition found!"

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 810
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 814
    :cond_1
    invoke-direct {p0}, Lcom/termux/api/apis/DialogAPI$DialogActivity$SpeechInputMethod;->createSpeechIntent()Landroid/content/Intent;

    move-result-object v0

    .line 815
    invoke-direct {p0, p1, p2}, Lcom/termux/api/apis/DialogAPI$DialogActivity$SpeechInputMethod;->createSpeechRecognizer(Landroidx/appcompat/app/AppCompatActivity;Lcom/termux/api/apis/DialogAPI$DialogActivity$InputResultListener;)Landroid/speech/SpeechRecognizer;

    move-result-object v2

    .line 819
    new-instance v3, Lcom/termux/api/apis/DialogAPI$DialogActivity$SpeechInputMethod$$ExternalSyntheticLambda0;

    invoke-direct {v3, v2, p2}, Lcom/termux/api/apis/DialogAPI$DialogActivity$SpeechInputMethod$$ExternalSyntheticLambda0;-><init>(Landroid/speech/SpeechRecognizer;Lcom/termux/api/apis/DialogAPI$DialogActivity$InputResultListener;)V

    invoke-virtual {p0, v3}, Lcom/termux/api/apis/DialogAPI$DialogActivity$InputDialog;->getClickListener(Lcom/termux/api/apis/DialogAPI$DialogActivity$InputResultListener;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object p2

    .line 824
    invoke-virtual {p0, p1, p2}, Lcom/termux/api/apis/DialogAPI$DialogActivity$InputDialog;->getDialogBuilder(Landroidx/appcompat/app/AppCompatActivity;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const/4 p2, 0x0

    .line 825
    invoke-virtual {p1, p2, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 826
    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 827
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 829
    invoke-virtual {p1, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 830
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 832
    invoke-virtual {v2, v0}, Landroid/speech/SpeechRecognizer;->startListening(Landroid/content/Intent;)V

    return-void
.end method

.method bridge synthetic createWidgetView(Landroidx/appcompat/app/AppCompatActivity;)Landroid/view/View;
    .locals 0

    .line 783
    invoke-virtual {p0, p1}, Lcom/termux/api/apis/DialogAPI$DialogActivity$SpeechInputMethod;->createWidgetView(Landroidx/appcompat/app/AppCompatActivity;)Landroid/widget/TextView;

    move-result-object p1

    return-object p1
.end method

.method createWidgetView(Landroidx/appcompat/app/AppCompatActivity;)Landroid/widget/TextView;
    .locals 3

    .line 791
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 792
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    .line 794
    const-string v1, "input_hint"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, "Listening for speech..."

    .line 796
    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 p1, 0x41a00000    # 20.0f

    .line 797
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    return-object v0
.end method
