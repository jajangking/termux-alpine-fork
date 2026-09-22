.class public final synthetic Lcom/termux/api/apis/MediaPlayerAPI$MediaPlayerService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/termux/api/util/ResultReturner$ResultWriter;


# instance fields
.field public final synthetic f$0:Lcom/termux/api/apis/MediaPlayerAPI$MediaCommandResult;


# direct methods
.method public synthetic constructor <init>(Lcom/termux/api/apis/MediaPlayerAPI$MediaCommandResult;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/termux/api/apis/MediaPlayerAPI$MediaPlayerService$$ExternalSyntheticLambda0;->f$0:Lcom/termux/api/apis/MediaPlayerAPI$MediaCommandResult;

    return-void
.end method


# virtual methods
.method public final writeResult(Ljava/io/PrintWriter;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/termux/api/apis/MediaPlayerAPI$MediaPlayerService$$ExternalSyntheticLambda0;->f$0:Lcom/termux/api/apis/MediaPlayerAPI$MediaCommandResult;

    invoke-static {v0, p1}, Lcom/termux/api/apis/MediaPlayerAPI$MediaPlayerService;->$r8$lambda$QO9FTwrpu2iTdI3v-sZwtSjL3_4(Lcom/termux/api/apis/MediaPlayerAPI$MediaCommandResult;Ljava/io/PrintWriter;)V

    return-void
.end method
