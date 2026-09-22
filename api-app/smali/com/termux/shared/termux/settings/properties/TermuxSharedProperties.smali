.class public abstract Lcom/termux/shared/termux/settings/properties/TermuxSharedProperties;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/termux/shared/termux/settings/properties/TermuxSharedProperties$SharedPropertiesParserClient;
    }
.end annotation


# direct methods
.method public static getBackKeyBehaviourInternalPropertyValueFromValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 498
    sget-object v1, Lcom/termux/shared/termux/settings/properties/TermuxPropertyConstants;->MAP_BACK_KEY_BEHAVIOUR:Lcom/google/common/collect/ImmutableBiMap;

    invoke-static {p0}, Lcom/termux/shared/settings/properties/SharedProperties;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    const-string v5, "TermuxSharedProperties"

    const-string v0, "back-key"

    const-string v3, "back"

    invoke-static/range {v0 .. v5}, Lcom/termux/shared/settings/properties/SharedProperties;->getDefaultIfNotInMap(Ljava/lang/String;Lcom/google/common/collect/BiMap;Ljava/lang/Object;Ljava/lang/Object;ZLjava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static getBellBehaviourInternalPropertyValueFromValue(Ljava/lang/String;)I
    .locals 6

    .line 336
    sget-object v1, Lcom/termux/shared/termux/settings/properties/TermuxPropertyConstants;->MAP_BELL_BEHAVIOUR:Lcom/google/common/collect/ImmutableBiMap;

    invoke-static {p0}, Lcom/termux/shared/settings/properties/SharedProperties;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 p0, 0x1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    const-string v5, "TermuxSharedProperties"

    const-string v0, "bell-character"

    invoke-static/range {v0 .. v5}, Lcom/termux/shared/settings/properties/SharedProperties;->getDefaultIfNotInMap(Ljava/lang/String;Lcom/google/common/collect/BiMap;Ljava/lang/Object;Ljava/lang/Object;ZLjava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public static getCodePointForSessionShortcuts(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Integer;
    .locals 9

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    if-nez p1, :cond_1

    return-object v0

    .line 470
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const-string v1, "\\+"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 471
    array-length v1, p1

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_2

    aget-object v1, p1, v2

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    move-object v1, v0

    .line 472
    :goto_0
    array-length v4, p1

    const-string v5, "\' is not Ctrl+<something>"

    const-string v6, "Keyboard shortcut \'"

    const-string v7, "TermuxSharedProperties"

    if-ne v4, v3, :cond_7

    const/4 v4, 0x0

    aget-object p1, p1, v4

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const-string v8, "ctrl"

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_7

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result p1

    if-le p1, v3, :cond_3

    goto :goto_3

    .line 477
    :cond_3
    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result p1

    .line 479
    invoke-static {p1}, Ljava/lang/Character;->isLowSurrogate(C)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 480
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v4, v3, :cond_5

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_1

    .line 484
    :cond_4
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result p0

    invoke-static {p0, p1}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result p1

    goto :goto_2

    .line 481
    :cond_5
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v7, p0}, Lcom/termux/shared/logger/Logger;->logError(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 488
    :cond_6
    :goto_2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 473
    :cond_7
    :goto_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v7, p0}, Lcom/termux/shared/logger/Logger;->logError(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getDefaultWorkingDirectoryInternalPropertyValueFromValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 509
    const-string v0, "/data/data/com.termux/files/home"

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 510
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 511
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    return-object p0

    .line 514
    :cond_2
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The path \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\" for the key \""

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "default-working-directory"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\" does not exist, is not a directory or is not readable. Using default value \""

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\" instead."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "TermuxSharedProperties"

    invoke-static {v1, p0}, Lcom/termux/shared/logger/Logger;->logError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_1
    return-object v0
.end method

.method public static getDeleteTMPDIRFilesOlderThanXDaysOnExitInternalPropertyValueFromValue(Ljava/lang/String;)I
    .locals 9

    const/4 v0, 0x3

    .line 350
    invoke-static {p0, v0}, Lcom/termux/shared/data/DataUtils;->getIntFromString(Ljava/lang/String;I)I

    move-result v2

    const/4 v7, 0x1

    const-string v8, "TermuxSharedProperties"

    .line 349
    const-string v1, "delete-tmpdir-files-older-than-x-days-on-exit"

    const/4 v3, 0x3

    const/4 v4, -0x1

    const v5, 0x186a0

    const/4 v6, 0x1

    invoke-static/range {v1 .. v8}, Lcom/termux/shared/settings/properties/SharedProperties;->getDefaultIfNotInRange(Ljava/lang/String;IIIIZZLjava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static getExtraKeysInternalPropertyValueFromValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 528
    const-string v0, "[[\'ESC\',\'/\',{key: \'-\', popup: \'|\'},\'HOME\',\'UP\',\'END\',\'PGUP\'], [\'TAB\',\'CTRL\',\'ALT\',\'LEFT\',\'DOWN\',\'RIGHT\',\'PGDN\']]"

    invoke-static {p0, v0}, Lcom/termux/shared/settings/properties/SharedProperties;->getDefaultIfNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getExtraKeysStyleInternalPropertyValueFromValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 538
    const-string v0, "default"

    invoke-static {p0, v0}, Lcom/termux/shared/settings/properties/SharedProperties;->getDefaultIfNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getInternalTermuxPropertyValueFromValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 3

    const/4 p0, 0x1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 v1, -0x1

    .line 260
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v2, "back-key"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v1, 0x12

    goto/16 :goto_0

    :sswitch_1
    const-string v2, "terminal-cursor-blink-rate"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v1, 0x11

    goto/16 :goto_0

    :sswitch_2
    const-string v2, "soft-keyboard-toggle-behaviour"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v1, 0x10

    goto/16 :goto_0

    :sswitch_3
    const-string v2, "default-working-directory"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 v1, 0xf

    goto/16 :goto_0

    :sswitch_4
    const-string v2, "extra-keys"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    goto/16 :goto_0

    :cond_5
    const/16 v1, 0xe

    goto/16 :goto_0

    :sswitch_5
    const-string v2, "terminal-transcript-rows"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    goto/16 :goto_0

    :cond_6
    const/16 v1, 0xd

    goto/16 :goto_0

    :sswitch_6
    const-string v2, "terminal-toolbar-height"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    goto/16 :goto_0

    :cond_7
    const/16 v1, 0xc

    goto/16 :goto_0

    :sswitch_7
    const-string v2, "shortcut.previous-session"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    goto/16 :goto_0

    :cond_8
    const/16 v1, 0xb

    goto/16 :goto_0

    :sswitch_8
    const-string v2, "terminal-margin-vertical"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    goto/16 :goto_0

    :cond_9
    const/16 v1, 0xa

    goto/16 :goto_0

    :sswitch_9
    const-string v2, "shortcut.next-session"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    goto/16 :goto_0

    :cond_a
    const/16 v1, 0x9

    goto/16 :goto_0

    :sswitch_a
    const-string v2, "terminal-cursor-style"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    goto/16 :goto_0

    :cond_b
    const/16 v1, 0x8

    goto/16 :goto_0

    :sswitch_b
    const-string v2, "shortcut.create-session"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    goto :goto_0

    :cond_c
    const/4 v1, 0x7

    goto :goto_0

    :sswitch_c
    const-string v2, "bell-character"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    goto :goto_0

    :cond_d
    const/4 v1, 0x6

    goto :goto_0

    :sswitch_d
    const-string v2, "night-mode"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    goto :goto_0

    :cond_e
    const/4 v1, 0x5

    goto :goto_0

    :sswitch_e
    const-string v2, "terminal-margin-horizontal"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    goto :goto_0

    :cond_f
    const/4 v1, 0x4

    goto :goto_0

    :sswitch_f
    const-string v2, "volume-keys"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10

    goto :goto_0

    :cond_10
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_10
    const-string v2, "shortcut.rename-session"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_11

    goto :goto_0

    :cond_11
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_11
    const-string v2, "delete-tmpdir-files-older-than-x-days-on-exit"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12

    goto :goto_0

    :cond_12
    move v1, p0

    goto :goto_0

    :sswitch_12
    const-string v2, "extra-keys-style"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_13

    goto :goto_0

    :cond_13
    move v1, v0

    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 306
    sget-object v1, Lcom/termux/shared/termux/settings/properties/TermuxPropertyConstants;->TERMUX_DEFAULT_FALSE_BOOLEAN_BEHAVIOUR_PROPERTIES_LIST:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "TermuxSharedProperties"

    if-eqz v1, :cond_14

    .line 307
    invoke-static {p1, p2, v0, p0, v2}, Lcom/termux/shared/settings/properties/SharedProperties;->getBooleanValueForStringValue(Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 309
    :cond_14
    sget-object v0, Lcom/termux/shared/termux/settings/properties/TermuxPropertyConstants;->TERMUX_DEFAULT_TRUE_BOOLEAN_BEHAVIOUR_PROPERTIES_LIST:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 310
    invoke-static {p1, p2, p0, p0, v2}, Lcom/termux/shared/settings/properties/SharedProperties;->getBooleanValueForStringValue(Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_15
    return-object p2

    .line 290
    :pswitch_0
    invoke-static {p2}, Lcom/termux/shared/termux/settings/properties/TermuxSharedProperties;->getBackKeyBehaviourInternalPropertyValueFromValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 267
    :pswitch_1
    invoke-static {p2}, Lcom/termux/shared/termux/settings/properties/TermuxSharedProperties;->getTerminalCursorBlinkRateInternalPropertyValueFromValue(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 300
    :pswitch_2
    invoke-static {p2}, Lcom/termux/shared/termux/settings/properties/TermuxSharedProperties;->getSoftKeyboardToggleBehaviourInternalPropertyValueFromValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 292
    :pswitch_3
    invoke-static {p2}, Lcom/termux/shared/termux/settings/properties/TermuxSharedProperties;->getDefaultWorkingDirectoryInternalPropertyValueFromValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 294
    :pswitch_4
    invoke-static {p2}, Lcom/termux/shared/termux/settings/properties/TermuxSharedProperties;->getExtraKeysInternalPropertyValueFromValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 275
    :pswitch_5
    invoke-static {p2}, Lcom/termux/shared/termux/settings/properties/TermuxSharedProperties;->getTerminalTranscriptRowsInternalPropertyValueFromValue(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 279
    :pswitch_6
    invoke-static {p2}, Lcom/termux/shared/termux/settings/properties/TermuxSharedProperties;->getTerminalToolbarHeightScaleFactorInternalPropertyValueFromValue(Ljava/lang/String;)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    .line 273
    :pswitch_7
    invoke-static {p2}, Lcom/termux/shared/termux/settings/properties/TermuxSharedProperties;->getTerminalMarginVerticalInternalPropertyValueFromValue(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 269
    :pswitch_8
    invoke-static {p2}, Lcom/termux/shared/termux/settings/properties/TermuxSharedProperties;->getTerminalCursorStyleInternalPropertyValueFromValue(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 263
    :pswitch_9
    invoke-static {p2}, Lcom/termux/shared/termux/settings/properties/TermuxSharedProperties;->getBellBehaviourInternalPropertyValueFromValue(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 298
    :pswitch_a
    invoke-static {p2}, Lcom/termux/shared/termux/settings/properties/TermuxSharedProperties;->getNightModeInternalPropertyValueFromValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 271
    :pswitch_b
    invoke-static {p2}, Lcom/termux/shared/termux/settings/properties/TermuxSharedProperties;->getTerminalMarginHorizontalInternalPropertyValueFromValue(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 302
    :pswitch_c
    invoke-static {p2}, Lcom/termux/shared/termux/settings/properties/TermuxSharedProperties;->getVolumeKeysBehaviourInternalPropertyValueFromValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 286
    :pswitch_d
    invoke-static {p1, p2}, Lcom/termux/shared/termux/settings/properties/TermuxSharedProperties;->getCodePointForSessionShortcuts(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 265
    :pswitch_e
    invoke-static {p2}, Lcom/termux/shared/termux/settings/properties/TermuxSharedProperties;->getDeleteTMPDIRFilesOlderThanXDaysOnExitInternalPropertyValueFromValue(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    .line 296
    :pswitch_f
    invoke-static {p2}, Lcom/termux/shared/termux/settings/properties/TermuxSharedProperties;->getExtraKeysStyleInternalPropertyValueFromValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x735c398b -> :sswitch_12
        -0x6406e7ad -> :sswitch_11
        -0x579d1a51 -> :sswitch_10
        -0x36e83739 -> :sswitch_f
        -0x30b71b6e -> :sswitch_e
        -0x269f39c8 -> :sswitch_d
        -0x11d57521 -> :sswitch_c
        -0xe314e93 -> :sswitch_b
        -0x49b97d5 -> :sswitch_a
        -0x31bc19c -> :sswitch_9
        0xe870364 -> :sswitch_8
        0x1e6d9668 -> :sswitch_7
        0x261ef32a -> :sswitch_6
        0x299d283f -> :sswitch_5
        0x29cec591 -> :sswitch_4
        0x4b2f8a45 -> :sswitch_3
        0x54466ac7 -> :sswitch_2
        0x621f2a77 -> :sswitch_1
        0x7e594c79 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_d
        :pswitch_8
        :pswitch_d
        :pswitch_7
        :pswitch_d
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getNightMode(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 675
    const-string v0, "night-mode"

    invoke-static {p0, v0}, Lcom/termux/shared/termux/settings/properties/TermuxSharedProperties;->getTermuxInternalPropertyValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static getNightModeInternalPropertyValueFromValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 548
    sget-object v1, Lcom/termux/shared/termux/settings/properties/TermuxPropertyConstants;->MAP_NIGHT_MODE:Lcom/google/common/collect/ImmutableBiMap;

    .line 549
    invoke-static {p0}, Lcom/termux/shared/settings/properties/SharedProperties;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/termux/shared/termux/settings/properties/TermuxPropertyConstants;->DEFAULT_IVALUE_NIGHT_MODE:Ljava/lang/String;

    const/4 v4, 0x1

    const-string v5, "TermuxSharedProperties"

    .line 548
    const-string v0, "night-mode"

    invoke-static/range {v0 .. v5}, Lcom/termux/shared/settings/properties/SharedProperties;->getDefaultIfNotInMap(Ljava/lang/String;Lcom/google/common/collect/BiMap;Ljava/lang/Object;Ljava/lang/Object;ZLjava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static getSoftKeyboardToggleBehaviourInternalPropertyValueFromValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 560
    sget-object v1, Lcom/termux/shared/termux/settings/properties/TermuxPropertyConstants;->MAP_SOFT_KEYBOARD_TOGGLE_BEHAVIOUR:Lcom/google/common/collect/ImmutableBiMap;

    invoke-static {p0}, Lcom/termux/shared/settings/properties/SharedProperties;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    const-string v5, "TermuxSharedProperties"

    const-string v0, "soft-keyboard-toggle-behaviour"

    const-string v3, "show/hide"

    invoke-static/range {v0 .. v5}, Lcom/termux/shared/settings/properties/SharedProperties;->getDefaultIfNotInMap(Ljava/lang/String;Lcom/google/common/collect/BiMap;Ljava/lang/Object;Ljava/lang/Object;ZLjava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static getTerminalCursorBlinkRateInternalPropertyValueFromValue(Ljava/lang/String;)I
    .locals 9

    const/4 v0, 0x0

    .line 368
    invoke-static {p0, v0}, Lcom/termux/shared/data/DataUtils;->getIntFromString(Ljava/lang/String;I)I

    move-result v2

    const/4 v7, 0x1

    const-string v8, "TermuxSharedProperties"

    .line 367
    const-string v1, "terminal-cursor-blink-rate"

    const/4 v3, 0x0

    const/16 v4, 0x64

    const/16 v5, 0x7d0

    const/4 v6, 0x1

    invoke-static/range {v1 .. v8}, Lcom/termux/shared/settings/properties/SharedProperties;->getDefaultIfNotInRange(Ljava/lang/String;IIIIZZLjava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static getTerminalCursorStyleInternalPropertyValueFromValue(Ljava/lang/String;)I
    .locals 6

    .line 384
    sget-object v1, Lcom/termux/shared/termux/settings/properties/TermuxPropertyConstants;->MAP_TERMINAL_CURSOR_STYLE:Lcom/google/common/collect/ImmutableBiMap;

    invoke-static {p0}, Lcom/termux/shared/settings/properties/SharedProperties;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 p0, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    const-string v5, "TermuxSharedProperties"

    const-string v0, "terminal-cursor-style"

    invoke-static/range {v0 .. v5}, Lcom/termux/shared/settings/properties/SharedProperties;->getDefaultIfNotInMap(Ljava/lang/String;Lcom/google/common/collect/BiMap;Ljava/lang/Object;Ljava/lang/Object;ZLjava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public static getTerminalMarginHorizontalInternalPropertyValueFromValue(Ljava/lang/String;)I
    .locals 9

    const/4 v0, 0x3

    .line 398
    invoke-static {p0, v0}, Lcom/termux/shared/data/DataUtils;->getIntFromString(Ljava/lang/String;I)I

    move-result v2

    const/4 v7, 0x1

    const-string v8, "TermuxSharedProperties"

    .line 397
    const-string v1, "terminal-margin-horizontal"

    const/4 v3, 0x3

    const/4 v4, 0x0

    const/16 v5, 0x64

    const/4 v6, 0x1

    invoke-static/range {v1 .. v8}, Lcom/termux/shared/settings/properties/SharedProperties;->getDefaultIfNotInRange(Ljava/lang/String;IIIIZZLjava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static getTerminalMarginVerticalInternalPropertyValueFromValue(Ljava/lang/String;)I
    .locals 9

    const/4 v0, 0x0

    .line 416
    invoke-static {p0, v0}, Lcom/termux/shared/data/DataUtils;->getIntFromString(Ljava/lang/String;I)I

    move-result v2

    const/4 v7, 0x1

    const-string v8, "TermuxSharedProperties"

    .line 415
    const-string v1, "terminal-margin-vertical"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0x64

    const/4 v6, 0x1

    invoke-static/range {v1 .. v8}, Lcom/termux/shared/settings/properties/SharedProperties;->getDefaultIfNotInRange(Ljava/lang/String;IIIIZZLjava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static getTerminalToolbarHeightScaleFactorInternalPropertyValueFromValue(Ljava/lang/String;)F
    .locals 9

    const/high16 v0, 0x3f800000    # 1.0f

    .line 452
    invoke-static {p0, v0}, Lcom/termux/shared/data/DataUtils;->getFloatFromString(Ljava/lang/String;F)F

    move-result v2

    const/4 v7, 0x1

    const-string v8, "TermuxSharedProperties"

    .line 451
    const-string v1, "terminal-toolbar-height"

    const/high16 v3, 0x3f800000    # 1.0f

    const v4, 0x3ecccccd    # 0.4f

    const/high16 v5, 0x40400000    # 3.0f

    const/4 v6, 0x1

    invoke-static/range {v1 .. v8}, Lcom/termux/shared/settings/properties/SharedProperties;->getDefaultIfNotInRange(Ljava/lang/String;FFFFZZLjava/lang/String;)F

    move-result p0

    return p0
.end method

.method public static getTerminalTranscriptRowsInternalPropertyValueFromValue(Ljava/lang/String;)I
    .locals 9

    const/16 v0, 0x7d0

    .line 434
    invoke-static {p0, v0}, Lcom/termux/shared/data/DataUtils;->getIntFromString(Ljava/lang/String;I)I

    move-result v2

    const/4 v7, 0x1

    const-string v8, "TermuxSharedProperties"

    .line 433
    const-string v1, "terminal-transcript-rows"

    const/16 v3, 0x7d0

    const/16 v4, 0x64

    const v5, 0xc350

    const/4 v6, 0x1

    invoke-static/range {v1 .. v8}, Lcom/termux/shared/settings/properties/SharedProperties;->getDefaultIfNotInRange(Ljava/lang/String;IIIIZZLjava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static getTermuxInternalPropertyValue(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    .line 192
    sget-object v0, Lcom/termux/shared/termux/TermuxConstants;->TERMUX_PROPERTIES_FILE_PATHS_LIST:Ljava/util/List;

    const-string v1, "TermuxSharedProperties"

    .line 193
    invoke-static {v0, v1}, Lcom/termux/shared/settings/properties/SharedProperties;->getPropertiesFileFromList(Ljava/util/List;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    new-instance v1, Lcom/termux/shared/termux/settings/properties/TermuxSharedProperties$SharedPropertiesParserClient;

    invoke-direct {v1}, Lcom/termux/shared/termux/settings/properties/TermuxSharedProperties$SharedPropertiesParserClient;-><init>()V

    .line 192
    invoke-static {p0, v0, p1, v1}, Lcom/termux/shared/settings/properties/SharedProperties;->getInternalProperty(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;Lcom/termux/shared/settings/properties/SharedPropertiesParser;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static getVolumeKeysBehaviourInternalPropertyValueFromValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 570
    sget-object v1, Lcom/termux/shared/termux/settings/properties/TermuxPropertyConstants;->MAP_VOLUME_KEYS_BEHAVIOUR:Lcom/google/common/collect/ImmutableBiMap;

    invoke-static {p0}, Lcom/termux/shared/settings/properties/SharedProperties;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    const-string v5, "TermuxSharedProperties"

    const-string v0, "volume-keys"

    const-string v3, "virtual"

    invoke-static/range {v0 .. v5}, Lcom/termux/shared/settings/properties/SharedProperties;->getDefaultIfNotInMap(Ljava/lang/String;Lcom/google/common/collect/BiMap;Ljava/lang/Object;Ljava/lang/Object;ZLjava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static replaceUseBlackUIProperty(Ljava/util/Properties;)Ljava/util/Properties;
    .locals 6

    .line 220
    const-string v0, "use-black-ui"

    invoke-virtual {p0, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    return-object p0

    .line 223
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Removing deprecated property use-black-ui="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "TermuxSharedProperties"

    invoke-static {v3, v2}, Lcom/termux/shared/logger/Logger;->logWarn(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    invoke-virtual {p0, v0}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    const-string v0, "night-mode"

    invoke-virtual {p0, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    .line 228
    invoke-static {v1}, Lcom/termux/shared/settings/properties/SharedProperties;->getBooleanValueForStringValue(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 230
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lcom/termux/shared/termux/settings/properties/TermuxPropertyConstants;->IVALUE_NIGHT_MODE_TRUE:Ljava/lang/String;

    goto :goto_0

    .line 231
    :cond_1
    sget-object v2, Lcom/termux/shared/termux/settings/properties/TermuxPropertyConstants;->IVALUE_NIGHT_MODE_FALSE:Ljava/lang/String;

    .line 232
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Replacing deprecated property use-black-ui="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " with "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "="

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/termux/shared/logger/Logger;->logWarn(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    invoke-virtual {p0, v0, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object p0
.end method
