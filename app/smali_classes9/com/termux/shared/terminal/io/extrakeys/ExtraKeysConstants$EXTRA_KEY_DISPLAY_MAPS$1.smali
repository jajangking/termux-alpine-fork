.class Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysConstants$EXTRA_KEY_DISPLAY_MAPS$1;
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

    .line 79
    invoke-direct {p0}, Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysConstants$ExtraKeyDisplayMap;-><init>()V

    .line 81
    const-string v0, "LEFT"

    const-string v1, "\u2190"

    invoke-virtual {p0, v0, v1}, Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysConstants$EXTRA_KEY_DISPLAY_MAPS$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    const-string v0, "RIGHT"

    const-string v1, "\u2192"

    invoke-virtual {p0, v0, v1}, Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysConstants$EXTRA_KEY_DISPLAY_MAPS$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    const-string v0, "UP"

    const-string v1, "\u2191"

    invoke-virtual {p0, v0, v1}, Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysConstants$EXTRA_KEY_DISPLAY_MAPS$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    const-string v0, "DOWN"

    const-string v1, "\u2193"

    invoke-virtual {p0, v0, v1}, Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysConstants$EXTRA_KEY_DISPLAY_MAPS$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    return-void
.end method
