.class public Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysConstants;
.super Ljava/lang/Object;
.source "ExtraKeysConstants.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysConstants$ExtraKeyDisplayMap;,
        Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysConstants$EXTRA_KEY_DISPLAY_MAPS;,
        Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysConstants$CleverMap;
    }
.end annotation


# static fields
.field public static final CONTROL_CHARS_ALIASES:Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysConstants$ExtraKeyDisplayMap;

.field public static PRIMARY_KEY_CODES_FOR_STRINGS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static PRIMARY_REPETITIVE_KEYS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 13
    const-string v0, "UP"

    const-string v1, "DOWN"

    const-string v2, "LEFT"

    const-string v3, "RIGHT"

    const-string v4, "BKSP"

    const-string v5, "DEL"

    const-string v6, "PGUP"

    const-string v7, "PGDN"

    filled-new-array/range {v0 .. v7}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysConstants;->PRIMARY_REPETITIVE_KEYS:Ljava/util/List;

    .line 21
    new-instance v0, Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysConstants$1;

    invoke-direct {v0}, Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysConstants$1;-><init>()V

    sput-object v0, Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysConstants;->PRIMARY_KEY_CODES_FOR_STRINGS:Ljava/util/Map;

    .line 176
    new-instance v0, Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysConstants$2;

    invoke-direct {v0}, Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysConstants$2;-><init>()V

    sput-object v0, Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysConstants;->CONTROL_CHARS_ALIASES:Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysConstants$ExtraKeyDisplayMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
