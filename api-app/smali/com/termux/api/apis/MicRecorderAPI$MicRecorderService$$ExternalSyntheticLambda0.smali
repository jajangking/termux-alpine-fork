.class public final synthetic Lcom/termux/api/apis/MicRecorderAPI$MicRecorderService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/termux/api/apis/MicRecorderAPI$RecorderCommandHandler;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/termux/api/apis/MicRecorderAPI$MicRecorderService$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final handle(Landroid/content/Context;Landroid/content/Intent;)Lcom/termux/api/apis/MicRecorderAPI$RecorderCommandResult;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/termux/api/apis/MicRecorderAPI$MicRecorderService$$ExternalSyntheticLambda0;->f$0:Ljava/lang/String;

    invoke-static {v0, p1, p2}, Lcom/termux/api/apis/MicRecorderAPI$MicRecorderService;->$r8$lambda$WL9xx0Em2XV-UCBZdbpG290HN90(Ljava/lang/String;Landroid/content/Context;Landroid/content/Intent;)Lcom/termux/api/apis/MicRecorderAPI$RecorderCommandResult;

    move-result-object p1

    return-object p1
.end method
