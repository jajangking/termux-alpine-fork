.class public Lcom/termux/app/settings/properties/TermuxAppSharedProperties;
.super Lcom/termux/shared/settings/properties/TermuxSharedProperties;
.source "TermuxAppSharedProperties.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "TermuxAppSharedProperties"


# instance fields
.field private mExtraKeysInfo:Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysInfo;

.field private mSessionShortcuts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/termux/app/terminal/io/KeyboardShortcut;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 30
    invoke-static {}, Lcom/termux/shared/settings/properties/TermuxPropertyConstants;->getTermuxPropertiesFile()Ljava/io/File;

    move-result-object v3

    sget-object v4, Lcom/termux/shared/settings/properties/TermuxPropertyConstants;->TERMUX_PROPERTIES_LIST:Ljava/util/Set;

    new-instance v5, Lcom/termux/shared/settings/properties/TermuxSharedProperties$SharedPropertiesParserClient;

    invoke-direct {v5}, Lcom/termux/shared/settings/properties/TermuxSharedProperties$SharedPropertiesParserClient;-><init>()V

    const-string v2, "Termux"

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/termux/shared/settings/properties/TermuxSharedProperties;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;Ljava/util/Set;Lcom/termux/shared/settings/properties/SharedPropertiesParser;)V

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/termux/app/settings/properties/TermuxAppSharedProperties;->mSessionShortcuts:Ljava/util/List;

    .line 32
    return-void
.end method

.method public static getTerminalTranscriptRows(Landroid/content/Context;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 115
    invoke-static {}, Lcom/termux/shared/settings/properties/TermuxPropertyConstants;->getTermuxPropertiesFile()Ljava/io/File;

    move-result-object v0

    new-instance v1, Lcom/termux/shared/settings/properties/TermuxSharedProperties$SharedPropertiesParserClient;

    invoke-direct {v1}, Lcom/termux/shared/settings/properties/TermuxSharedProperties$SharedPropertiesParserClient;-><init>()V

    const-string v2, "terminal-transcript-rows"

    invoke-static {p0, v0, v2, v1}, Lcom/termux/shared/settings/properties/TermuxSharedProperties;->getInternalPropertyValue(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Lcom/termux/shared/settings/properties/SharedPropertiesParser;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method private setExtraKeys()V
    .locals 10

    .line 49
    const-string v0, "extra-keys-style"

    const-string v1, "default"

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/termux/app/settings/properties/TermuxAppSharedProperties;->mExtraKeysInfo:Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysInfo;

    .line 55
    const/4 v3, 0x1

    :try_start_0
    const-string v4, "extra-keys"

    invoke-virtual {p0, v4, v3}, Lcom/termux/app/settings/properties/TermuxAppSharedProperties;->getInternalPropertyValue(Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 56
    .local v4, "extrakeys":Ljava/lang/String;
    invoke-virtual {p0, v0, v3}, Lcom/termux/app/settings/properties/TermuxAppSharedProperties;->getInternalPropertyValue(Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 58
    .local v5, "extraKeysStyle":Ljava/lang/String;
    invoke-static {v5}, Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysInfo;->getCharDisplayMapForStyle(Ljava/lang/String;)Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysConstants$ExtraKeyDisplayMap;

    move-result-object v6

    .line 59
    .local v6, "extraKeyDisplayMap":Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysConstants$ExtraKeyDisplayMap;
    sget-object v7, Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysConstants$EXTRA_KEY_DISPLAY_MAPS;->DEFAULT_CHAR_DISPLAY:Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysConstants$ExtraKeyDisplayMap;

    invoke-virtual {v7, v6}, Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysConstants$ExtraKeyDisplayMap;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 60
    const-string v7, "TermuxSharedProperties"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "The style \""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\" for the key \""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, "\" is invalid. Using default style instead."

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Lcom/termux/shared/logger/Logger;->logError(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    move-object v5, v1

    .line 64
    :cond_0
    new-instance v0, Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysInfo;

    sget-object v7, Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysConstants;->CONTROL_CHARS_ALIASES:Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysConstants$ExtraKeyDisplayMap;

    invoke-direct {v0, v4, v5, v7}, Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysConstants$ExtraKeyDisplayMap;)V

    iput-object v0, p0, Lcom/termux/app/settings/properties/TermuxAppSharedProperties;->mExtraKeysInfo:Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysInfo;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    .end local v4    # "extrakeys":Ljava/lang/String;
    .end local v5    # "extraKeysStyle":Ljava/lang/String;
    .end local v6    # "extraKeyDisplayMap":Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysConstants$ExtraKeyDisplayMap;
    goto :goto_0

    .line 65
    :catch_0
    move-exception v0

    .line 66
    .local v0, "e":Lorg/json/JSONException;
    iget-object v4, p0, Lcom/termux/app/settings/properties/TermuxAppSharedProperties;->mContext:Landroid/content/Context;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Could not load and set the \"extra-keys\" property from the properties file: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v3}, Lcom/termux/shared/logger/Logger;->showToast(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 67
    const-string v4, "TermuxAppSharedProperties"

    invoke-static {v4, v6, v0}, Lcom/termux/shared/logger/Logger;->logStackTraceWithMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 70
    :try_start_1
    new-instance v5, Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysInfo;

    const-string v6, "[[\'ESC\',\'/\',{key: \'-\', popup: \'|\'},\'HOME\',\'UP\',\'END\',\'PGUP\'], [\'TAB\',\'CTRL\',\'ALT\',\'LEFT\',\'DOWN\',\'RIGHT\',\'PGDN\']]"

    sget-object v7, Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysConstants;->CONTROL_CHARS_ALIASES:Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysConstants$ExtraKeyDisplayMap;

    invoke-direct {v5, v6, v1, v7}, Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysConstants$ExtraKeyDisplayMap;)V

    iput-object v5, p0, Lcom/termux/app/settings/properties/TermuxAppSharedProperties;->mExtraKeysInfo:Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysInfo;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 75
    goto :goto_0

    .line 71
    :catch_1
    move-exception v1

    .line 72
    .local v1, "e2":Lorg/json/JSONException;
    iget-object v5, p0, Lcom/termux/app/settings/properties/TermuxAppSharedProperties;->mContext:Landroid/content/Context;

    const-string v6, "Can\'t create default extra keys"

    invoke-static {v5, v6, v3}, Lcom/termux/shared/logger/Logger;->showToast(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 73
    const-string v3, "Could create default extra keys: "

    invoke-static {v4, v3, v0}, Lcom/termux/shared/logger/Logger;->logStackTraceWithMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 74
    iput-object v2, p0, Lcom/termux/app/settings/properties/TermuxAppSharedProperties;->mExtraKeysInfo:Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysInfo;

    .line 77
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v1    # "e2":Lorg/json/JSONException;
    :goto_0
    return-void
.end method

.method private setSessionShortcuts()V
    .locals 7

    .line 83
    iget-object v0, p0, Lcom/termux/app/settings/properties/TermuxAppSharedProperties;->mSessionShortcuts:Ljava/util/List;

    if-nez v0, :cond_0

    .line 84
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/termux/app/settings/properties/TermuxAppSharedProperties;->mSessionShortcuts:Ljava/util/List;

    goto :goto_0

    .line 86
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 89
    :goto_0
    sget-object v0, Lcom/termux/shared/settings/properties/TermuxPropertyConstants;->MAP_SESSION_SHORTCUTS:Lcom/google/common/collect/ImmutableBiMap;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableBiMap;->entrySet()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSet;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 91
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Lcom/termux/app/settings/properties/TermuxAppSharedProperties;->getInternalPropertyValue(Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 96
    .local v2, "codePoint":Ljava/lang/Integer;
    if-eqz v2, :cond_1

    .line 97
    iget-object v3, p0, Lcom/termux/app/settings/properties/TermuxAppSharedProperties;->mSessionShortcuts:Ljava/util/List;

    new-instance v4, Lcom/termux/app/terminal/io/KeyboardShortcut;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-direct {v4, v5, v6}, Lcom/termux/app/terminal/io/KeyboardShortcut;-><init>(II)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 98
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v2    # "codePoint":Ljava/lang/Integer;
    :cond_1
    goto :goto_1

    .line 99
    :cond_2
    return-void
.end method


# virtual methods
.method public getExtraKeysInfo()Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysInfo;
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/termux/app/settings/properties/TermuxAppSharedProperties;->mExtraKeysInfo:Lcom/termux/shared/terminal/io/extrakeys/ExtraKeysInfo;

    return-object v0
.end method

.method public getSessionShortcuts()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/termux/app/terminal/io/KeyboardShortcut;",
            ">;"
        }
    .end annotation

    .line 102
    iget-object v0, p0, Lcom/termux/app/settings/properties/TermuxAppSharedProperties;->mSessionShortcuts:Ljava/util/List;

    return-object v0
.end method

.method public loadTermuxPropertiesFromDisk()V
    .locals 0

    .line 39
    invoke-super {p0}, Lcom/termux/shared/settings/properties/TermuxSharedProperties;->loadTermuxPropertiesFromDisk()V

    .line 41
    invoke-direct {p0}, Lcom/termux/app/settings/properties/TermuxAppSharedProperties;->setExtraKeys()V

    .line 42
    invoke-direct {p0}, Lcom/termux/app/settings/properties/TermuxAppSharedProperties;->setSessionShortcuts()V

    .line 43
    return-void
.end method
