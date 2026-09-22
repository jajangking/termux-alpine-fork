.class public final Lcom/termux/terminal/KeyHandler;
.super Ljava/lang/Object;
.source "KeyHandler.java"


# static fields
.field public static final KEYMOD_ALT:I = -0x80000000

.field public static final KEYMOD_CTRL:I = 0x40000000

.field public static final KEYMOD_NUM_LOCK:I = 0x10000000

.field public static final KEYMOD_SHIFT:I = 0x20000000

.field private static final TERMCAP_TO_KEYCODE:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 64
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/termux/terminal/KeyHandler;->TERMCAP_TO_KEYCODE:Ljava/util/Map;

    .line 69
    const v1, 0x20000016

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "%i"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    const v1, 0x2000007a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "#2"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    const v1, 0x20000015

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "#4"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    const v1, 0x2000007b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "*7"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    const/16 v1, 0x83

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "k1"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    const/16 v1, 0x84

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "k2"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    const/16 v1, 0x85

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "k3"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    const/16 v1, 0x86

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "k4"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    const/16 v1, 0x87

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "k5"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    const/16 v1, 0x88

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "k6"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    const/16 v1, 0x89

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "k7"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    const/16 v1, 0x8a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "k8"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    const/16 v1, 0x8b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "k9"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    const/16 v1, 0x8c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "k;"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    const/16 v1, 0x8d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "F1"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    const/16 v1, 0x8e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "F2"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    const v1, 0x20000083

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "F3"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    const v1, 0x20000084

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "F4"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    const v1, 0x20000085

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "F5"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    const v1, 0x20000086

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "F6"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    const v1, 0x20000087

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "F7"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    const v1, 0x20000088

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "F8"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    const v1, 0x20000089

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "F9"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    const v1, 0x2000008a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "FA"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    const v1, 0x2000008b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "FB"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    const v1, 0x2000008c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "FC"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    const v1, 0x2000008d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "FD"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    const v1, 0x2000008e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "FE"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    const/16 v1, 0x43

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "kb"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    const/16 v1, 0x14

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "kd"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    const/16 v1, 0x7a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "kh"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    const/16 v2, 0x15

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "kl"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    const/16 v2, 0x16

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "kr"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    const-string v2, "K1"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    const/16 v1, 0x5c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "K3"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    const/16 v2, 0x7b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "K4"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    const/16 v3, 0x5d

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "K5"

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    const/16 v4, 0x13

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "ku"

    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    const v4, 0x2000003d

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "kB"

    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    const/16 v4, 0x70

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "kD"

    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    const v4, 0x20000014

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "kDN"

    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    const-string v5, "kF"

    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    const/16 v4, 0x7c

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "kI"

    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    const-string v4, "kN"

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    const-string v1, "kP"

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    const v1, 0x20000013

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "kR"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    const-string v3, "kUP"

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    const-string v1, "@7"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    const/16 v1, 0xa0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "@8"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCode(IIZZ)Ljava/lang/String;
    .locals 21
    .param p0, "keyCode"    # I
    .param p1, "keyMode"    # I
    .param p2, "cursorApp"    # Z
    .param p3, "keypadApplication"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "keyCode",
            "keyMode",
            "cursorApp",
            "keypadApplication"
        }
    .end annotation

    .line 157
    const/high16 v0, 0x10000000

    and-int v0, p1, v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 158
    .local v0, "numLockOn":Z
    :goto_0
    const v1, -0x10000001

    and-int v1, p1, v1

    .line 159
    .end local p1    # "keyMode":I
    .local v1, "keyMode":I
    const-string v2, "\u001b[B"

    const-string v3, "\u001bOA"

    const-string v4, "\u001b[A"

    const-string v5, "\u001bOP"

    const/16 v7, 0x48

    const/16 v8, 0x43

    const/16 v11, 0x41

    const-string v12, "\u001b[2"

    const-string v13, "\u001b[3"

    const-string v14, "\u001b[6~"

    const-string v15, "\u001b[5~"

    const/high16 v16, -0x80000000

    const/high16 v17, 0x40000000    # 2.0f

    const-string v18, "\r"

    const-string v19, "\u001b"

    const/16 v20, 0x0

    const/16 v6, 0x7e

    const-string v10, "\u001bO"

    const-string v9, "\u001b[1"

    sparse-switch p0, :sswitch_data_0

    .line 341
    return-object v20

    .line 338
    :sswitch_0
    if-eqz p3, :cond_1

    const/16 v2, 0x58

    invoke-static {v10, v1, v2}, Lcom/termux/terminal/KeyHandler;->transformForModifiers(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_1
    const-string v2, "="

    :goto_1
    return-object v2

    .line 254
    :sswitch_1
    if-eqz p3, :cond_2

    const/16 v2, 0x4d

    invoke-static {v10, v1, v2}, Lcom/termux/terminal/KeyHandler;->transformForModifiers(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_2
    const-string v2, "\n"

    :goto_2
    return-object v2

    .line 260
    :sswitch_2
    const-string v2, ","

    return-object v2

    .line 262
    :sswitch_3
    if-eqz v0, :cond_4

    .line 263
    if-eqz p3, :cond_3

    const-string v2, "\u001bOn"

    goto :goto_3

    :cond_3
    const-string v2, "."

    :goto_3
    return-object v2

    .line 266
    :cond_4
    invoke-static {v13, v1, v6}, Lcom/termux/terminal/KeyHandler;->transformForModifiers(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 258
    :sswitch_4
    if-eqz p3, :cond_5

    const/16 v2, 0x6b

    invoke-static {v10, v1, v2}, Lcom/termux/terminal/KeyHandler;->transformForModifiers(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    :cond_5
    const-string v2, "+"

    :goto_4
    return-object v2

    .line 269
    :sswitch_5
    if-eqz p3, :cond_6

    const/16 v2, 0x6d

    invoke-static {v10, v1, v2}, Lcom/termux/terminal/KeyHandler;->transformForModifiers(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v2

    goto :goto_5

    :cond_6
    const-string v2, "-"

    :goto_5
    return-object v2

    .line 256
    :sswitch_6
    if-eqz p3, :cond_7

    const/16 v2, 0x6a

    invoke-static {v10, v1, v2}, Lcom/termux/terminal/KeyHandler;->transformForModifiers(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v2

    goto :goto_6

    :cond_7
    const-string v2, "*"

    :goto_6
    return-object v2

    .line 271
    :sswitch_7
    if-eqz p3, :cond_8

    const/16 v2, 0x6f

    invoke-static {v10, v1, v2}, Lcom/termux/terminal/KeyHandler;->transformForModifiers(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v2

    goto :goto_7

    :cond_8
    const-string v2, "/"

    :goto_7
    return-object v2

    .line 331
    :sswitch_8
    if-eqz v0, :cond_a

    .line 332
    if-eqz p3, :cond_9

    const/16 v2, 0x79

    invoke-static {v10, v1, v2}, Lcom/termux/terminal/KeyHandler;->transformForModifiers(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v2

    goto :goto_8

    :cond_9
    const-string v2, "9"

    :goto_8
    return-object v2

    .line 335
    :cond_a
    return-object v15

    .line 324
    :sswitch_9
    if-eqz v0, :cond_c

    .line 325
    if-eqz p3, :cond_b

    const/16 v2, 0x78

    invoke-static {v10, v1, v2}, Lcom/termux/terminal/KeyHandler;->transformForModifiers(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v2

    goto :goto_9

    :cond_b
    const-string v2, "8"

    :goto_9
    return-object v2

    .line 328
    :cond_c
    if-nez v1, :cond_e

    if-eqz p2, :cond_d

    goto :goto_a

    :cond_d
    move-object v3, v4

    goto :goto_a

    :cond_e
    invoke-static {v9, v1, v11}, Lcom/termux/terminal/KeyHandler;->transformForModifiers(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v3

    :goto_a
    return-object v3

    .line 317
    :sswitch_a
    if-eqz v0, :cond_10

    .line 318
    if-eqz p3, :cond_f

    const/16 v2, 0x77

    invoke-static {v10, v1, v2}, Lcom/termux/terminal/KeyHandler;->transformForModifiers(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v2

    goto :goto_b

    :cond_f
    const-string v2, "7"

    :goto_b
    return-object v2

    .line 321
    :cond_10
    if-nez v1, :cond_12

    if-eqz p2, :cond_11

    const-string v2, "\u001bOH"

    goto :goto_c

    :cond_11
    const-string v2, "\u001b[H"

    goto :goto_c

    :cond_12
    invoke-static {v9, v1, v7}, Lcom/termux/terminal/KeyHandler;->transformForModifiers(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v2

    :goto_c
    return-object v2

    .line 310
    :sswitch_b
    if-eqz v0, :cond_14

    .line 311
    if-eqz p3, :cond_13

    const/16 v2, 0x76

    invoke-static {v10, v1, v2}, Lcom/termux/terminal/KeyHandler;->transformForModifiers(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v2

    goto :goto_d

    :cond_13
    const-string v2, "6"

    :goto_d
    return-object v2

    .line 314
    :cond_14
    if-nez v1, :cond_16

    if-eqz p2, :cond_15

    const-string v2, "\u001bOC"

    goto :goto_e

    :cond_15
    const-string v2, "\u001b[C"

    goto :goto_e

    :cond_16
    invoke-static {v9, v1, v8}, Lcom/termux/terminal/KeyHandler;->transformForModifiers(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v2

    :goto_e
    return-object v2

    .line 308
    :sswitch_c
    if-eqz p3, :cond_17

    const/16 v2, 0x75

    invoke-static {v10, v1, v2}, Lcom/termux/terminal/KeyHandler;->transformForModifiers(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v2

    goto :goto_f

    :cond_17
    const-string v2, "5"

    :goto_f
    return-object v2

    .line 301
    :sswitch_d
    if-eqz v0, :cond_19

    .line 302
    if-eqz p3, :cond_18

    const/16 v2, 0x74

    invoke-static {v10, v1, v2}, Lcom/termux/terminal/KeyHandler;->transformForModifiers(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v2

    goto :goto_10

    :cond_18
    const-string v2, "4"

    :goto_10
    return-object v2

    .line 305
    :cond_19
    if-nez v1, :cond_1b

    if-eqz p2, :cond_1a

    const-string v2, "\u001bOD"

    goto :goto_11

    :cond_1a
    const-string v2, "\u001b[D"

    goto :goto_11

    :cond_1b
    const/16 v2, 0x44

    invoke-static {v9, v1, v2}, Lcom/termux/terminal/KeyHandler;->transformForModifiers(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v2

    :goto_11
    return-object v2

    .line 294
    :sswitch_e
    if-eqz v0, :cond_1d

    .line 295
    if-eqz p3, :cond_1c

    const/16 v2, 0x73

    invoke-static {v10, v1, v2}, Lcom/termux/terminal/KeyHandler;->transformForModifiers(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v2

    goto :goto_12

    :cond_1c
    const-string v2, "3"

    :goto_12
    return-object v2

    .line 298
    :cond_1d
    return-object v14

    .line 287
    :sswitch_f
    if-eqz v0, :cond_1f

    .line 288
    if-eqz p3, :cond_1e

    const/16 v2, 0x72

    invoke-static {v10, v1, v2}, Lcom/termux/terminal/KeyHandler;->transformForModifiers(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v2

    goto :goto_13

    :cond_1e
    const-string v2, "2"

    :goto_13
    return-object v2

    .line 291
    :cond_1f
    if-nez v1, :cond_20

    if-eqz p2, :cond_21

    const-string v2, "\u001bOB"

    goto :goto_14

    :cond_20
    const/16 v2, 0x42

    invoke-static {v9, v1, v2}, Lcom/termux/terminal/KeyHandler;->transformForModifiers(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v2

    :cond_21
    :goto_14
    return-object v2

    .line 280
    :sswitch_10
    if-eqz v0, :cond_23

    .line 281
    if-eqz p3, :cond_22

    const/16 v2, 0x71

    invoke-static {v10, v1, v2}, Lcom/termux/terminal/KeyHandler;->transformForModifiers(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v2

    goto :goto_15

    :cond_22
    const-string v2, "1"

    :goto_15
    return-object v2

    .line 284
    :cond_23
    if-nez v1, :cond_25

    if-eqz p2, :cond_24

    const-string v2, "\u001bOF"

    goto :goto_16

    :cond_24
    const-string v2, "\u001b[F"

    goto :goto_16

    :cond_25
    const/16 v2, 0x46

    invoke-static {v9, v1, v2}, Lcom/termux/terminal/KeyHandler;->transformForModifiers(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v2

    :goto_16
    return-object v2

    .line 273
    :sswitch_11
    if-eqz v0, :cond_27

    .line 274
    if-eqz p3, :cond_26

    const/16 v2, 0x70

    invoke-static {v10, v1, v2}, Lcom/termux/terminal/KeyHandler;->transformForModifiers(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v2

    goto :goto_17

    :cond_26
    const-string v2, "0"

    :goto_17
    return-object v2

    .line 277
    :cond_27
    invoke-static {v12, v1, v6}, Lcom/termux/terminal/KeyHandler;->transformForModifiers(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 238
    :sswitch_12
    if-eqz p3, :cond_28

    .line 239
    return-object v5

    .line 241
    :cond_28
    return-object v20

    .line 212
    :sswitch_13
    const-string v2, "\u001b[24"

    invoke-static {v2, v1, v6}, Lcom/termux/terminal/KeyHandler;->transformForModifiers(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 210
    :sswitch_14
    const-string v2, "\u001b[23"

    invoke-static {v2, v1, v6}, Lcom/termux/terminal/KeyHandler;->transformForModifiers(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 208
    :sswitch_15
    const-string v2, "\u001b[21"

    invoke-static {v2, v1, v6}, Lcom/termux/terminal/KeyHandler;->transformForModifiers(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 206
    :sswitch_16
    const-string v2, "\u001b[20"

    invoke-static {v2, v1, v6}, Lcom/termux/terminal/KeyHandler;->transformForModifiers(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 204
    :sswitch_17
    const-string v2, "\u001b[19"

    invoke-static {v2, v1, v6}, Lcom/termux/terminal/KeyHandler;->transformForModifiers(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 202
    :sswitch_18
    const-string v2, "\u001b[18"

    invoke-static {v2, v1, v6}, Lcom/termux/terminal/KeyHandler;->transformForModifiers(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 200
    :sswitch_19
    const-string v2, "\u001b[17"

    invoke-static {v2, v1, v6}, Lcom/termux/terminal/KeyHandler;->transformForModifiers(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 198
    :sswitch_1a
    const-string v2, "\u001b[15"

    invoke-static {v2, v1, v6}, Lcom/termux/terminal/KeyHandler;->transformForModifiers(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 196
    :sswitch_1b
    if-nez v1, :cond_29

    const-string v2, "\u001bOS"

    goto :goto_18

    :cond_29
    const/16 v2, 0x53

    invoke-static {v9, v1, v2}, Lcom/termux/terminal/KeyHandler;->transformForModifiers(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v2

    :goto_18
    return-object v2

    .line 194
    :sswitch_1c
    if-nez v1, :cond_2a

    const-string v2, "\u001bOR"

    goto :goto_19

    :cond_2a
    const/16 v2, 0x52

    invoke-static {v9, v1, v2}, Lcom/termux/terminal/KeyHandler;->transformForModifiers(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v2

    :goto_19
    return-object v2

    .line 192
    :sswitch_1d
    if-nez v1, :cond_2b

    const-string v2, "\u001bOQ"

    goto :goto_1a

    :cond_2b
    const/16 v2, 0x51

    invoke-static {v9, v1, v2}, Lcom/termux/terminal/KeyHandler;->transformForModifiers(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v2

    :goto_1a
    return-object v2

    .line 190
    :sswitch_1e
    if-nez v1, :cond_2c

    goto :goto_1b

    :cond_2c
    const/16 v2, 0x50

    invoke-static {v9, v1, v2}, Lcom/termux/terminal/KeyHandler;->transformForModifiers(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v5

    :goto_1b
    return-object v5

    .line 225
    :sswitch_1f
    invoke-static {v12, v1, v6}, Lcom/termux/terminal/KeyHandler;->transformForModifiers(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 177
    :sswitch_20
    if-nez v1, :cond_2e

    if-eqz p2, :cond_2d

    const-string v2, "\u001bOF"

    goto :goto_1c

    :cond_2d
    const-string v2, "\u001b[F"

    goto :goto_1c

    :cond_2e
    const/16 v2, 0x46

    invoke-static {v9, v1, v2}, Lcom/termux/terminal/KeyHandler;->transformForModifiers(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v2

    :goto_1c
    return-object v2

    .line 175
    :sswitch_21
    if-nez v1, :cond_30

    if-eqz p2, :cond_2f

    const-string v2, "\u001bOH"

    goto :goto_1d

    :cond_2f
    const-string v2, "\u001b[H"

    goto :goto_1d

    :cond_30
    invoke-static {v9, v1, v7}, Lcom/termux/terminal/KeyHandler;->transformForModifiers(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v2

    :goto_1d
    return-object v2

    .line 218
    :sswitch_22
    const-string v2, "\u001b[34~"

    return-object v2

    .line 215
    :sswitch_23
    const-string v2, "\u001b[32~"

    return-object v2

    .line 227
    :sswitch_24
    invoke-static {v13, v1, v6}, Lcom/termux/terminal/KeyHandler;->transformForModifiers(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 232
    :sswitch_25
    return-object v14

    .line 230
    :sswitch_26
    return-object v15

    .line 234
    :sswitch_27
    and-int v2, v1, v16

    if-nez v2, :cond_31

    const-string v19, ""

    :cond_31
    move-object/from16 v2, v19

    .line 236
    .local v2, "prefix":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    and-int v4, v1, v17

    if-nez v4, :cond_32

    const-string v4, "\u007f"

    goto :goto_1e

    :cond_32
    const-string v4, "\u0008"

    :goto_1e
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 251
    .end local v2    # "prefix":Ljava/lang/String;
    :sswitch_28
    and-int v2, v1, v16

    if-nez v2, :cond_33

    goto :goto_1f

    :cond_33
    const-string v18, "\u001b\r"

    :goto_1f
    return-object v18

    .line 246
    :sswitch_29
    and-int v2, v1, v17

    if-nez v2, :cond_34

    goto :goto_20

    :cond_34
    const-string v20, "\u0000"

    :goto_20
    return-object v20

    .line 249
    :sswitch_2a
    const/high16 v2, 0x20000000

    and-int/2addr v2, v1

    if-nez v2, :cond_35

    const-string v2, "\t"

    goto :goto_21

    :cond_35
    const-string v2, "\u001b[Z"

    :goto_21
    return-object v2

    .line 161
    :sswitch_2b
    return-object v18

    .line 168
    :sswitch_2c
    if-nez v1, :cond_37

    if-eqz p2, :cond_36

    const-string v2, "\u001bOC"

    goto :goto_22

    :cond_36
    const-string v2, "\u001b[C"

    goto :goto_22

    :cond_37
    invoke-static {v9, v1, v8}, Lcom/termux/terminal/KeyHandler;->transformForModifiers(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v2

    :goto_22
    return-object v2

    .line 170
    :sswitch_2d
    if-nez v1, :cond_39

    if-eqz p2, :cond_38

    const-string v2, "\u001bOD"

    goto :goto_23

    :cond_38
    const-string v2, "\u001b[D"

    goto :goto_23

    :cond_39
    const/16 v2, 0x44

    invoke-static {v9, v1, v2}, Lcom/termux/terminal/KeyHandler;->transformForModifiers(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v2

    :goto_23
    return-object v2

    .line 166
    :sswitch_2e
    if-nez v1, :cond_3a

    if-eqz p2, :cond_3b

    const-string v2, "\u001bOB"

    goto :goto_24

    :cond_3a
    const/16 v2, 0x42

    invoke-static {v9, v1, v2}, Lcom/termux/terminal/KeyHandler;->transformForModifiers(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v2

    :cond_3b
    :goto_24
    return-object v2

    .line 164
    :sswitch_2f
    if-nez v1, :cond_3d

    if-eqz p2, :cond_3c

    goto :goto_25

    :cond_3c
    move-object v3, v4

    goto :goto_25

    :cond_3d
    invoke-static {v9, v1, v11}, Lcom/termux/terminal/KeyHandler;->transformForModifiers(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v3

    :goto_25
    return-object v3

    .line 222
    :sswitch_30
    return-object v19

    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_30
        0x13 -> :sswitch_2f
        0x14 -> :sswitch_2e
        0x15 -> :sswitch_2d
        0x16 -> :sswitch_2c
        0x17 -> :sswitch_2b
        0x3d -> :sswitch_2a
        0x3e -> :sswitch_29
        0x42 -> :sswitch_28
        0x43 -> :sswitch_27
        0x5c -> :sswitch_26
        0x5d -> :sswitch_25
        0x6f -> :sswitch_30
        0x70 -> :sswitch_24
        0x78 -> :sswitch_23
        0x79 -> :sswitch_22
        0x7a -> :sswitch_21
        0x7b -> :sswitch_20
        0x7c -> :sswitch_1f
        0x83 -> :sswitch_1e
        0x84 -> :sswitch_1d
        0x85 -> :sswitch_1c
        0x86 -> :sswitch_1b
        0x87 -> :sswitch_1a
        0x88 -> :sswitch_19
        0x89 -> :sswitch_18
        0x8a -> :sswitch_17
        0x8b -> :sswitch_16
        0x8c -> :sswitch_15
        0x8d -> :sswitch_14
        0x8e -> :sswitch_13
        0x8f -> :sswitch_12
        0x90 -> :sswitch_11
        0x91 -> :sswitch_10
        0x92 -> :sswitch_f
        0x93 -> :sswitch_e
        0x94 -> :sswitch_d
        0x95 -> :sswitch_c
        0x96 -> :sswitch_b
        0x97 -> :sswitch_a
        0x98 -> :sswitch_9
        0x99 -> :sswitch_8
        0x9a -> :sswitch_7
        0x9b -> :sswitch_6
        0x9c -> :sswitch_5
        0x9d -> :sswitch_4
        0x9e -> :sswitch_3
        0x9f -> :sswitch_2
        0xa0 -> :sswitch_1
        0xa1 -> :sswitch_0
    .end sparse-switch
.end method

.method static getCodeFromTermcap(Ljava/lang/String;ZZ)Ljava/lang/String;
    .locals 5
    .param p0, "termcap"    # Ljava/lang/String;
    .param p1, "cursorKeysApplication"    # Z
    .param p2, "keypadApplication"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "termcap",
            "cursorKeysApplication",
            "keypadApplication"
        }
    .end annotation

    .line 133
    sget-object v0, Lcom/termux/terminal/KeyHandler;->TERMCAP_TO_KEYCODE:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 134
    .local v0, "keyCodeAndMod":Ljava/lang/Integer;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    return-object v1

    .line 135
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 136
    .local v1, "keyCode":I
    const/4 v2, 0x0

    .line 137
    .local v2, "keyMod":I
    const/high16 v3, 0x20000000

    and-int v4, v1, v3

    if-eqz v4, :cond_1

    .line 138
    or-int/2addr v2, v3

    .line 139
    const v3, -0x20000001

    and-int/2addr v1, v3

    .line 141
    :cond_1
    const/high16 v3, 0x40000000    # 2.0f

    and-int v4, v1, v3

    if-eqz v4, :cond_2

    .line 142
    or-int/2addr v2, v3

    .line 143
    const v3, -0x40000001    # -1.9999999f

    and-int/2addr v1, v3

    .line 145
    :cond_2
    const/high16 v3, -0x80000000

    and-int v4, v1, v3

    if-eqz v4, :cond_3

    .line 146
    or-int/2addr v2, v3

    .line 147
    const v3, 0x7fffffff

    and-int/2addr v1, v3

    .line 149
    :cond_3
    const/high16 v3, 0x10000000

    and-int v4, v1, v3

    if-eqz v4, :cond_4

    .line 150
    or-int/2addr v2, v3

    .line 151
    const v3, -0x10000001

    and-int/2addr v1, v3

    .line 153
    :cond_4
    invoke-static {v1, v2, p1, p2}, Lcom/termux/terminal/KeyHandler;->getCode(IIZZ)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private static transformForModifiers(Ljava/lang/String;IC)Ljava/lang/String;
    .locals 3
    .param p0, "start"    # Ljava/lang/String;
    .param p1, "keymod"    # I
    .param p2, "lastChar"    # C
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "start",
            "keymod",
            "lastChar"
        }
    .end annotation

    .line 346
    sparse-switch p1, :sswitch_data_0

    .line 369
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 360
    :sswitch_0
    const/4 v0, 0x6

    .line 361
    .local v0, "modifier":I
    goto :goto_0

    .line 357
    .end local v0    # "modifier":I
    :sswitch_1
    const/4 v0, 0x5

    .line 358
    .restart local v0    # "modifier":I
    goto :goto_0

    .line 348
    .end local v0    # "modifier":I
    :sswitch_2
    const/4 v0, 0x2

    .line 349
    .restart local v0    # "modifier":I
    goto :goto_0

    .line 366
    .end local v0    # "modifier":I
    :sswitch_3
    const/16 v0, 0x8

    .line 367
    .restart local v0    # "modifier":I
    goto :goto_0

    .line 363
    .end local v0    # "modifier":I
    :sswitch_4
    const/4 v0, 0x7

    .line 364
    .restart local v0    # "modifier":I
    goto :goto_0

    .line 354
    .end local v0    # "modifier":I
    :sswitch_5
    const/4 v0, 0x4

    .line 355
    .restart local v0    # "modifier":I
    goto :goto_0

    .line 351
    .end local v0    # "modifier":I
    :sswitch_6
    const/4 v0, 0x3

    .line 352
    .restart local v0    # "modifier":I
    nop

    .line 371
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_6
        -0x60000000 -> :sswitch_5
        -0x40000000 -> :sswitch_4
        -0x20000000 -> :sswitch_3
        0x20000000 -> :sswitch_2
        0x40000000 -> :sswitch_1
        0x60000000 -> :sswitch_0
    .end sparse-switch
.end method
