.class public abstract Lcom/termux/shared/markdown/MarkdownUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final backticksPattern:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 43
    const-string v0, "(`+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/termux/shared/markdown/MarkdownUtils;->backticksPattern:Ljava/util/regex/Pattern;

    return-void
.end method

.method public static getLinkMarkdownString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    if-eqz p1, :cond_0

    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    const-string v2, "\\\\]"

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]("

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\\)"

    const-string v1, "\\\\)"

    invoke-virtual {p1, p0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static getLiteralSingleLineMarkdownStringEntry(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "**"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "**: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    :cond_0
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "  "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getMarkdownCodeForString(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 55
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, ""

    return-object p0

    .line 57
    :cond_1
    invoke-static {p0}, Lcom/termux/shared/markdown/MarkdownUtils;->getMaxConsecutiveBackTicksCount(Ljava/lang/String;)I

    move-result v0

    if-eqz p1, :cond_2

    add-int/lit8 v0, v0, 0x3

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 68
    :goto_0
    const-string v1, "`"

    invoke-static {v1, v0}, Lcom/google/common/base/Strings;->repeat(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_3

    .line 71
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 74
    :cond_3
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    const-string v2, " "

    if-eqz p1, :cond_4

    .line 75
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 76
    :cond_4
    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 77
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 79
    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getMaxConsecutiveBackTicksCount(Ljava/lang/String;)I
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_4

    .line 90
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    .line 96
    :cond_0
    sget-object v1, Lcom/termux/shared/markdown/MarkdownUtils;->backticksPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    move v1, v0

    .line 97
    :cond_1
    :goto_0
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    .line 98
    invoke-virtual {p0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 99
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    goto :goto_1

    :cond_2
    move v2, v0

    :goto_1
    if-le v2, v1, :cond_1

    move v1, v2

    goto :goto_0

    :cond_3
    return v1

    :cond_4
    :goto_2
    return v0
.end method

.method public static getMultiLineMarkdownStringEntry(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 121
    const-string v0, "\n"

    const-string v1, "**"

    if-eqz p1, :cond_0

    .line 122
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "**:\n"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/termux/shared/markdown/MarkdownUtils;->getMarkdownCodeForString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 124
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "**: "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getRecyclerMarkwonBuilder(Landroid/content/Context;)Lio/noties/markwon/Markwon;
    .locals 2

    .line 141
    invoke-static {p0}, Lio/noties/markwon/Markwon;->builder(Landroid/content/Context;)Lio/noties/markwon/Markwon$Builder;

    move-result-object v0

    const/4 v1, 0x3

    .line 142
    invoke-static {v1}, Lio/noties/markwon/linkify/LinkifyPlugin;->create(I)Lio/noties/markwon/linkify/LinkifyPlugin;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/noties/markwon/Markwon$Builder;->usePlugin(Lio/noties/markwon/MarkwonPlugin;)Lio/noties/markwon/Markwon$Builder;

    move-result-object v0

    new-instance v1, Lcom/termux/shared/markdown/MarkdownUtils$1;

    invoke-direct {v1, p0}, Lcom/termux/shared/markdown/MarkdownUtils$1;-><init>(Landroid/content/Context;)V

    .line 143
    invoke-interface {v0, v1}, Lio/noties/markwon/Markwon$Builder;->usePlugin(Lio/noties/markwon/MarkwonPlugin;)Lio/noties/markwon/Markwon$Builder;

    move-result-object p0

    .line 170
    invoke-interface {p0}, Lio/noties/markwon/Markwon$Builder;->build()Lio/noties/markwon/Markwon;

    move-result-object p0

    return-object p0
.end method

.method public static getSingleLineMarkdownStringEntry(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 114
    const-string v0, "  "

    const-string v1, "**: "

    const-string v2, "**"

    if-eqz p1, :cond_0

    .line 115
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/termux/shared/markdown/MarkdownUtils;->getMarkdownCodeForString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 117
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getSpannedMarkdownText(Landroid/content/Context;Ljava/lang/String;)Landroid/text/Spanned;
    .locals 0

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 203
    :cond_0
    invoke-static {p0}, Lcom/termux/shared/markdown/MarkdownUtils;->getSpannedMarkwonBuilder(Landroid/content/Context;)Lio/noties/markwon/Markwon;

    move-result-object p0

    .line 204
    invoke-virtual {p0, p1}, Lio/noties/markwon/Markwon;->toMarkdown(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getSpannedMarkwonBuilder(Landroid/content/Context;)Lio/noties/markwon/Markwon;
    .locals 2

    .line 178
    invoke-static {p0}, Lio/noties/markwon/Markwon;->builder(Landroid/content/Context;)Lio/noties/markwon/Markwon$Builder;

    move-result-object v0

    .line 179
    invoke-static {}, Lio/noties/markwon/ext/strikethrough/StrikethroughPlugin;->create()Lio/noties/markwon/ext/strikethrough/StrikethroughPlugin;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/noties/markwon/Markwon$Builder;->usePlugin(Lio/noties/markwon/MarkwonPlugin;)Lio/noties/markwon/Markwon$Builder;

    move-result-object v0

    new-instance v1, Lcom/termux/shared/markdown/MarkdownUtils$2;

    invoke-direct {v1, p0}, Lcom/termux/shared/markdown/MarkdownUtils$2;-><init>(Landroid/content/Context;)V

    .line 180
    invoke-interface {v0, v1}, Lio/noties/markwon/Markwon$Builder;->usePlugin(Lio/noties/markwon/MarkwonPlugin;)Lio/noties/markwon/Markwon$Builder;

    move-result-object p0

    .line 198
    invoke-interface {p0}, Lio/noties/markwon/Markwon$Builder;->build()Lio/noties/markwon/Markwon;

    move-result-object p0

    return-object p0
.end method
