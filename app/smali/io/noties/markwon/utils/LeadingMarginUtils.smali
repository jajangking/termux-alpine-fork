.class public abstract Lio/noties/markwon/utils/LeadingMarginUtils;
.super Ljava/lang/Object;
.source "LeadingMarginUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    return-void
.end method

.method public static selfEnd(ILjava/lang/CharSequence;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "end"    # I
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "span"    # Ljava/lang/Object;

    .line 12
    instance-of v0, p1, Landroid/text/Spanned;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Landroid/text/Spanned;

    invoke-interface {v0, p2}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v0

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static selfStart(ILjava/lang/CharSequence;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "start"    # I
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "span"    # Ljava/lang/Object;

    .line 8
    instance-of v0, p1, Landroid/text/Spanned;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Landroid/text/Spanned;

    invoke-interface {v0, p2}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v0

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
