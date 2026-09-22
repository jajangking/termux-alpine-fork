.class public final Lcom/termux/terminal/TerminalColorScheme;
.super Ljava/lang/Object;
.source "TerminalColorScheme.java"


# static fields
.field private static final DEFAULT_COLORSCHEME:[I


# instance fields
.field public final mDefaultColors:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 15
    const/16 v0, 0x103

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/termux/terminal/TerminalColorScheme;->DEFAULT_COLORSCHEME:[I

    return-void

    :array_0
    .array-data 4
        -0x1000000
        -0x330000
        -0xff3300
        -0x323300
        -0x9b6a13
        -0x32ff33
        -0xff3233
        -0x1a1a1b
        -0x808081
        -0x10000
        -0xff0100
        -0x100
        -0xa3a301
        -0xff01
        -0xff0001
        -0x1
        -0x1000000
        -0xffffa1
        -0xffff79
        -0xffff51
        -0xffff29
        -0xffff01
        -0xffa100
        -0xffa0a1
        -0xffa079
        -0xffa051
        -0xffa029
        -0xffa001
        -0xff7900
        -0xff78a1
        -0xff7879
        -0xff7851
        -0xff7829
        -0xff7801
        -0xff5100
        -0xff50a1
        -0xff5079
        -0xff5051
        -0xff5029
        -0xff5001
        -0xff2900
        -0xff28a1
        -0xff2879
        -0xff2851
        -0xff2829
        -0xff2801
        -0xff0100
        -0xff00a1
        -0xff0079
        -0xff0051
        -0xff0029
        -0xff0001
        -0xa10000
        -0xa0ffa1
        -0xa0ff79
        -0xa0ff51
        -0xa0ff29
        -0xa0ff01
        -0xa0a100
        -0xa0a0a1
        -0xa0a079
        -0xa0a051
        -0xa0a029
        -0xa0a001
        -0xa07900
        -0xa078a1
        -0xa07879
        -0xa07851
        -0xa07829
        -0xa07801
        -0xa05100
        -0xa050a1
        -0xa05079
        -0xa05051
        -0xa05029
        -0xa05001
        -0xa02900
        -0xa028a1
        -0xa02879
        -0xa02851
        -0xa02829
        -0xa02801
        -0xa00100
        -0xa000a1
        -0xa00079
        -0xa00051
        -0xa00029
        -0xa00001
        -0x790000
        -0x78ffa1
        -0x78ff79
        -0x78ff51
        -0x78ff29
        -0x78ff01
        -0x78a100
        -0x78a0a1
        -0x78a079
        -0x78a051
        -0x78a029
        -0x78a001
        -0x787900
        -0x7878a1
        -0x787879
        -0x787851
        -0x787829
        -0x787801
        -0x785100
        -0x7850a1
        -0x785079
        -0x785051
        -0x785029
        -0x785001
        -0x782900
        -0x7828a1
        -0x782879
        -0x782851
        -0x782829
        -0x782801
        -0x780100
        -0x7800a1
        -0x780079
        -0x780051
        -0x780029
        -0x780001
        -0x510000
        -0x50ffa1
        -0x50ff79
        -0x50ff51
        -0x50ff29
        -0x50ff01
        -0x50a100
        -0x50a0a1
        -0x50a079
        -0x50a051
        -0x50a029
        -0x50a001
        -0x507900
        -0x5078a1
        -0x507879
        -0x507851
        -0x507829
        -0x507801
        -0x505100
        -0x5050a1
        -0x505079
        -0x505051
        -0x505029
        -0x505001
        -0x502900
        -0x5028a1
        -0x502879
        -0x502851
        -0x502829
        -0x502801
        -0x500100
        -0x5000a1
        -0x500079
        -0x500051
        -0x500029
        -0x500001
        -0x290000
        -0x28ffa1
        -0x28ff79
        -0x28ff51
        -0x28ff29
        -0x28ff01
        -0x28a100
        -0x28a0a1
        -0x28a079
        -0x28a051
        -0x28a029
        -0x28a001
        -0x287900
        -0x2878a1
        -0x287879
        -0x287851
        -0x287829
        -0x287801
        -0x285100
        -0x2850a1
        -0x285079
        -0x285051
        -0x285029
        -0x285001
        -0x282900
        -0x2828a1
        -0x282879
        -0x282851
        -0x282829
        -0x282801
        -0x280100
        -0x2800a1
        -0x280079
        -0x280051
        -0x280029
        -0x280001
        -0x10000
        -0xffa1
        -0xff79
        -0xff51
        -0xff29
        -0xff01
        -0xa100
        -0xa0a1
        -0xa079
        -0xa051
        -0xa029
        -0xa001
        -0x7900
        -0x78a1
        -0x7879
        -0x7851
        -0x7829
        -0x7801
        -0x5100
        -0x50a1
        -0x5079
        -0x5051
        -0x5029
        -0x5001
        -0x2900
        -0x28a1
        -0x2879
        -0x2851
        -0x2829
        -0x2801
        -0x100
        -0xa1
        -0x79
        -0x51
        -0x29
        -0x1
        -0xf7f7f8
        -0xededee
        -0xe3e3e4
        -0xd9d9da
        -0xcfcfd0
        -0xc5c5c6
        -0xbbbbbc
        -0xb1b1b2
        -0xa7a7a8
        -0x9d9d9e
        -0x939394
        -0x89898a
        -0x7f7f80
        -0x757576
        -0x6b6b6c
        -0x616162
        -0x575758
        -0x4d4d4e
        -0x434344
        -0x39393a
        -0x2f2f30
        -0x252526
        -0x1b1b1c
        -0x111112
        -0x1
        -0x1000000
        -0x1
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    const/16 v0, 0x103

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/termux/terminal/TerminalColorScheme;->mDefaultColors:[I

    .line 65
    invoke-direct {p0}, Lcom/termux/terminal/TerminalColorScheme;->reset()V

    .line 66
    return-void
.end method

.method private reset()V
    .locals 4

    .line 69
    sget-object v0, Lcom/termux/terminal/TerminalColorScheme;->DEFAULT_COLORSCHEME:[I

    iget-object v1, p0, Lcom/termux/terminal/TerminalColorScheme;->mDefaultColors:[I

    const/4 v2, 0x0

    const/16 v3, 0x103

    invoke-static {v0, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 70
    return-void
.end method


# virtual methods
.method public setCursorColorForBackground()V
    .locals 5

    .line 116
    iget-object v0, p0, Lcom/termux/terminal/TerminalColorScheme;->mDefaultColors:[I

    const/16 v1, 0x101

    aget v0, v0, v1

    .line 117
    .local v0, "backgroundColor":I
    invoke-static {v0}, Lcom/termux/terminal/TerminalColors;->getPerceivedBrightnessOfColor(I)I

    move-result v1

    .line 118
    .local v1, "brightness":I
    if-lez v1, :cond_1

    .line 119
    const/16 v2, 0x82

    const/16 v3, 0x102

    if-ge v1, v2, :cond_0

    .line 120
    iget-object v2, p0, Lcom/termux/terminal/TerminalColorScheme;->mDefaultColors:[I

    const/4 v4, -0x1

    aput v4, v2, v3

    goto :goto_0

    .line 122
    :cond_0
    iget-object v2, p0, Lcom/termux/terminal/TerminalColorScheme;->mDefaultColors:[I

    const/high16 v4, -0x1000000

    aput v4, v2, v3

    .line 124
    :cond_1
    :goto_0
    return-void
.end method

.method public updateWith(Ljava/util/Properties;)V
    .locals 10
    .param p1, "props"    # Ljava/util/Properties;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "props"
        }
    .end annotation

    .line 73
    invoke-direct {p0}, Lcom/termux/terminal/TerminalColorScheme;->reset()V

    .line 74
    const/4 v0, 0x0

    .line 75
    .local v0, "cursorPropExists":Z
    invoke-virtual {p1}, Ljava/util/Properties;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 76
    .local v2, "entries":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 77
    .local v3, "key":Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 80
    .local v4, "value":Ljava/lang/String;
    const-string v5, "foreground"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const-string v6, "\'"

    if-eqz v5, :cond_0

    .line 81
    const/16 v5, 0x100

    .local v5, "colorIndex":I
    goto :goto_1

    .line 82
    .end local v5    # "colorIndex":I
    :cond_0
    const-string v5, "background"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 83
    const/16 v5, 0x101

    .restart local v5    # "colorIndex":I
    goto :goto_1

    .line 84
    .end local v5    # "colorIndex":I
    :cond_1
    const-string v5, "cursor"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 85
    const/16 v5, 0x102

    .line 86
    .restart local v5    # "colorIndex":I
    const/4 v0, 0x1

    goto :goto_1

    .line 87
    .end local v5    # "colorIndex":I
    :cond_2
    const-string v5, "color"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    const-string v7, "Invalid property: \'"

    if-eqz v5, :cond_4

    .line 89
    const/4 v5, 0x5

    :try_start_0
    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    .restart local v5    # "colorIndex":I
    nop

    .line 97
    :goto_1
    invoke-static {v4}, Lcom/termux/terminal/TerminalColors;->parse(Ljava/lang/String;)I

    move-result v7

    .line 98
    .local v7, "colorValue":I
    if-eqz v7, :cond_3

    .line 101
    iget-object v6, p0, Lcom/termux/terminal/TerminalColorScheme;->mDefaultColors:[I

    aput v7, v6, v5

    .line 102
    .end local v2    # "entries":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "value":Ljava/lang/String;
    .end local v5    # "colorIndex":I
    .end local v7    # "colorValue":I
    goto :goto_0

    .line 99
    .restart local v2    # "entries":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    .restart local v3    # "key":Ljava/lang/String;
    .restart local v4    # "value":Ljava/lang/String;
    .restart local v5    # "colorIndex":I
    .restart local v7    # "colorValue":I
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Property \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\' has invalid color: \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 90
    .end local v5    # "colorIndex":I
    .end local v7    # "colorValue":I
    :catch_0
    move-exception v1

    .line 91
    .local v1, "e":Ljava/lang/NumberFormatException;
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 94
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :cond_4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 104
    .end local v2    # "entries":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "value":Ljava/lang/String;
    :cond_5
    if-nez v0, :cond_6

    .line 105
    invoke-virtual {p0}, Lcom/termux/terminal/TerminalColorScheme;->setCursorColorForBackground()V

    .line 106
    :cond_6
    return-void
.end method
