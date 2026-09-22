.class public Lorg/commonmark/internal/util/Html5Entities;
.super Ljava/lang/Object;
.source "Html5Entities.java"


# static fields
.field private static final ENTITY_PATH:Ljava/lang/String; = "/org/commonmark/internal/util/entities.properties"

.field private static final NAMED_CHARACTER_REFERENCES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final NUMERIC_PATTERN:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 15
    invoke-static {}, Lorg/commonmark/internal/util/Html5Entities;->readEntities()Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lorg/commonmark/internal/util/Html5Entities;->NAMED_CHARACTER_REFERENCES:Ljava/util/Map;

    .line 16
    const-string v0, "^&#[Xx]?"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/commonmark/internal/util/Html5Entities;->NUMERIC_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static entityToString(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "input"    # Ljava/lang/String;

    .line 20
    const-string v0, "\ufffd"

    sget-object v1, Lorg/commonmark/internal/util/Html5Entities;->NUMERIC_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 22
    .local v1, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    .line 23
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->end()I

    move-result v2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_0

    const/16 v2, 0xa

    goto :goto_0

    :cond_0
    const/16 v2, 0x10

    .line 25
    .local v2, "base":I
    :goto_0
    :try_start_0
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->end()I

    move-result v4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v5, v3

    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    .line 26
    .local v3, "codePoint":I
    if-nez v3, :cond_1

    .line 27
    return-object v0

    .line 29
    :cond_1
    new-instance v4, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>([C)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    .line 30
    .end local v3    # "codePoint":I
    :catch_0
    move-exception v3

    .line 31
    .local v3, "e":Ljava/lang/IllegalArgumentException;
    return-object v0

    .line 34
    .end local v2    # "base":I
    .end local v3    # "e":Ljava/lang/IllegalArgumentException;
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v3

    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 35
    .local v0, "name":Ljava/lang/String;
    sget-object v2, Lorg/commonmark/internal/util/Html5Entities;->NAMED_CHARACTER_REFERENCES:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 36
    .local v2, "s":Ljava/lang/String;
    if-eqz v2, :cond_3

    .line 37
    return-object v2

    .line 39
    :cond_3
    return-object p0
.end method

.method private static readEntities()Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 46
    .local v0, "entities":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-class v1, Lorg/commonmark/internal/util/Html5Entities;

    const-string v2, "/org/commonmark/internal/util/entities.properties"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 47
    .local v1, "stream":Ljava/io/InputStream;
    const-string v2, "UTF-8"

    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    .line 48
    .local v2, "charset":Ljava/nio/charset/Charset;
    :try_start_0
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    .local v3, "bufferedReader":Ljava/io/BufferedReader;
    :goto_0
    :try_start_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    move-object v5, v4

    .local v5, "line":Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 51
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_0

    .line 52
    goto :goto_0

    .line 54
    :cond_0
    const-string v4, "="

    invoke-virtual {v5, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 55
    .local v4, "equal":I
    const/4 v6, 0x0

    invoke-virtual {v5, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 56
    .local v6, "key":Ljava/lang/String;
    add-int/lit8 v7, v4, 0x1

    invoke-virtual {v5, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 57
    .local v7, "value":Ljava/lang/String;
    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 58
    nop

    .end local v4    # "equal":I
    .end local v6    # "key":Ljava/lang/String;
    .end local v7    # "value":Ljava/lang/String;
    goto :goto_0

    .line 59
    .end local v5    # "line":Ljava/lang/String;
    :cond_1
    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 61
    .end local v3    # "bufferedReader":Ljava/io/BufferedReader;
    nop

    .line 62
    const-string v3, "NewLine"

    const-string v4, "\n"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    return-object v0

    .line 48
    .restart local v3    # "bufferedReader":Ljava/io/BufferedReader;
    :catchall_0
    move-exception v4

    .end local v0    # "entities":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v1    # "stream":Ljava/io/InputStream;
    .end local v2    # "charset":Ljava/nio/charset/Charset;
    .end local v3    # "bufferedReader":Ljava/io/BufferedReader;
    :try_start_3
    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 59
    .restart local v0    # "entities":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v1    # "stream":Ljava/io/InputStream;
    .restart local v2    # "charset":Ljava/nio/charset/Charset;
    .restart local v3    # "bufferedReader":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v5

    if-eqz v4, :cond_2

    :try_start_4
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v6

    :try_start_5
    invoke-virtual {v4, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    .end local v0    # "entities":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v1    # "stream":Ljava/io/InputStream;
    .end local v2    # "charset":Ljava/nio/charset/Charset;
    :goto_1
    throw v5
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    .end local v3    # "bufferedReader":Ljava/io/BufferedReader;
    .restart local v0    # "entities":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v1    # "stream":Ljava/io/InputStream;
    .restart local v2    # "charset":Ljava/nio/charset/Charset;
    :catch_0
    move-exception v3

    .line 60
    .local v3, "e":Ljava/io/IOException;
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Failed reading data for HTML named character references"

    invoke-direct {v4, v5, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method
