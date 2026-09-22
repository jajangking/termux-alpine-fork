.class Lio/noties/markwon/RenderPropsImpl;
.super Ljava/lang/Object;
.source "RenderPropsImpl.java"

# interfaces
.implements Lio/noties/markwon/RenderProps;


# instance fields
.field private final values:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lio/noties/markwon/Prop;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 2

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lio/noties/markwon/RenderPropsImpl;->values:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public clear(Lio/noties/markwon/Prop;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/noties/markwon/Prop<",
            "TT;>;)V"
        }
    .end annotation

    .line 45
    .local p1, "prop":Lio/noties/markwon/Prop;, "Lio/noties/markwon/Prop<TT;>;"
    iget-object v0, p0, Lio/noties/markwon/RenderPropsImpl;->values:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    return-void
.end method

.method public clearAll()V
    .locals 1

    .line 50
    iget-object v0, p0, Lio/noties/markwon/RenderPropsImpl;->values:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 51
    return-void
.end method

.method public get(Lio/noties/markwon/Prop;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/noties/markwon/Prop<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 20
    .local p1, "prop":Lio/noties/markwon/Prop;, "Lio/noties/markwon/Prop<TT;>;"
    iget-object v0, p0, Lio/noties/markwon/RenderPropsImpl;->values:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public get(Lio/noties/markwon/Prop;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/noties/markwon/Prop<",
            "TT;>;TT;)TT;"
        }
    .end annotation

    .line 26
    .local p1, "prop":Lio/noties/markwon/Prop;, "Lio/noties/markwon/Prop<TT;>;"
    .local p2, "defValue":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lio/noties/markwon/RenderPropsImpl;->values:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 27
    .local v0, "value":Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 29
    return-object v0

    .line 31
    :cond_0
    return-object p2
.end method

.method public set(Lio/noties/markwon/Prop;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/noties/markwon/Prop<",
            "TT;>;TT;)V"
        }
    .end annotation

    .line 36
    .local p1, "prop":Lio/noties/markwon/Prop;, "Lio/noties/markwon/Prop<TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    if-nez p2, :cond_0

    .line 37
    iget-object v0, p0, Lio/noties/markwon/RenderPropsImpl;->values:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 39
    :cond_0
    iget-object v0, p0, Lio/noties/markwon/RenderPropsImpl;->values:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    :goto_0
    return-void
.end method
