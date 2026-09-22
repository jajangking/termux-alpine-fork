.class Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysConstants$EXTRA_KEY_DISPLAY_MAPS$4;
.super Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysConstants$ExtraKeyDisplayMap;
.source "ExtraKeysConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysConstants$EXTRA_KEY_DISPLAY_MAPS;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .line 107
    invoke-direct {p0}, Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysConstants$ExtraKeyDisplayMap;-><init>()V

    .line 109
    const-string v0, "LEFT"

    const-string v1, "\u25c0"

    invoke-virtual {p0, v0, v1}, Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysConstants$EXTRA_KEY_DISPLAY_MAPS$4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    const-string v0, "RIGHT"

    const-string v1, "\u25b6"

    invoke-virtual {p0, v0, v1}, Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysConstants$EXTRA_KEY_DISPLAY_MAPS$4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    const-string v0, "UP"

    const-string v1, "\u25b2"

    invoke-virtual {p0, v0, v1}, Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysConstants$EXTRA_KEY_DISPLAY_MAPS$4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    const-string v0, "DOWN"

    const-string v1, "\u25bc"

    invoke-virtual {p0, v0, v1}, Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysConstants$EXTRA_KEY_DISPLAY_MAPS$4;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    return-void
.end method
