.class public Lcom/termux/shared/file/FileUtils$ReadSerializableObjectResult;
.super Ljava/lang/Object;
.source "FileUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/termux/shared/file/FileUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ReadSerializableObjectResult"
.end annotation


# instance fields
.field public error:Lcom/termux/shared/models/errors/Error;

.field public serializableObject:Ljava/io/Serializable;


# direct methods
.method constructor <init>(Lcom/termux/shared/models/errors/Error;Ljava/io/Serializable;)V
    .locals 0
    .param p1, "error"    # Lcom/termux/shared/models/errors/Error;
    .param p2, "serializableObject"    # Ljava/io/Serializable;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "error",
            "serializableObject"
        }
    .end annotation

    .line 1439
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1440
    iput-object p1, p0, Lcom/termux/shared/file/FileUtils$ReadSerializableObjectResult;->error:Lcom/termux/shared/models/errors/Error;

    .line 1441
    iput-object p2, p0, Lcom/termux/shared/file/FileUtils$ReadSerializableObjectResult;->serializableObject:Ljava/io/Serializable;

    .line 1442
    return-void
.end method
