.class public Lcom/termux/shared/file/FileUtils$ReadSerializableObjectResult;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/termux/shared/file/FileUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ReadSerializableObjectResult"
.end annotation


# instance fields
.field public final error:Lcom/termux/shared/errors/Error;

.field public final serializableObject:Ljava/io/Serializable;


# direct methods
.method constructor <init>(Lcom/termux/shared/errors/Error;Ljava/io/Serializable;)V
    .locals 0

    .line 1587
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1588
    iput-object p1, p0, Lcom/termux/shared/file/FileUtils$ReadSerializableObjectResult;->error:Lcom/termux/shared/errors/Error;

    .line 1589
    iput-object p2, p0, Lcom/termux/shared/file/FileUtils$ReadSerializableObjectResult;->serializableObject:Ljava/io/Serializable;

    return-void
.end method
