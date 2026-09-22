.class public interface abstract Lcom/termux/shared/shell/ShellEnvironmentClient;
.super Ljava/lang/Object;
.source "ShellEnvironmentClient.java"


# virtual methods
.method public abstract buildEnvironment(Landroid/content/Context;ZLjava/lang/String;)[Ljava/lang/String;
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
.end method

.method public abstract getDefaultBinPath()Ljava/lang/String;
.end method

.method public abstract getDefaultWorkingDirectoryPath()Ljava/lang/String;
.end method

.method public abstract setupProcessArgs(Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
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
.end method
