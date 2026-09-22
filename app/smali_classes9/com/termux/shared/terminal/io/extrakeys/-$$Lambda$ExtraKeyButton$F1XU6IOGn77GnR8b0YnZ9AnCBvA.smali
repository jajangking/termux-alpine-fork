.class public final synthetic Lcom/termux/shared/terminal/io/extrakeys/-$$Lambda$ExtraKeyButton$F1XU6IOGn77GnR8b0YnZ9AnCBvA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysConstants$ExtraKeyDisplayMap;


# direct methods
.method public synthetic constructor <init>(Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysConstants$ExtraKeyDisplayMap;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/termux/shared/terminal/io/extrakeys/-$$Lambda$ExtraKeyButton$F1XU6IOGn77GnR8b0YnZ9AnCBvA;->f$0:Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysConstants$ExtraKeyDisplayMap;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/termux/shared/terminal/io/extrakeys/-$$Lambda$ExtraKeyButton$F1XU6IOGn77GnR8b0YnZ9AnCBvA;->f$0:Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysConstants$ExtraKeyDisplayMap;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/termux/shared/terminal/io/extrakeys/ExtraKeyButton;->lambda$new$0(Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysConstants$ExtraKeyDisplayMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
