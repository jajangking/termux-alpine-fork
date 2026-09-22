.class public final synthetic Lcom/termux/api/apis/MediaPlayerAPI$MediaPlayerService$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/termux/api/apis/MediaPlayerAPI$MediaCommandHandler;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/termux/api/apis/MediaPlayerAPI$MediaPlayerService$$ExternalSyntheticLambda1;->f$0:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final handle(Landroid/media/MediaPlayer;Landroid/content/Context;Landroid/content/Intent;)Lcom/termux/api/apis/MediaPlayerAPI$MediaCommandResult;
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/termux/api/apis/MediaPlayerAPI$MediaPlayerService$$ExternalSyntheticLambda1;->f$0:Ljava/lang/String;

    invoke-static {v0, p1, p2, p3}, Lcom/termux/api/apis/MediaPlayerAPI$MediaPlayerService;->$r8$lambda$J0J2IbaJybcc0J9v4qDItXC_BNs(Ljava/lang/String;Landroid/media/MediaPlayer;Landroid/content/Context;Landroid/content/Intent;)Lcom/termux/api/apis/MediaPlayerAPI$MediaCommandResult;

    move-result-object p1

    return-object p1
.end method
