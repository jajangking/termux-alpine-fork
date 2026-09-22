.class public final synthetic Lcom/termux/shared/terminal/io/-$$Lambda$TerminalExtraKeys$EsGrmYxqjn70nYV1dHr3853O0lA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/IntConsumer;


# instance fields
.field public final synthetic f$0:Lcom/termux/shared/terminal/io/TerminalExtraKeys;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lcom/termux/shared/terminal/io/TerminalExtraKeys;ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/termux/shared/terminal/io/-$$Lambda$TerminalExtraKeys$EsGrmYxqjn70nYV1dHr3853O0lA;->f$0:Lcom/termux/shared/terminal/io/TerminalExtraKeys;

    iput-boolean p2, p0, Lcom/termux/shared/terminal/io/-$$Lambda$TerminalExtraKeys$EsGrmYxqjn70nYV1dHr3853O0lA;->f$1:Z

    iput-boolean p3, p0, Lcom/termux/shared/terminal/io/-$$Lambda$TerminalExtraKeys$EsGrmYxqjn70nYV1dHr3853O0lA;->f$2:Z

    return-void
.end method


# virtual methods
.method public final accept(I)V
    .locals 3

    iget-object v0, p0, Lcom/termux/shared/terminal/io/-$$Lambda$TerminalExtraKeys$EsGrmYxqjn70nYV1dHr3853O0lA;->f$0:Lcom/termux/shared/terminal/io/TerminalExtraKeys;

    iget-boolean v1, p0, Lcom/termux/shared/terminal/io/-$$Lambda$TerminalExtraKeys$EsGrmYxqjn70nYV1dHr3853O0lA;->f$1:Z

    iget-boolean v2, p0, Lcom/termux/shared/terminal/io/-$$Lambda$TerminalExtraKeys$EsGrmYxqjn70nYV1dHr3853O0lA;->f$2:Z

    invoke-virtual {v0, v1, v2, p1}, Lcom/termux/shared/terminal/io/TerminalExtraKeys;->lambda$onTerminalExtraKeyButtonClick$0$TerminalExtraKeys(ZZI)V

    return-void
.end method
