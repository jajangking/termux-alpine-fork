.class public Lio/noties/markwon/image/destination/ImageDestinationProcessorRelativeToAbsolute;
.super Lio/noties/markwon/image/destination/ImageDestinationProcessor;
.source "ImageDestinationProcessorRelativeToAbsolute.java"


# instance fields
.field private final base:Ljava/net/URL;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "base"    # Ljava/lang/String;

    .line 25
    invoke-direct {p0}, Lio/noties/markwon/image/destination/ImageDestinationProcessor;-><init>()V

    .line 26
    invoke-static {p1}, Lio/noties/markwon/image/destination/ImageDestinationProcessorRelativeToAbsolute;->obtain(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    iput-object v0, p0, Lio/noties/markwon/image/destination/ImageDestinationProcessorRelativeToAbsolute;->base:Ljava/net/URL;

    .line 27
    return-void
.end method

.method public constructor <init>(Ljava/net/URL;)V
    .locals 0
    .param p1, "base"    # Ljava/net/URL;

    .line 29
    invoke-direct {p0}, Lio/noties/markwon/image/destination/ImageDestinationProcessor;-><init>()V

    .line 30
    iput-object p1, p0, Lio/noties/markwon/image/destination/ImageDestinationProcessorRelativeToAbsolute;->base:Ljava/net/URL;

    .line 31
    return-void
.end method

.method public static create(Ljava/lang/String;)Lio/noties/markwon/image/destination/ImageDestinationProcessorRelativeToAbsolute;
    .locals 1
    .param p0, "base"    # Ljava/lang/String;

    .line 16
    new-instance v0, Lio/noties/markwon/image/destination/ImageDestinationProcessorRelativeToAbsolute;

    invoke-direct {v0, p0}, Lio/noties/markwon/image/destination/ImageDestinationProcessorRelativeToAbsolute;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static create(Ljava/net/URL;)Lio/noties/markwon/image/destination/ImageDestinationProcessorRelativeToAbsolute;
    .locals 1
    .param p0, "base"    # Ljava/net/URL;

    .line 20
    new-instance v0, Lio/noties/markwon/image/destination/ImageDestinationProcessorRelativeToAbsolute;

    invoke-direct {v0, p0}, Lio/noties/markwon/image/destination/ImageDestinationProcessorRelativeToAbsolute;-><init>(Ljava/net/URL;)V

    return-object v0
.end method

.method private static obtain(Ljava/lang/String;)Ljava/net/URL;
    .locals 2
    .param p0, "base"    # Ljava/lang/String;

    .line 53
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 54
    :catch_0
    move-exception v0

    .line 55
    .local v0, "e":Ljava/net/MalformedURLException;
    invoke-virtual {v0}, Ljava/net/MalformedURLException;->printStackTrace()V

    .line 56
    const/4 v1, 0x0

    return-object v1
.end method


# virtual methods
.method public process(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "destination"    # Ljava/lang/String;

    .line 37
    move-object v0, p1

    .line 39
    .local v0, "out":Ljava/lang/String;
    iget-object v1, p0, Lio/noties/markwon/image/destination/ImageDestinationProcessorRelativeToAbsolute;->base:Ljava/net/URL;

    if-eqz v1, :cond_0

    .line 41
    :try_start_0
    new-instance v1, Ljava/net/URL;

    iget-object v2, p0, Lio/noties/markwon/image/destination/ImageDestinationProcessorRelativeToAbsolute;->base:Ljava/net/URL;

    invoke-direct {v1, v2, p1}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    .line 42
    .local v1, "u":Ljava/net/URL;
    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 45
    .end local v1    # "u":Ljava/net/URL;
    goto :goto_0

    .line 43
    :catch_0
    move-exception v1

    .line 44
    .local v1, "e":Ljava/net/MalformedURLException;
    invoke-virtual {v1}, Ljava/net/MalformedURLException;->printStackTrace()V

    .line 47
    .end local v1    # "e":Ljava/net/MalformedURLException;
    :cond_0
    :goto_0
    return-object v0
.end method
