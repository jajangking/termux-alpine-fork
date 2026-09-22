.class Lio/noties/markwon/ext/strikethrough/StrikethroughPlugin$1;
.super Ljava/lang/Object;
.source "StrikethroughPlugin.java"

# interfaces
.implements Lio/noties/markwon/SpanFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/noties/markwon/ext/strikethrough/StrikethroughPlugin;->configureSpansFactory(Lio/noties/markwon/MarkwonSpansFactory$Builder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/noties/markwon/ext/strikethrough/StrikethroughPlugin;


# direct methods
.method constructor <init>(Lio/noties/markwon/ext/strikethrough/StrikethroughPlugin;)V
    .locals 0
    .param p1, "this$0"    # Lio/noties/markwon/ext/strikethrough/StrikethroughPlugin;

    .line 42
    iput-object p1, p0, Lio/noties/markwon/ext/strikethrough/StrikethroughPlugin$1;->this$0:Lio/noties/markwon/ext/strikethrough/StrikethroughPlugin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSpans(Lio/noties/markwon/MarkwonConfiguration;Lio/noties/markwon/RenderProps;)Ljava/lang/Object;
    .locals 1
    .param p1, "configuration"    # Lio/noties/markwon/MarkwonConfiguration;
    .param p2, "props"    # Lio/noties/markwon/RenderProps;

    .line 45
    new-instance v0, Landroid/text/style/StrikethroughSpan;

    invoke-direct {v0}, Landroid/text/style/StrikethroughSpan;-><init>()V

    return-object v0
.end method
