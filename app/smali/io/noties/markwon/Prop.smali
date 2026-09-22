.class public Lio/noties/markwon/Prop;
.super Ljava/lang/Object;
.source "Prop.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final name:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .line 29
    .local p0, "this":Lio/noties/markwon/Prop;, "Lio/noties/markwon/Prop<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lio/noties/markwon/Prop;->name:Ljava/lang/String;

    .line 31
    return-void
.end method

.method public static of(Ljava/lang/Class;Ljava/lang/String;)Lio/noties/markwon/Prop;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/String;",
            ")",
            "Lio/noties/markwon/Prop<",
            "TT;>;"
        }
    .end annotation

    .line 19
    .local p0, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    new-instance v0, Lio/noties/markwon/Prop;

    invoke-direct {v0, p1}, Lio/noties/markwon/Prop;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static of(Ljava/lang/String;)Lio/noties/markwon/Prop;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Lio/noties/markwon/Prop<",
            "TT;>;"
        }
    .end annotation

    .line 24
    new-instance v0, Lio/noties/markwon/Prop;

    invoke-direct {v0, p0}, Lio/noties/markwon/Prop;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public clear(Lio/noties/markwon/RenderProps;)V
    .locals 0
    .param p1, "props"    # Lio/noties/markwon/RenderProps;

    .line 62
    .local p0, "this":Lio/noties/markwon/Prop;, "Lio/noties/markwon/Prop<TT;>;"
    invoke-interface {p1, p0}, Lio/noties/markwon/RenderProps;->clear(Lio/noties/markwon/Prop;)V

    .line 63
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 67
    .local p0, "this":Lio/noties/markwon/Prop;, "Lio/noties/markwon/Prop<TT;>;"
    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    return v0

    .line 68
    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 70
    :cond_1
    move-object v0, p1

    check-cast v0, Lio/noties/markwon/Prop;

    .line 72
    .local v0, "prop":Lio/noties/markwon/Prop;, "Lio/noties/markwon/Prop<*>;"
    iget-object v1, p0, Lio/noties/markwon/Prop;->name:Ljava/lang/String;

    iget-object v2, v0, Lio/noties/markwon/Prop;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 68
    .end local v0    # "prop":Lio/noties/markwon/Prop;, "Lio/noties/markwon/Prop<*>;"
    :cond_2
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public get(Lio/noties/markwon/RenderProps;)Ljava/lang/Object;
    .locals 1
    .param p1, "props"    # Lio/noties/markwon/RenderProps;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/noties/markwon/RenderProps;",
            ")TT;"
        }
    .end annotation

    .line 40
    .local p0, "this":Lio/noties/markwon/Prop;, "Lio/noties/markwon/Prop<TT;>;"
    invoke-interface {p1, p0}, Lio/noties/markwon/RenderProps;->get(Lio/noties/markwon/Prop;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public get(Lio/noties/markwon/RenderProps;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "props"    # Lio/noties/markwon/RenderProps;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/noties/markwon/RenderProps;",
            "TT;)TT;"
        }
    .end annotation

    .line 45
    .local p0, "this":Lio/noties/markwon/Prop;, "Lio/noties/markwon/Prop<TT;>;"
    .local p2, "defValue":Ljava/lang/Object;, "TT;"
    invoke-interface {p1, p0, p2}, Lio/noties/markwon/RenderProps;->get(Lio/noties/markwon/Prop;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 77
    .local p0, "this":Lio/noties/markwon/Prop;, "Lio/noties/markwon/Prop<TT;>;"
    iget-object v0, p0, Lio/noties/markwon/Prop;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public name()Ljava/lang/String;
    .locals 1

    .line 35
    .local p0, "this":Lio/noties/markwon/Prop;, "Lio/noties/markwon/Prop<TT;>;"
    iget-object v0, p0, Lio/noties/markwon/Prop;->name:Ljava/lang/String;

    return-object v0
.end method

.method public require(Lio/noties/markwon/RenderProps;)Ljava/lang/Object;
    .locals 3
    .param p1, "props"    # Lio/noties/markwon/RenderProps;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/noties/markwon/RenderProps;",
            ")TT;"
        }
    .end annotation

    .line 50
    .local p0, "this":Lio/noties/markwon/Prop;, "Lio/noties/markwon/Prop<TT;>;"
    invoke-virtual {p0, p1}, Lio/noties/markwon/Prop;->get(Lio/noties/markwon/RenderProps;)Ljava/lang/Object;

    move-result-object v0

    .line 51
    .local v0, "t":Ljava/lang/Object;, "TT;"
    if-eqz v0, :cond_0

    .line 54
    return-object v0

    .line 52
    :cond_0
    new-instance v1, Ljava/lang/NullPointerException;

    iget-object v2, p0, Lio/noties/markwon/Prop;->name:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public set(Lio/noties/markwon/RenderProps;Ljava/lang/Object;)V
    .locals 0
    .param p1, "props"    # Lio/noties/markwon/RenderProps;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/noties/markwon/RenderProps;",
            "TT;)V"
        }
    .end annotation

    .line 58
    .local p0, "this":Lio/noties/markwon/Prop;, "Lio/noties/markwon/Prop<TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    invoke-interface {p1, p0, p2}, Lio/noties/markwon/RenderProps;->set(Lio/noties/markwon/Prop;Ljava/lang/Object;)V

    .line 59
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 82
    .local p0, "this":Lio/noties/markwon/Prop;, "Lio/noties/markwon/Prop<TT;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Prop{name=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/noties/markwon/Prop;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
