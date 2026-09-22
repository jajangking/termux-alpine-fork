.class Lcom/termux/api/apis/MediaPlayerAPI$MediaCommandResult;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/termux/api/apis/MediaPlayerAPI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MediaCommandResult"
.end annotation


# instance fields
.field public error:Ljava/lang/String;

.field public message:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 310
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 311
    const-string v0, ""

    iput-object v0, p0, Lcom/termux/api/apis/MediaPlayerAPI$MediaCommandResult;->message:Ljava/lang/String;

    return-void
.end method
