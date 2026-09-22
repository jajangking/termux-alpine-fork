.class public interface abstract Lio/noties/markwon/Markwon$Builder;
.super Ljava/lang/Object;
.source "Markwon.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/noties/markwon/Markwon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Builder"
.end annotation


# virtual methods
.method public abstract bufferType(Landroid/widget/TextView$BufferType;)Lio/noties/markwon/Markwon$Builder;
.end method

.method public abstract build()Lio/noties/markwon/Markwon;
.end method

.method public abstract fallbackToRawInputWhenEmpty(Z)Lio/noties/markwon/Markwon$Builder;
.end method

.method public abstract textSetter(Lio/noties/markwon/Markwon$TextSetter;)Lio/noties/markwon/Markwon$Builder;
.end method

.method public abstract usePlugin(Lio/noties/markwon/MarkwonPlugin;)Lio/noties/markwon/Markwon$Builder;
.end method

.method public abstract usePlugins(Ljava/lang/Iterable;)Lio/noties/markwon/Markwon$Builder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lio/noties/markwon/MarkwonPlugin;",
            ">;)",
            "Lio/noties/markwon/Markwon$Builder;"
        }
    .end annotation
.end method
