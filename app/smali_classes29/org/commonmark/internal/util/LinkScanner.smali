.class public Lorg/commonmark/internal/util/LinkScanner;
.super Ljava/lang/Object;
.source "LinkScanner.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static scanLinkDestination(Ljava/lang/CharSequence;I)I
    .locals 4
    .param p0, "input"    # Ljava/lang/CharSequence;
    .param p1, "start"    # I

    .line 34
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, -0x1

    if-lt p1, v0, :cond_0

    .line 35
    return v1

    .line 38
    :cond_0
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const/16 v2, 0x3c

    if-ne v0, v2, :cond_3

    .line 39
    add-int/lit8 v0, p1, 0x1

    .local v0, "i":I
    :goto_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 40
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    .line 41
    .local v2, "c":C
    sparse-switch v2, :sswitch_data_0

    goto :goto_1

    .line 43
    :sswitch_0
    add-int/lit8 v3, v0, 0x1

    invoke-static {p0, v3}, Lorg/commonmark/internal/util/Parsing;->isEscapable(Ljava/lang/CharSequence;I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 44
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 51
    :sswitch_1
    add-int/lit8 v1, v0, 0x1

    return v1

    .line 49
    :sswitch_2
    return v1

    .line 39
    .end local v2    # "c":C
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 54
    .end local v0    # "i":I
    :cond_2
    return v1

    .line 56
    :cond_3
    invoke-static {p0, p1}, Lorg/commonmark/internal/util/LinkScanner;->scanLinkDestinationWithBalancedParens(Ljava/lang/CharSequence;I)I

    move-result v0

    return v0

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_2
        0x3c -> :sswitch_2
        0x3e -> :sswitch_1
        0x5c -> :sswitch_0
    .end sparse-switch
.end method

.method private static scanLinkDestinationWithBalancedParens(Ljava/lang/CharSequence;I)I
    .locals 5
    .param p0, "input"    # Ljava/lang/CharSequence;
    .param p1, "start"    # I

    .line 112
    const/4 v0, 0x0

    .line 113
    .local v0, "parens":I
    move v1, p1

    .local v1, "i":I
    :goto_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 114
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    .line 115
    .local v2, "c":C
    const/4 v3, -0x1

    sparse-switch v2, :sswitch_data_0

    .line 140
    invoke-static {v2}, Ljava/lang/Character;->isISOControl(C)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 141
    if-eq v1, p1, :cond_2

    move v3, v1

    goto :goto_1

    .line 120
    :sswitch_0
    add-int/lit8 v3, v1, 0x1

    invoke-static {p0, v3}, Lorg/commonmark/internal/util/Parsing;->isEscapable(Ljava/lang/CharSequence;I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 121
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 132
    :sswitch_1
    if-nez v0, :cond_0

    .line 133
    return v1

    .line 135
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 137
    goto :goto_2

    .line 125
    :sswitch_2
    add-int/lit8 v0, v0, 0x1

    .line 127
    const/16 v4, 0x20

    if-le v0, v4, :cond_3

    .line 128
    return v3

    .line 118
    :sswitch_3
    if-eq v1, p1, :cond_1

    move v3, v1

    :cond_1
    return v3

    .line 141
    :cond_2
    :goto_1
    return v3

    .line 113
    .end local v2    # "c":C
    :cond_3
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 146
    .end local v1    # "i":I
    :cond_4
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    return v1

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_3
        0x20 -> :sswitch_3
        0x28 -> :sswitch_2
        0x29 -> :sswitch_1
        0x5c -> :sswitch_0
    .end sparse-switch
.end method

.method public static scanLinkLabelContent(Ljava/lang/CharSequence;I)I
    .locals 3
    .param p0, "input"    # Ljava/lang/CharSequence;
    .param p1, "start"    # I

    .line 11
    move v0, p1

    .local v0, "i":I
    :goto_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 12
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 13
    .local v1, "c":C
    packed-switch v1, :pswitch_data_0

    goto :goto_1

    .line 20
    :pswitch_0
    return v0

    .line 15
    :pswitch_1
    add-int/lit8 v2, v0, 0x1

    invoke-static {p0, v2}, Lorg/commonmark/internal/util/Parsing;->isEscapable(Ljava/lang/CharSequence;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 16
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 24
    :pswitch_2
    const/4 v2, -0x1

    return v2

    .line 11
    .end local v1    # "c":C
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 27
    .end local v0    # "i":I
    :cond_1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x5b
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static scanLinkTitle(Ljava/lang/CharSequence;I)I
    .locals 4
    .param p0, "input"    # Ljava/lang/CharSequence;
    .param p1, "start"    # I

    .line 61
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, -0x1

    if-lt p1, v0, :cond_0

    .line 62
    return v1

    .line 66
    :cond_0
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 77
    return v1

    .line 74
    :sswitch_0
    const/16 v0, 0x29

    .line 75
    .local v0, "endDelimiter":C
    goto :goto_0

    .line 71
    .end local v0    # "endDelimiter":C
    :sswitch_1
    const/16 v0, 0x27

    .line 72
    .restart local v0    # "endDelimiter":C
    goto :goto_0

    .line 68
    .end local v0    # "endDelimiter":C
    :sswitch_2
    const/16 v0, 0x22

    .line 69
    .restart local v0    # "endDelimiter":C
    nop

    .line 80
    :goto_0
    add-int/lit8 v2, p1, 0x1

    invoke-static {p0, v2, v0}, Lorg/commonmark/internal/util/LinkScanner;->scanLinkTitleContent(Ljava/lang/CharSequence;IC)I

    move-result v2

    .line 81
    .local v2, "afterContent":I
    if-ne v2, v1, :cond_1

    .line 82
    return v1

    .line 85
    :cond_1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-ge v2, v3, :cond_3

    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    if-eq v3, v0, :cond_2

    goto :goto_1

    .line 90
    :cond_2
    add-int/lit8 v1, v2, 0x1

    return v1

    .line 87
    :cond_3
    :goto_1
    return v1

    nop

    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_2
        0x27 -> :sswitch_1
        0x28 -> :sswitch_0
    .end sparse-switch
.end method

.method public static scanLinkTitleContent(Ljava/lang/CharSequence;IC)I
    .locals 3
    .param p0, "input"    # Ljava/lang/CharSequence;
    .param p1, "start"    # I
    .param p2, "endDelimiter"    # C

    .line 94
    move v0, p1

    .local v0, "i":I
    :goto_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 95
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    .line 96
    .local v1, "c":C
    const/16 v2, 0x5c

    if-ne v1, v2, :cond_0

    add-int/lit8 v2, v0, 0x1

    invoke-static {p0, v2}, Lorg/commonmark/internal/util/Parsing;->isEscapable(Ljava/lang/CharSequence;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 97
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 98
    :cond_0
    if-ne v1, p2, :cond_1

    .line 99
    return v0

    .line 100
    :cond_1
    const/16 v2, 0x29

    if-ne p2, v2, :cond_2

    const/16 v2, 0x28

    if-ne v1, v2, :cond_2

    .line 102
    const/4 v2, -0x1

    return v2

    .line 94
    .end local v1    # "c":C
    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 105
    .end local v0    # "i":I
    :cond_3
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    return v0
.end method
