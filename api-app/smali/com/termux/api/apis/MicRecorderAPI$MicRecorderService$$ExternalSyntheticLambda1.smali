.class public final synthetic Lcom/termux/api/apis/MicRecorderAPI$MicRecorderService$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/termux/api/util/ResultReturner$ResultWriter;


# instance fields
.field public final synthetic f$0:Lcom/termux/api/apis/MicRecorderAPI$RecorderCommandResult;


# direct methods
.method public synthetic constructor <init>(Lcom/termux/api/apis/MicRecorderAPI$RecorderCommandResult;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/termux/api/apis/MicRecorderAPI$MicRecorderService$$ExternalSyntheticLambda1;->f$0:Lcom/termux/api/apis/MicRecorderAPI$RecorderCommandResult;

    return-void
.end method


# virtual methods
.method public final writeResult(Ljava/io/PrintWriter;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/termux/api/apis/MicRecorderAPI$MicRecorderService$$ExternalSyntheticLambda1;->f$0:Lcom/termux/api/apis/MicRecorderAPI$RecorderCommandResult;

    invoke-static {v0, p1}, Lcom/termux/api/apis/MicRecorderAPI$MicRecorderService;->$r8$lambda$oc4yyRwKqCelhEDWls1DuyLRu0w(Lcom/termux/api/apis/MicRecorderAPI$RecorderCommandResult;Ljava/io/PrintWriter;)V

    return-void
.end method
