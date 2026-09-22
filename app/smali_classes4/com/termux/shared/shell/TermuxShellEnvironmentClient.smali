.class public Lcom/termux/shared/shell/TermuxShellEnvironmentClient;
.super Ljava/lang/Object;
.source "TermuxShellEnvironmentClient.java"

# interfaces
.implements Lcom/termux/shared/shell/ShellEnvironmentClient;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public buildEnvironment(Landroid/content/Context;ZLjava/lang/String;)[Ljava/lang/String;
    .locals 1
    .param p1, "currentPackageContext"    # Landroid/content/Context;
    .param p2, "isFailSafe"    # Z
    .param p3, "workingDirectory"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "currentPackageContext",
            "isFailSafe",
            "workingDirectory"
        }
    .end annotation

    .line 24
    invoke-static {p1, p2, p3}, Lcom/termux/shared/shell/TermuxShellUtils;->buildEnvironment(Landroid/content/Context;ZLjava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultBinPath()Ljava/lang/String;
    .locals 1

    .line 18
    invoke-static {}, Lcom/termux/shared/shell/TermuxShellUtils;->getDefaultBinPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultWorkingDirectoryPath()Ljava/lang/String;
    .locals 1

    .line 12
    invoke-static {}, Lcom/termux/shared/shell/TermuxShellUtils;->getDefaultWorkingDirectoryPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setupProcessArgs(Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .param p1, "fileToExecute"    # Ljava/lang/String;
    .param p2, "arguments"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "fileToExecute",
            "arguments"
        }
    .end annotation

    .line 30
    invoke-static {p1, p2}, Lcom/termux/shared/shell/TermuxShellUtils;->setupProcessArgs(Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
