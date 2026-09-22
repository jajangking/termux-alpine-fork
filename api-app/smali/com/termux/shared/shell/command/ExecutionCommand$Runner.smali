.class public final enum Lcom/termux/shared/shell/command/ExecutionCommand$Runner;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/termux/shared/shell/command/ExecutionCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Runner"
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/termux/shared/shell/command/ExecutionCommand$Runner;

.field public static final enum APP_SHELL:Lcom/termux/shared/shell/command/ExecutionCommand$Runner;

.field public static final enum TERMINAL_SESSION:Lcom/termux/shared/shell/command/ExecutionCommand$Runner;


# instance fields
.field private final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 63
    new-instance v0, Lcom/termux/shared/shell/command/ExecutionCommand$Runner;

    const/4 v1, 0x0

    const-string v2, "terminal-session"

    const-string v3, "TERMINAL_SESSION"

    invoke-direct {v0, v3, v1, v2}, Lcom/termux/shared/shell/command/ExecutionCommand$Runner;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/termux/shared/shell/command/ExecutionCommand$Runner;->TERMINAL_SESSION:Lcom/termux/shared/shell/command/ExecutionCommand$Runner;

    .line 66
    new-instance v1, Lcom/termux/shared/shell/command/ExecutionCommand$Runner;

    const/4 v2, 0x1

    const-string v3, "app-shell"

    const-string v4, "APP_SHELL"

    invoke-direct {v1, v4, v2, v3}, Lcom/termux/shared/shell/command/ExecutionCommand$Runner;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/termux/shared/shell/command/ExecutionCommand$Runner;->APP_SHELL:Lcom/termux/shared/shell/command/ExecutionCommand$Runner;

    .line 60
    filled-new-array {v0, v1}, [Lcom/termux/shared/shell/command/ExecutionCommand$Runner;

    move-result-object v0

    sput-object v0, Lcom/termux/shared/shell/command/ExecutionCommand$Runner;->$VALUES:[Lcom/termux/shared/shell/command/ExecutionCommand$Runner;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 76
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 77
    iput-object p3, p0, Lcom/termux/shared/shell/command/ExecutionCommand$Runner;->name:Ljava/lang/String;

    return-void
.end method

.method public static runnerOf(Ljava/lang/String;)Lcom/termux/shared/shell/command/ExecutionCommand$Runner;
    .locals 5

    .line 91
    invoke-static {}, Lcom/termux/shared/shell/command/ExecutionCommand$Runner;->values()[Lcom/termux/shared/shell/command/ExecutionCommand$Runner;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 92
    iget-object v4, v3, Lcom/termux/shared/shell/command/ExecutionCommand$Runner;->name:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/termux/shared/shell/command/ExecutionCommand$Runner;
    .locals 1

    .line 60
    const-class v0, Lcom/termux/shared/shell/command/ExecutionCommand$Runner;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/termux/shared/shell/command/ExecutionCommand$Runner;

    return-object p0
.end method

.method public static values()[Lcom/termux/shared/shell/command/ExecutionCommand$Runner;
    .locals 1

    .line 60
    sget-object v0, Lcom/termux/shared/shell/command/ExecutionCommand$Runner;->$VALUES:[Lcom/termux/shared/shell/command/ExecutionCommand$Runner;

    invoke-virtual {v0}, [Lcom/termux/shared/shell/command/ExecutionCommand$Runner;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/termux/shared/shell/command/ExecutionCommand$Runner;

    return-object v0
.end method


# virtual methods
.method public equalsRunner(Ljava/lang/String;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 85
    iget-object v0, p0, Lcom/termux/shared/shell/command/ExecutionCommand$Runner;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/termux/shared/shell/command/ExecutionCommand$Runner;->name:Ljava/lang/String;

    return-object v0
.end method
