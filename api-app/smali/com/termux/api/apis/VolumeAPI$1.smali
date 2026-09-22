.class Lcom/termux/api/apis/VolumeAPI$1;
.super Lcom/termux/api/util/ResultReturner$ResultJsonWriter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/termux/api/apis/VolumeAPI;->printAllStreamInfo(Landroid/content/Context;Landroid/content/Intent;Landroid/media/AudioManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$audioManager:Landroid/media/AudioManager;


# direct methods
.method constructor <init>(Landroid/media/AudioManager;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/termux/api/apis/VolumeAPI$1;->val$audioManager:Landroid/media/AudioManager;

    invoke-direct {p0}, Lcom/termux/api/util/ResultReturner$ResultJsonWriter;-><init>()V

    return-void
.end method


# virtual methods
.method public writeJson(Landroid/util/JsonWriter;)V
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/termux/api/apis/VolumeAPI$1;->val$audioManager:Landroid/media/AudioManager;

    invoke-static {v0, p1}, Lcom/termux/api/apis/VolumeAPI;->-$$Nest$smgetStreamsInfo(Landroid/media/AudioManager;Landroid/util/JsonWriter;)V

    .line 87
    invoke-virtual {p1}, Landroid/util/JsonWriter;->close()V

    return-void
.end method
