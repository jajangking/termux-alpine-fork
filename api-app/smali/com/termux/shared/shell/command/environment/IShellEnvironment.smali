.class public interface abstract Lcom/termux/shared/shell/command/environment/IShellEnvironment;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract getDefaultWorkingDirectoryPath()Ljava/lang/String;
.end method

.method public abstract setupShellCommandArguments(Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
.end method

.method public abstract setupShellCommandEnvironment(Landroid/content/Context;Lcom/termux/shared/shell/command/ExecutionCommand;)Ljava/util/HashMap;
.end method
