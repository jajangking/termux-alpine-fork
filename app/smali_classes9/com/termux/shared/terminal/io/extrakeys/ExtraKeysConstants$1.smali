.class Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysConstants$1;
.super Ljava/util/HashMap;
.source "ExtraKeysConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .line 21
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 22
    const/16 v0, 0x3e

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "SPACE"

    invoke-virtual {p0, v1, v0}, Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysConstants$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    const/16 v0, 0x6f

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "ESC"

    invoke-virtual {p0, v1, v0}, Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysConstants$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    const/16 v0, 0x3d

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "TAB"

    invoke-virtual {p0, v1, v0}, Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysConstants$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    const/16 v0, 0x7a

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "HOME"

    invoke-virtual {p0, v1, v0}, Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysConstants$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    const/16 v0, 0x7b

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "END"

    invoke-virtual {p0, v1, v0}, Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysConstants$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    const/16 v0, 0x5c

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "PGUP"

    invoke-virtual {p0, v1, v0}, Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysConstants$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    const/16 v0, 0x5d

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "PGDN"

    invoke-virtual {p0, v1, v0}, Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysConstants$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    const/16 v0, 0x7c

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "INS"

    invoke-virtual {p0, v1, v0}, Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysConstants$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    const/16 v0, 0x70

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "DEL"

    invoke-virtual {p0, v1, v0}, Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysConstants$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    const/16 v0, 0x43

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "BKSP"

    invoke-virtual {p0, v1, v0}, Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysConstants$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    const/16 v0, 0x13

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "UP"

    invoke-virtual {p0, v1, v0}, Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysConstants$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    const/16 v0, 0x15

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "LEFT"

    invoke-virtual {p0, v1, v0}, Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysConstants$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    const/16 v0, 0x16

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "RIGHT"

    invoke-virtual {p0, v1, v0}, Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysConstants$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    const/16 v0, 0x14

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "DOWN"

    invoke-virtual {p0, v1, v0}, Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysConstants$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    const/16 v0, 0x42

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "ENTER"

    invoke-virtual {p0, v1, v0}, Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysConstants$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    const/16 v0, 0x83

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "F1"

    invoke-virtual {p0, v1, v0}, Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysConstants$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    const/16 v0, 0x84

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "F2"

    invoke-virtual {p0, v1, v0}, Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysConstants$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    const/16 v0, 0x85

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "F3"

    invoke-virtual {p0, v1, v0}, Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysConstants$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    const/16 v0, 0x86

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "F4"

    invoke-virtual {p0, v1, v0}, Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysConstants$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    const/16 v0, 0x87

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "F5"

    invoke-virtual {p0, v1, v0}, Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysConstants$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    const/16 v0, 0x88

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "F6"

    invoke-virtual {p0, v1, v0}, Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysConstants$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    const/16 v0, 0x89

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "F7"

    invoke-virtual {p0, v1, v0}, Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysConstants$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    const/16 v0, 0x8a

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "F8"

    invoke-virtual {p0, v1, v0}, Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysConstants$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    const/16 v0, 0x8b

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "F9"

    invoke-virtual {p0, v1, v0}, Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysConstants$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    const/16 v0, 0x8c

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "F10"

    invoke-virtual {p0, v1, v0}, Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysConstants$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    const/16 v0, 0x8d

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "F11"

    invoke-virtual {p0, v1, v0}, Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysConstants$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    const/16 v0, 0x8e

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "F12"

    invoke-virtual {p0, v1, v0}, Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysConstants$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    return-void
.end method
