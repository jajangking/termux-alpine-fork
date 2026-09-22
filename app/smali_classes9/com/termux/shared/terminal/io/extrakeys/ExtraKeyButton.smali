.class public Lcom/termux/shared/terminal/io/extrakeys/ExtraKeyButton;
.super Ljava/lang/Object;
.source "ExtraKeyButton.java"


# static fields
.field public static final KEY_DISPLAY_NAME:Ljava/lang/String; = "display"

.field public static final KEY_KEY_NAME:Ljava/lang/String; = "key"

.field public static final KEY_MACRO:Ljava/lang/String; = "macro"

.field public static final KEY_POPUP:Ljava/lang/String; = "popup"


# instance fields
.field private final display:Ljava/lang/String;

.field private final key:Ljava/lang/String;

.field private final macro:Z

.field private final popup:Lcom/termux/shared/terminal/io/extrakeys/ExtraKeyButton;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;Lcom/termux/shared/terminal/io/extrakeys/ExtraKeyButton;Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysConstants$ExtraKeyDisplayMap;Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysConstants$ExtraKeyDisplayMap;)V
    .locals 7
    .param p1, "config"    # Lorg/json/JSONObject;
    .param p2, "popup"    # Lcom/termux/shared/terminal/io/extrakeys/ExtraKeyButton;
    .param p3, "extraKeyDisplayMap"    # Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysConstants$ExtraKeyDisplayMap;
    .param p4, "extraKeyAliasMap"    # Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysConstants$ExtraKeyDisplayMap;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "config",
            "popup",
            "extraKeyDisplayMap",
            "extraKeyAliasMap"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    const-string v0, "key"

    invoke-virtual {p0, p1, v0}, Lcom/termux/shared/terminal/io/extrakeys/ExtraKeyButton;->getStringFromJson(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 83
    .local v0, "keyFromConfig":Ljava/lang/String;
    const-string v1, "macro"

    invoke-virtual {p0, p1, v1}, Lcom/termux/shared/terminal/io/extrakeys/ExtraKeyButton;->getStringFromJson(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 85
    .local v1, "macroFromConfig":Ljava/lang/String;
    if-eqz v0, :cond_1

    if-nez v1, :cond_0

    goto :goto_0

    .line 86
    :cond_0
    new-instance v2, Lorg/json/JSONException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Both key and macro can\'t be set for the same key. key: \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\", macro: \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 87
    :cond_1
    :goto_0
    const-string v2, " "

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    .line 88
    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    .line 89
    .local v3, "keys":[Ljava/lang/String;
    iput-boolean v4, p0, Lcom/termux/shared/terminal/io/extrakeys/ExtraKeyButton;->macro:Z

    goto :goto_1

    .line 90
    .end local v3    # "keys":[Ljava/lang/String;
    :cond_2
    if-eqz v1, :cond_5

    .line 91
    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 92
    .local v4, "keys":[Ljava/lang/String;
    iput-boolean v3, p0, Lcom/termux/shared/terminal/io/extrakeys/ExtraKeyButton;->macro:Z

    move-object v3, v4

    .line 97
    .end local v4    # "keys":[Ljava/lang/String;
    .restart local v3    # "keys":[Ljava/lang/String;
    :goto_1
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    array-length v5, v3

    if-ge v4, v5, :cond_3

    .line 98
    aget-object v5, v3, v4

    invoke-static {p4, v5}, Lcom/termux/shared/terminal/io/extrakeys/ExtraKeyButton;->replaceAlias(Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysConstants$ExtraKeyDisplayMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 97
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 101
    .end local v4    # "i":I
    :cond_3
    invoke-static {v2, v3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/termux/shared/terminal/io/extrakeys/ExtraKeyButton;->key:Ljava/lang/String;

    .line 103
    const-string v4, "display"

    invoke-virtual {p0, p1, v4}, Lcom/termux/shared/terminal/io/extrakeys/ExtraKeyButton;->getStringFromJson(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 104
    .local v4, "displayFromConfig":Ljava/lang/String;
    if-eqz v4, :cond_4

    .line 105
    iput-object v4, p0, Lcom/termux/shared/terminal/io/extrakeys/ExtraKeyButton;->display:Ljava/lang/String;

    goto :goto_3

    .line 107
    :cond_4
    invoke-static {v3}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v5

    new-instance v6, Lcom/termux/shared/terminal/io/extrakeys/-$$Lambda$ExtraKeyButton$F1XU6IOGn77GnR8b0YnZ9AnCBvA;

    invoke-direct {v6, p3}, Lcom/termux/shared/terminal/io/extrakeys/-$$Lambda$ExtraKeyButton$F1XU6IOGn77GnR8b0YnZ9AnCBvA;-><init>(Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysConstants$ExtraKeyDisplayMap;)V

    .line 108
    invoke-interface {v5, v6}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v5

    .line 109
    invoke-static {v2}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v5, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lcom/termux/shared/terminal/io/extrakeys/ExtraKeyButton;->display:Ljava/lang/String;

    .line 112
    :goto_3
    iput-object p2, p0, Lcom/termux/shared/terminal/io/extrakeys/ExtraKeyButton;->popup:Lcom/termux/shared/terminal/io/extrakeys/ExtraKeyButton;

    .line 113
    return-void

    .line 94
    .end local v3    # "keys":[Ljava/lang/String;
    .end local v4    # "displayFromConfig":Ljava/lang/String;
    :cond_5
    new-instance v2, Lorg/json/JSONException;

    const-string v3, "All keys have to specify either key or macro"

    invoke-direct {v2, v3}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public constructor <init>(Lorg/json/JSONObject;Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysConstants$ExtraKeyDisplayMap;Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysConstants$ExtraKeyDisplayMap;)V
    .locals 1
    .param p1, "config"    # Lorg/json/JSONObject;
    .param p2, "extraKeyDisplayMap"    # Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysConstants$ExtraKeyDisplayMap;
    .param p3, "extraKeyAliasMap"    # Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysConstants$ExtraKeyDisplayMap;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "config",
            "extraKeyDisplayMap",
            "extraKeyAliasMap"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 65
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/termux/shared/terminal/io/extrakeys/ExtraKeyButton;-><init>(Lorg/json/JSONObject;Lcom/termux/shared/terminal/io/extrakeys/ExtraKeyButton;Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysConstants$ExtraKeyDisplayMap;Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysConstants$ExtraKeyDisplayMap;)V

    .line 66
    return-void
.end method

.method static synthetic lambda$new$0(Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysConstants$ExtraKeyDisplayMap;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "extraKeyDisplayMap"    # Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysConstants$ExtraKeyDisplayMap;
    .param p1, "key"    # Ljava/lang/String;

    .line 108
    invoke-virtual {p0, p1, p1}, Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysConstants$ExtraKeyDisplayMap;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static replaceAlias(Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysConstants$ExtraKeyDisplayMap;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "extraKeyAliasMap"    # Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysConstants$ExtraKeyDisplayMap;
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "extraKeyAliasMap",
            "key"
        }
    .end annotation

    .line 148
    invoke-virtual {p0, p1, p1}, Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysConstants$ExtraKeyDisplayMap;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public getDisplay()Ljava/lang/String;
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/termux/shared/terminal/io/extrakeys/ExtraKeyButton;->display:Ljava/lang/String;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/termux/shared/terminal/io/extrakeys/ExtraKeyButton;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getPopup()Lcom/termux/shared/terminal/io/extrakeys/ExtraKeyButton;
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/termux/shared/terminal/io/extrakeys/ExtraKeyButton;->popup:Lcom/termux/shared/terminal/io/extrakeys/ExtraKeyButton;

    return-object v0
.end method

.method public getStringFromJson(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "config"    # Lorg/json/JSONObject;
    .param p2, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "config",
            "key"
        }
    .end annotation

    .line 117
    :try_start_0
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 118
    :catch_0
    move-exception v0

    .line 119
    .local v0, "e":Lorg/json/JSONException;
    const/4 v1, 0x0

    return-object v1
.end method

.method public isMacro()Z
    .locals 1

    .line 130
    iget-boolean v0, p0, Lcom/termux/shared/terminal/io/extrakeys/ExtraKeyButton;->macro:Z

    return v0
.end method
