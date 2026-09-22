.class Lio/noties/markwon/utils/DumpNodes$Indent;
.super Ljava/lang/Object;
.source "DumpNodes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/noties/markwon/utils/DumpNodes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Indent"
.end annotation


# instance fields
.field private count:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lio/noties/markwon/utils/DumpNodes$1;)V
    .locals 0
    .param p1, "x0"    # Lio/noties/markwon/utils/DumpNodes$1;

    .line 80
    invoke-direct {p0}, Lio/noties/markwon/utils/DumpNodes$Indent;-><init>()V

    return-void
.end method


# virtual methods
.method appendTo(Ljava/lang/StringBuilder;)V
    .locals 3
    .param p1, "builder"    # Ljava/lang/StringBuilder;

    .line 93
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lio/noties/markwon/utils/DumpNodes$Indent;->count:I

    if-ge v0, v1, :cond_0

    .line 94
    nop

    .line 95
    const/16 v1, 0x20

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 96
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 93
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 98
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method decrement()V
    .locals 1

    .line 89
    iget v0, p0, Lio/noties/markwon/utils/DumpNodes$Indent;->count:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lio/noties/markwon/utils/DumpNodes$Indent;->count:I

    .line 90
    return-void
.end method

.method increment()V
    .locals 1

    .line 85
    iget v0, p0, Lio/noties/markwon/utils/DumpNodes$Indent;->count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lio/noties/markwon/utils/DumpNodes$Indent;->count:I

    .line 86
    return-void
.end method
