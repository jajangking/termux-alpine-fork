.class public Lcom/termux/shared/reflection/ReflectionUtils$FieldInvokeResult;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/termux/shared/reflection/ReflectionUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FieldInvokeResult"
.end annotation


# instance fields
.field public value:Ljava/lang/Object;


# direct methods
.method constructor <init>(ZLjava/lang/Object;)V
    .locals 0

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-object p2, p0, Lcom/termux/shared/reflection/ReflectionUtils$FieldInvokeResult;->value:Ljava/lang/Object;

    return-void
.end method
