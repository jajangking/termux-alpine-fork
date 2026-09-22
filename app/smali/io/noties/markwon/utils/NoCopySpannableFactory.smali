.class public Lio/noties/markwon/utils/NoCopySpannableFactory;
.super Landroid/text/Spannable$Factory;
.source "NoCopySpannableFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/noties/markwon/utils/NoCopySpannableFactory$Holder;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Landroid/text/Spannable$Factory;-><init>()V

    return-void
.end method

.method public static getInstance()Lio/noties/markwon/utils/NoCopySpannableFactory;
    .locals 1

    .line 18
    invoke-static {}, Lio/noties/markwon/utils/NoCopySpannableFactory$Holder;->access$000()Lio/noties/markwon/utils/NoCopySpannableFactory;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public newSpannable(Ljava/lang/CharSequence;)Landroid/text/Spannable;
    .locals 1
    .param p1, "source"    # Ljava/lang/CharSequence;

    .line 23
    instance-of v0, p1, Landroid/text/Spannable;

    if-eqz v0, :cond_0

    .line 24
    move-object v0, p1

    check-cast v0, Landroid/text/Spannable;

    goto :goto_0

    .line 25
    :cond_0
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 23
    :goto_0
    return-object v0
.end method
