.class public final synthetic Lcom/termux/api/SocketListener$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/app/Application;


# direct methods
.method public synthetic constructor <init>(Landroid/app/Application;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/termux/api/SocketListener$$ExternalSyntheticLambda0;->f$0:Landroid/app/Application;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/termux/api/SocketListener$$ExternalSyntheticLambda0;->f$0:Landroid/app/Application;

    invoke-static {v0}, Lcom/termux/api/SocketListener;->$r8$lambda$qvO8Cnx5JnDkvJoxqKKq302kAdQ(Landroid/app/Application;)V

    return-void
.end method
