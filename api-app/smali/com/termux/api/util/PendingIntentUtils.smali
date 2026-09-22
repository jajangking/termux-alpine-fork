.class public abstract Lcom/termux/api/util/PendingIntentUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static getPendingIntentImmutableFlag()I
    .locals 1

    const/high16 v0, 0x4000000

    return v0
.end method

.method public static getPendingIntentMutableFlag()I
    .locals 2

    .line 28
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_0

    const/high16 v0, 0x2000000

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
