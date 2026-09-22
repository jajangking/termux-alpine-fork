.class Lcom/termux/api/apis/FingerprintAPI$FingerprintResult;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/termux/api/apis/FingerprintAPI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FingerprintResult"
.end annotation


# instance fields
.field public authResult:Ljava/lang/String;

.field public errors:Ljava/util/List;

.field public failedAttempts:I


# direct methods
.method constructor <init>()V
    .locals 1

    .line 257
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 258
    const-string v0, "AUTH_RESULT_UNKNOWN"

    iput-object v0, p0, Lcom/termux/api/apis/FingerprintAPI$FingerprintResult;->authResult:Ljava/lang/String;

    const/4 v0, 0x0

    .line 259
    iput v0, p0, Lcom/termux/api/apis/FingerprintAPI$FingerprintResult;->failedAttempts:I

    .line 260
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/termux/api/apis/FingerprintAPI$FingerprintResult;->errors:Ljava/util/List;

    return-void
.end method
