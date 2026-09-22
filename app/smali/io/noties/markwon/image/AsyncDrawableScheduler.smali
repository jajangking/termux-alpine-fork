.class public abstract Lio/noties/markwon/image/AsyncDrawableScheduler;
.super Ljava/lang/Object;
.source "AsyncDrawableScheduler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/noties/markwon/image/AsyncDrawableScheduler$TextViewInvalidator;,
        Lio/noties/markwon/image/AsyncDrawableScheduler$DrawableCallbackImpl;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    return-void
.end method

.method private static extractSpans(Landroid/widget/TextView;)[Lio/noties/markwon/image/AsyncDrawableSpan;
    .locals 5
    .param p0, "textView"    # Landroid/widget/TextView;

    .line 94
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 95
    .local v0, "cs":Ljava/lang/CharSequence;
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 96
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    goto :goto_0

    .line 97
    :cond_0
    move v2, v1

    :goto_0
    nop

    .line 99
    .local v2, "length":I
    if-eqz v2, :cond_2

    instance-of v3, v0, Landroid/text/Spanned;

    if-nez v3, :cond_1

    goto :goto_1

    .line 107
    :cond_1
    move-object v3, v0

    check-cast v3, Landroid/text/Spanned;

    const-class v4, Lio/noties/markwon/image/AsyncDrawableSpan;

    invoke-interface {v3, v1, v2, v4}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lio/noties/markwon/image/AsyncDrawableSpan;

    return-object v1

    .line 101
    :cond_2
    :goto_1
    const/4 v1, 0x0

    return-object v1
.end method

.method public static schedule(Landroid/widget/TextView;)V
    .locals 10
    .param p0, "textView"    # Landroid/widget/TextView;

    .line 28
    sget v0, Lio/noties/markwon/R$id;->markwon_drawables_scheduler_last_text_hashcode:I

    .line 29
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 30
    .local v0, "lastTextHashCode":Ljava/lang/Integer;
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    .line 31
    .local v1, "textHashCode":I
    if-eqz v0, :cond_0

    .line 32
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v1, :cond_0

    .line 33
    return-void

    .line 35
    :cond_0
    sget v2, Lio/noties/markwon/R$id;->markwon_drawables_scheduler_last_text_hashcode:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Landroid/widget/TextView;->setTag(ILjava/lang/Object;)V

    .line 38
    invoke-static {p0}, Lio/noties/markwon/image/AsyncDrawableScheduler;->extractSpans(Landroid/widget/TextView;)[Lio/noties/markwon/image/AsyncDrawableSpan;

    move-result-object v2

    .line 39
    .local v2, "spans":[Lio/noties/markwon/image/AsyncDrawableSpan;
    if-eqz v2, :cond_2

    array-length v3, v2

    if-lez v3, :cond_2

    .line 42
    sget v3, Lio/noties/markwon/R$id;->markwon_drawables_scheduler:I

    invoke-virtual {p0, v3}, Landroid/widget/TextView;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_1

    .line 43
    new-instance v3, Lio/noties/markwon/image/AsyncDrawableScheduler$1;

    invoke-direct {v3, p0}, Lio/noties/markwon/image/AsyncDrawableScheduler$1;-><init>(Landroid/widget/TextView;)V

    .line 56
    .local v3, "listener":Landroid/view/View$OnAttachStateChangeListener;
    invoke-virtual {p0, v3}, Landroid/widget/TextView;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 57
    sget v4, Lio/noties/markwon/R$id;->markwon_drawables_scheduler:I

    invoke-virtual {p0, v4, v3}, Landroid/widget/TextView;->setTag(ILjava/lang/Object;)V

    .line 61
    .end local v3    # "listener":Landroid/view/View$OnAttachStateChangeListener;
    :cond_1
    new-instance v3, Lio/noties/markwon/image/AsyncDrawableScheduler$TextViewInvalidator;

    invoke-direct {v3, p0}, Lio/noties/markwon/image/AsyncDrawableScheduler$TextViewInvalidator;-><init>(Landroid/widget/TextView;)V

    .line 65
    .local v3, "invalidator":Lio/noties/markwon/image/AsyncDrawableScheduler$DrawableCallbackImpl$Invalidator;
    array-length v4, v2

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_2

    aget-object v6, v2, v5

    .line 66
    .local v6, "span":Lio/noties/markwon/image/AsyncDrawableSpan;
    invoke-virtual {v6}, Lio/noties/markwon/image/AsyncDrawableSpan;->getDrawable()Lio/noties/markwon/image/AsyncDrawable;

    move-result-object v7

    .line 67
    .local v7, "drawable":Lio/noties/markwon/image/AsyncDrawable;
    new-instance v8, Lio/noties/markwon/image/AsyncDrawableScheduler$DrawableCallbackImpl;

    invoke-virtual {v7}, Lio/noties/markwon/image/AsyncDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v9

    invoke-direct {v8, p0, v3, v9}, Lio/noties/markwon/image/AsyncDrawableScheduler$DrawableCallbackImpl;-><init>(Landroid/widget/TextView;Lio/noties/markwon/image/AsyncDrawableScheduler$DrawableCallbackImpl$Invalidator;Landroid/graphics/Rect;)V

    invoke-virtual {v7, v8}, Lio/noties/markwon/image/AsyncDrawable;->setCallback2(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 65
    .end local v6    # "span":Lio/noties/markwon/image/AsyncDrawableSpan;
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 70
    .end local v3    # "invalidator":Lio/noties/markwon/image/AsyncDrawableScheduler$DrawableCallbackImpl$Invalidator;
    .end local v7    # "drawable":Lio/noties/markwon/image/AsyncDrawable;
    :cond_2
    return-void
.end method

.method public static unschedule(Landroid/widget/TextView;)V
    .locals 6
    .param p0, "view"    # Landroid/widget/TextView;

    .line 76
    sget v0, Lio/noties/markwon/R$id;->markwon_drawables_scheduler_last_text_hashcode:I

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 77
    return-void

    .line 79
    :cond_0
    sget v0, Lio/noties/markwon/R$id;->markwon_drawables_scheduler_last_text_hashcode:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/widget/TextView;->setTag(ILjava/lang/Object;)V

    .line 82
    invoke-static {p0}, Lio/noties/markwon/image/AsyncDrawableScheduler;->extractSpans(Landroid/widget/TextView;)[Lio/noties/markwon/image/AsyncDrawableSpan;

    move-result-object v0

    .line 83
    .local v0, "spans":[Lio/noties/markwon/image/AsyncDrawableSpan;
    if-eqz v0, :cond_1

    array-length v2, v0

    if-lez v2, :cond_1

    .line 85
    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    .line 86
    .local v4, "span":Lio/noties/markwon/image/AsyncDrawableSpan;
    invoke-virtual {v4}, Lio/noties/markwon/image/AsyncDrawableSpan;->getDrawable()Lio/noties/markwon/image/AsyncDrawable;

    move-result-object v5

    invoke-virtual {v5, v1}, Lio/noties/markwon/image/AsyncDrawable;->setCallback2(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 85
    .end local v4    # "span":Lio/noties/markwon/image/AsyncDrawableSpan;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 89
    :cond_1
    return-void
.end method
