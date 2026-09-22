.class public Lio/noties/markwon/core/CorePlugin;
.super Lio/noties/markwon/AbstractMarkwonPlugin;
.source "CorePlugin.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/noties/markwon/core/CorePlugin$OnTextAddedListener;
    }
.end annotation


# instance fields
.field private hasExplicitMovementMethod:Z

.field private final onTextAddedListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/noties/markwon/core/CorePlugin$OnTextAddedListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 2

    .line 121
    invoke-direct {p0}, Lio/noties/markwon/AbstractMarkwonPlugin;-><init>()V

    .line 116
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lio/noties/markwon/core/CorePlugin;->onTextAddedListeners:Ljava/util/List;

    .line 122
    return-void
.end method

.method static synthetic access$000(Lio/noties/markwon/core/CorePlugin;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lio/noties/markwon/core/CorePlugin;

    .line 64
    iget-object v0, p0, Lio/noties/markwon/core/CorePlugin;->onTextAddedListeners:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100(Lorg/commonmark/node/Node;)I
    .locals 1
    .param p0, "x0"    # Lorg/commonmark/node/Node;

    .line 64
    invoke-static {p0}, Lio/noties/markwon/core/CorePlugin;->listLevel(Lorg/commonmark/node/Node;)I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lorg/commonmark/node/Paragraph;)Z
    .locals 1
    .param p0, "x0"    # Lorg/commonmark/node/Paragraph;

    .line 64
    invoke-static {p0}, Lio/noties/markwon/core/CorePlugin;->isInTightList(Lorg/commonmark/node/Paragraph;)Z

    move-result v0

    return v0
.end method

.method private static blockQuote(Lio/noties/markwon/MarkwonVisitor$Builder;)V
    .locals 2
    .param p0, "builder"    # Lio/noties/markwon/MarkwonVisitor$Builder;

    .line 254
    const-class v0, Lorg/commonmark/node/BlockQuote;

    new-instance v1, Lio/noties/markwon/core/CorePlugin$4;

    invoke-direct {v1}, Lio/noties/markwon/core/CorePlugin$4;-><init>()V

    invoke-interface {p0, v0, v1}, Lio/noties/markwon/MarkwonVisitor$Builder;->on(Ljava/lang/Class;Lio/noties/markwon/MarkwonVisitor$NodeVisitor;)Lio/noties/markwon/MarkwonVisitor$Builder;

    .line 268
    return-void
.end method

.method private static bulletList(Lio/noties/markwon/MarkwonVisitor$Builder;)V
    .locals 2
    .param p0, "builder"    # Lio/noties/markwon/MarkwonVisitor$Builder;

    .line 382
    const-class v0, Lorg/commonmark/node/BulletList;

    new-instance v1, Lio/noties/markwon/core/SimpleBlockNodeVisitor;

    invoke-direct {v1}, Lio/noties/markwon/core/SimpleBlockNodeVisitor;-><init>()V

    invoke-interface {p0, v0, v1}, Lio/noties/markwon/MarkwonVisitor$Builder;->on(Ljava/lang/Class;Lio/noties/markwon/MarkwonVisitor$NodeVisitor;)Lio/noties/markwon/MarkwonVisitor$Builder;

    .line 383
    return-void
.end method

.method private static code(Lio/noties/markwon/MarkwonVisitor$Builder;)V
    .locals 2
    .param p0, "builder"    # Lio/noties/markwon/MarkwonVisitor$Builder;

    .line 271
    const-class v0, Lorg/commonmark/node/Code;

    new-instance v1, Lio/noties/markwon/core/CorePlugin$5;

    invoke-direct {v1}, Lio/noties/markwon/core/CorePlugin$5;-><init>()V

    invoke-interface {p0, v0, v1}, Lio/noties/markwon/MarkwonVisitor$Builder;->on(Ljava/lang/Class;Lio/noties/markwon/MarkwonVisitor$NodeVisitor;)Lio/noties/markwon/MarkwonVisitor$Builder;

    .line 287
    return-void
.end method

.method public static create()Lio/noties/markwon/core/CorePlugin;
    .locals 1

    .line 95
    new-instance v0, Lio/noties/markwon/core/CorePlugin;

    invoke-direct {v0}, Lio/noties/markwon/core/CorePlugin;-><init>()V

    return-object v0
.end method

.method private static emphasis(Lio/noties/markwon/MarkwonVisitor$Builder;)V
    .locals 2
    .param p0, "builder"    # Lio/noties/markwon/MarkwonVisitor$Builder;

    .line 243
    const-class v0, Lorg/commonmark/node/Emphasis;

    new-instance v1, Lio/noties/markwon/core/CorePlugin$3;

    invoke-direct {v1}, Lio/noties/markwon/core/CorePlugin$3;-><init>()V

    invoke-interface {p0, v0, v1}, Lio/noties/markwon/MarkwonVisitor$Builder;->on(Ljava/lang/Class;Lio/noties/markwon/MarkwonVisitor$NodeVisitor;)Lio/noties/markwon/MarkwonVisitor$Builder;

    .line 251
    return-void
.end method

.method public static enabledBlockTypes()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "+",
            "Lorg/commonmark/node/Block;",
            ">;>;"
        }
    .end annotation

    .line 104
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Lorg/commonmark/node/BlockQuote;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-class v3, Lorg/commonmark/node/Heading;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-class v3, Lorg/commonmark/node/FencedCodeBlock;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-class v3, Lorg/commonmark/node/HtmlBlock;

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-class v3, Lorg/commonmark/node/ThematicBreak;

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-class v3, Lorg/commonmark/node/ListBlock;

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-class v3, Lorg/commonmark/node/IndentedCodeBlock;

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method private static fencedCodeBlock(Lio/noties/markwon/MarkwonVisitor$Builder;)V
    .locals 2
    .param p0, "builder"    # Lio/noties/markwon/MarkwonVisitor$Builder;

    .line 290
    const-class v0, Lorg/commonmark/node/FencedCodeBlock;

    new-instance v1, Lio/noties/markwon/core/CorePlugin$6;

    invoke-direct {v1}, Lio/noties/markwon/core/CorePlugin$6;-><init>()V

    invoke-interface {p0, v0, v1}, Lio/noties/markwon/MarkwonVisitor$Builder;->on(Ljava/lang/Class;Lio/noties/markwon/MarkwonVisitor$NodeVisitor;)Lio/noties/markwon/MarkwonVisitor$Builder;

    .line 296
    return-void
.end method

.method private static hardLineBreak(Lio/noties/markwon/MarkwonVisitor$Builder;)V
    .locals 2
    .param p0, "builder"    # Lio/noties/markwon/MarkwonVisitor$Builder;

    .line 487
    const-class v0, Lorg/commonmark/node/HardLineBreak;

    new-instance v1, Lio/noties/markwon/core/CorePlugin$13;

    invoke-direct {v1}, Lio/noties/markwon/core/CorePlugin$13;-><init>()V

    invoke-interface {p0, v0, v1}, Lio/noties/markwon/MarkwonVisitor$Builder;->on(Ljava/lang/Class;Lio/noties/markwon/MarkwonVisitor$NodeVisitor;)Lio/noties/markwon/MarkwonVisitor$Builder;

    .line 493
    return-void
.end method

.method private static heading(Lio/noties/markwon/MarkwonVisitor$Builder;)V
    .locals 2
    .param p0, "builder"    # Lio/noties/markwon/MarkwonVisitor$Builder;

    .line 459
    const-class v0, Lorg/commonmark/node/Heading;

    new-instance v1, Lio/noties/markwon/core/CorePlugin$11;

    invoke-direct {v1}, Lio/noties/markwon/core/CorePlugin$11;-><init>()V

    invoke-interface {p0, v0, v1}, Lio/noties/markwon/MarkwonVisitor$Builder;->on(Ljava/lang/Class;Lio/noties/markwon/MarkwonVisitor$NodeVisitor;)Lio/noties/markwon/MarkwonVisitor$Builder;

    .line 475
    return-void
.end method

.method private static image(Lio/noties/markwon/MarkwonVisitor$Builder;)V
    .locals 2
    .param p0, "builder"    # Lio/noties/markwon/MarkwonVisitor$Builder;

    .line 311
    const-class v0, Lorg/commonmark/node/Image;

    new-instance v1, Lio/noties/markwon/core/CorePlugin$8;

    invoke-direct {v1}, Lio/noties/markwon/core/CorePlugin$8;-><init>()V

    invoke-interface {p0, v0, v1}, Lio/noties/markwon/MarkwonVisitor$Builder;->on(Ljava/lang/Class;Lio/noties/markwon/MarkwonVisitor$NodeVisitor;)Lio/noties/markwon/MarkwonVisitor$Builder;

    .line 352
    return-void
.end method

.method private static indentedCodeBlock(Lio/noties/markwon/MarkwonVisitor$Builder;)V
    .locals 2
    .param p0, "builder"    # Lio/noties/markwon/MarkwonVisitor$Builder;

    .line 299
    const-class v0, Lorg/commonmark/node/IndentedCodeBlock;

    new-instance v1, Lio/noties/markwon/core/CorePlugin$7;

    invoke-direct {v1}, Lio/noties/markwon/core/CorePlugin$7;-><init>()V

    invoke-interface {p0, v0, v1}, Lio/noties/markwon/MarkwonVisitor$Builder;->on(Ljava/lang/Class;Lio/noties/markwon/MarkwonVisitor$NodeVisitor;)Lio/noties/markwon/MarkwonVisitor$Builder;

    .line 305
    return-void
.end method

.method private static isInTightList(Lorg/commonmark/node/Paragraph;)Z
    .locals 4
    .param p0, "paragraph"    # Lorg/commonmark/node/Paragraph;

    .line 522
    invoke-virtual {p0}, Lorg/commonmark/node/Paragraph;->getParent()Lorg/commonmark/node/Block;

    move-result-object v0

    .line 523
    .local v0, "parent":Lorg/commonmark/node/Node;
    if-eqz v0, :cond_0

    .line 524
    invoke-virtual {v0}, Lorg/commonmark/node/Node;->getParent()Lorg/commonmark/node/Node;

    move-result-object v1

    .line 525
    .local v1, "gramps":Lorg/commonmark/node/Node;
    instance-of v2, v1, Lorg/commonmark/node/ListBlock;

    if-eqz v2, :cond_0

    .line 526
    move-object v2, v1

    check-cast v2, Lorg/commonmark/node/ListBlock;

    .line 527
    .local v2, "list":Lorg/commonmark/node/ListBlock;
    invoke-virtual {v2}, Lorg/commonmark/node/ListBlock;->isTight()Z

    move-result v3

    return v3

    .line 530
    .end local v1    # "gramps":Lorg/commonmark/node/Node;
    .end local v2    # "list":Lorg/commonmark/node/ListBlock;
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private static link(Lio/noties/markwon/MarkwonVisitor$Builder;)V
    .locals 2
    .param p0, "builder"    # Lio/noties/markwon/MarkwonVisitor$Builder;

    .line 534
    const-class v0, Lorg/commonmark/node/Link;

    new-instance v1, Lio/noties/markwon/core/CorePlugin$15;

    invoke-direct {v1}, Lio/noties/markwon/core/CorePlugin$15;-><init>()V

    invoke-interface {p0, v0, v1}, Lio/noties/markwon/MarkwonVisitor$Builder;->on(Ljava/lang/Class;Lio/noties/markwon/MarkwonVisitor$NodeVisitor;)Lio/noties/markwon/MarkwonVisitor$Builder;

    .line 548
    return-void
.end method

.method private static listItem(Lio/noties/markwon/MarkwonVisitor$Builder;)V
    .locals 2
    .param p0, "builder"    # Lio/noties/markwon/MarkwonVisitor$Builder;

    .line 390
    const-class v0, Lorg/commonmark/node/ListItem;

    new-instance v1, Lio/noties/markwon/core/CorePlugin$9;

    invoke-direct {v1}, Lio/noties/markwon/core/CorePlugin$9;-><init>()V

    invoke-interface {p0, v0, v1}, Lio/noties/markwon/MarkwonVisitor$Builder;->on(Ljava/lang/Class;Lio/noties/markwon/MarkwonVisitor$NodeVisitor;)Lio/noties/markwon/MarkwonVisitor$Builder;

    .line 425
    return-void
.end method

.method private static listLevel(Lorg/commonmark/node/Node;)I
    .locals 3
    .param p0, "node"    # Lorg/commonmark/node/Node;

    .line 428
    const/4 v0, 0x0

    .line 429
    .local v0, "level":I
    invoke-virtual {p0}, Lorg/commonmark/node/Node;->getParent()Lorg/commonmark/node/Node;

    move-result-object v1

    .line 430
    .local v1, "parent":Lorg/commonmark/node/Node;
    :goto_0
    if-eqz v1, :cond_1

    .line 431
    instance-of v2, v1, Lorg/commonmark/node/ListItem;

    if-eqz v2, :cond_0

    .line 432
    add-int/lit8 v0, v0, 0x1

    .line 434
    :cond_0
    invoke-virtual {v1}, Lorg/commonmark/node/Node;->getParent()Lorg/commonmark/node/Node;

    move-result-object v1

    goto :goto_0

    .line 436
    :cond_1
    return v0
.end method

.method private static orderedList(Lio/noties/markwon/MarkwonVisitor$Builder;)V
    .locals 2
    .param p0, "builder"    # Lio/noties/markwon/MarkwonVisitor$Builder;

    .line 386
    const-class v0, Lorg/commonmark/node/OrderedList;

    new-instance v1, Lio/noties/markwon/core/SimpleBlockNodeVisitor;

    invoke-direct {v1}, Lio/noties/markwon/core/SimpleBlockNodeVisitor;-><init>()V

    invoke-interface {p0, v0, v1}, Lio/noties/markwon/MarkwonVisitor$Builder;->on(Ljava/lang/Class;Lio/noties/markwon/MarkwonVisitor$NodeVisitor;)Lio/noties/markwon/MarkwonVisitor$Builder;

    .line 387
    return-void
.end method

.method private static paragraph(Lio/noties/markwon/MarkwonVisitor$Builder;)V
    .locals 2
    .param p0, "builder"    # Lio/noties/markwon/MarkwonVisitor$Builder;

    .line 496
    const-class v0, Lorg/commonmark/node/Paragraph;

    new-instance v1, Lio/noties/markwon/core/CorePlugin$14;

    invoke-direct {v1}, Lio/noties/markwon/core/CorePlugin$14;-><init>()V

    invoke-interface {p0, v0, v1}, Lio/noties/markwon/MarkwonVisitor$Builder;->on(Ljava/lang/Class;Lio/noties/markwon/MarkwonVisitor$NodeVisitor;)Lio/noties/markwon/MarkwonVisitor$Builder;

    .line 519
    return-void
.end method

.method private static softLineBreak(Lio/noties/markwon/MarkwonVisitor$Builder;)V
    .locals 2
    .param p0, "builder"    # Lio/noties/markwon/MarkwonVisitor$Builder;

    .line 478
    const-class v0, Lorg/commonmark/node/SoftLineBreak;

    new-instance v1, Lio/noties/markwon/core/CorePlugin$12;

    invoke-direct {v1}, Lio/noties/markwon/core/CorePlugin$12;-><init>()V

    invoke-interface {p0, v0, v1}, Lio/noties/markwon/MarkwonVisitor$Builder;->on(Ljava/lang/Class;Lio/noties/markwon/MarkwonVisitor$NodeVisitor;)Lio/noties/markwon/MarkwonVisitor$Builder;

    .line 484
    return-void
.end method

.method private static strongEmphasis(Lio/noties/markwon/MarkwonVisitor$Builder;)V
    .locals 2
    .param p0, "builder"    # Lio/noties/markwon/MarkwonVisitor$Builder;

    .line 232
    const-class v0, Lorg/commonmark/node/StrongEmphasis;

    new-instance v1, Lio/noties/markwon/core/CorePlugin$2;

    invoke-direct {v1}, Lio/noties/markwon/core/CorePlugin$2;-><init>()V

    invoke-interface {p0, v0, v1}, Lio/noties/markwon/MarkwonVisitor$Builder;->on(Ljava/lang/Class;Lio/noties/markwon/MarkwonVisitor$NodeVisitor;)Lio/noties/markwon/MarkwonVisitor$Builder;

    .line 240
    return-void
.end method

.method private text(Lio/noties/markwon/MarkwonVisitor$Builder;)V
    .locals 2
    .param p1, "builder"    # Lio/noties/markwon/MarkwonVisitor$Builder;

    .line 211
    const-class v0, Lorg/commonmark/node/Text;

    new-instance v1, Lio/noties/markwon/core/CorePlugin$1;

    invoke-direct {v1, p0}, Lio/noties/markwon/core/CorePlugin$1;-><init>(Lio/noties/markwon/core/CorePlugin;)V

    invoke-interface {p1, v0, v1}, Lio/noties/markwon/MarkwonVisitor$Builder;->on(Ljava/lang/Class;Lio/noties/markwon/MarkwonVisitor$NodeVisitor;)Lio/noties/markwon/MarkwonVisitor$Builder;

    .line 229
    return-void
.end method

.method private static thematicBreak(Lio/noties/markwon/MarkwonVisitor$Builder;)V
    .locals 2
    .param p0, "builder"    # Lio/noties/markwon/MarkwonVisitor$Builder;

    .line 440
    const-class v0, Lorg/commonmark/node/ThematicBreak;

    new-instance v1, Lio/noties/markwon/core/CorePlugin$10;

    invoke-direct {v1}, Lio/noties/markwon/core/CorePlugin$10;-><init>()V

    invoke-interface {p0, v0, v1}, Lio/noties/markwon/MarkwonVisitor$Builder;->on(Ljava/lang/Class;Lio/noties/markwon/MarkwonVisitor$NodeVisitor;)Lio/noties/markwon/MarkwonVisitor$Builder;

    .line 456
    return-void
.end method

.method static visitCodeBlock(Lio/noties/markwon/MarkwonVisitor;Ljava/lang/String;Ljava/lang/String;Lorg/commonmark/node/Node;)V
    .locals 4
    .param p0, "visitor"    # Lio/noties/markwon/MarkwonVisitor;
    .param p1, "info"    # Ljava/lang/String;
    .param p2, "code"    # Ljava/lang/String;
    .param p3, "node"    # Lorg/commonmark/node/Node;

    .line 361
    invoke-interface {p0, p3}, Lio/noties/markwon/MarkwonVisitor;->blockStart(Lorg/commonmark/node/Node;)V

    .line 363
    invoke-interface {p0}, Lio/noties/markwon/MarkwonVisitor;->length()I

    move-result v0

    .line 365
    .local v0, "length":I
    invoke-interface {p0}, Lio/noties/markwon/MarkwonVisitor;->builder()Lio/noties/markwon/SpannableBuilder;

    move-result-object v1

    .line 366
    const/16 v2, 0xa0

    invoke-virtual {v1, v2}, Lio/noties/markwon/SpannableBuilder;->append(C)Lio/noties/markwon/SpannableBuilder;

    move-result-object v1

    const/16 v3, 0xa

    invoke-virtual {v1, v3}, Lio/noties/markwon/SpannableBuilder;->append(C)Lio/noties/markwon/SpannableBuilder;

    move-result-object v1

    .line 367
    invoke-interface {p0}, Lio/noties/markwon/MarkwonVisitor;->configuration()Lio/noties/markwon/MarkwonConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Lio/noties/markwon/MarkwonConfiguration;->syntaxHighlight()Lio/noties/markwon/syntax/SyntaxHighlight;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Lio/noties/markwon/syntax/SyntaxHighlight;->highlight(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v3}, Lio/noties/markwon/SpannableBuilder;->append(Ljava/lang/CharSequence;)Lio/noties/markwon/SpannableBuilder;

    .line 369
    invoke-interface {p0}, Lio/noties/markwon/MarkwonVisitor;->ensureNewLine()V

    .line 371
    invoke-interface {p0}, Lio/noties/markwon/MarkwonVisitor;->builder()Lio/noties/markwon/SpannableBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Lio/noties/markwon/SpannableBuilder;->append(C)Lio/noties/markwon/SpannableBuilder;

    .line 374
    sget-object v1, Lio/noties/markwon/core/CoreProps;->CODE_BLOCK_INFO:Lio/noties/markwon/Prop;

    invoke-interface {p0}, Lio/noties/markwon/MarkwonVisitor;->renderProps()Lio/noties/markwon/RenderProps;

    move-result-object v2

    invoke-virtual {v1, v2, p1}, Lio/noties/markwon/Prop;->set(Lio/noties/markwon/RenderProps;Ljava/lang/Object;)V

    .line 376
    invoke-interface {p0, p3, v0}, Lio/noties/markwon/MarkwonVisitor;->setSpansForNodeOptional(Lorg/commonmark/node/Node;I)V

    .line 378
    invoke-interface {p0, p3}, Lio/noties/markwon/MarkwonVisitor;->blockEnd(Lorg/commonmark/node/Node;)V

    .line 379
    return-void
.end method


# virtual methods
.method public addOnTextAddedListener(Lio/noties/markwon/core/CorePlugin$OnTextAddedListener;)Lio/noties/markwon/core/CorePlugin;
    .locals 1
    .param p1, "onTextAddedListener"    # Lio/noties/markwon/core/CorePlugin$OnTextAddedListener;

    .line 143
    iget-object v0, p0, Lio/noties/markwon/core/CorePlugin;->onTextAddedListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 144
    return-object p0
.end method

.method public afterSetText(Landroid/widget/TextView;)V
    .locals 1
    .param p1, "textView"    # Landroid/widget/TextView;

    .line 205
    iget-boolean v0, p0, Lio/noties/markwon/core/CorePlugin;->hasExplicitMovementMethod:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/widget/TextView;->getMovementMethod()Landroid/text/method/MovementMethod;

    move-result-object v0

    if-nez v0, :cond_0

    .line 206
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 208
    :cond_0
    return-void
.end method

.method public beforeSetText(Landroid/widget/TextView;Landroid/text/Spanned;)V
    .locals 1
    .param p1, "textView"    # Landroid/widget/TextView;
    .param p2, "markdown"    # Landroid/text/Spanned;

    .line 189
    invoke-static {p1, p2}, Lio/noties/markwon/core/spans/OrderedListItemSpan;->measure(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 193
    instance-of v0, p2, Landroid/text/Spannable;

    if-eqz v0, :cond_0

    .line 194
    move-object v0, p2

    check-cast v0, Landroid/text/Spannable;

    .line 195
    .local v0, "spannable":Landroid/text/Spannable;
    invoke-static {v0, p1}, Lio/noties/markwon/core/spans/TextViewSpan;->applyTo(Landroid/text/Spannable;Landroid/widget/TextView;)V

    .line 197
    .end local v0    # "spannable":Landroid/text/Spannable;
    :cond_0
    return-void
.end method

.method public configureSpansFactory(Lio/noties/markwon/MarkwonSpansFactory$Builder;)V
    .locals 4
    .param p1, "builder"    # Lio/noties/markwon/MarkwonSpansFactory$Builder;

    .line 172
    new-instance v0, Lio/noties/markwon/core/factory/CodeBlockSpanFactory;

    invoke-direct {v0}, Lio/noties/markwon/core/factory/CodeBlockSpanFactory;-><init>()V

    .line 174
    .local v0, "codeBlockSpanFactory":Lio/noties/markwon/core/factory/CodeBlockSpanFactory;
    const-class v1, Lorg/commonmark/node/StrongEmphasis;

    new-instance v2, Lio/noties/markwon/core/factory/StrongEmphasisSpanFactory;

    invoke-direct {v2}, Lio/noties/markwon/core/factory/StrongEmphasisSpanFactory;-><init>()V

    .line 175
    invoke-interface {p1, v1, v2}, Lio/noties/markwon/MarkwonSpansFactory$Builder;->setFactory(Ljava/lang/Class;Lio/noties/markwon/SpanFactory;)Lio/noties/markwon/MarkwonSpansFactory$Builder;

    move-result-object v1

    const-class v2, Lorg/commonmark/node/Emphasis;

    new-instance v3, Lio/noties/markwon/core/factory/EmphasisSpanFactory;

    invoke-direct {v3}, Lio/noties/markwon/core/factory/EmphasisSpanFactory;-><init>()V

    .line 176
    invoke-interface {v1, v2, v3}, Lio/noties/markwon/MarkwonSpansFactory$Builder;->setFactory(Ljava/lang/Class;Lio/noties/markwon/SpanFactory;)Lio/noties/markwon/MarkwonSpansFactory$Builder;

    move-result-object v1

    const-class v2, Lorg/commonmark/node/BlockQuote;

    new-instance v3, Lio/noties/markwon/core/factory/BlockQuoteSpanFactory;

    invoke-direct {v3}, Lio/noties/markwon/core/factory/BlockQuoteSpanFactory;-><init>()V

    .line 177
    invoke-interface {v1, v2, v3}, Lio/noties/markwon/MarkwonSpansFactory$Builder;->setFactory(Ljava/lang/Class;Lio/noties/markwon/SpanFactory;)Lio/noties/markwon/MarkwonSpansFactory$Builder;

    move-result-object v1

    const-class v2, Lorg/commonmark/node/Code;

    new-instance v3, Lio/noties/markwon/core/factory/CodeSpanFactory;

    invoke-direct {v3}, Lio/noties/markwon/core/factory/CodeSpanFactory;-><init>()V

    .line 178
    invoke-interface {v1, v2, v3}, Lio/noties/markwon/MarkwonSpansFactory$Builder;->setFactory(Ljava/lang/Class;Lio/noties/markwon/SpanFactory;)Lio/noties/markwon/MarkwonSpansFactory$Builder;

    move-result-object v1

    const-class v2, Lorg/commonmark/node/FencedCodeBlock;

    .line 179
    invoke-interface {v1, v2, v0}, Lio/noties/markwon/MarkwonSpansFactory$Builder;->setFactory(Ljava/lang/Class;Lio/noties/markwon/SpanFactory;)Lio/noties/markwon/MarkwonSpansFactory$Builder;

    move-result-object v1

    const-class v2, Lorg/commonmark/node/IndentedCodeBlock;

    .line 180
    invoke-interface {v1, v2, v0}, Lio/noties/markwon/MarkwonSpansFactory$Builder;->setFactory(Ljava/lang/Class;Lio/noties/markwon/SpanFactory;)Lio/noties/markwon/MarkwonSpansFactory$Builder;

    move-result-object v1

    const-class v2, Lorg/commonmark/node/ListItem;

    new-instance v3, Lio/noties/markwon/core/factory/ListItemSpanFactory;

    invoke-direct {v3}, Lio/noties/markwon/core/factory/ListItemSpanFactory;-><init>()V

    .line 181
    invoke-interface {v1, v2, v3}, Lio/noties/markwon/MarkwonSpansFactory$Builder;->setFactory(Ljava/lang/Class;Lio/noties/markwon/SpanFactory;)Lio/noties/markwon/MarkwonSpansFactory$Builder;

    move-result-object v1

    const-class v2, Lorg/commonmark/node/Heading;

    new-instance v3, Lio/noties/markwon/core/factory/HeadingSpanFactory;

    invoke-direct {v3}, Lio/noties/markwon/core/factory/HeadingSpanFactory;-><init>()V

    .line 182
    invoke-interface {v1, v2, v3}, Lio/noties/markwon/MarkwonSpansFactory$Builder;->setFactory(Ljava/lang/Class;Lio/noties/markwon/SpanFactory;)Lio/noties/markwon/MarkwonSpansFactory$Builder;

    move-result-object v1

    const-class v2, Lorg/commonmark/node/Link;

    new-instance v3, Lio/noties/markwon/core/factory/LinkSpanFactory;

    invoke-direct {v3}, Lio/noties/markwon/core/factory/LinkSpanFactory;-><init>()V

    .line 183
    invoke-interface {v1, v2, v3}, Lio/noties/markwon/MarkwonSpansFactory$Builder;->setFactory(Ljava/lang/Class;Lio/noties/markwon/SpanFactory;)Lio/noties/markwon/MarkwonSpansFactory$Builder;

    move-result-object v1

    const-class v2, Lorg/commonmark/node/ThematicBreak;

    new-instance v3, Lio/noties/markwon/core/factory/ThematicBreakSpanFactory;

    invoke-direct {v3}, Lio/noties/markwon/core/factory/ThematicBreakSpanFactory;-><init>()V

    .line 184
    invoke-interface {v1, v2, v3}, Lio/noties/markwon/MarkwonSpansFactory$Builder;->setFactory(Ljava/lang/Class;Lio/noties/markwon/SpanFactory;)Lio/noties/markwon/MarkwonSpansFactory$Builder;

    .line 185
    return-void
.end method

.method public configureVisitor(Lio/noties/markwon/MarkwonVisitor$Builder;)V
    .locals 0
    .param p1, "builder"    # Lio/noties/markwon/MarkwonVisitor$Builder;

    .line 149
    invoke-direct {p0, p1}, Lio/noties/markwon/core/CorePlugin;->text(Lio/noties/markwon/MarkwonVisitor$Builder;)V

    .line 150
    invoke-static {p1}, Lio/noties/markwon/core/CorePlugin;->strongEmphasis(Lio/noties/markwon/MarkwonVisitor$Builder;)V

    .line 151
    invoke-static {p1}, Lio/noties/markwon/core/CorePlugin;->emphasis(Lio/noties/markwon/MarkwonVisitor$Builder;)V

    .line 152
    invoke-static {p1}, Lio/noties/markwon/core/CorePlugin;->blockQuote(Lio/noties/markwon/MarkwonVisitor$Builder;)V

    .line 153
    invoke-static {p1}, Lio/noties/markwon/core/CorePlugin;->code(Lio/noties/markwon/MarkwonVisitor$Builder;)V

    .line 154
    invoke-static {p1}, Lio/noties/markwon/core/CorePlugin;->fencedCodeBlock(Lio/noties/markwon/MarkwonVisitor$Builder;)V

    .line 155
    invoke-static {p1}, Lio/noties/markwon/core/CorePlugin;->indentedCodeBlock(Lio/noties/markwon/MarkwonVisitor$Builder;)V

    .line 156
    invoke-static {p1}, Lio/noties/markwon/core/CorePlugin;->image(Lio/noties/markwon/MarkwonVisitor$Builder;)V

    .line 157
    invoke-static {p1}, Lio/noties/markwon/core/CorePlugin;->bulletList(Lio/noties/markwon/MarkwonVisitor$Builder;)V

    .line 158
    invoke-static {p1}, Lio/noties/markwon/core/CorePlugin;->orderedList(Lio/noties/markwon/MarkwonVisitor$Builder;)V

    .line 159
    invoke-static {p1}, Lio/noties/markwon/core/CorePlugin;->listItem(Lio/noties/markwon/MarkwonVisitor$Builder;)V

    .line 160
    invoke-static {p1}, Lio/noties/markwon/core/CorePlugin;->thematicBreak(Lio/noties/markwon/MarkwonVisitor$Builder;)V

    .line 161
    invoke-static {p1}, Lio/noties/markwon/core/CorePlugin;->heading(Lio/noties/markwon/MarkwonVisitor$Builder;)V

    .line 162
    invoke-static {p1}, Lio/noties/markwon/core/CorePlugin;->softLineBreak(Lio/noties/markwon/MarkwonVisitor$Builder;)V

    .line 163
    invoke-static {p1}, Lio/noties/markwon/core/CorePlugin;->hardLineBreak(Lio/noties/markwon/MarkwonVisitor$Builder;)V

    .line 164
    invoke-static {p1}, Lio/noties/markwon/core/CorePlugin;->paragraph(Lio/noties/markwon/MarkwonVisitor$Builder;)V

    .line 165
    invoke-static {p1}, Lio/noties/markwon/core/CorePlugin;->link(Lio/noties/markwon/MarkwonVisitor$Builder;)V

    .line 166
    return-void
.end method

.method public hasExplicitMovementMethod(Z)Lio/noties/markwon/core/CorePlugin;
    .locals 0
    .param p1, "hasExplicitMovementMethod"    # Z

    .line 130
    iput-boolean p1, p0, Lio/noties/markwon/core/CorePlugin;->hasExplicitMovementMethod:Z

    .line 131
    return-object p0
.end method
