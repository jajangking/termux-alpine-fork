.class public Lio/noties/markwon/linkify/LinkifyPlugin;
.super Lio/noties/markwon/AbstractMarkwonPlugin;
.source "LinkifyPlugin.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/noties/markwon/linkify/LinkifyPlugin$LinkifyCompatTextAddedListener;,
        Lio/noties/markwon/linkify/LinkifyPlugin$LinkifyTextAddedListener;
    }
.end annotation


# instance fields
.field private final mask:I

.field private final useCompat:Z


# direct methods
.method constructor <init>(IZ)V
    .locals 0
    .param p1, "mask"    # I
    .param p2, "useCompat"    # Z

    .line 72
    invoke-direct {p0}, Lio/noties/markwon/AbstractMarkwonPlugin;-><init>()V

    .line 73
    iput p1, p0, Lio/noties/markwon/linkify/LinkifyPlugin;->mask:I

    .line 74
    iput-boolean p2, p0, Lio/noties/markwon/linkify/LinkifyPlugin;->useCompat:Z

    .line 75
    return-void
.end method

.method static synthetic access$000(Lio/noties/markwon/linkify/LinkifyPlugin;)Z
    .locals 1
    .param p0, "x0"    # Lio/noties/markwon/linkify/LinkifyPlugin;

    .line 25
    iget-boolean v0, p0, Lio/noties/markwon/linkify/LinkifyPlugin;->useCompat:Z

    return v0
.end method

.method static synthetic access$100(Lio/noties/markwon/linkify/LinkifyPlugin;)I
    .locals 1
    .param p0, "x0"    # Lio/noties/markwon/linkify/LinkifyPlugin;

    .line 25
    iget v0, p0, Lio/noties/markwon/linkify/LinkifyPlugin;->mask:I

    return v0
.end method

.method public static create()Lio/noties/markwon/linkify/LinkifyPlugin;
    .locals 1

    .line 38
    const/4 v0, 0x0

    invoke-static {v0}, Lio/noties/markwon/linkify/LinkifyPlugin;->create(Z)Lio/noties/markwon/linkify/LinkifyPlugin;

    move-result-object v0

    return-object v0
.end method

.method public static create(I)Lio/noties/markwon/linkify/LinkifyPlugin;
    .locals 2
    .param p0, "mask"    # I

    .line 54
    new-instance v0, Lio/noties/markwon/linkify/LinkifyPlugin;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/noties/markwon/linkify/LinkifyPlugin;-><init>(IZ)V

    return-object v0
.end method

.method public static create(IZ)Lio/noties/markwon/linkify/LinkifyPlugin;
    .locals 1
    .param p0, "mask"    # I
    .param p1, "useCompat"    # Z

    .line 65
    new-instance v0, Lio/noties/markwon/linkify/LinkifyPlugin;

    invoke-direct {v0, p0, p1}, Lio/noties/markwon/linkify/LinkifyPlugin;-><init>(IZ)V

    return-object v0
.end method

.method public static create(Z)Lio/noties/markwon/linkify/LinkifyPlugin;
    .locals 1
    .param p0, "useCompat"    # Z

    .line 49
    const/4 v0, 0x7

    invoke-static {v0, p0}, Lio/noties/markwon/linkify/LinkifyPlugin;->create(IZ)Lio/noties/markwon/linkify/LinkifyPlugin;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public configure(Lio/noties/markwon/MarkwonPlugin$Registry;)V
    .locals 2
    .param p1, "registry"    # Lio/noties/markwon/MarkwonPlugin$Registry;

    .line 79
    const-class v0, Lio/noties/markwon/core/CorePlugin;

    new-instance v1, Lio/noties/markwon/linkify/LinkifyPlugin$1;

    invoke-direct {v1, p0}, Lio/noties/markwon/linkify/LinkifyPlugin$1;-><init>(Lio/noties/markwon/linkify/LinkifyPlugin;)V

    invoke-interface {p1, v0, v1}, Lio/noties/markwon/MarkwonPlugin$Registry;->require(Ljava/lang/Class;Lio/noties/markwon/MarkwonPlugin$Action;)V

    .line 92
    return-void
.end method
