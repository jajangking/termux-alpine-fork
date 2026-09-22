.class Lio/noties/markwon/image/AsyncDrawableLoaderNoOp;
.super Lio/noties/markwon/image/AsyncDrawableLoader;
.source "AsyncDrawableLoaderNoOp.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Lio/noties/markwon/image/AsyncDrawableLoader;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel(Lio/noties/markwon/image/AsyncDrawable;)V
    .locals 0
    .param p1, "drawable"    # Lio/noties/markwon/image/AsyncDrawable;

    .line 17
    return-void
.end method

.method public load(Lio/noties/markwon/image/AsyncDrawable;)V
    .locals 0
    .param p1, "drawable"    # Lio/noties/markwon/image/AsyncDrawable;

    .line 12
    return-void
.end method

.method public placeholder(Lio/noties/markwon/image/AsyncDrawable;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "drawable"    # Lio/noties/markwon/image/AsyncDrawable;

    .line 22
    const/4 v0, 0x0

    return-object v0
.end method
