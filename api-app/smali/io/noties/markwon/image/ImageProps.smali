.class public abstract Lio/noties/markwon/image/ImageProps;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DESTINATION:Lio/noties/markwon/Prop;

.field public static final IMAGE_SIZE:Lio/noties/markwon/Prop;

.field public static final REPLACEMENT_TEXT_IS_LINK:Lio/noties/markwon/Prop;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 10
    const-string v0, "image-destination"

    invoke-static {v0}, Lio/noties/markwon/Prop;->of(Ljava/lang/String;)Lio/noties/markwon/Prop;

    move-result-object v0

    sput-object v0, Lio/noties/markwon/image/ImageProps;->DESTINATION:Lio/noties/markwon/Prop;

    .line 12
    const-string v0, "image-replacement-text-is-link"

    .line 13
    invoke-static {v0}, Lio/noties/markwon/Prop;->of(Ljava/lang/String;)Lio/noties/markwon/Prop;

    move-result-object v0

    sput-object v0, Lio/noties/markwon/image/ImageProps;->REPLACEMENT_TEXT_IS_LINK:Lio/noties/markwon/Prop;

    .line 15
    const-string v0, "image-size"

    invoke-static {v0}, Lio/noties/markwon/Prop;->of(Ljava/lang/String;)Lio/noties/markwon/Prop;

    move-result-object v0

    sput-object v0, Lio/noties/markwon/image/ImageProps;->IMAGE_SIZE:Lio/noties/markwon/Prop;

    return-void
.end method
