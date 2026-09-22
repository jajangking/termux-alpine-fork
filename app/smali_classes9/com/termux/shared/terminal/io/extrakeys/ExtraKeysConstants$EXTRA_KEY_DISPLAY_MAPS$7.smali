.class Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysConstants$EXTRA_KEY_DISPLAY_MAPS$7;
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

    .line 131
    invoke-direct {p0}, Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysConstants$ExtraKeyDisplayMap;-><init>()V

    .line 132
    sget-object v0, Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysConstants$EXTRA_KEY_DISPLAY_MAPS;->CLASSIC_ARROWS_DISPLAY:Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysConstants$ExtraKeyDisplayMap;

    invoke-virtual {p0, v0}, Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysConstants$EXTRA_KEY_DISPLAY_MAPS$7;->putAll(Ljava/util/Map;)V

    .line 133
    sget-object v0, Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysConstants$EXTRA_KEY_DISPLAY_MAPS;->WELL_KNOWN_CHARACTERS_DISPLAY:Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysConstants$ExtraKeyDisplayMap;

    invoke-virtual {p0, v0}, Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysConstants$EXTRA_KEY_DISPLAY_MAPS$7;->putAll(Ljava/util/Map;)V

    .line 134
    sget-object v0, Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysConstants$EXTRA_KEY_DISPLAY_MAPS;->LESS_KNOWN_CHARACTERS_DISPLAY:Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysConstants$ExtraKeyDisplayMap;

    invoke-virtual {p0, v0}, Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysConstants$EXTRA_KEY_DISPLAY_MAPS$7;->putAll(Ljava/util/Map;)V

    .line 135
    sget-object v0, Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysConstants$EXTRA_KEY_DISPLAY_MAPS;->NICER_LOOKING_DISPLAY:Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysConstants$ExtraKeyDisplayMap;

    invoke-virtual {p0, v0}, Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysConstants$EXTRA_KEY_DISPLAY_MAPS$7;->putAll(Ljava/util/Map;)V

    .line 136
    sget-object v0, Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysConstants$EXTRA_KEY_DISPLAY_MAPS;->NOT_KNOWN_ISO_CHARACTERS:Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysConstants$ExtraKeyDisplayMap;

    invoke-virtual {p0, v0}, Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysConstants$EXTRA_KEY_DISPLAY_MAPS$7;->putAll(Ljava/util/Map;)V

    .line 137
    return-void
.end method
