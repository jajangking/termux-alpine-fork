.class public Lcom/termux/shared/reflection/ReflectionUtils$FieldInvokeResult;
.super Ljava/lang/Object;
.source "ReflectionUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/termux/shared/reflection/ReflectionUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FieldInvokeResult"
.end annotation


# instance fields
.field public success:Z

.field public value:Ljava/lang/Object;


# direct methods
.method constructor <init>(ZLjava/lang/Object;)V
    .locals 1
    .param p1, "success"    # Z
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "success",
            "value"
        }
    .end annotation

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/termux/shared/reflection/ReflectionUtils$FieldInvokeResult;->value:Ljava/lang/Object;

    .line 73
    iput-object p2, p0, Lcom/termux/shared/reflection/ReflectionUtils$FieldInvokeResult;->value:Ljava/lang/Object;

    .line 74
    return-void
.end method
