.class public interface abstract Lcom/termux/shared/shell/TermuxSession$TermuxSessionClient;
.super Ljava/lang/Object;
.source "TermuxSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/termux/shared/shell/TermuxSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "TermuxSessionClient"
.end annotation


# virtual methods
.method public abstract onTermuxSessionExited(Lcom/termux/shared/shell/TermuxSession;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "termuxSession"
        }
    .end annotation
.end method
