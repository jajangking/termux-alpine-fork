.class public abstract Lkotlin/collections/AbstractList;
.super Lkotlin/collections/AbstractCollection;
.source "SourceFile"

# interfaces
.implements Ljava/util/List;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/collections/AbstractList$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lkotlin/collections/AbstractList$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lkotlin/collections/AbstractList$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkotlin/collections/AbstractList$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lkotlin/collections/AbstractList;->Companion:Lkotlin/collections/AbstractList$Companion;

    return-void
.end method
