.class Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysConstants$EXTRA_KEY_DISPLAY_MAPS$8;
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
    .locals 1

    .line 142
    invoke-direct {p0}, Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysConstants$ExtraKeyDisplayMap;-><init>()V

    .line 143
    sget-object v0, Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysConstants$EXTRA_KEY_DISPLAY_MAPS;->CLASSIC_ARROWS_DISPLAY:Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysConstants$ExtraKeyDisplayMap;

    invoke-virtual {p0, v0}, Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysConstants$EXTRA_KEY_DISPLAY_MAPS$8;->putAll(Ljava/util/Map;)V

    .line 146
    sget-object v0, Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysConstants$EXTRA_KEY_DISPLAY_MAPS;->NICER_LOOKING_DISPLAY:Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysConstants$ExtraKeyDisplayMap;

    invoke-virtual {p0, v0}, Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysConstants$EXTRA_KEY_DISPLAY_MAPS$8;->putAll(Ljava/util/Map;)V

    .line 147
    return-void
.end method
