.class public abstract Lcom/termux/shared/shell/command/environment/UnixShellEnvironment;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/termux/shared/shell/command/environment/IShellEnvironment;


# static fields
.field public static final LOGIN_SHELL_BINARIES:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 56
    const-string v0, "fish"

    const-string v1, "sh"

    const-string v2, "login"

    const-string v3, "bash"

    const-string v4, "zsh"

    filled-new-array {v2, v3, v4, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/termux/shared/shell/command/environment/UnixShellEnvironment;->LOGIN_SHELL_BINARIES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setupShellCommandArguments(Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 0

    .line 75
    invoke-static {p1, p2}, Lcom/termux/shared/shell/ShellUtils;->setupShellCommandArguments(Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
