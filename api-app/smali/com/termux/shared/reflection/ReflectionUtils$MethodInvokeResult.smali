.class public Lcom/termux/shared/reflection/ReflectionUtils$MethodInvokeResult;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/termux/shared/reflection/ReflectionUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MethodInvokeResult"
.end annotation


# instance fields
.field public value:Ljava/lang/Object;


# direct methods
.method constructor <init>(ZLjava/lang/Object;)V
    .locals 0

    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 177
    iput-object p2, p0, Lcom/termux/shared/reflection/ReflectionUtils$MethodInvokeResult;->value:Ljava/lang/Object;

    return-void
.end method
