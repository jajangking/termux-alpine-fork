.class public final synthetic Lcom/termux/api/apis/DialogAPI$DialogActivity$SpeechInputMethod$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/termux/api/apis/DialogAPI$DialogActivity$InputResultListener;


# instance fields
.field public final synthetic f$0:Landroid/speech/SpeechRecognizer;

.field public final synthetic f$1:Lcom/termux/api/apis/DialogAPI$DialogActivity$InputResultListener;


# direct methods
.method public synthetic constructor <init>(Landroid/speech/SpeechRecognizer;Lcom/termux/api/apis/DialogAPI$DialogActivity$InputResultListener;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/termux/api/apis/DialogAPI$DialogActivity$SpeechInputMethod$$ExternalSyntheticLambda0;->f$0:Landroid/speech/SpeechRecognizer;

    iput-object p2, p0, Lcom/termux/api/apis/DialogAPI$DialogActivity$SpeechInputMethod$$ExternalSyntheticLambda0;->f$1:Lcom/termux/api/apis/DialogAPI$DialogActivity$InputResultListener;

    return-void
.end method


# virtual methods
.method public final onResult(Lcom/termux/api/apis/DialogAPI$DialogActivity$InputResult;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/termux/api/apis/DialogAPI$DialogActivity$SpeechInputMethod$$ExternalSyntheticLambda0;->f$0:Landroid/speech/SpeechRecognizer;

    iget-object v1, p0, Lcom/termux/api/apis/DialogAPI$DialogActivity$SpeechInputMethod$$ExternalSyntheticLambda0;->f$1:Lcom/termux/api/apis/DialogAPI$DialogActivity$InputResultListener;

    invoke-static {v0, v1, p1}, Lcom/termux/api/apis/DialogAPI$DialogActivity$SpeechInputMethod;->$r8$lambda$Gx9fS9HQ87t8zsn6E3bWCY4QCu0(Landroid/speech/SpeechRecognizer;Lcom/termux/api/apis/DialogAPI$DialogActivity$InputResultListener;Lcom/termux/api/apis/DialogAPI$DialogActivity$InputResult;)V

    return-void
.end method
