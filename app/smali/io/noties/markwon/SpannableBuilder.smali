.class public Lio/noties/markwon/SpannableBuilder;
.super Ljava/lang/Object;
.source "SpannableBuilder.java"

# interfaces
.implements Ljava/lang/Appendable;
.implements Ljava/lang/CharSequence;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/noties/markwon/SpannableBuilder$SpannableStringBuilderReversed;,
        Lio/noties/markwon/SpannableBuilder$Span;
    }
.end annotation


# instance fields
.field private final builder:Ljava/lang/StringBuilder;

.field private final spans:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Lio/noties/markwon/SpannableBuilder$Span;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 63
    const-string v0, ""

    invoke-direct {p0, v0}, Lio/noties/markwon/SpannableBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 64
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "cs"    # Ljava/lang/CharSequence;

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Ljava/util/ArrayDeque;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object v0, p0, Lio/noties/markwon/SpannableBuilder;->spans:Ljava/util/Deque;

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    iput-object v0, p0, Lio/noties/markwon/SpannableBuilder;->builder:Ljava/lang/StringBuilder;

    .line 68
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lio/noties/markwon/SpannableBuilder;->copySpans(ILjava/lang/CharSequence;)V

    .line 69
    return-void
.end method

.method private copySpans(ILjava/lang/CharSequence;)V
    .locals 9
    .param p1, "index"    # I
    .param p2, "cs"    # Ljava/lang/CharSequence;

    .line 342
    instance-of v0, p2, Landroid/text/Spanned;

    if-eqz v0, :cond_3

    .line 344
    move-object v0, p2

    check-cast v0, Landroid/text/Spanned;

    .line 345
    .local v0, "spanned":Landroid/text/Spanned;
    instance-of v1, v0, Lio/noties/markwon/SpannableBuilder$SpannableStringBuilderReversed;

    .line 347
    .local v1, "reversed":Z
    invoke-interface {v0}, Landroid/text/Spanned;->length()I

    move-result v2

    const-class v3, Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-interface {v0, v4, v2, v3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    .line 348
    .local v2, "spans":[Ljava/lang/Object;
    if-eqz v2, :cond_0

    .line 349
    array-length v4, v2

    goto :goto_0

    .line 350
    :cond_0
    nop

    :goto_0
    move v3, v4

    .line 352
    .local v3, "length":I
    if-lez v3, :cond_3

    .line 353
    if-eqz v1, :cond_2

    .line 355
    add-int/lit8 v4, v3, -0x1

    .local v4, "i":I
    :goto_1
    if-ltz v4, :cond_1

    .line 356
    aget-object v5, v2, v4

    .line 357
    .local v5, "o":Ljava/lang/Object;
    nop

    .line 359
    invoke-interface {v0, v5}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v6

    add-int/2addr v6, p1

    .line 360
    invoke-interface {v0, v5}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v7

    add-int/2addr v7, p1

    .line 361
    invoke-interface {v0, v5}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v8

    .line 357
    invoke-virtual {p0, v5, v6, v7, v8}, Lio/noties/markwon/SpannableBuilder;->setSpan(Ljava/lang/Object;III)Lio/noties/markwon/SpannableBuilder;

    .line 355
    add-int/lit8 v4, v4, -0x1

    goto :goto_1

    .end local v4    # "i":I
    .end local v5    # "o":Ljava/lang/Object;
    :cond_1
    goto :goto_3

    .line 366
    :cond_2
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_2
    if-ge v4, v3, :cond_3

    .line 367
    aget-object v5, v2, v4

    .line 368
    .restart local v5    # "o":Ljava/lang/Object;
    nop

    .line 370
    invoke-interface {v0, v5}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v6

    add-int/2addr v6, p1

    .line 371
    invoke-interface {v0, v5}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v7

    add-int/2addr v7, p1

    .line 372
    invoke-interface {v0, v5}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v8

    .line 368
    invoke-virtual {p0, v5, v6, v7, v8}, Lio/noties/markwon/SpannableBuilder;->setSpan(Ljava/lang/Object;III)Lio/noties/markwon/SpannableBuilder;

    .line 366
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 378
    .end local v0    # "spanned":Landroid/text/Spanned;
    .end local v1    # "reversed":Z
    .end local v2    # "spans":[Ljava/lang/Object;
    .end local v3    # "length":I
    .end local v4    # "i":I
    .end local v5    # "o":Ljava/lang/Object;
    :cond_3
    :goto_3
    return-void
.end method

.method static isPositionValid(III)Z
    .locals 1
    .param p0, "length"    # I
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 51
    if-le p2, p1, :cond_0

    if-ltz p1, :cond_0

    if-gt p2, p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static setSpans(Lio/noties/markwon/SpannableBuilder;Ljava/lang/Object;II)V
    .locals 1
    .param p0, "builder"    # Lio/noties/markwon/SpannableBuilder;
    .param p1, "spans"    # Ljava/lang/Object;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .line 34
    if-eqz p1, :cond_1

    .line 38
    invoke-virtual {p0}, Lio/noties/markwon/SpannableBuilder;->length()I

    move-result v0

    invoke-static {v0, p2, p3}, Lio/noties/markwon/SpannableBuilder;->isPositionValid(III)Z

    move-result v0

    if-nez v0, :cond_0

    .line 39
    return-void

    .line 44
    :cond_0
    invoke-static {p0, p1, p2, p3}, Lio/noties/markwon/SpannableBuilder;->setSpansInternal(Lio/noties/markwon/SpannableBuilder;Ljava/lang/Object;II)V

    .line 46
    :cond_1
    return-void
.end method

.method private static setSpansInternal(Lio/noties/markwon/SpannableBuilder;Ljava/lang/Object;II)V
    .locals 4
    .param p0, "builder"    # Lio/noties/markwon/SpannableBuilder;
    .param p1, "spans"    # Ljava/lang/Object;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .line 415
    if-eqz p1, :cond_1

    .line 416
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 417
    move-object v0, p1

    check-cast v0, [Ljava/lang/Object;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 419
    .local v3, "o":Ljava/lang/Object;
    invoke-static {p0, v3, p2, p3}, Lio/noties/markwon/SpannableBuilder;->setSpansInternal(Lio/noties/markwon/SpannableBuilder;Ljava/lang/Object;II)V

    .line 417
    .end local v3    # "o":Ljava/lang/Object;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 422
    :cond_0
    const/16 v0, 0x21

    invoke-virtual {p0, p1, p2, p3, v0}, Lio/noties/markwon/SpannableBuilder;->setSpan(Ljava/lang/Object;III)Lio/noties/markwon/SpannableBuilder;

    .line 425
    :cond_1
    return-void
.end method


# virtual methods
.method public append(C)Lio/noties/markwon/SpannableBuilder;
    .locals 1
    .param p1, "c"    # C

    .line 86
    iget-object v0, p0, Lio/noties/markwon/SpannableBuilder;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 87
    return-object p0
.end method

.method public append(Ljava/lang/CharSequence;)Lio/noties/markwon/SpannableBuilder;
    .locals 1
    .param p1, "cs"    # Ljava/lang/CharSequence;

    .line 94
    invoke-virtual {p0}, Lio/noties/markwon/SpannableBuilder;->length()I

    move-result v0

    invoke-direct {p0, v0, p1}, Lio/noties/markwon/SpannableBuilder;->copySpans(ILjava/lang/CharSequence;)V

    .line 96
    iget-object v0, p0, Lio/noties/markwon/SpannableBuilder;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 98
    return-object p0
.end method

.method public append(Ljava/lang/CharSequence;II)Lio/noties/markwon/SpannableBuilder;
    .locals 2
    .param p1, "csq"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .line 108
    invoke-interface {p1, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 109
    .local v0, "cs":Ljava/lang/CharSequence;
    invoke-virtual {p0}, Lio/noties/markwon/SpannableBuilder;->length()I

    move-result v1

    invoke-direct {p0, v1, v0}, Lio/noties/markwon/SpannableBuilder;->copySpans(ILjava/lang/CharSequence;)V

    .line 111
    iget-object v1, p0, Lio/noties/markwon/SpannableBuilder;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 113
    return-object p0
.end method

.method public append(Ljava/lang/CharSequence;Ljava/lang/Object;)Lio/noties/markwon/SpannableBuilder;
    .locals 1
    .param p1, "cs"    # Ljava/lang/CharSequence;
    .param p2, "span"    # Ljava/lang/Object;

    .line 118
    invoke-virtual {p0}, Lio/noties/markwon/SpannableBuilder;->length()I

    move-result v0

    .line 119
    .local v0, "length":I
    invoke-virtual {p0, p1}, Lio/noties/markwon/SpannableBuilder;->append(Ljava/lang/CharSequence;)Lio/noties/markwon/SpannableBuilder;

    .line 120
    invoke-virtual {p0, p2, v0}, Lio/noties/markwon/SpannableBuilder;->setSpan(Ljava/lang/Object;I)Lio/noties/markwon/SpannableBuilder;

    .line 121
    return-object p0
.end method

.method public append(Ljava/lang/CharSequence;Ljava/lang/Object;I)Lio/noties/markwon/SpannableBuilder;
    .locals 2
    .param p1, "cs"    # Ljava/lang/CharSequence;
    .param p2, "span"    # Ljava/lang/Object;
    .param p3, "flags"    # I

    .line 126
    invoke-virtual {p0}, Lio/noties/markwon/SpannableBuilder;->length()I

    move-result v0

    .line 127
    .local v0, "length":I
    invoke-virtual {p0, p1}, Lio/noties/markwon/SpannableBuilder;->append(Ljava/lang/CharSequence;)Lio/noties/markwon/SpannableBuilder;

    .line 128
    invoke-virtual {p0}, Lio/noties/markwon/SpannableBuilder;->length()I

    move-result v1

    invoke-virtual {p0, p2, v0, v1, p3}, Lio/noties/markwon/SpannableBuilder;->setSpan(Ljava/lang/Object;III)Lio/noties/markwon/SpannableBuilder;

    .line 129
    return-object p0
.end method

.method public append(Ljava/lang/String;)Lio/noties/markwon/SpannableBuilder;
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .line 79
    iget-object v0, p0, Lio/noties/markwon/SpannableBuilder;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    return-object p0
.end method

.method public bridge synthetic append(C)Ljava/lang/Appendable;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 27
    invoke-virtual {p0, p1}, Lio/noties/markwon/SpannableBuilder;->append(C)Lio/noties/markwon/SpannableBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 27
    invoke-virtual {p0, p1}, Lio/noties/markwon/SpannableBuilder;->append(Ljava/lang/CharSequence;)Lio/noties/markwon/SpannableBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 27
    invoke-virtual {p0, p1, p2, p3}, Lio/noties/markwon/SpannableBuilder;->append(Ljava/lang/CharSequence;II)Lio/noties/markwon/SpannableBuilder;

    move-result-object p1

    return-object p1
.end method

.method public charAt(I)C
    .locals 1
    .param p1, "index"    # I

    .line 155
    iget-object v0, p0, Lio/noties/markwon/SpannableBuilder;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    return v0
.end method

.method public clear()V
    .locals 2

    .line 333
    iget-object v0, p0, Lio/noties/markwon/SpannableBuilder;->builder:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 334
    iget-object v0, p0, Lio/noties/markwon/SpannableBuilder;->spans:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->clear()V

    .line 335
    return-void
.end method

.method public getSpans(II)Ljava/util/List;
    .locals 5
    .param p1, "start"    # I
    .param p2, "end"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Lio/noties/markwon/SpannableBuilder$Span;",
            ">;"
        }
    .end annotation

    .line 219
    invoke-virtual {p0}, Lio/noties/markwon/SpannableBuilder;->length()I

    move-result v0

    .line 221
    .local v0, "length":I
    invoke-static {v0, p1, p2}, Lio/noties/markwon/SpannableBuilder;->isPositionValid(III)Z

    move-result v1

    if-nez v1, :cond_0

    .line 223
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 227
    :cond_0
    if-nez p1, :cond_1

    if-ne v0, p2, :cond_1

    .line 230
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lio/noties/markwon/SpannableBuilder;->spans:Ljava/util/Deque;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 231
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lio/noties/markwon/SpannableBuilder$Span;>;"
    invoke-static {v1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 232
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    return-object v2

    .line 235
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Lio/noties/markwon/SpannableBuilder$Span;>;"
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 237
    .restart local v1    # "list":Ljava/util/List;, "Ljava/util/List<Lio/noties/markwon/SpannableBuilder$Span;>;"
    iget-object v2, p0, Lio/noties/markwon/SpannableBuilder;->spans:Ljava/util/Deque;

    invoke-interface {v2}, Ljava/util/Deque;->descendingIterator()Ljava/util/Iterator;

    move-result-object v2

    .line 240
    .local v2, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lio/noties/markwon/SpannableBuilder$Span;>;"
    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 241
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/noties/markwon/SpannableBuilder$Span;

    .line 245
    .local v3, "span":Lio/noties/markwon/SpannableBuilder$Span;
    iget v4, v3, Lio/noties/markwon/SpannableBuilder$Span;->start:I

    if-lt v4, p1, :cond_3

    iget v4, v3, Lio/noties/markwon/SpannableBuilder$Span;->start:I

    if-lt v4, p2, :cond_5

    :cond_3
    iget v4, v3, Lio/noties/markwon/SpannableBuilder$Span;->end:I

    if-gt v4, p2, :cond_4

    iget v4, v3, Lio/noties/markwon/SpannableBuilder$Span;->end:I

    if-gt v4, p1, :cond_5

    :cond_4
    iget v4, v3, Lio/noties/markwon/SpannableBuilder$Span;->start:I

    if-ge v4, p1, :cond_2

    iget v4, v3, Lio/noties/markwon/SpannableBuilder$Span;->end:I

    if-le v4, p2, :cond_2

    .line 249
    :cond_5
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 253
    .end local v3    # "span":Lio/noties/markwon/SpannableBuilder$Span;
    :cond_6
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    return-object v3
.end method

.method public lastChar()C
    .locals 2

    .line 257
    iget-object v0, p0, Lio/noties/markwon/SpannableBuilder;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/noties/markwon/SpannableBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    return v0
.end method

.method public length()I
    .locals 1

    .line 150
    iget-object v0, p0, Lio/noties/markwon/SpannableBuilder;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    return v0
.end method

.method public removeFromEnd(I)Ljava/lang/CharSequence;
    .locals 8
    .param p1, "start"    # I

    .line 266
    invoke-virtual {p0}, Lio/noties/markwon/SpannableBuilder;->length()I

    move-result v0

    .line 269
    .local v0, "end":I
    new-instance v1, Lio/noties/markwon/SpannableBuilder$SpannableStringBuilderReversed;

    iget-object v2, p0, Lio/noties/markwon/SpannableBuilder;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1, v0}, Ljava/lang/StringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-direct {v1, v2}, Lio/noties/markwon/SpannableBuilder$SpannableStringBuilderReversed;-><init>(Ljava/lang/CharSequence;)V

    .line 271
    .local v1, "impl":Lio/noties/markwon/SpannableBuilder$SpannableStringBuilderReversed;
    iget-object v2, p0, Lio/noties/markwon/SpannableBuilder;->spans:Ljava/util/Deque;

    invoke-interface {v2}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 275
    .local v2, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lio/noties/markwon/SpannableBuilder$Span;>;"
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/noties/markwon/SpannableBuilder$Span;

    move-object v4, v3

    .local v4, "span":Lio/noties/markwon/SpannableBuilder$Span;
    if-eqz v3, :cond_1

    .line 276
    iget v3, v4, Lio/noties/markwon/SpannableBuilder$Span;->start:I

    if-lt v3, p1, :cond_0

    iget v3, v4, Lio/noties/markwon/SpannableBuilder$Span;->end:I

    if-gt v3, v0, :cond_0

    .line 277
    iget-object v3, v4, Lio/noties/markwon/SpannableBuilder$Span;->what:Ljava/lang/Object;

    iget v5, v4, Lio/noties/markwon/SpannableBuilder$Span;->start:I

    sub-int/2addr v5, p1

    iget v6, v4, Lio/noties/markwon/SpannableBuilder$Span;->end:I

    sub-int/2addr v6, p1

    const/16 v7, 0x21

    invoke-virtual {v1, v3, v5, v6, v7}, Lio/noties/markwon/SpannableBuilder$SpannableStringBuilderReversed;->setSpan(Ljava/lang/Object;III)V

    .line 278
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 282
    .end local v4    # "span":Lio/noties/markwon/SpannableBuilder$Span;
    :cond_1
    iget-object v3, p0, Lio/noties/markwon/SpannableBuilder;->builder:Ljava/lang/StringBuilder;

    const-string v4, ""

    invoke-virtual {v3, p1, v0, v4}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    return-object v1
.end method

.method public setSpan(Ljava/lang/Object;I)Lio/noties/markwon/SpannableBuilder;
    .locals 1
    .param p1, "span"    # Ljava/lang/Object;
    .param p2, "start"    # I

    .line 134
    invoke-virtual {p0}, Lio/noties/markwon/SpannableBuilder;->length()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lio/noties/markwon/SpannableBuilder;->setSpan(Ljava/lang/Object;II)Lio/noties/markwon/SpannableBuilder;

    move-result-object v0

    return-object v0
.end method

.method public setSpan(Ljava/lang/Object;II)Lio/noties/markwon/SpannableBuilder;
    .locals 1
    .param p1, "span"    # Ljava/lang/Object;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .line 139
    const/16 v0, 0x21

    invoke-virtual {p0, p1, p2, p3, v0}, Lio/noties/markwon/SpannableBuilder;->setSpan(Ljava/lang/Object;III)Lio/noties/markwon/SpannableBuilder;

    move-result-object v0

    return-object v0
.end method

.method public setSpan(Ljava/lang/Object;III)Lio/noties/markwon/SpannableBuilder;
    .locals 2
    .param p1, "span"    # Ljava/lang/Object;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "flags"    # I

    .line 144
    iget-object v0, p0, Lio/noties/markwon/SpannableBuilder;->spans:Ljava/util/Deque;

    new-instance v1, Lio/noties/markwon/SpannableBuilder$Span;

    invoke-direct {v1, p1, p2, p3, p4}, Lio/noties/markwon/SpannableBuilder$Span;-><init>(Ljava/lang/Object;III)V

    invoke-interface {v0, v1}, Ljava/util/Deque;->push(Ljava/lang/Object;)V

    .line 145
    return-object p0
.end method

.method public spannableStringBuilder()Landroid/text/SpannableStringBuilder;
    .locals 7

    .line 318
    new-instance v0, Lio/noties/markwon/SpannableBuilder$SpannableStringBuilderReversed;

    iget-object v1, p0, Lio/noties/markwon/SpannableBuilder;->builder:Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Lio/noties/markwon/SpannableBuilder$SpannableStringBuilderReversed;-><init>(Ljava/lang/CharSequence;)V

    .line 322
    .local v0, "reversed":Lio/noties/markwon/SpannableBuilder$SpannableStringBuilderReversed;
    iget-object v1, p0, Lio/noties/markwon/SpannableBuilder;->spans:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/noties/markwon/SpannableBuilder$Span;

    .line 323
    .local v2, "span":Lio/noties/markwon/SpannableBuilder$Span;
    iget-object v3, v2, Lio/noties/markwon/SpannableBuilder$Span;->what:Ljava/lang/Object;

    iget v4, v2, Lio/noties/markwon/SpannableBuilder$Span;->start:I

    iget v5, v2, Lio/noties/markwon/SpannableBuilder$Span;->end:I

    iget v6, v2, Lio/noties/markwon/SpannableBuilder$Span;->flags:I

    invoke-virtual {v0, v3, v4, v5, v6}, Lio/noties/markwon/SpannableBuilder$SpannableStringBuilderReversed;->setSpan(Ljava/lang/Object;III)V

    .line 324
    .end local v2    # "span":Lio/noties/markwon/SpannableBuilder$Span;
    goto :goto_0

    .line 326
    :cond_0
    return-object v0
.end method

.method public subSequence(II)Ljava/lang/CharSequence;
    .locals 9
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 167
    invoke-virtual {p0, p1, p2}, Lio/noties/markwon/SpannableBuilder;->getSpans(II)Ljava/util/List;

    move-result-object v0

    .line 168
    .local v0, "spans":Ljava/util/List;, "Ljava/util/List<Lio/noties/markwon/SpannableBuilder$Span;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 169
    iget-object v1, p0, Lio/noties/markwon/SpannableBuilder;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    .local v1, "out":Ljava/lang/CharSequence;
    goto :goto_1

    .line 173
    .end local v1    # "out":Ljava/lang/CharSequence;
    :cond_0
    new-instance v1, Landroid/text/SpannableStringBuilder;

    iget-object v2, p0, Lio/noties/markwon/SpannableBuilder;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 175
    .local v1, "builder":Landroid/text/SpannableStringBuilder;
    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    .line 180
    .local v2, "length":I
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/noties/markwon/SpannableBuilder$Span;

    .line 189
    .local v4, "span":Lio/noties/markwon/SpannableBuilder$Span;
    const/4 v5, 0x0

    iget v6, v4, Lio/noties/markwon/SpannableBuilder$Span;->start:I

    sub-int/2addr v6, p1

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 190
    .local v5, "s":I
    iget v6, v4, Lio/noties/markwon/SpannableBuilder$Span;->end:I

    iget v7, v4, Lio/noties/markwon/SpannableBuilder$Span;->start:I

    sub-int/2addr v6, v7

    add-int/2addr v6, v5

    invoke-static {v2, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 192
    .local v6, "e":I
    iget-object v7, v4, Lio/noties/markwon/SpannableBuilder$Span;->what:Ljava/lang/Object;

    iget v8, v4, Lio/noties/markwon/SpannableBuilder$Span;->flags:I

    invoke-virtual {v1, v7, v5, v6, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 198
    .end local v4    # "span":Lio/noties/markwon/SpannableBuilder$Span;
    goto :goto_0

    .line 199
    .end local v5    # "s":I
    .end local v6    # "e":I
    :cond_1
    move-object v3, v1

    .line 202
    .end local v2    # "length":I
    .local v1, "out":Ljava/lang/CharSequence;
    :goto_1
    return-object v1
.end method

.method public text()Ljava/lang/CharSequence;
    .locals 1

    .line 296
    invoke-virtual {p0}, Lio/noties/markwon/SpannableBuilder;->spannableStringBuilder()Landroid/text/SpannableStringBuilder;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 290
    iget-object v0, p0, Lio/noties/markwon/SpannableBuilder;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
