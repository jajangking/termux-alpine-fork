.class public abstract Lio/noties/markwon/core/CoreProps;
.super Ljava/lang/Object;
.source "CoreProps.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/noties/markwon/core/CoreProps$ListItemType;
    }
.end annotation


# static fields
.field public static final BULLET_LIST_ITEM_LEVEL:Lio/noties/markwon/Prop;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/noties/markwon/Prop<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final CODE_BLOCK_INFO:Lio/noties/markwon/Prop;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/noties/markwon/Prop<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final HEADING_LEVEL:Lio/noties/markwon/Prop;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/noties/markwon/Prop<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final LINK_DESTINATION:Lio/noties/markwon/Prop;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/noties/markwon/Prop<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final LIST_ITEM_TYPE:Lio/noties/markwon/Prop;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/noties/markwon/Prop<",
            "Lio/noties/markwon/core/CoreProps$ListItemType;",
            ">;"
        }
    .end annotation
.end field

.field public static final ORDERED_LIST_ITEM_NUMBER:Lio/noties/markwon/Prop;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/noties/markwon/Prop<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final PARAGRAPH_IS_IN_TIGHT_LIST:Lio/noties/markwon/Prop;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/noties/markwon/Prop<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 10
    const-string v0, "list-item-type"

    invoke-static {v0}, Lio/noties/markwon/Prop;->of(Ljava/lang/String;)Lio/noties/markwon/Prop;

    move-result-object v0

    sput-object v0, Lio/noties/markwon/core/CoreProps;->LIST_ITEM_TYPE:Lio/noties/markwon/Prop;

    .line 12
    const-string v0, "bullet-list-item-level"

    invoke-static {v0}, Lio/noties/markwon/Prop;->of(Ljava/lang/String;)Lio/noties/markwon/Prop;

    move-result-object v0

    sput-object v0, Lio/noties/markwon/core/CoreProps;->BULLET_LIST_ITEM_LEVEL:Lio/noties/markwon/Prop;

    .line 14
    const-string v0, "ordered-list-item-number"

    invoke-static {v0}, Lio/noties/markwon/Prop;->of(Ljava/lang/String;)Lio/noties/markwon/Prop;

    move-result-object v0

    sput-object v0, Lio/noties/markwon/core/CoreProps;->ORDERED_LIST_ITEM_NUMBER:Lio/noties/markwon/Prop;

    .line 16
    const-string v0, "heading-level"

    invoke-static {v0}, Lio/noties/markwon/Prop;->of(Ljava/lang/String;)Lio/noties/markwon/Prop;

    move-result-object v0

    sput-object v0, Lio/noties/markwon/core/CoreProps;->HEADING_LEVEL:Lio/noties/markwon/Prop;

    .line 18
    const-string v0, "link-destination"

    invoke-static {v0}, Lio/noties/markwon/Prop;->of(Ljava/lang/String;)Lio/noties/markwon/Prop;

    move-result-object v0

    sput-object v0, Lio/noties/markwon/core/CoreProps;->LINK_DESTINATION:Lio/noties/markwon/Prop;

    .line 20
    const-string v0, "paragraph-is-in-tight-list"

    invoke-static {v0}, Lio/noties/markwon/Prop;->of(Ljava/lang/String;)Lio/noties/markwon/Prop;

    move-result-object v0

    sput-object v0, Lio/noties/markwon/core/CoreProps;->PARAGRAPH_IS_IN_TIGHT_LIST:Lio/noties/markwon/Prop;

    .line 25
    const-string v0, "code-block-info"

    invoke-static {v0}, Lio/noties/markwon/Prop;->of(Ljava/lang/String;)Lio/noties/markwon/Prop;

    move-result-object v0

    sput-object v0, Lio/noties/markwon/core/CoreProps;->CODE_BLOCK_INFO:Lio/noties/markwon/Prop;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    return-void
.end method
