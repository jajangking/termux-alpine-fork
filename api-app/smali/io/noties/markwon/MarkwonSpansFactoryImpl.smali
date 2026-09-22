.class Lio/noties/markwon/MarkwonSpansFactoryImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/noties/markwon/MarkwonSpansFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/noties/markwon/MarkwonSpansFactoryImpl$BuilderImpl;
    }
.end annotation


# instance fields
.field private final factories:Ljava/util/Map;


# direct methods
.method constructor <init>(Ljava/util/Map;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lio/noties/markwon/MarkwonSpansFactoryImpl;->factories:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public get(Ljava/lang/Class;)Lio/noties/markwon/SpanFactory;
    .locals 1

    .line 28
    iget-object v0, p0, Lio/noties/markwon/MarkwonSpansFactoryImpl;->factories:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/noties/markwon/SpanFactory;

    return-object p1
.end method
