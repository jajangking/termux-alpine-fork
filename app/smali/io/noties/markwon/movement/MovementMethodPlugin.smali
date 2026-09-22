.class public Lio/noties/markwon/movement/MovementMethodPlugin;
.super Lio/noties/markwon/AbstractMarkwonPlugin;
.source "MovementMethodPlugin.java"


# instance fields
.field private final movementMethod:Landroid/text/method/MovementMethod;


# direct methods
.method constructor <init>(Landroid/text/method/MovementMethod;)V
    .locals 0
    .param p1, "movementMethod"    # Landroid/text/method/MovementMethod;

    .line 64
    invoke-direct {p0}, Lio/noties/markwon/AbstractMarkwonPlugin;-><init>()V

    .line 65
    iput-object p1, p0, Lio/noties/markwon/movement/MovementMethodPlugin;->movementMethod:Landroid/text/method/MovementMethod;

    .line 66
    return-void
.end method

.method public static create()Lio/noties/markwon/movement/MovementMethodPlugin;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 30
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v0

    invoke-static {v0}, Lio/noties/markwon/movement/MovementMethodPlugin;->create(Landroid/text/method/MovementMethod;)Lio/noties/markwon/movement/MovementMethodPlugin;

    move-result-object v0

    return-object v0
.end method

.method public static create(Landroid/text/method/MovementMethod;)Lio/noties/markwon/movement/MovementMethodPlugin;
    .locals 1
    .param p0, "movementMethod"    # Landroid/text/method/MovementMethod;

    .line 54
    new-instance v0, Lio/noties/markwon/movement/MovementMethodPlugin;

    invoke-direct {v0, p0}, Lio/noties/markwon/movement/MovementMethodPlugin;-><init>(Landroid/text/method/MovementMethod;)V

    return-object v0
.end method

.method public static link()Lio/noties/markwon/movement/MovementMethodPlugin;
    .locals 1

    .line 38
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v0

    invoke-static {v0}, Lio/noties/markwon/movement/MovementMethodPlugin;->create(Landroid/text/method/MovementMethod;)Lio/noties/markwon/movement/MovementMethodPlugin;

    move-result-object v0

    return-object v0
.end method

.method public static none()Lio/noties/markwon/movement/MovementMethodPlugin;
    .locals 2

    .line 49
    new-instance v0, Lio/noties/markwon/movement/MovementMethodPlugin;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/noties/markwon/movement/MovementMethodPlugin;-><init>(Landroid/text/method/MovementMethod;)V

    return-object v0
.end method


# virtual methods
.method public beforeSetText(Landroid/widget/TextView;Landroid/text/Spanned;)V
    .locals 2
    .param p1, "textView"    # Landroid/widget/TextView;
    .param p2, "markdown"    # Landroid/text/Spanned;

    .line 77
    invoke-virtual {p1}, Landroid/widget/TextView;->getMovementMethod()Landroid/text/method/MovementMethod;

    move-result-object v0

    .line 78
    .local v0, "current":Landroid/text/method/MovementMethod;
    iget-object v1, p0, Lio/noties/markwon/movement/MovementMethodPlugin;->movementMethod:Landroid/text/method/MovementMethod;

    if-eq v0, v1, :cond_0

    .line 79
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 81
    :cond_0
    return-void
.end method

.method public configure(Lio/noties/markwon/MarkwonPlugin$Registry;)V
    .locals 2
    .param p1, "registry"    # Lio/noties/markwon/MarkwonPlugin$Registry;

    .line 70
    const-class v0, Lio/noties/markwon/core/CorePlugin;

    invoke-interface {p1, v0}, Lio/noties/markwon/MarkwonPlugin$Registry;->require(Ljava/lang/Class;)Lio/noties/markwon/MarkwonPlugin;

    move-result-object v0

    check-cast v0, Lio/noties/markwon/core/CorePlugin;

    .line 71
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lio/noties/markwon/core/CorePlugin;->hasExplicitMovementMethod(Z)Lio/noties/markwon/core/CorePlugin;

    .line 72
    return-void
.end method
