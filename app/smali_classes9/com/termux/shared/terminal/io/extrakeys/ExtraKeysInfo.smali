.class public Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysInfo;
.super Ljava/lang/Object;
.source "ExtraKeysInfo.java"


# instance fields
.field private final mButtons:[[Lcom/termux/shared/terminal/io/extrakeys/ExtraKeyButton;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysConstants$ExtraKeyDisplayMap;Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysConstants$ExtraKeyDisplayMap;)V
    .locals 1
    .param p1, "propertiesInfo"    # Ljava/lang/String;
    .param p2, "extraKeyDisplayMap"    # Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysConstants$ExtraKeyDisplayMap;
    .param p3, "extraKeyAliasMap"    # Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysConstants$ExtraKeyDisplayMap;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "propertiesInfo",
            "extraKeyDisplayMap",
            "extraKeyAliasMap"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    invoke-direct {p0, p1, p2, p3}, Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysInfo;->initExtraKeysInfo(Ljava/lang/String;Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysConstants$ExtraKeyDisplayMap;Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysConstants$ExtraKeyDisplayMap;)[[Lcom/termux/shared/terminal/io/extrakeys/ExtraKeyButton;

    move-result-object v0

    iput-object v0, p0, Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysInfo;->mButtons:[[Lcom/termux/shared/terminal/io/extrakeys/ExtraKeyButton;

    .line 130
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysConstants$ExtraKeyDisplayMap;)V
    .locals 1
    .param p1, "propertiesInfo"    # Ljava/lang/String;
    .param p2, "style"    # Ljava/lang/String;
    .param p3, "extraKeyAliasMap"    # Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysConstants$ExtraKeyDisplayMap;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "propertiesInfo",
            "style",
            "extraKeyAliasMap"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    invoke-static {p2}, Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysInfo;->getCharDisplayMapForStyle(Ljava/lang/String;)Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysConstants$ExtraKeyDisplayMap;

    move-result-object v0

    invoke-direct {p0, p1, v0, p3}, Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysInfo;->initExtraKeysInfo(Ljava/lang/String;Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysConstants$ExtraKeyDisplayMap;Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysConstants$ExtraKeyDisplayMap;)[[Lcom/termux/shared/terminal/io/extrakeys/ExtraKeyButton;

    move-result-object v0

    iput-object v0, p0, Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysInfo;->mButtons:[[Lcom/termux/shared/terminal/io/extrakeys/ExtraKeyButton;

    .line 110
    return-void
.end method

.method public static getCharDisplayMapForStyle(Ljava/lang/String;)Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysConstants$ExtraKeyDisplayMap;
    .locals 1
    .param p0, "style"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "style"
        }
    .end annotation

    .line 197
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string v0, "none"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_1
    const-string v0, "all"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_2
    const-string v0, "arrows-only"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_3
    const-string v0, "arrows-all"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 207
    sget-object v0, Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysConstants$EXTRA_KEY_DISPLAY_MAPS;->DEFAULT_CHAR_DISPLAY:Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysConstants$ExtraKeyDisplayMap;

    return-object v0

    .line 205
    :pswitch_0
    new-instance v0, Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysConstants$ExtraKeyDisplayMap;

    invoke-direct {v0}, Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysConstants$ExtraKeyDisplayMap;-><init>()V

    return-object v0

    .line 203
    :pswitch_1
    sget-object v0, Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysConstants$EXTRA_KEY_DISPLAY_MAPS;->FULL_ISO_CHAR_DISPLAY:Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysConstants$ExtraKeyDisplayMap;

    return-object v0

    .line 201
    :pswitch_2
    sget-object v0, Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysConstants$EXTRA_KEY_DISPLAY_MAPS;->LOTS_OF_ARROWS_CHAR_DISPLAY:Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysConstants$ExtraKeyDisplayMap;

    return-object v0

    .line 199
    :pswitch_3
    sget-object v0, Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysConstants$EXTRA_KEY_DISPLAY_MAPS;->ARROWS_ONLY_CHAR_DISPLAY:Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysConstants$ExtraKeyDisplayMap;

    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x661dd922 -> :sswitch_3
        -0x5d96e5f1 -> :sswitch_2
        0x179a1 -> :sswitch_1
        0x33af38 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private initExtraKeysInfo(Ljava/lang/String;Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysConstants$ExtraKeyDisplayMap;Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysConstants$ExtraKeyDisplayMap;)[[Lcom/termux/shared/terminal/io/extrakeys/ExtraKeyButton;
    .locals 10
    .param p1, "propertiesInfo"    # Ljava/lang/String;
    .param p2, "extraKeyDisplayMap"    # Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysConstants$ExtraKeyDisplayMap;
    .param p3, "extraKeyAliasMap"    # Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysConstants$ExtraKeyDisplayMap;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "propertiesInfo",
            "extraKeyDisplayMap",
            "extraKeyAliasMap"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 136
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 137
    .local v0, "arr":Lorg/json/JSONArray;
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    new-array v1, v1, [[Ljava/lang/Object;

    .line 138
    .local v1, "matrix":[[Ljava/lang/Object;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 139
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v3

    .line 140
    .local v3, "line":Lorg/json/JSONArray;
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v4, v1, v2

    .line 141
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_0

    .line 142
    aget-object v5, v1, v2

    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v5, v4

    .line 141
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 138
    .end local v3    # "line":Lorg/json/JSONArray;
    .end local v4    # "j":I
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 147
    .end local v2    # "i":I
    :cond_1
    array-length v2, v1

    new-array v2, v2, [[Lcom/termux/shared/terminal/io/extrakeys/ExtraKeyButton;

    .line 148
    .local v2, "buttons":[[Lcom/termux/shared/terminal/io/extrakeys/ExtraKeyButton;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    array-length v4, v1

    if-ge v3, v4, :cond_4

    .line 149
    aget-object v4, v1, v3

    array-length v4, v4

    new-array v4, v4, [Lcom/termux/shared/terminal/io/extrakeys/ExtraKeyButton;

    aput-object v4, v2, v3

    .line 150
    const/4 v4, 0x0

    .restart local v4    # "j":I
    :goto_3
    aget-object v5, v1, v3

    array-length v5, v5

    if-ge v4, v5, :cond_3

    .line 151
    aget-object v5, v1, v3

    aget-object v5, v5, v4

    .line 153
    .local v5, "key":Ljava/lang/Object;
    invoke-static {v5}, Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysInfo;->normalizeKeyConfig(Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v6

    .line 157
    .local v6, "jobject":Lorg/json/JSONObject;
    const-string v7, "popup"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 159
    new-instance v7, Lcom/termux/shared/terminal/io/extrakeys/ExtraKeyButton;

    invoke-direct {v7, v6, p2, p3}, Lcom/termux/shared/terminal/io/extrakeys/ExtraKeyButton;-><init>(Lorg/json/JSONObject;Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysConstants$ExtraKeyDisplayMap;Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysConstants$ExtraKeyDisplayMap;)V

    .local v7, "button":Lcom/termux/shared/terminal/io/extrakeys/ExtraKeyButton;
    goto :goto_4

    .line 162
    .end local v7    # "button":Lcom/termux/shared/terminal/io/extrakeys/ExtraKeyButton;
    :cond_2
    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysInfo;->normalizeKeyConfig(Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v7

    .line 163
    .local v7, "popupJobject":Lorg/json/JSONObject;
    new-instance v8, Lcom/termux/shared/terminal/io/extrakeys/ExtraKeyButton;

    invoke-direct {v8, v7, p2, p3}, Lcom/termux/shared/terminal/io/extrakeys/ExtraKeyButton;-><init>(Lorg/json/JSONObject;Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysConstants$ExtraKeyDisplayMap;Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysConstants$ExtraKeyDisplayMap;)V

    .line 164
    .local v8, "popup":Lcom/termux/shared/terminal/io/extrakeys/ExtraKeyButton;
    new-instance v9, Lcom/termux/shared/terminal/io/extrakeys/ExtraKeyButton;

    invoke-direct {v9, v6, v8, p2, p3}, Lcom/termux/shared/terminal/io/extrakeys/ExtraKeyButton;-><init>(Lorg/json/JSONObject;Lcom/termux/shared/terminal/io/extrakeys/ExtraKeyButton;Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysConstants$ExtraKeyDisplayMap;Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysConstants$ExtraKeyDisplayMap;)V

    move-object v7, v9

    .line 167
    .end local v8    # "popup":Lcom/termux/shared/terminal/io/extrakeys/ExtraKeyButton;
    .local v7, "button":Lcom/termux/shared/terminal/io/extrakeys/ExtraKeyButton;
    :goto_4
    aget-object v8, v2, v3

    aput-object v7, v8, v4

    .line 150
    .end local v5    # "key":Ljava/lang/Object;
    .end local v6    # "jobject":Lorg/json/JSONObject;
    .end local v7    # "button":Lcom/termux/shared/terminal/io/extrakeys/ExtraKeyButton;
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 148
    .end local v4    # "j":I
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 171
    .end local v3    # "i":I
    :cond_4
    return-object v2
.end method

.method private static normalizeKeyConfig(Ljava/lang/Object;)Lorg/json/JSONObject;
    .locals 2
    .param p0, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 180
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 181
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 182
    .local v0, "jobject":Lorg/json/JSONObject;
    const-string v1, "key"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 183
    .end local v0    # "jobject":Lorg/json/JSONObject;
    :cond_0
    instance-of v0, p0, Lorg/json/JSONObject;

    if-eqz v0, :cond_1

    .line 184
    move-object v0, p0

    check-cast v0, Lorg/json/JSONObject;

    .line 188
    .restart local v0    # "jobject":Lorg/json/JSONObject;
    :goto_0
    return-object v0

    .line 186
    .end local v0    # "jobject":Lorg/json/JSONObject;
    :cond_1
    new-instance v0, Lorg/json/JSONException;

    const-string v1, "An key in the extra-key matrix must be a string or an object"

    invoke-direct {v0, v1}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public getMatrix()[[Lcom/termux/shared/terminal/io/extrakeys/ExtraKeyButton;
    .locals 1

    .line 192
    iget-object v0, p0, Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysInfo;->mButtons:[[Lcom/termux/shared/terminal/io/extrakeys/ExtraKeyButton;

    return-object v0
.end method
