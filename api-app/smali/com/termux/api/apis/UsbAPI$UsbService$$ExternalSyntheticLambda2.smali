.class public final synthetic Lcom/termux/api/apis/UsbAPI$UsbService$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/termux/api/util/ResultReturner$ResultWriter;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/termux/api/apis/UsbAPI$UsbService$$ExternalSyntheticLambda2;->f$0:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final writeResult(Ljava/io/PrintWriter;)V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/termux/api/apis/UsbAPI$UsbService$$ExternalSyntheticLambda2;->f$0:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/termux/api/apis/UsbAPI$UsbService;->$r8$lambda$a6ReSW6H_ORgC16YS5dNkRZChOM(Ljava/lang/String;Ljava/io/PrintWriter;)V

    return-void
.end method
