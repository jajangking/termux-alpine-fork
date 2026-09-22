.class public Lorg/commonmark/internal/InlineParserImpl;
.super Ljava/lang/Object;
.source "InlineParserImpl.java"

# interfaces
.implements Lorg/commonmark/parser/InlineParser;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/commonmark/internal/InlineParserImpl$DelimiterData;
    }
.end annotation


# static fields
.field private static final ASCII_PUNCTUATION:Ljava/lang/String; = "!\"#\\$%&\'\\(\\)\\*\\+,\\-\\./:;<=>\\?@\\[\\\\\\]\\^_`\\{\\|\\}~"

.field private static final AUTOLINK:Ljava/util/regex/Pattern;

.field private static final CDATA:Ljava/lang/String; = "<!\\[CDATA\\[[\\s\\S]*?\\]\\]>"

.field private static final DECLARATION:Ljava/lang/String; = "<![A-Z]+\\s+[^>]*>"

.field private static final EMAIL_AUTOLINK:Ljava/util/regex/Pattern;

.field private static final ENTITY_HERE:Ljava/util/regex/Pattern;

.field private static final ESCAPABLE:Ljava/util/regex/Pattern;

.field private static final FINAL_SPACE:Ljava/util/regex/Pattern;

.field private static final HTMLCOMMENT:Ljava/lang/String; = "<!---->|<!--(?:-?[^>-])(?:-?[^-])*-->"

.field private static final HTMLTAG:Ljava/lang/String; = "(?:<[A-Za-z][A-Za-z0-9-]*(?:\\s+[a-zA-Z_:][a-zA-Z0-9:._-]*(?:\\s*=\\s*(?:[^\"\'=<>`\\x00-\\x20]+|\'[^\']*\'|\"[^\"]*\"))?)*\\s*/?>|</[A-Za-z][A-Za-z0-9-]*\\s*[>]|<!---->|<!--(?:-?[^>-])(?:-?[^-])*-->|[<][?].*?[?][>]|<![A-Z]+\\s+[^>]*>|<!\\[CDATA\\[[\\s\\S]*?\\]\\]>)"

.field private static final HTML_TAG:Ljava/util/regex/Pattern;

.field private static final PROCESSINGINSTRUCTION:Ljava/lang/String; = "[<][?].*?[?][>]"

.field private static final PUNCTUATION:Ljava/util/regex/Pattern;

.field private static final SPNL:Ljava/util/regex/Pattern;

.field private static final TICKS:Ljava/util/regex/Pattern;

.field private static final TICKS_HERE:Ljava/util/regex/Pattern;

.field private static final UNICODE_WHITESPACE_CHAR:Ljava/util/regex/Pattern;

.field private static final WHITESPACE:Ljava/util/regex/Pattern;


# instance fields
.field private final context:Lorg/commonmark/parser/InlineParserContext;

.field private final delimiterCharacters:Ljava/util/BitSet;

.field private final delimiterProcessors:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Character;",
            "Lorg/commonmark/parser/delimiter/DelimiterProcessor;",
            ">;"
        }
    .end annotation
.end field

.field private index:I

.field private input:Ljava/lang/String;

.field private lastBracket:Lorg/commonmark/internal/Bracket;

.field private lastDelimiter:Lorg/commonmark/internal/Delimiter;

.field private final specialCharacters:Ljava/util/BitSet;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 28
    nop

    .line 29
    const-string v0, "^[!\"#\\$%&\'\\(\\)\\*\\+,\\-\\./:;<=>\\?@\\[\\\\\\]\\^_`\\{\\|\\}~\\p{Pc}\\p{Pd}\\p{Pe}\\p{Pf}\\p{Pi}\\p{Po}\\p{Ps}]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/commonmark/internal/InlineParserImpl;->PUNCTUATION:Ljava/util/regex/Pattern;

    .line 31
    const-string v0, "^(?:<[A-Za-z][A-Za-z0-9-]*(?:\\s+[a-zA-Z_:][a-zA-Z0-9:._-]*(?:\\s*=\\s*(?:[^\"\'=<>`\\x00-\\x20]+|\'[^\']*\'|\"[^\"]*\"))?)*\\s*/?>|</[A-Za-z][A-Za-z0-9-]*\\s*[>]|<!---->|<!--(?:-?[^>-])(?:-?[^-])*-->|[<][?].*?[?][>]|<![A-Z]+\\s+[^>]*>|<!\\[CDATA\\[[\\s\\S]*?\\]\\]>)"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/commonmark/internal/InlineParserImpl;->HTML_TAG:Ljava/util/regex/Pattern;

    .line 33
    const-string v0, "^[!\"#$%&\'()*+,./:;<=>?@\\[\\\\\\]^_`{|}~-]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/commonmark/internal/InlineParserImpl;->ESCAPABLE:Ljava/util/regex/Pattern;

    .line 35
    const-string v0, "^&(?:#x[a-f0-9]{1,6}|#[0-9]{1,7}|[a-z][a-z0-9]{1,31});"

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/commonmark/internal/InlineParserImpl;->ENTITY_HERE:Ljava/util/regex/Pattern;

    .line 37
    const-string v0, "`+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/commonmark/internal/InlineParserImpl;->TICKS:Ljava/util/regex/Pattern;

    .line 39
    const-string v0, "^`+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/commonmark/internal/InlineParserImpl;->TICKS_HERE:Ljava/util/regex/Pattern;

    .line 41
    nop

    .line 42
    const-string v0, "^<([a-zA-Z0-9.!#$%&\'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?(?:\\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?)*)>"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/commonmark/internal/InlineParserImpl;->EMAIL_AUTOLINK:Ljava/util/regex/Pattern;

    .line 44
    nop

    .line 45
    const-string v0, "^<[a-zA-Z][a-zA-Z0-9.+-]{1,31}:[^<>\u0000- ]*>"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/commonmark/internal/InlineParserImpl;->AUTOLINK:Ljava/util/regex/Pattern;

    .line 47
    const-string v0, "^ *(?:\n *)?"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/commonmark/internal/InlineParserImpl;->SPNL:Ljava/util/regex/Pattern;

    .line 49
    const-string v0, "^[\\p{Zs}\t\r\n\u000c]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/commonmark/internal/InlineParserImpl;->UNICODE_WHITESPACE_CHAR:Ljava/util/regex/Pattern;

    .line 51
    const-string v0, "\\s+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/commonmark/internal/InlineParserImpl;->WHITESPACE:Ljava/util/regex/Pattern;

    .line 53
    const-string v0, " *$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/commonmark/internal/InlineParserImpl;->FINAL_SPACE:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Lorg/commonmark/parser/InlineParserContext;)V
    .locals 1
    .param p1, "inlineParserContext"    # Lorg/commonmark/parser/InlineParserContext;

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    invoke-interface {p1}, Lorg/commonmark/parser/InlineParserContext;->getCustomDelimiterProcessors()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lorg/commonmark/internal/InlineParserImpl;->calculateDelimiterProcessors(Ljava/util/List;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lorg/commonmark/internal/InlineParserImpl;->delimiterProcessors:Ljava/util/Map;

    .line 76
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Lorg/commonmark/internal/InlineParserImpl;->calculateDelimiterCharacters(Ljava/util/Set;)Ljava/util/BitSet;

    move-result-object v0

    iput-object v0, p0, Lorg/commonmark/internal/InlineParserImpl;->delimiterCharacters:Ljava/util/BitSet;

    .line 77
    invoke-static {v0}, Lorg/commonmark/internal/InlineParserImpl;->calculateSpecialCharacters(Ljava/util/BitSet;)Ljava/util/BitSet;

    move-result-object v0

    iput-object v0, p0, Lorg/commonmark/internal/InlineParserImpl;->specialCharacters:Ljava/util/BitSet;

    .line 79
    iput-object p1, p0, Lorg/commonmark/internal/InlineParserImpl;->context:Lorg/commonmark/parser/InlineParserContext;

    .line 80
    return-void
.end method

.method private addBracket(Lorg/commonmark/internal/Bracket;)V
    .locals 2
    .param p1, "bracket"    # Lorg/commonmark/internal/Bracket;

    .line 535
    iget-object v0, p0, Lorg/commonmark/internal/InlineParserImpl;->lastBracket:Lorg/commonmark/internal/Bracket;

    if-eqz v0, :cond_0

    .line 536
    const/4 v1, 0x1

    iput-boolean v1, v0, Lorg/commonmark/internal/Bracket;->bracketAfter:Z

    .line 538
    :cond_0
    iput-object p1, p0, Lorg/commonmark/internal/InlineParserImpl;->lastBracket:Lorg/commonmark/internal/Bracket;

    .line 539
    return-void
.end method

.method private static addDelimiterProcessorForChar(CLorg/commonmark/parser/delimiter/DelimiterProcessor;Ljava/util/Map;)V
    .locals 4
    .param p0, "delimiterChar"    # C
    .param p1, "toAdd"    # Lorg/commonmark/parser/delimiter/DelimiterProcessor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(C",
            "Lorg/commonmark/parser/delimiter/DelimiterProcessor;",
            "Ljava/util/Map<",
            "Ljava/lang/Character;",
            "Lorg/commonmark/parser/delimiter/DelimiterProcessor;",
            ">;)V"
        }
    .end annotation

    .line 138
    .local p2, "delimiterProcessors":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Character;Lorg/commonmark/parser/delimiter/DelimiterProcessor;>;"
    invoke-static {p0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/commonmark/parser/delimiter/DelimiterProcessor;

    .line 139
    .local v0, "existing":Lorg/commonmark/parser/delimiter/DelimiterProcessor;
    if-nez v0, :cond_0

    .line 142
    return-void

    .line 140
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Delimiter processor conflict with delimiter char \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static addDelimiterProcessors(Ljava/lang/Iterable;Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lorg/commonmark/parser/delimiter/DelimiterProcessor;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/Character;",
            "Lorg/commonmark/parser/delimiter/DelimiterProcessor;",
            ">;)V"
        }
    .end annotation

    .line 112
    .local p0, "delimiterProcessors":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lorg/commonmark/parser/delimiter/DelimiterProcessor;>;"
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Character;Lorg/commonmark/parser/delimiter/DelimiterProcessor;>;"
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/commonmark/parser/delimiter/DelimiterProcessor;

    .line 113
    .local v1, "delimiterProcessor":Lorg/commonmark/parser/delimiter/DelimiterProcessor;
    invoke-interface {v1}, Lorg/commonmark/parser/delimiter/DelimiterProcessor;->getOpeningCharacter()C

    move-result v2

    .line 114
    .local v2, "opening":C
    invoke-interface {v1}, Lorg/commonmark/parser/delimiter/DelimiterProcessor;->getClosingCharacter()C

    move-result v3

    .line 115
    .local v3, "closing":C
    if-ne v2, v3, :cond_2

    .line 116
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/commonmark/parser/delimiter/DelimiterProcessor;

    .line 117
    .local v4, "old":Lorg/commonmark/parser/delimiter/DelimiterProcessor;
    if-eqz v4, :cond_1

    invoke-interface {v4}, Lorg/commonmark/parser/delimiter/DelimiterProcessor;->getOpeningCharacter()C

    move-result v5

    invoke-interface {v4}, Lorg/commonmark/parser/delimiter/DelimiterProcessor;->getClosingCharacter()C

    move-result v6

    if-ne v5, v6, :cond_1

    .line 119
    instance-of v5, v4, Lorg/commonmark/internal/StaggeredDelimiterProcessor;

    if-eqz v5, :cond_0

    .line 120
    move-object v5, v4

    check-cast v5, Lorg/commonmark/internal/StaggeredDelimiterProcessor;

    .local v5, "s":Lorg/commonmark/internal/StaggeredDelimiterProcessor;
    goto :goto_1

    .line 122
    .end local v5    # "s":Lorg/commonmark/internal/StaggeredDelimiterProcessor;
    :cond_0
    new-instance v5, Lorg/commonmark/internal/StaggeredDelimiterProcessor;

    invoke-direct {v5, v2}, Lorg/commonmark/internal/StaggeredDelimiterProcessor;-><init>(C)V

    .line 123
    .restart local v5    # "s":Lorg/commonmark/internal/StaggeredDelimiterProcessor;
    invoke-virtual {v5, v4}, Lorg/commonmark/internal/StaggeredDelimiterProcessor;->add(Lorg/commonmark/parser/delimiter/DelimiterProcessor;)V

    .line 125
    :goto_1
    invoke-virtual {v5, v1}, Lorg/commonmark/internal/StaggeredDelimiterProcessor;->add(Lorg/commonmark/parser/delimiter/DelimiterProcessor;)V

    .line 126
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v6

    invoke-interface {p1, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    .end local v5    # "s":Lorg/commonmark/internal/StaggeredDelimiterProcessor;
    goto :goto_2

    .line 128
    :cond_1
    invoke-static {v2, v1, p1}, Lorg/commonmark/internal/InlineParserImpl;->addDelimiterProcessorForChar(CLorg/commonmark/parser/delimiter/DelimiterProcessor;Ljava/util/Map;)V

    .line 130
    .end local v4    # "old":Lorg/commonmark/parser/delimiter/DelimiterProcessor;
    :goto_2
    goto :goto_3

    .line 131
    :cond_2
    invoke-static {v2, v1, p1}, Lorg/commonmark/internal/InlineParserImpl;->addDelimiterProcessorForChar(CLorg/commonmark/parser/delimiter/DelimiterProcessor;Ljava/util/Map;)V

    .line 132
    invoke-static {v3, v1, p1}, Lorg/commonmark/internal/InlineParserImpl;->addDelimiterProcessorForChar(CLorg/commonmark/parser/delimiter/DelimiterProcessor;Ljava/util/Map;)V

    .line 134
    .end local v1    # "delimiterProcessor":Lorg/commonmark/parser/delimiter/DelimiterProcessor;
    .end local v2    # "opening":C
    .end local v3    # "closing":C
    :goto_3
    goto :goto_0

    .line 135
    :cond_3
    return-void
.end method

.method public static calculateDelimiterCharacters(Ljava/util/Set;)Ljava/util/BitSet;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Character;",
            ">;)",
            "Ljava/util/BitSet;"
        }
    .end annotation

    .line 83
    .local p0, "characters":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Character;>;"
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    .line 84
    .local v0, "bitSet":Ljava/util/BitSet;
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Character;

    .line 85
    .local v2, "character":Ljava/lang/Character;
    invoke-virtual {v2}, Ljava/lang/Character;->charValue()C

    move-result v3

    invoke-virtual {v0, v3}, Ljava/util/BitSet;->set(I)V

    .line 86
    .end local v2    # "character":Ljava/lang/Character;
    goto :goto_0

    .line 87
    :cond_0
    return-object v0
.end method

.method public static calculateDelimiterProcessors(Ljava/util/List;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/commonmark/parser/delimiter/DelimiterProcessor;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/Character;",
            "Lorg/commonmark/parser/delimiter/DelimiterProcessor;",
            ">;"
        }
    .end annotation

    .line 105
    .local p0, "delimiterProcessors":Ljava/util/List;, "Ljava/util/List<Lorg/commonmark/parser/delimiter/DelimiterProcessor;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 106
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Character;Lorg/commonmark/parser/delimiter/DelimiterProcessor;>;"
    const/4 v1, 0x2

    new-array v1, v1, [Lorg/commonmark/parser/delimiter/DelimiterProcessor;

    new-instance v2, Lorg/commonmark/internal/inline/AsteriskDelimiterProcessor;

    invoke-direct {v2}, Lorg/commonmark/internal/inline/AsteriskDelimiterProcessor;-><init>()V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Lorg/commonmark/internal/inline/UnderscoreDelimiterProcessor;

    invoke-direct {v2}, Lorg/commonmark/internal/inline/UnderscoreDelimiterProcessor;-><init>()V

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/commonmark/internal/InlineParserImpl;->addDelimiterProcessors(Ljava/lang/Iterable;Ljava/util/Map;)V

    .line 107
    invoke-static {p0, v0}, Lorg/commonmark/internal/InlineParserImpl;->addDelimiterProcessors(Ljava/lang/Iterable;Ljava/util/Map;)V

    .line 108
    return-object v0
.end method

.method public static calculateSpecialCharacters(Ljava/util/BitSet;)Ljava/util/BitSet;
    .locals 2
    .param p0, "delimiterCharacters"    # Ljava/util/BitSet;

    .line 91
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    .line 92
    .local v0, "bitSet":Ljava/util/BitSet;
    invoke-virtual {v0, p0}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 93
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 94
    const/16 v1, 0x60

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 95
    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 96
    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 97
    const/16 v1, 0x5c

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 98
    const/16 v1, 0x21

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 99
    const/16 v1, 0x3c

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 100
    const/16 v1, 0x26

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->set(I)V

    .line 101
    return-object v0
.end method

.method private match(Ljava/util/regex/Pattern;)Ljava/lang/String;
    .locals 4
    .param p1, "re"    # Ljava/util/regex/Pattern;

    .line 247
    iget v0, p0, Lorg/commonmark/internal/InlineParserImpl;->index:I

    iget-object v1, p0, Lorg/commonmark/internal/InlineParserImpl;->input:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    if-lt v0, v1, :cond_0

    .line 248
    return-object v2

    .line 250
    :cond_0
    iget-object v0, p0, Lorg/commonmark/internal/InlineParserImpl;->input:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 251
    .local v0, "matcher":Ljava/util/regex/Matcher;
    iget v1, p0, Lorg/commonmark/internal/InlineParserImpl;->index:I

    iget-object v3, p0, Lorg/commonmark/internal/InlineParserImpl;->input:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0, v1, v3}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    .line 252
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    .line 253
    .local v1, "m":Z
    if-eqz v1, :cond_1

    .line 254
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->end()I

    move-result v2

    iput v2, p0, Lorg/commonmark/internal/InlineParserImpl;->index:I

    .line 255
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 257
    :cond_1
    return-object v2
.end method

.method private mergeChildTextNodes(Lorg/commonmark/node/Node;)V
    .locals 2
    .param p1, "node"    # Lorg/commonmark/node/Node;

    .line 862
    invoke-virtual {p1}, Lorg/commonmark/node/Node;->getFirstChild()Lorg/commonmark/node/Node;

    move-result-object v0

    invoke-virtual {p1}, Lorg/commonmark/node/Node;->getLastChild()Lorg/commonmark/node/Node;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 863
    return-void

    .line 866
    :cond_0
    invoke-virtual {p1}, Lorg/commonmark/node/Node;->getFirstChild()Lorg/commonmark/node/Node;

    move-result-object v0

    invoke-virtual {p1}, Lorg/commonmark/node/Node;->getLastChild()Lorg/commonmark/node/Node;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/commonmark/internal/InlineParserImpl;->mergeTextNodesInclusive(Lorg/commonmark/node/Node;Lorg/commonmark/node/Node;)V

    .line 867
    return-void
.end method

.method private mergeIfNeeded(Lorg/commonmark/node/Text;Lorg/commonmark/node/Text;I)V
    .locals 4
    .param p1, "first"    # Lorg/commonmark/node/Text;
    .param p2, "last"    # Lorg/commonmark/node/Text;
    .param p3, "textLength"    # I

    .line 899
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    if-eq p1, p2, :cond_1

    .line 900
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 901
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Lorg/commonmark/node/Text;->getLiteral()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 902
    invoke-virtual {p1}, Lorg/commonmark/node/Text;->getNext()Lorg/commonmark/node/Node;

    move-result-object v1

    .line 903
    .local v1, "node":Lorg/commonmark/node/Node;
    invoke-virtual {p2}, Lorg/commonmark/node/Text;->getNext()Lorg/commonmark/node/Node;

    move-result-object v2

    .line 904
    .local v2, "stop":Lorg/commonmark/node/Node;
    :goto_0
    if-eq v1, v2, :cond_0

    .line 905
    move-object v3, v1

    check-cast v3, Lorg/commonmark/node/Text;

    invoke-virtual {v3}, Lorg/commonmark/node/Text;->getLiteral()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 906
    move-object v3, v1

    .line 907
    .local v3, "unlink":Lorg/commonmark/node/Node;
    invoke-virtual {v1}, Lorg/commonmark/node/Node;->getNext()Lorg/commonmark/node/Node;

    move-result-object v1

    .line 908
    invoke-virtual {v3}, Lorg/commonmark/node/Node;->unlink()V

    .line 909
    .end local v3    # "unlink":Lorg/commonmark/node/Node;
    goto :goto_0

    .line 910
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 911
    .local v3, "literal":Ljava/lang/String;
    invoke-virtual {p1, v3}, Lorg/commonmark/node/Text;->setLiteral(Ljava/lang/String;)V

    .line 913
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    .end local v1    # "node":Lorg/commonmark/node/Node;
    .end local v2    # "stop":Lorg/commonmark/node/Node;
    .end local v3    # "literal":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private mergeTextNodesBetweenExclusive(Lorg/commonmark/node/Node;Lorg/commonmark/node/Node;)V
    .locals 2
    .param p1, "fromNode"    # Lorg/commonmark/node/Node;
    .param p2, "toNode"    # Lorg/commonmark/node/Node;

    .line 853
    if-eq p1, p2, :cond_1

    invoke-virtual {p1}, Lorg/commonmark/node/Node;->getNext()Lorg/commonmark/node/Node;

    move-result-object v0

    if-ne v0, p2, :cond_0

    goto :goto_0

    .line 857
    :cond_0
    invoke-virtual {p1}, Lorg/commonmark/node/Node;->getNext()Lorg/commonmark/node/Node;

    move-result-object v0

    invoke-virtual {p2}, Lorg/commonmark/node/Node;->getPrevious()Lorg/commonmark/node/Node;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/commonmark/internal/InlineParserImpl;->mergeTextNodesInclusive(Lorg/commonmark/node/Node;Lorg/commonmark/node/Node;)V

    .line 858
    return-void

    .line 854
    :cond_1
    :goto_0
    return-void
.end method

.method private mergeTextNodesInclusive(Lorg/commonmark/node/Node;Lorg/commonmark/node/Node;)V
    .locals 6
    .param p1, "fromNode"    # Lorg/commonmark/node/Node;
    .param p2, "toNode"    # Lorg/commonmark/node/Node;

    .line 870
    const/4 v0, 0x0

    .line 871
    .local v0, "first":Lorg/commonmark/node/Text;
    const/4 v1, 0x0

    .line 872
    .local v1, "last":Lorg/commonmark/node/Text;
    const/4 v2, 0x0

    .line 874
    .local v2, "length":I
    move-object v3, p1

    .line 875
    .local v3, "node":Lorg/commonmark/node/Node;
    :goto_0
    if-eqz v3, :cond_3

    .line 876
    instance-of v4, v3, Lorg/commonmark/node/Text;

    if-eqz v4, :cond_1

    .line 877
    move-object v4, v3

    check-cast v4, Lorg/commonmark/node/Text;

    .line 878
    .local v4, "text":Lorg/commonmark/node/Text;
    if-nez v0, :cond_0

    .line 879
    move-object v0, v4

    .line 881
    :cond_0
    invoke-virtual {v4}, Lorg/commonmark/node/Text;->getLiteral()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v2, v5

    .line 882
    move-object v1, v4

    .line 883
    .end local v4    # "text":Lorg/commonmark/node/Text;
    goto :goto_1

    .line 884
    :cond_1
    invoke-direct {p0, v0, v1, v2}, Lorg/commonmark/internal/InlineParserImpl;->mergeIfNeeded(Lorg/commonmark/node/Text;Lorg/commonmark/node/Text;I)V

    .line 885
    const/4 v0, 0x0

    .line 886
    const/4 v1, 0x0

    .line 887
    const/4 v2, 0x0

    .line 889
    :goto_1
    if-ne v3, p2, :cond_2

    .line 890
    goto :goto_2

    .line 892
    :cond_2
    invoke-virtual {v3}, Lorg/commonmark/node/Node;->getNext()Lorg/commonmark/node/Node;

    move-result-object v3

    goto :goto_0

    .line 895
    :cond_3
    :goto_2
    invoke-direct {p0, v0, v1, v2}, Lorg/commonmark/internal/InlineParserImpl;->mergeIfNeeded(Lorg/commonmark/node/Text;Lorg/commonmark/node/Text;I)V

    .line 896
    return-void
.end method

.method private parseAutolink()Lorg/commonmark/node/Node;
    .locals 6

    .line 608
    sget-object v0, Lorg/commonmark/internal/InlineParserImpl;->EMAIL_AUTOLINK:Ljava/util/regex/Pattern;

    invoke-direct {p0, v0}, Lorg/commonmark/internal/InlineParserImpl;->match(Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .local v1, "m":Ljava/lang/String;
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    .line 609
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v3

    invoke-virtual {v1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 610
    .local v0, "dest":Ljava/lang/String;
    new-instance v3, Lorg/commonmark/node/Link;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mailto:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Lorg/commonmark/node/Link;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v3

    .line 611
    .local v2, "node":Lorg/commonmark/node/Link;
    new-instance v3, Lorg/commonmark/node/Text;

    invoke-direct {v3, v0}, Lorg/commonmark/node/Text;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lorg/commonmark/node/Link;->appendChild(Lorg/commonmark/node/Node;)V

    .line 612
    return-object v2

    .line 613
    .end local v0    # "dest":Ljava/lang/String;
    .end local v2    # "node":Lorg/commonmark/node/Link;
    :cond_0
    sget-object v0, Lorg/commonmark/internal/InlineParserImpl;->AUTOLINK:Ljava/util/regex/Pattern;

    invoke-direct {p0, v0}, Lorg/commonmark/internal/InlineParserImpl;->match(Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    if-eqz v0, :cond_1

    .line 614
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v3

    invoke-virtual {v1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 615
    .restart local v0    # "dest":Ljava/lang/String;
    new-instance v3, Lorg/commonmark/node/Link;

    invoke-direct {v3, v0, v2}, Lorg/commonmark/node/Link;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v3

    .line 616
    .restart local v2    # "node":Lorg/commonmark/node/Link;
    new-instance v3, Lorg/commonmark/node/Text;

    invoke-direct {v3, v0}, Lorg/commonmark/node/Text;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lorg/commonmark/node/Link;->appendChild(Lorg/commonmark/node/Node;)V

    .line 617
    return-object v2

    .line 619
    .end local v0    # "dest":Ljava/lang/String;
    .end local v2    # "node":Lorg/commonmark/node/Link;
    :cond_1
    return-object v2
.end method

.method private parseBackslash()Lorg/commonmark/node/Node;
    .locals 4

    .line 310
    iget v0, p0, Lorg/commonmark/internal/InlineParserImpl;->index:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/commonmark/internal/InlineParserImpl;->index:I

    .line 312
    invoke-direct {p0}, Lorg/commonmark/internal/InlineParserImpl;->peek()C

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 313
    new-instance v0, Lorg/commonmark/node/HardLineBreak;

    invoke-direct {v0}, Lorg/commonmark/node/HardLineBreak;-><init>()V

    .line 314
    .local v0, "node":Lorg/commonmark/node/Node;
    iget v1, p0, Lorg/commonmark/internal/InlineParserImpl;->index:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/commonmark/internal/InlineParserImpl;->index:I

    goto :goto_0

    .line 315
    .end local v0    # "node":Lorg/commonmark/node/Node;
    :cond_0
    iget v0, p0, Lorg/commonmark/internal/InlineParserImpl;->index:I

    iget-object v1, p0, Lorg/commonmark/internal/InlineParserImpl;->input:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    sget-object v0, Lorg/commonmark/internal/InlineParserImpl;->ESCAPABLE:Ljava/util/regex/Pattern;

    iget-object v1, p0, Lorg/commonmark/internal/InlineParserImpl;->input:Ljava/lang/String;

    iget v2, p0, Lorg/commonmark/internal/InlineParserImpl;->index:I

    add-int/lit8 v3, v2, 0x1

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 316
    iget-object v0, p0, Lorg/commonmark/internal/InlineParserImpl;->input:Ljava/lang/String;

    iget v1, p0, Lorg/commonmark/internal/InlineParserImpl;->index:I

    add-int/lit8 v2, v1, 0x1

    invoke-direct {p0, v0, v1, v2}, Lorg/commonmark/internal/InlineParserImpl;->text(Ljava/lang/String;II)Lorg/commonmark/node/Text;

    move-result-object v0

    .line 317
    .restart local v0    # "node":Lorg/commonmark/node/Node;
    iget v1, p0, Lorg/commonmark/internal/InlineParserImpl;->index:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/commonmark/internal/InlineParserImpl;->index:I

    goto :goto_0

    .line 319
    .end local v0    # "node":Lorg/commonmark/node/Node;
    :cond_1
    const-string v0, "\\"

    invoke-direct {p0, v0}, Lorg/commonmark/internal/InlineParserImpl;->text(Ljava/lang/String;)Lorg/commonmark/node/Text;

    move-result-object v0

    .line 321
    .restart local v0    # "node":Lorg/commonmark/node/Node;
    :goto_0
    return-object v0
.end method

.method private parseBackticks()Lorg/commonmark/node/Node;
    .locals 8

    .line 328
    sget-object v0, Lorg/commonmark/internal/InlineParserImpl;->TICKS_HERE:Ljava/util/regex/Pattern;

    invoke-direct {p0, v0}, Lorg/commonmark/internal/InlineParserImpl;->match(Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v0

    .line 329
    .local v0, "ticks":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 330
    const/4 v1, 0x0

    return-object v1

    .line 332
    :cond_0
    iget v1, p0, Lorg/commonmark/internal/InlineParserImpl;->index:I

    .line 334
    .local v1, "afterOpenTicks":I
    :cond_1
    sget-object v2, Lorg/commonmark/internal/InlineParserImpl;->TICKS:Ljava/util/regex/Pattern;

    invoke-direct {p0, v2}, Lorg/commonmark/internal/InlineParserImpl;->match(Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    .local v3, "matched":Ljava/lang/String;
    if-eqz v2, :cond_3

    .line 335
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 336
    new-instance v2, Lorg/commonmark/node/Code;

    invoke-direct {v2}, Lorg/commonmark/node/Code;-><init>()V

    .line 337
    .local v2, "node":Lorg/commonmark/node/Code;
    iget-object v4, p0, Lorg/commonmark/internal/InlineParserImpl;->input:Ljava/lang/String;

    iget v5, p0, Lorg/commonmark/internal/InlineParserImpl;->index:I

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-virtual {v4, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 338
    .local v4, "content":Ljava/lang/String;
    const/16 v5, 0xa

    const/16 v6, 0x20

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    .line 342
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v7, 0x3

    if-lt v5, v7, :cond_2

    const/4 v5, 0x0

    .line 343
    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v6, :cond_2

    .line 344
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v7, 0x1

    sub-int/2addr v5, v7

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v6, :cond_2

    .line 345
    invoke-static {v4}, Lorg/commonmark/internal/util/Parsing;->hasNonSpace(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 346
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v5, v7

    invoke-virtual {v4, v7, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 349
    :cond_2
    invoke-virtual {v2, v4}, Lorg/commonmark/node/Code;->setLiteral(Ljava/lang/String;)V

    .line 350
    return-object v2

    .line 354
    .end local v2    # "node":Lorg/commonmark/node/Code;
    .end local v4    # "content":Ljava/lang/String;
    :cond_3
    iput v1, p0, Lorg/commonmark/internal/InlineParserImpl;->index:I

    .line 355
    invoke-direct {p0, v0}, Lorg/commonmark/internal/InlineParserImpl;->text(Ljava/lang/String;)Lorg/commonmark/node/Text;

    move-result-object v2

    return-object v2
.end method

.method private parseBang()Lorg/commonmark/node/Node;
    .locals 5

    .line 403
    iget v0, p0, Lorg/commonmark/internal/InlineParserImpl;->index:I

    .line 404
    .local v0, "startIndex":I
    iget v1, p0, Lorg/commonmark/internal/InlineParserImpl;->index:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/commonmark/internal/InlineParserImpl;->index:I

    .line 405
    invoke-direct {p0}, Lorg/commonmark/internal/InlineParserImpl;->peek()C

    move-result v1

    const/16 v2, 0x5b

    if-ne v1, v2, :cond_0

    .line 406
    iget v1, p0, Lorg/commonmark/internal/InlineParserImpl;->index:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/commonmark/internal/InlineParserImpl;->index:I

    .line 408
    const-string v1, "!["

    invoke-direct {p0, v1}, Lorg/commonmark/internal/InlineParserImpl;->text(Ljava/lang/String;)Lorg/commonmark/node/Text;

    move-result-object v1

    .line 411
    .local v1, "node":Lorg/commonmark/node/Text;
    add-int/lit8 v2, v0, 0x1

    iget-object v3, p0, Lorg/commonmark/internal/InlineParserImpl;->lastBracket:Lorg/commonmark/internal/Bracket;

    iget-object v4, p0, Lorg/commonmark/internal/InlineParserImpl;->lastDelimiter:Lorg/commonmark/internal/Delimiter;

    invoke-static {v1, v2, v3, v4}, Lorg/commonmark/internal/Bracket;->image(Lorg/commonmark/node/Text;ILorg/commonmark/internal/Bracket;Lorg/commonmark/internal/Delimiter;)Lorg/commonmark/internal/Bracket;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/commonmark/internal/InlineParserImpl;->addBracket(Lorg/commonmark/internal/Bracket;)V

    .line 413
    return-object v1

    .line 415
    .end local v1    # "node":Lorg/commonmark/node/Text;
    :cond_0
    const-string v1, "!"

    invoke-direct {p0, v1}, Lorg/commonmark/internal/InlineParserImpl;->text(Ljava/lang/String;)Lorg/commonmark/node/Text;

    move-result-object v1

    return-object v1
.end method

.method private parseCloseBracket()Lorg/commonmark/node/Node;
    .locals 11

    .line 424
    iget v0, p0, Lorg/commonmark/internal/InlineParserImpl;->index:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/commonmark/internal/InlineParserImpl;->index:I

    .line 425
    iget v0, p0, Lorg/commonmark/internal/InlineParserImpl;->index:I

    .line 428
    .local v0, "startIndex":I
    iget-object v1, p0, Lorg/commonmark/internal/InlineParserImpl;->lastBracket:Lorg/commonmark/internal/Bracket;

    .line 429
    .local v1, "opener":Lorg/commonmark/internal/Bracket;
    const-string v2, "]"

    if-nez v1, :cond_0

    .line 431
    invoke-direct {p0, v2}, Lorg/commonmark/internal/InlineParserImpl;->text(Ljava/lang/String;)Lorg/commonmark/node/Text;

    move-result-object v2

    return-object v2

    .line 434
    :cond_0
    iget-boolean v3, v1, Lorg/commonmark/internal/Bracket;->allowed:Z

    if-nez v3, :cond_1

    .line 436
    invoke-direct {p0}, Lorg/commonmark/internal/InlineParserImpl;->removeLastBracket()V

    .line 437
    invoke-direct {p0, v2}, Lorg/commonmark/internal/InlineParserImpl;->text(Ljava/lang/String;)Lorg/commonmark/node/Text;

    move-result-object v2

    return-object v2

    .line 442
    :cond_1
    const/4 v3, 0x0

    .line 443
    .local v3, "dest":Ljava/lang/String;
    const/4 v4, 0x0

    .line 444
    .local v4, "title":Ljava/lang/String;
    const/4 v5, 0x0

    .line 447
    .local v5, "isLinkOrImage":Z
    invoke-direct {p0}, Lorg/commonmark/internal/InlineParserImpl;->peek()C

    move-result v6

    const/16 v7, 0x28

    if-ne v6, v7, :cond_4

    .line 448
    iget v6, p0, Lorg/commonmark/internal/InlineParserImpl;->index:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lorg/commonmark/internal/InlineParserImpl;->index:I

    .line 449
    invoke-direct {p0}, Lorg/commonmark/internal/InlineParserImpl;->spnl()V

    .line 450
    invoke-direct {p0}, Lorg/commonmark/internal/InlineParserImpl;->parseLinkDestination()Ljava/lang/String;

    move-result-object v6

    move-object v3, v6

    if-eqz v6, :cond_4

    .line 451
    invoke-direct {p0}, Lorg/commonmark/internal/InlineParserImpl;->spnl()V

    .line 453
    sget-object v6, Lorg/commonmark/internal/InlineParserImpl;->WHITESPACE:Ljava/util/regex/Pattern;

    iget-object v7, p0, Lorg/commonmark/internal/InlineParserImpl;->input:Ljava/lang/String;

    iget v8, p0, Lorg/commonmark/internal/InlineParserImpl;->index:I

    add-int/lit8 v9, v8, -0x1

    invoke-virtual {v7, v9, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/regex/Matcher;->matches()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 454
    invoke-direct {p0}, Lorg/commonmark/internal/InlineParserImpl;->parseLinkTitle()Ljava/lang/String;

    move-result-object v4

    .line 455
    invoke-direct {p0}, Lorg/commonmark/internal/InlineParserImpl;->spnl()V

    .line 457
    :cond_2
    invoke-direct {p0}, Lorg/commonmark/internal/InlineParserImpl;->peek()C

    move-result v6

    const/16 v7, 0x29

    if-ne v6, v7, :cond_3

    .line 458
    iget v6, p0, Lorg/commonmark/internal/InlineParserImpl;->index:I

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lorg/commonmark/internal/InlineParserImpl;->index:I

    .line 459
    const/4 v5, 0x1

    goto :goto_0

    .line 461
    :cond_3
    iput v0, p0, Lorg/commonmark/internal/InlineParserImpl;->index:I

    .line 467
    :cond_4
    :goto_0
    if-nez v5, :cond_7

    .line 470
    iget v6, p0, Lorg/commonmark/internal/InlineParserImpl;->index:I

    .line 471
    .local v6, "beforeLabel":I
    invoke-virtual {p0}, Lorg/commonmark/internal/InlineParserImpl;->parseLinkLabel()I

    .line 472
    iget v7, p0, Lorg/commonmark/internal/InlineParserImpl;->index:I

    sub-int/2addr v7, v6

    .line 473
    .local v7, "labelLength":I
    const/4 v8, 0x0

    .line 474
    .local v8, "ref":Ljava/lang/String;
    const/4 v9, 0x2

    if-le v7, v9, :cond_5

    .line 475
    iget-object v9, p0, Lorg/commonmark/internal/InlineParserImpl;->input:Ljava/lang/String;

    add-int v10, v6, v7

    invoke-virtual {v9, v6, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    goto :goto_1

    .line 476
    :cond_5
    iget-boolean v9, v1, Lorg/commonmark/internal/Bracket;->bracketAfter:Z

    if-nez v9, :cond_6

    .line 480
    iget-object v9, p0, Lorg/commonmark/internal/InlineParserImpl;->input:Ljava/lang/String;

    iget v10, v1, Lorg/commonmark/internal/Bracket;->index:I

    invoke-virtual {v9, v10, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 483
    :cond_6
    :goto_1
    if-eqz v8, :cond_7

    .line 484
    invoke-static {v8}, Lorg/commonmark/internal/util/Escaping;->normalizeReference(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 485
    .local v9, "label":Ljava/lang/String;
    iget-object v10, p0, Lorg/commonmark/internal/InlineParserImpl;->context:Lorg/commonmark/parser/InlineParserContext;

    invoke-interface {v10, v9}, Lorg/commonmark/parser/InlineParserContext;->getLinkReferenceDefinition(Ljava/lang/String;)Lorg/commonmark/node/LinkReferenceDefinition;

    move-result-object v10

    .line 486
    .local v10, "definition":Lorg/commonmark/node/LinkReferenceDefinition;
    if-eqz v10, :cond_7

    .line 487
    invoke-virtual {v10}, Lorg/commonmark/node/LinkReferenceDefinition;->getDestination()Ljava/lang/String;

    move-result-object v3

    .line 488
    invoke-virtual {v10}, Lorg/commonmark/node/LinkReferenceDefinition;->getTitle()Ljava/lang/String;

    move-result-object v4

    .line 489
    const/4 v5, 0x1

    .line 494
    .end local v6    # "beforeLabel":I
    .end local v7    # "labelLength":I
    .end local v8    # "ref":Ljava/lang/String;
    .end local v9    # "label":Ljava/lang/String;
    .end local v10    # "definition":Lorg/commonmark/node/LinkReferenceDefinition;
    :cond_7
    if-eqz v5, :cond_c

    .line 496
    iget-boolean v2, v1, Lorg/commonmark/internal/Bracket;->image:Z

    if-eqz v2, :cond_8

    new-instance v2, Lorg/commonmark/node/Image;

    invoke-direct {v2, v3, v4}, Lorg/commonmark/node/Image;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_8
    new-instance v2, Lorg/commonmark/node/Link;

    invoke-direct {v2, v3, v4}, Lorg/commonmark/node/Link;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 498
    .local v2, "linkOrImage":Lorg/commonmark/node/Node;
    :goto_2
    iget-object v6, v1, Lorg/commonmark/internal/Bracket;->node:Lorg/commonmark/node/Text;

    invoke-virtual {v6}, Lorg/commonmark/node/Text;->getNext()Lorg/commonmark/node/Node;

    move-result-object v6

    .line 499
    .local v6, "node":Lorg/commonmark/node/Node;
    :goto_3
    if-eqz v6, :cond_9

    .line 500
    invoke-virtual {v6}, Lorg/commonmark/node/Node;->getNext()Lorg/commonmark/node/Node;

    move-result-object v7

    .line 501
    .local v7, "next":Lorg/commonmark/node/Node;
    invoke-virtual {v2, v6}, Lorg/commonmark/node/Node;->appendChild(Lorg/commonmark/node/Node;)V

    .line 502
    move-object v6, v7

    .line 503
    .end local v7    # "next":Lorg/commonmark/node/Node;
    goto :goto_3

    .line 506
    :cond_9
    iget-object v7, v1, Lorg/commonmark/internal/Bracket;->previousDelimiter:Lorg/commonmark/internal/Delimiter;

    invoke-direct {p0, v7}, Lorg/commonmark/internal/InlineParserImpl;->processDelimiters(Lorg/commonmark/internal/Delimiter;)V

    .line 507
    invoke-direct {p0, v2}, Lorg/commonmark/internal/InlineParserImpl;->mergeChildTextNodes(Lorg/commonmark/node/Node;)V

    .line 509
    iget-object v7, v1, Lorg/commonmark/internal/Bracket;->node:Lorg/commonmark/node/Text;

    invoke-virtual {v7}, Lorg/commonmark/node/Text;->unlink()V

    .line 510
    invoke-direct {p0}, Lorg/commonmark/internal/InlineParserImpl;->removeLastBracket()V

    .line 513
    iget-boolean v7, v1, Lorg/commonmark/internal/Bracket;->image:Z

    if-nez v7, :cond_b

    .line 514
    iget-object v7, p0, Lorg/commonmark/internal/InlineParserImpl;->lastBracket:Lorg/commonmark/internal/Bracket;

    .line 515
    .local v7, "bracket":Lorg/commonmark/internal/Bracket;
    :goto_4
    if-eqz v7, :cond_b

    .line 516
    iget-boolean v8, v7, Lorg/commonmark/internal/Bracket;->image:Z

    if-nez v8, :cond_a

    .line 518
    const/4 v8, 0x0

    iput-boolean v8, v7, Lorg/commonmark/internal/Bracket;->allowed:Z

    .line 520
    :cond_a
    iget-object v7, v7, Lorg/commonmark/internal/Bracket;->previous:Lorg/commonmark/internal/Bracket;

    goto :goto_4

    .line 524
    .end local v7    # "bracket":Lorg/commonmark/internal/Bracket;
    :cond_b
    return-object v2

    .line 527
    .end local v2    # "linkOrImage":Lorg/commonmark/node/Node;
    .end local v6    # "node":Lorg/commonmark/node/Node;
    :cond_c
    iput v0, p0, Lorg/commonmark/internal/InlineParserImpl;->index:I

    .line 528
    invoke-direct {p0}, Lorg/commonmark/internal/InlineParserImpl;->removeLastBracket()V

    .line 530
    invoke-direct {p0, v2}, Lorg/commonmark/internal/InlineParserImpl;->text(Ljava/lang/String;)Lorg/commonmark/node/Text;

    move-result-object v2

    return-object v2
.end method

.method private parseDelimiters(Lorg/commonmark/parser/delimiter/DelimiterProcessor;C)Lorg/commonmark/node/Node;
    .locals 11
    .param p1, "delimiterProcessor"    # Lorg/commonmark/parser/delimiter/DelimiterProcessor;
    .param p2, "delimiterChar"    # C

    .line 362
    invoke-direct {p0, p1, p2}, Lorg/commonmark/internal/InlineParserImpl;->scanDelimiters(Lorg/commonmark/parser/delimiter/DelimiterProcessor;C)Lorg/commonmark/internal/InlineParserImpl$DelimiterData;

    move-result-object v0

    .line 363
    .local v0, "res":Lorg/commonmark/internal/InlineParserImpl$DelimiterData;
    if-nez v0, :cond_0

    .line 364
    const/4 v1, 0x0

    return-object v1

    .line 366
    :cond_0
    iget v1, v0, Lorg/commonmark/internal/InlineParserImpl$DelimiterData;->count:I

    .line 367
    .local v1, "length":I
    iget v2, p0, Lorg/commonmark/internal/InlineParserImpl;->index:I

    .line 369
    .local v2, "startIndex":I
    iget v3, p0, Lorg/commonmark/internal/InlineParserImpl;->index:I

    add-int/2addr v3, v1

    iput v3, p0, Lorg/commonmark/internal/InlineParserImpl;->index:I

    .line 370
    iget-object v4, p0, Lorg/commonmark/internal/InlineParserImpl;->input:Ljava/lang/String;

    invoke-direct {p0, v4, v2, v3}, Lorg/commonmark/internal/InlineParserImpl;->text(Ljava/lang/String;II)Lorg/commonmark/node/Text;

    move-result-object v3

    .line 373
    .local v3, "node":Lorg/commonmark/node/Text;
    new-instance v4, Lorg/commonmark/internal/Delimiter;

    iget-boolean v8, v0, Lorg/commonmark/internal/InlineParserImpl$DelimiterData;->canOpen:Z

    iget-boolean v9, v0, Lorg/commonmark/internal/InlineParserImpl$DelimiterData;->canClose:Z

    iget-object v10, p0, Lorg/commonmark/internal/InlineParserImpl;->lastDelimiter:Lorg/commonmark/internal/Delimiter;

    move-object v5, v4

    move-object v6, v3

    move v7, p2

    invoke-direct/range {v5 .. v10}, Lorg/commonmark/internal/Delimiter;-><init>(Lorg/commonmark/node/Text;CZZLorg/commonmark/internal/Delimiter;)V

    iput-object v4, p0, Lorg/commonmark/internal/InlineParserImpl;->lastDelimiter:Lorg/commonmark/internal/Delimiter;

    .line 374
    iput v1, v4, Lorg/commonmark/internal/Delimiter;->length:I

    .line 375
    iget-object v4, p0, Lorg/commonmark/internal/InlineParserImpl;->lastDelimiter:Lorg/commonmark/internal/Delimiter;

    iput v1, v4, Lorg/commonmark/internal/Delimiter;->originalLength:I

    .line 376
    iget-object v4, p0, Lorg/commonmark/internal/InlineParserImpl;->lastDelimiter:Lorg/commonmark/internal/Delimiter;

    iget-object v4, v4, Lorg/commonmark/internal/Delimiter;->previous:Lorg/commonmark/internal/Delimiter;

    if-eqz v4, :cond_1

    .line 377
    iget-object v4, p0, Lorg/commonmark/internal/InlineParserImpl;->lastDelimiter:Lorg/commonmark/internal/Delimiter;

    iget-object v4, v4, Lorg/commonmark/internal/Delimiter;->previous:Lorg/commonmark/internal/Delimiter;

    iget-object v5, p0, Lorg/commonmark/internal/InlineParserImpl;->lastDelimiter:Lorg/commonmark/internal/Delimiter;

    iput-object v5, v4, Lorg/commonmark/internal/Delimiter;->next:Lorg/commonmark/internal/Delimiter;

    .line 380
    :cond_1
    return-object v3
.end method

.method private parseEntity()Lorg/commonmark/node/Node;
    .locals 2

    .line 642
    sget-object v0, Lorg/commonmark/internal/InlineParserImpl;->ENTITY_HERE:Ljava/util/regex/Pattern;

    invoke-direct {p0, v0}, Lorg/commonmark/internal/InlineParserImpl;->match(Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .local v1, "m":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 643
    invoke-static {v1}, Lorg/commonmark/internal/util/Html5Entities;->entityToString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/commonmark/internal/InlineParserImpl;->text(Ljava/lang/String;)Lorg/commonmark/node/Text;

    move-result-object v0

    return-object v0

    .line 645
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private parseHtmlInline()Lorg/commonmark/node/Node;
    .locals 2

    .line 627
    sget-object v0, Lorg/commonmark/internal/InlineParserImpl;->HTML_TAG:Ljava/util/regex/Pattern;

    invoke-direct {p0, v0}, Lorg/commonmark/internal/InlineParserImpl;->match(Ljava/util/regex/Pattern;)Ljava/lang/String;

    move-result-object v0

    .line 628
    .local v0, "m":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 629
    new-instance v1, Lorg/commonmark/node/HtmlInline;

    invoke-direct {v1}, Lorg/commonmark/node/HtmlInline;-><init>()V

    .line 630
    .local v1, "node":Lorg/commonmark/node/HtmlInline;
    invoke-virtual {v1, v0}, Lorg/commonmark/node/HtmlInline;->setLiteral(Ljava/lang/String;)V

    .line 631
    return-object v1

    .line 633
    .end local v1    # "node":Lorg/commonmark/node/HtmlInline;
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method private parseInline(Lorg/commonmark/node/Node;)Lorg/commonmark/node/Node;
    .locals 4
    .param p1, "previous"    # Lorg/commonmark/node/Node;

    .line 188
    invoke-direct {p0}, Lorg/commonmark/internal/InlineParserImpl;->peek()C

    move-result v0

    .line 189
    .local v0, "c":C
    if-nez v0, :cond_0

    .line 190
    const/4 v1, 0x0

    return-object v1

    .line 194
    :cond_0
    sparse-switch v0, :sswitch_data_0

    .line 223
    iget-object v1, p0, Lorg/commonmark/internal/InlineParserImpl;->delimiterCharacters:Ljava/util/BitSet;

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    .line 224
    .local v1, "isDelimiter":Z
    if-eqz v1, :cond_1

    .line 225
    iget-object v2, p0, Lorg/commonmark/internal/InlineParserImpl;->delimiterProcessors:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/commonmark/parser/delimiter/DelimiterProcessor;

    .line 226
    .local v2, "delimiterProcessor":Lorg/commonmark/parser/delimiter/DelimiterProcessor;
    invoke-direct {p0, v2, v0}, Lorg/commonmark/internal/InlineParserImpl;->parseDelimiters(Lorg/commonmark/parser/delimiter/DelimiterProcessor;C)Lorg/commonmark/node/Node;

    move-result-object v2

    .line 227
    .local v2, "node":Lorg/commonmark/node/Node;
    move-object v1, v2

    goto :goto_0

    .line 202
    .end local v1    # "isDelimiter":Z
    .end local v2    # "node":Lorg/commonmark/node/Node;
    :sswitch_0
    invoke-direct {p0}, Lorg/commonmark/internal/InlineParserImpl;->parseBackticks()Lorg/commonmark/node/Node;

    move-result-object v1

    .line 203
    .local v1, "node":Lorg/commonmark/node/Node;
    goto :goto_0

    .line 211
    .end local v1    # "node":Lorg/commonmark/node/Node;
    :sswitch_1
    invoke-direct {p0}, Lorg/commonmark/internal/InlineParserImpl;->parseCloseBracket()Lorg/commonmark/node/Node;

    move-result-object v1

    .line 212
    .restart local v1    # "node":Lorg/commonmark/node/Node;
    goto :goto_0

    .line 199
    .end local v1    # "node":Lorg/commonmark/node/Node;
    :sswitch_2
    invoke-direct {p0}, Lorg/commonmark/internal/InlineParserImpl;->parseBackslash()Lorg/commonmark/node/Node;

    move-result-object v1

    .line 200
    .restart local v1    # "node":Lorg/commonmark/node/Node;
    goto :goto_0

    .line 205
    .end local v1    # "node":Lorg/commonmark/node/Node;
    :sswitch_3
    invoke-direct {p0}, Lorg/commonmark/internal/InlineParserImpl;->parseOpenBracket()Lorg/commonmark/node/Node;

    move-result-object v1

    .line 206
    .restart local v1    # "node":Lorg/commonmark/node/Node;
    goto :goto_0

    .line 214
    .end local v1    # "node":Lorg/commonmark/node/Node;
    :sswitch_4
    invoke-direct {p0}, Lorg/commonmark/internal/InlineParserImpl;->parseAutolink()Lorg/commonmark/node/Node;

    move-result-object v1

    .line 215
    .restart local v1    # "node":Lorg/commonmark/node/Node;
    if-nez v1, :cond_2

    .line 216
    invoke-direct {p0}, Lorg/commonmark/internal/InlineParserImpl;->parseHtmlInline()Lorg/commonmark/node/Node;

    move-result-object v1

    goto :goto_0

    .line 220
    .end local v1    # "node":Lorg/commonmark/node/Node;
    :sswitch_5
    invoke-direct {p0}, Lorg/commonmark/internal/InlineParserImpl;->parseEntity()Lorg/commonmark/node/Node;

    move-result-object v1

    .line 221
    .restart local v1    # "node":Lorg/commonmark/node/Node;
    goto :goto_0

    .line 208
    .end local v1    # "node":Lorg/commonmark/node/Node;
    :sswitch_6
    invoke-direct {p0}, Lorg/commonmark/internal/InlineParserImpl;->parseBang()Lorg/commonmark/node/Node;

    move-result-object v1

    .line 209
    .restart local v1    # "node":Lorg/commonmark/node/Node;
    goto :goto_0

    .line 196
    .end local v1    # "node":Lorg/commonmark/node/Node;
    :sswitch_7
    invoke-direct {p0, p1}, Lorg/commonmark/internal/InlineParserImpl;->parseNewline(Lorg/commonmark/node/Node;)Lorg/commonmark/node/Node;

    move-result-object v1

    .line 197
    .restart local v1    # "node":Lorg/commonmark/node/Node;
    goto :goto_0

    .line 228
    .local v1, "isDelimiter":Z
    :cond_1
    invoke-direct {p0}, Lorg/commonmark/internal/InlineParserImpl;->parseString()Lorg/commonmark/node/Node;

    move-result-object v2

    move-object v1, v2

    .line 232
    .local v1, "node":Lorg/commonmark/node/Node;
    :cond_2
    :goto_0
    if-eqz v1, :cond_3

    .line 233
    return-object v1

    .line 235
    :cond_3
    iget v2, p0, Lorg/commonmark/internal/InlineParserImpl;->index:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/commonmark/internal/InlineParserImpl;->index:I

    .line 238
    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    .line 239
    .local v2, "literal":Ljava/lang/String;
    invoke-direct {p0, v2}, Lorg/commonmark/internal/InlineParserImpl;->text(Ljava/lang/String;)Lorg/commonmark/node/Text;

    move-result-object v3

    return-object v3

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_7
        0x21 -> :sswitch_6
        0x26 -> :sswitch_5
        0x3c -> :sswitch_4
        0x5b -> :sswitch_3
        0x5c -> :sswitch_2
        0x5d -> :sswitch_1
        0x60 -> :sswitch_0
    .end sparse-switch
.end method

.method private parseLinkDestination()Ljava/lang/String;
    .locals 4

    .line 549
    iget-object v0, p0, Lorg/commonmark/internal/InlineParserImpl;->input:Ljava/lang/String;

    iget v1, p0, Lorg/commonmark/internal/InlineParserImpl;->index:I

    invoke-static {v0, v1}, Lorg/commonmark/internal/util/LinkScanner;->scanLinkDestination(Ljava/lang/CharSequence;I)I

    move-result v0

    .line 550
    .local v0, "afterDest":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 551
    const/4 v1, 0x0

    return-object v1

    .line 555
    :cond_0
    invoke-direct {p0}, Lorg/commonmark/internal/InlineParserImpl;->peek()C

    move-result v1

    const/16 v2, 0x3c

    if-ne v1, v2, :cond_1

    .line 557
    iget-object v1, p0, Lorg/commonmark/internal/InlineParserImpl;->input:Ljava/lang/String;

    iget v2, p0, Lorg/commonmark/internal/InlineParserImpl;->index:I

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .local v1, "dest":Ljava/lang/String;
    goto :goto_0

    .line 559
    .end local v1    # "dest":Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lorg/commonmark/internal/InlineParserImpl;->input:Ljava/lang/String;

    iget v2, p0, Lorg/commonmark/internal/InlineParserImpl;->index:I

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 562
    .restart local v1    # "dest":Ljava/lang/String;
    :goto_0
    iput v0, p0, Lorg/commonmark/internal/InlineParserImpl;->index:I

    .line 563
    invoke-static {v1}, Lorg/commonmark/internal/util/Escaping;->unescapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private parseLinkTitle()Ljava/lang/String;
    .locals 4

    .line 570
    iget-object v0, p0, Lorg/commonmark/internal/InlineParserImpl;->input:Ljava/lang/String;

    iget v1, p0, Lorg/commonmark/internal/InlineParserImpl;->index:I

    invoke-static {v0, v1}, Lorg/commonmark/internal/util/LinkScanner;->scanLinkTitle(Ljava/lang/CharSequence;I)I

    move-result v0

    .line 571
    .local v0, "afterTitle":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 572
    const/4 v1, 0x0

    return-object v1

    .line 576
    :cond_0
    iget-object v1, p0, Lorg/commonmark/internal/InlineParserImpl;->input:Ljava/lang/String;

    iget v2, p0, Lorg/commonmark/internal/InlineParserImpl;->index:I

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 577
    .local v1, "title":Ljava/lang/String;
    iput v0, p0, Lorg/commonmark/internal/InlineParserImpl;->index:I

    .line 578
    invoke-static {v1}, Lorg/commonmark/internal/util/Escaping;->unescapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private parseNewline(Lorg/commonmark/node/Node;)Lorg/commonmark/node/Node;
    .locals 6
    .param p1, "previous"    # Lorg/commonmark/node/Node;

    .line 283
    iget v0, p0, Lorg/commonmark/internal/InlineParserImpl;->index:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/commonmark/internal/InlineParserImpl;->index:I

    .line 287
    instance-of v0, p1, Lorg/commonmark/node/Text;

    if-eqz v0, :cond_3

    move-object v0, p1

    check-cast v0, Lorg/commonmark/node/Text;

    invoke-virtual {v0}, Lorg/commonmark/node/Text;->getLiteral()Ljava/lang/String;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 288
    move-object v0, p1

    check-cast v0, Lorg/commonmark/node/Text;

    .line 289
    .local v0, "text":Lorg/commonmark/node/Text;
    invoke-virtual {v0}, Lorg/commonmark/node/Text;->getLiteral()Ljava/lang/String;

    move-result-object v1

    .line 290
    .local v1, "literal":Ljava/lang/String;
    sget-object v2, Lorg/commonmark/internal/InlineParserImpl;->FINAL_SPACE:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 291
    .local v2, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->end()I

    move-result v3

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->start()I

    move-result v5

    sub-int/2addr v3, v5

    goto :goto_0

    :cond_0
    move v3, v4

    .line 292
    .local v3, "spaces":I
    :goto_0
    if-lez v3, :cond_1

    .line 293
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    sub-int/2addr v5, v3

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/commonmark/node/Text;->setLiteral(Ljava/lang/String;)V

    .line 295
    :cond_1
    const/4 v4, 0x2

    if-lt v3, v4, :cond_2

    .line 296
    new-instance v4, Lorg/commonmark/node/HardLineBreak;

    invoke-direct {v4}, Lorg/commonmark/node/HardLineBreak;-><init>()V

    return-object v4

    .line 298
    :cond_2
    new-instance v4, Lorg/commonmark/node/SoftLineBreak;

    invoke-direct {v4}, Lorg/commonmark/node/SoftLineBreak;-><init>()V

    return-object v4

    .line 301
    .end local v0    # "text":Lorg/commonmark/node/Text;
    .end local v1    # "literal":Ljava/lang/String;
    .end local v2    # "matcher":Ljava/util/regex/Matcher;
    .end local v3    # "spaces":I
    :cond_3
    new-instance v0, Lorg/commonmark/node/SoftLineBreak;

    invoke-direct {v0}, Lorg/commonmark/node/SoftLineBreak;-><init>()V

    return-object v0
.end method

.method private parseOpenBracket()Lorg/commonmark/node/Node;
    .locals 4

    .line 387
    iget v0, p0, Lorg/commonmark/internal/InlineParserImpl;->index:I

    .line 388
    .local v0, "startIndex":I
    iget v1, p0, Lorg/commonmark/internal/InlineParserImpl;->index:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/commonmark/internal/InlineParserImpl;->index:I

    .line 390
    const-string v1, "["

    invoke-direct {p0, v1}, Lorg/commonmark/internal/InlineParserImpl;->text(Ljava/lang/String;)Lorg/commonmark/node/Text;

    move-result-object v1

    .line 393
    .local v1, "node":Lorg/commonmark/node/Text;
    iget-object v2, p0, Lorg/commonmark/internal/InlineParserImpl;->lastBracket:Lorg/commonmark/internal/Bracket;

    iget-object v3, p0, Lorg/commonmark/internal/InlineParserImpl;->lastDelimiter:Lorg/commonmark/internal/Delimiter;

    invoke-static {v1, v0, v2, v3}, Lorg/commonmark/internal/Bracket;->link(Lorg/commonmark/node/Text;ILorg/commonmark/internal/Bracket;Lorg/commonmark/internal/Delimiter;)Lorg/commonmark/internal/Bracket;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/commonmark/internal/InlineParserImpl;->addBracket(Lorg/commonmark/internal/Bracket;)V

    .line 395
    return-object v1
.end method

.method private parseString()Lorg/commonmark/node/Node;
    .locals 5

    .line 653
    iget v0, p0, Lorg/commonmark/internal/InlineParserImpl;->index:I

    .line 654
    .local v0, "begin":I
    iget-object v1, p0, Lorg/commonmark/internal/InlineParserImpl;->input:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    .line 655
    .local v1, "length":I
    :goto_0
    iget v2, p0, Lorg/commonmark/internal/InlineParserImpl;->index:I

    if-eq v2, v1, :cond_1

    .line 656
    iget-object v3, p0, Lorg/commonmark/internal/InlineParserImpl;->specialCharacters:Ljava/util/BitSet;

    iget-object v4, p0, Lorg/commonmark/internal/InlineParserImpl;->input:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v3, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 657
    goto :goto_1

    .line 659
    :cond_0
    iget v2, p0, Lorg/commonmark/internal/InlineParserImpl;->index:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lorg/commonmark/internal/InlineParserImpl;->index:I

    goto :goto_0

    .line 661
    :cond_1
    :goto_1
    iget v2, p0, Lorg/commonmark/internal/InlineParserImpl;->index:I

    if-eq v0, v2, :cond_2

    .line 662
    iget-object v3, p0, Lorg/commonmark/internal/InlineParserImpl;->input:Ljava/lang/String;

    invoke-direct {p0, v3, v0, v2}, Lorg/commonmark/internal/InlineParserImpl;->text(Ljava/lang/String;II)Lorg/commonmark/node/Text;

    move-result-object v2

    return-object v2

    .line 664
    :cond_2
    const/4 v2, 0x0

    return-object v2
.end method

.method private peek()C
    .locals 2

    .line 265
    iget v0, p0, Lorg/commonmark/internal/InlineParserImpl;->index:I

    iget-object v1, p0, Lorg/commonmark/internal/InlineParserImpl;->input:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 266
    iget-object v0, p0, Lorg/commonmark/internal/InlineParserImpl;->input:Ljava/lang/String;

    iget v1, p0, Lorg/commonmark/internal/InlineParserImpl;->index:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    return v0

    .line 268
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private processDelimiters(Lorg/commonmark/internal/Delimiter;)V
    .locals 14
    .param p1, "stackBottom"    # Lorg/commonmark/internal/Delimiter;

    .line 721
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 724
    .local v0, "openersBottom":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Character;Lorg/commonmark/internal/Delimiter;>;"
    iget-object v1, p0, Lorg/commonmark/internal/InlineParserImpl;->lastDelimiter:Lorg/commonmark/internal/Delimiter;

    .line 725
    .local v1, "closer":Lorg/commonmark/internal/Delimiter;
    :goto_0
    if-eqz v1, :cond_0

    iget-object v2, v1, Lorg/commonmark/internal/Delimiter;->previous:Lorg/commonmark/internal/Delimiter;

    if-eq v2, p1, :cond_0

    .line 726
    iget-object v1, v1, Lorg/commonmark/internal/Delimiter;->previous:Lorg/commonmark/internal/Delimiter;

    goto :goto_0

    .line 729
    :cond_0
    :goto_1
    if-eqz v1, :cond_9

    .line 730
    iget-char v2, v1, Lorg/commonmark/internal/Delimiter;->delimiterChar:C

    .line 732
    .local v2, "delimiterChar":C
    iget-object v3, p0, Lorg/commonmark/internal/InlineParserImpl;->delimiterProcessors:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/commonmark/parser/delimiter/DelimiterProcessor;

    .line 733
    .local v3, "delimiterProcessor":Lorg/commonmark/parser/delimiter/DelimiterProcessor;
    iget-boolean v4, v1, Lorg/commonmark/internal/Delimiter;->canClose:Z

    if-eqz v4, :cond_8

    if-nez v3, :cond_1

    goto/16 :goto_4

    .line 738
    :cond_1
    invoke-interface {v3}, Lorg/commonmark/parser/delimiter/DelimiterProcessor;->getOpeningCharacter()C

    move-result v4

    .line 741
    .local v4, "openingDelimiterChar":C
    const/4 v5, 0x0

    .line 742
    .local v5, "useDelims":I
    const/4 v6, 0x0

    .line 743
    .local v6, "openerFound":Z
    const/4 v7, 0x0

    .line 744
    .local v7, "potentialOpenerFound":Z
    iget-object v8, v1, Lorg/commonmark/internal/Delimiter;->previous:Lorg/commonmark/internal/Delimiter;

    .line 745
    .local v8, "opener":Lorg/commonmark/internal/Delimiter;
    :goto_2
    if-eqz v8, :cond_3

    if-eq v8, p1, :cond_3

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    invoke-interface {v0, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-eq v8, v9, :cond_3

    .line 746
    iget-boolean v9, v8, Lorg/commonmark/internal/Delimiter;->canOpen:Z

    if-eqz v9, :cond_2

    iget-char v9, v8, Lorg/commonmark/internal/Delimiter;->delimiterChar:C

    if-ne v9, v4, :cond_2

    .line 747
    const/4 v7, 0x1

    .line 748
    invoke-interface {v3, v8, v1}, Lorg/commonmark/parser/delimiter/DelimiterProcessor;->getDelimiterUse(Lorg/commonmark/parser/delimiter/DelimiterRun;Lorg/commonmark/parser/delimiter/DelimiterRun;)I

    move-result v5

    .line 749
    if-lez v5, :cond_2

    .line 750
    const/4 v6, 0x1

    .line 751
    goto :goto_3

    .line 754
    :cond_2
    iget-object v8, v8, Lorg/commonmark/internal/Delimiter;->previous:Lorg/commonmark/internal/Delimiter;

    goto :goto_2

    .line 757
    :cond_3
    :goto_3
    if-nez v6, :cond_5

    .line 758
    if-nez v7, :cond_4

    .line 766
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    iget-object v10, v1, Lorg/commonmark/internal/Delimiter;->previous:Lorg/commonmark/internal/Delimiter;

    invoke-interface {v0, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 767
    iget-boolean v9, v1, Lorg/commonmark/internal/Delimiter;->canOpen:Z

    if-nez v9, :cond_4

    .line 770
    invoke-direct {p0, v1}, Lorg/commonmark/internal/InlineParserImpl;->removeDelimiterKeepNode(Lorg/commonmark/internal/Delimiter;)V

    .line 773
    :cond_4
    iget-object v1, v1, Lorg/commonmark/internal/Delimiter;->next:Lorg/commonmark/internal/Delimiter;

    .line 774
    goto :goto_1

    .line 777
    :cond_5
    iget-object v9, v8, Lorg/commonmark/internal/Delimiter;->node:Lorg/commonmark/node/Text;

    .line 778
    .local v9, "openerNode":Lorg/commonmark/node/Text;
    iget-object v10, v1, Lorg/commonmark/internal/Delimiter;->node:Lorg/commonmark/node/Text;

    .line 781
    .local v10, "closerNode":Lorg/commonmark/node/Text;
    iget v11, v8, Lorg/commonmark/internal/Delimiter;->length:I

    sub-int/2addr v11, v5

    iput v11, v8, Lorg/commonmark/internal/Delimiter;->length:I

    .line 782
    iget v11, v1, Lorg/commonmark/internal/Delimiter;->length:I

    sub-int/2addr v11, v5

    iput v11, v1, Lorg/commonmark/internal/Delimiter;->length:I

    .line 783
    nop

    .line 784
    invoke-virtual {v9}, Lorg/commonmark/node/Text;->getLiteral()Ljava/lang/String;

    move-result-object v11

    .line 785
    invoke-virtual {v9}, Lorg/commonmark/node/Text;->getLiteral()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    sub-int/2addr v12, v5

    .line 784
    const/4 v13, 0x0

    invoke-virtual {v11, v13, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    .line 783
    invoke-virtual {v9, v11}, Lorg/commonmark/node/Text;->setLiteral(Ljava/lang/String;)V

    .line 786
    nop

    .line 787
    invoke-virtual {v10}, Lorg/commonmark/node/Text;->getLiteral()Ljava/lang/String;

    move-result-object v11

    .line 788
    invoke-virtual {v10}, Lorg/commonmark/node/Text;->getLiteral()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    sub-int/2addr v12, v5

    .line 787
    invoke-virtual {v11, v13, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    .line 786
    invoke-virtual {v10, v11}, Lorg/commonmark/node/Text;->setLiteral(Ljava/lang/String;)V

    .line 790
    invoke-direct {p0, v8, v1}, Lorg/commonmark/internal/InlineParserImpl;->removeDelimitersBetween(Lorg/commonmark/internal/Delimiter;Lorg/commonmark/internal/Delimiter;)V

    .line 793
    invoke-direct {p0, v9, v10}, Lorg/commonmark/internal/InlineParserImpl;->mergeTextNodesBetweenExclusive(Lorg/commonmark/node/Node;Lorg/commonmark/node/Node;)V

    .line 794
    invoke-interface {v3, v9, v10, v5}, Lorg/commonmark/parser/delimiter/DelimiterProcessor;->process(Lorg/commonmark/node/Text;Lorg/commonmark/node/Text;I)V

    .line 797
    iget v11, v8, Lorg/commonmark/internal/Delimiter;->length:I

    if-nez v11, :cond_6

    .line 798
    invoke-direct {p0, v8}, Lorg/commonmark/internal/InlineParserImpl;->removeDelimiterAndNode(Lorg/commonmark/internal/Delimiter;)V

    .line 801
    :cond_6
    iget v11, v1, Lorg/commonmark/internal/Delimiter;->length:I

    if-nez v11, :cond_7

    .line 802
    iget-object v11, v1, Lorg/commonmark/internal/Delimiter;->next:Lorg/commonmark/internal/Delimiter;

    .line 803
    .local v11, "next":Lorg/commonmark/internal/Delimiter;
    invoke-direct {p0, v1}, Lorg/commonmark/internal/InlineParserImpl;->removeDelimiterAndNode(Lorg/commonmark/internal/Delimiter;)V

    .line 804
    move-object v1, v11

    .line 806
    .end local v2    # "delimiterChar":C
    .end local v3    # "delimiterProcessor":Lorg/commonmark/parser/delimiter/DelimiterProcessor;
    .end local v4    # "openingDelimiterChar":C
    .end local v5    # "useDelims":I
    .end local v6    # "openerFound":Z
    .end local v7    # "potentialOpenerFound":Z
    .end local v8    # "opener":Lorg/commonmark/internal/Delimiter;
    .end local v9    # "openerNode":Lorg/commonmark/node/Text;
    .end local v10    # "closerNode":Lorg/commonmark/node/Text;
    .end local v11    # "next":Lorg/commonmark/internal/Delimiter;
    :cond_7
    goto/16 :goto_1

    .line 734
    .restart local v2    # "delimiterChar":C
    .restart local v3    # "delimiterProcessor":Lorg/commonmark/parser/delimiter/DelimiterProcessor;
    :cond_8
    :goto_4
    iget-object v1, v1, Lorg/commonmark/internal/Delimiter;->next:Lorg/commonmark/internal/Delimiter;

    .line 735
    goto/16 :goto_1

    .line 809
    .end local v2    # "delimiterChar":C
    .end local v3    # "delimiterProcessor":Lorg/commonmark/parser/delimiter/DelimiterProcessor;
    :cond_9
    :goto_5
    iget-object v2, p0, Lorg/commonmark/internal/InlineParserImpl;->lastDelimiter:Lorg/commonmark/internal/Delimiter;

    if-eqz v2, :cond_a

    if-eq v2, p1, :cond_a

    .line 810
    invoke-direct {p0, v2}, Lorg/commonmark/internal/InlineParserImpl;->removeDelimiterKeepNode(Lorg/commonmark/internal/Delimiter;)V

    goto :goto_5

    .line 812
    :cond_a
    return-void
.end method

.method private removeDelimiter(Lorg/commonmark/internal/Delimiter;)V
    .locals 2
    .param p1, "delim"    # Lorg/commonmark/internal/Delimiter;

    .line 840
    iget-object v0, p1, Lorg/commonmark/internal/Delimiter;->previous:Lorg/commonmark/internal/Delimiter;

    if-eqz v0, :cond_0

    .line 841
    iget-object v0, p1, Lorg/commonmark/internal/Delimiter;->previous:Lorg/commonmark/internal/Delimiter;

    iget-object v1, p1, Lorg/commonmark/internal/Delimiter;->next:Lorg/commonmark/internal/Delimiter;

    iput-object v1, v0, Lorg/commonmark/internal/Delimiter;->next:Lorg/commonmark/internal/Delimiter;

    .line 843
    :cond_0
    iget-object v0, p1, Lorg/commonmark/internal/Delimiter;->next:Lorg/commonmark/internal/Delimiter;

    if-nez v0, :cond_1

    .line 845
    iget-object v0, p1, Lorg/commonmark/internal/Delimiter;->previous:Lorg/commonmark/internal/Delimiter;

    iput-object v0, p0, Lorg/commonmark/internal/InlineParserImpl;->lastDelimiter:Lorg/commonmark/internal/Delimiter;

    goto :goto_0

    .line 847
    :cond_1
    iget-object v0, p1, Lorg/commonmark/internal/Delimiter;->next:Lorg/commonmark/internal/Delimiter;

    iget-object v1, p1, Lorg/commonmark/internal/Delimiter;->previous:Lorg/commonmark/internal/Delimiter;

    iput-object v1, v0, Lorg/commonmark/internal/Delimiter;->previous:Lorg/commonmark/internal/Delimiter;

    .line 849
    :goto_0
    return-void
.end method

.method private removeDelimiterAndNode(Lorg/commonmark/internal/Delimiter;)V
    .locals 1
    .param p1, "delim"    # Lorg/commonmark/internal/Delimiter;

    .line 827
    iget-object v0, p1, Lorg/commonmark/internal/Delimiter;->node:Lorg/commonmark/node/Text;

    .line 828
    .local v0, "node":Lorg/commonmark/node/Text;
    invoke-virtual {v0}, Lorg/commonmark/node/Text;->unlink()V

    .line 829
    invoke-direct {p0, p1}, Lorg/commonmark/internal/InlineParserImpl;->removeDelimiter(Lorg/commonmark/internal/Delimiter;)V

    .line 830
    return-void
.end method

.method private removeDelimiterKeepNode(Lorg/commonmark/internal/Delimiter;)V
    .locals 0
    .param p1, "delim"    # Lorg/commonmark/internal/Delimiter;

    .line 836
    invoke-direct {p0, p1}, Lorg/commonmark/internal/InlineParserImpl;->removeDelimiter(Lorg/commonmark/internal/Delimiter;)V

    .line 837
    return-void
.end method

.method private removeDelimitersBetween(Lorg/commonmark/internal/Delimiter;Lorg/commonmark/internal/Delimiter;)V
    .locals 2
    .param p1, "opener"    # Lorg/commonmark/internal/Delimiter;
    .param p2, "closer"    # Lorg/commonmark/internal/Delimiter;

    .line 815
    iget-object v0, p2, Lorg/commonmark/internal/Delimiter;->previous:Lorg/commonmark/internal/Delimiter;

    .line 816
    .local v0, "delimiter":Lorg/commonmark/internal/Delimiter;
    :goto_0
    if-eqz v0, :cond_0

    if-eq v0, p1, :cond_0

    .line 817
    iget-object v1, v0, Lorg/commonmark/internal/Delimiter;->previous:Lorg/commonmark/internal/Delimiter;

    .line 818
    .local v1, "previousDelimiter":Lorg/commonmark/internal/Delimiter;
    invoke-direct {p0, v0}, Lorg/commonmark/internal/InlineParserImpl;->removeDelimiterKeepNode(Lorg/commonmark/internal/Delimiter;)V

    .line 819
    move-object v0, v1

    .line 820
    .end local v1    # "previousDelimiter":Lorg/commonmark/internal/Delimiter;
    goto :goto_0

    .line 821
    :cond_0
    return-void
.end method

.method private removeLastBracket()V
    .locals 1

    .line 542
    iget-object v0, p0, Lorg/commonmark/internal/InlineParserImpl;->lastBracket:Lorg/commonmark/internal/Bracket;

    iget-object v0, v0, Lorg/commonmark/internal/Bracket;->previous:Lorg/commonmark/internal/Bracket;

    iput-object v0, p0, Lorg/commonmark/internal/InlineParserImpl;->lastBracket:Lorg/commonmark/internal/Bracket;

    .line 543
    return-void
.end method

.method private scanDelimiters(Lorg/commonmark/parser/delimiter/DelimiterProcessor;C)Lorg/commonmark/internal/InlineParserImpl$DelimiterData;
    .locals 16
    .param p1, "delimiterProcessor"    # Lorg/commonmark/parser/delimiter/DelimiterProcessor;
    .param p2, "delimiterChar"    # C

    .line 675
    move-object/from16 v0, p0

    move/from16 v1, p2

    iget v2, v0, Lorg/commonmark/internal/InlineParserImpl;->index:I

    .line 677
    .local v2, "startIndex":I
    const/4 v3, 0x0

    .line 678
    .local v3, "delimiterCount":I
    :goto_0
    invoke-direct/range {p0 .. p0}, Lorg/commonmark/internal/InlineParserImpl;->peek()C

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v1, :cond_0

    .line 679
    add-int/lit8 v3, v3, 0x1

    .line 680
    iget v4, v0, Lorg/commonmark/internal/InlineParserImpl;->index:I

    add-int/2addr v4, v5

    iput v4, v0, Lorg/commonmark/internal/InlineParserImpl;->index:I

    goto :goto_0

    .line 683
    :cond_0
    invoke-interface/range {p1 .. p1}, Lorg/commonmark/parser/delimiter/DelimiterProcessor;->getMinLength()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 684
    iput v2, v0, Lorg/commonmark/internal/InlineParserImpl;->index:I

    .line 685
    const/4 v4, 0x0

    return-object v4

    .line 688
    :cond_1
    const-string v4, "\n"

    if-nez v2, :cond_2

    move-object v6, v4

    goto :goto_1

    :cond_2
    iget-object v6, v0, Lorg/commonmark/internal/InlineParserImpl;->input:Ljava/lang/String;

    add-int/lit8 v7, v2, -0x1

    .line 689
    invoke-virtual {v6, v7, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    :goto_1
    nop

    .line 691
    .local v6, "before":Ljava/lang/String;
    invoke-direct/range {p0 .. p0}, Lorg/commonmark/internal/InlineParserImpl;->peek()C

    move-result v7

    .line 692
    .local v7, "charAfter":C
    if-nez v7, :cond_3

    goto :goto_2

    .line 693
    :cond_3
    invoke-static {v7}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    :goto_2
    nop

    .line 696
    .local v4, "after":Ljava/lang/String;
    sget-object v8, Lorg/commonmark/internal/InlineParserImpl;->PUNCTUATION:Ljava/util/regex/Pattern;

    invoke-virtual {v8, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/regex/Matcher;->matches()Z

    move-result v9

    .line 697
    .local v9, "beforeIsPunctuation":Z
    sget-object v10, Lorg/commonmark/internal/InlineParserImpl;->UNICODE_WHITESPACE_CHAR:Ljava/util/regex/Pattern;

    invoke-virtual {v10, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/regex/Matcher;->matches()Z

    move-result v11

    .line 698
    .local v11, "beforeIsWhitespace":Z
    invoke-virtual {v8, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/regex/Matcher;->matches()Z

    move-result v8

    .line 699
    .local v8, "afterIsPunctuation":Z
    invoke-virtual {v10, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/regex/Matcher;->matches()Z

    move-result v10

    .line 701
    .local v10, "afterIsWhitespace":Z
    const/4 v12, 0x0

    if-nez v10, :cond_5

    if-eqz v8, :cond_4

    if-nez v11, :cond_4

    if-eqz v9, :cond_5

    :cond_4
    move v13, v5

    goto :goto_3

    :cond_5
    move v13, v12

    .line 703
    .local v13, "leftFlanking":Z
    :goto_3
    if-nez v11, :cond_7

    if-eqz v9, :cond_6

    if-nez v10, :cond_6

    if-eqz v8, :cond_7

    :cond_6
    move v14, v5

    goto :goto_4

    :cond_7
    move v14, v12

    .line 707
    .local v14, "rightFlanking":Z
    :goto_4
    const/16 v15, 0x5f

    if-ne v1, v15, :cond_c

    .line 708
    if-eqz v13, :cond_9

    if-eqz v14, :cond_8

    if-eqz v9, :cond_9

    :cond_8
    move v15, v5

    goto :goto_5

    :cond_9
    move v15, v12

    .line 709
    .local v15, "canOpen":Z
    :goto_5
    if-eqz v14, :cond_b

    if-eqz v13, :cond_a

    if-eqz v8, :cond_b

    :cond_a
    goto :goto_6

    :cond_b
    move v5, v12

    .local v5, "canClose":Z
    :goto_6
    goto :goto_8

    .line 711
    .end local v5    # "canClose":Z
    .end local v15    # "canOpen":Z
    :cond_c
    if-eqz v13, :cond_d

    invoke-interface/range {p1 .. p1}, Lorg/commonmark/parser/delimiter/DelimiterProcessor;->getOpeningCharacter()C

    move-result v15

    if-ne v1, v15, :cond_d

    move v15, v5

    goto :goto_7

    :cond_d
    move v15, v12

    .line 712
    .restart local v15    # "canOpen":Z
    :goto_7
    if-eqz v14, :cond_e

    invoke-interface/range {p1 .. p1}, Lorg/commonmark/parser/delimiter/DelimiterProcessor;->getClosingCharacter()C

    move-result v5

    if-ne v1, v5, :cond_e

    const/4 v5, 0x1

    goto :goto_8

    :cond_e
    move v5, v12

    .line 715
    .restart local v5    # "canClose":Z
    :goto_8
    iput v2, v0, Lorg/commonmark/internal/InlineParserImpl;->index:I

    .line 716
    new-instance v12, Lorg/commonmark/internal/InlineParserImpl$DelimiterData;

    invoke-direct {v12, v3, v15, v5}, Lorg/commonmark/internal/InlineParserImpl$DelimiterData;-><init>(IZZ)V

    return-object v12
.end method

.method private spnl()V
    .locals 1

    .line 276
    sget-object v0, Lorg/commonmark/internal/InlineParserImpl;->SPNL:Ljava/util/regex/Pattern;

    invoke-direct {p0, v0}, Lorg/commonmark/internal/InlineParserImpl;->match(Ljava/util/regex/Pattern;)Ljava/lang/String;

    .line 277
    return-void
.end method

.method private text(Ljava/lang/String;)Lorg/commonmark/node/Text;
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .line 179
    new-instance v0, Lorg/commonmark/node/Text;

    invoke-direct {v0, p1}, Lorg/commonmark/node/Text;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private text(Ljava/lang/String;II)Lorg/commonmark/node/Text;
    .locals 2
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "beginIndex"    # I
    .param p3, "endIndex"    # I

    .line 175
    new-instance v0, Lorg/commonmark/node/Text;

    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/commonmark/node/Text;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public parse(Ljava/lang/String;Lorg/commonmark/node/Node;)V
    .locals 2
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "block"    # Lorg/commonmark/node/Node;

    .line 149
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/commonmark/internal/InlineParserImpl;->reset(Ljava/lang/String;)V

    .line 151
    const/4 v0, 0x0

    .line 153
    .local v0, "previous":Lorg/commonmark/node/Node;
    :goto_0
    invoke-direct {p0, v0}, Lorg/commonmark/internal/InlineParserImpl;->parseInline(Lorg/commonmark/node/Node;)Lorg/commonmark/node/Node;

    move-result-object v1

    .line 154
    .local v1, "node":Lorg/commonmark/node/Node;
    move-object v0, v1

    .line 155
    if-eqz v1, :cond_0

    .line 156
    invoke-virtual {p2, v1}, Lorg/commonmark/node/Node;->appendChild(Lorg/commonmark/node/Node;)V

    .line 160
    .end local v1    # "node":Lorg/commonmark/node/Node;
    goto :goto_0

    .line 162
    :cond_0
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lorg/commonmark/internal/InlineParserImpl;->processDelimiters(Lorg/commonmark/internal/Delimiter;)V

    .line 163
    invoke-direct {p0, p2}, Lorg/commonmark/internal/InlineParserImpl;->mergeChildTextNodes(Lorg/commonmark/node/Node;)V

    .line 164
    return-void
.end method

.method parseLinkLabel()I
    .locals 6

    .line 585
    iget v0, p0, Lorg/commonmark/internal/InlineParserImpl;->index:I

    iget-object v1, p0, Lorg/commonmark/internal/InlineParserImpl;->input:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    if-ge v0, v1, :cond_5

    iget-object v0, p0, Lorg/commonmark/internal/InlineParserImpl;->input:Ljava/lang/String;

    iget v1, p0, Lorg/commonmark/internal/InlineParserImpl;->index:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x5b

    if-eq v0, v1, :cond_0

    goto :goto_2

    .line 589
    :cond_0
    iget v0, p0, Lorg/commonmark/internal/InlineParserImpl;->index:I

    add-int/lit8 v0, v0, 0x1

    .line 590
    .local v0, "startContent":I
    iget-object v1, p0, Lorg/commonmark/internal/InlineParserImpl;->input:Ljava/lang/String;

    invoke-static {v1, v0}, Lorg/commonmark/internal/util/LinkScanner;->scanLinkLabelContent(Ljava/lang/CharSequence;I)I

    move-result v1

    .line 592
    .local v1, "endContent":I
    sub-int v3, v1, v0

    .line 593
    .local v3, "contentLength":I
    const/4 v4, -0x1

    if-eq v1, v4, :cond_4

    const/16 v4, 0x3e7

    if-le v3, v4, :cond_1

    goto :goto_1

    .line 596
    :cond_1
    iget-object v4, p0, Lorg/commonmark/internal/InlineParserImpl;->input:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v1, v4, :cond_3

    iget-object v4, p0, Lorg/commonmark/internal/InlineParserImpl;->input:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x5d

    if-eq v4, v5, :cond_2

    goto :goto_0

    .line 599
    :cond_2
    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/commonmark/internal/InlineParserImpl;->index:I

    .line 600
    add-int/lit8 v2, v3, 0x2

    return v2

    .line 597
    :cond_3
    :goto_0
    return v2

    .line 594
    :cond_4
    :goto_1
    return v2

    .line 586
    .end local v0    # "startContent":I
    .end local v1    # "endContent":I
    .end local v3    # "contentLength":I
    :cond_5
    :goto_2
    return v2
.end method

.method reset(Ljava/lang/String;)V
    .locals 1
    .param p1, "content"    # Ljava/lang/String;

    .line 167
    iput-object p1, p0, Lorg/commonmark/internal/InlineParserImpl;->input:Ljava/lang/String;

    .line 168
    const/4 v0, 0x0

    iput v0, p0, Lorg/commonmark/internal/InlineParserImpl;->index:I

    .line 169
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/commonmark/internal/InlineParserImpl;->lastDelimiter:Lorg/commonmark/internal/Delimiter;

    .line 170
    iput-object v0, p0, Lorg/commonmark/internal/InlineParserImpl;->lastBracket:Lorg/commonmark/internal/Bracket;

    .line 171
    return-void
.end method
