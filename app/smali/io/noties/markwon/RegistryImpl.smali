.class Lio/noties/markwon/RegistryImpl;
.super Ljava/lang/Object;
.source "RegistryImpl.java"

# interfaces
.implements Lio/noties/markwon/MarkwonPlugin$Registry;


# instance fields
.field private final origin:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/noties/markwon/MarkwonPlugin;",
            ">;"
        }
    .end annotation
.end field

.field private final pending:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lio/noties/markwon/MarkwonPlugin;",
            ">;"
        }
    .end annotation
.end field

.field private final plugins:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/noties/markwon/MarkwonPlugin;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/noties/markwon/MarkwonPlugin;",
            ">;)V"
        }
    .end annotation

    .line 20
    .local p1, "origin":Ljava/util/List;, "Ljava/util/List<Lio/noties/markwon/MarkwonPlugin;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lio/noties/markwon/RegistryImpl;->origin:Ljava/util/List;

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lio/noties/markwon/RegistryImpl;->plugins:Ljava/util/List;

    .line 23
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lio/noties/markwon/RegistryImpl;->pending:Ljava/util/Set;

    .line 24
    return-void
.end method

.method private configure(Lio/noties/markwon/MarkwonPlugin;)V
    .locals 3
    .param p1, "plugin"    # Lio/noties/markwon/MarkwonPlugin;

    .line 52
    iget-object v0, p0, Lio/noties/markwon/RegistryImpl;->plugins:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 54
    iget-object v0, p0, Lio/noties/markwon/RegistryImpl;->pending:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 59
    iget-object v0, p0, Lio/noties/markwon/RegistryImpl;->pending:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 61
    invoke-interface {p1, p0}, Lio/noties/markwon/MarkwonPlugin;->configure(Lio/noties/markwon/MarkwonPlugin$Registry;)V

    .line 64
    iget-object v0, p0, Lio/noties/markwon/RegistryImpl;->pending:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 70
    iget-object v0, p0, Lio/noties/markwon/RegistryImpl;->plugins:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 72
    const-class v0, Lio/noties/markwon/core/CorePlugin;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lio/noties/markwon/RegistryImpl;->plugins:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 75
    :cond_0
    iget-object v0, p0, Lio/noties/markwon/RegistryImpl;->plugins:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 55
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cyclic dependency chain found: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lio/noties/markwon/RegistryImpl;->pending:Ljava/util/Set;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 79
    :cond_2
    :goto_0
    return-void
.end method

.method private static find(Ljava/util/List;Ljava/lang/Class;)Lio/noties/markwon/MarkwonPlugin;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P::",
            "Lio/noties/markwon/MarkwonPlugin;",
            ">(",
            "Ljava/util/List<",
            "Lio/noties/markwon/MarkwonPlugin;",
            ">;",
            "Ljava/lang/Class<",
            "TP;>;)TP;"
        }
    .end annotation

    .line 108
    .local p0, "plugins":Ljava/util/List;, "Ljava/util/List<Lio/noties/markwon/MarkwonPlugin;>;"
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TP;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/noties/markwon/MarkwonPlugin;

    .line 109
    .local v1, "plugin":Lio/noties/markwon/MarkwonPlugin;
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 111
    return-object v1

    .line 113
    .end local v1    # "plugin":Lio/noties/markwon/MarkwonPlugin;
    :cond_0
    goto :goto_0

    .line 114
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private get(Ljava/lang/Class;)Lio/noties/markwon/MarkwonPlugin;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P::",
            "Lio/noties/markwon/MarkwonPlugin;",
            ">(",
            "Ljava/lang/Class<",
            "TP;>;)TP;"
        }
    .end annotation

    .line 87
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TP;>;"
    iget-object v0, p0, Lio/noties/markwon/RegistryImpl;->plugins:Ljava/util/List;

    invoke-static {v0, p1}, Lio/noties/markwon/RegistryImpl;->find(Ljava/util/List;Ljava/lang/Class;)Lio/noties/markwon/MarkwonPlugin;

    move-result-object v0

    .line 89
    .local v0, "plugin":Lio/noties/markwon/MarkwonPlugin;, "TP;"
    if-nez v0, :cond_1

    .line 91
    iget-object v1, p0, Lio/noties/markwon/RegistryImpl;->origin:Ljava/util/List;

    invoke-static {v1, p1}, Lio/noties/markwon/RegistryImpl;->find(Ljava/util/List;Ljava/lang/Class;)Lio/noties/markwon/MarkwonPlugin;

    move-result-object v0

    .line 93
    if-eqz v0, :cond_0

    .line 98
    invoke-direct {p0, v0}, Lio/noties/markwon/RegistryImpl;->configure(Lio/noties/markwon/MarkwonPlugin;)V

    goto :goto_0

    .line 94
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Requested plugin is not added: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 95
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", plugins: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lio/noties/markwon/RegistryImpl;->origin:Ljava/util/List;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 101
    :cond_1
    :goto_0
    return-object v0
.end method


# virtual methods
.method process()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/noties/markwon/MarkwonPlugin;",
            ">;"
        }
    .end annotation

    .line 41
    iget-object v0, p0, Lio/noties/markwon/RegistryImpl;->origin:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/noties/markwon/MarkwonPlugin;

    .line 42
    .local v1, "plugin":Lio/noties/markwon/MarkwonPlugin;
    invoke-direct {p0, v1}, Lio/noties/markwon/RegistryImpl;->configure(Lio/noties/markwon/MarkwonPlugin;)V

    .line 43
    .end local v1    # "plugin":Lio/noties/markwon/MarkwonPlugin;
    goto :goto_0

    .line 44
    :cond_0
    iget-object v0, p0, Lio/noties/markwon/RegistryImpl;->plugins:Ljava/util/List;

    return-object v0
.end method

.method public require(Ljava/lang/Class;)Lio/noties/markwon/MarkwonPlugin;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P::",
            "Lio/noties/markwon/MarkwonPlugin;",
            ">(",
            "Ljava/lang/Class<",
            "TP;>;)TP;"
        }
    .end annotation

    .line 29
    .local p1, "plugin":Ljava/lang/Class;, "Ljava/lang/Class<TP;>;"
    invoke-direct {p0, p1}, Lio/noties/markwon/RegistryImpl;->get(Ljava/lang/Class;)Lio/noties/markwon/MarkwonPlugin;

    move-result-object v0

    return-object v0
.end method

.method public require(Ljava/lang/Class;Lio/noties/markwon/MarkwonPlugin$Action;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P::",
            "Lio/noties/markwon/MarkwonPlugin;",
            ">(",
            "Ljava/lang/Class<",
            "TP;>;",
            "Lio/noties/markwon/MarkwonPlugin$Action<",
            "-TP;>;)V"
        }
    .end annotation

    .line 36
    .local p1, "plugin":Ljava/lang/Class;, "Ljava/lang/Class<TP;>;"
    .local p2, "action":Lio/noties/markwon/MarkwonPlugin$Action;, "Lio/noties/markwon/MarkwonPlugin$Action<-TP;>;"
    invoke-direct {p0, p1}, Lio/noties/markwon/RegistryImpl;->get(Ljava/lang/Class;)Lio/noties/markwon/MarkwonPlugin;

    move-result-object v0

    invoke-interface {p2, v0}, Lio/noties/markwon/MarkwonPlugin$Action;->apply(Lio/noties/markwon/MarkwonPlugin;)V

    .line 37
    return-void
.end method
