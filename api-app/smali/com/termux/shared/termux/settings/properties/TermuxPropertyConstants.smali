.class public abstract Lcom/termux/shared/termux/settings/properties/TermuxPropertyConstants;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final DEFAULT_IVALUE_NIGHT_MODE:Ljava/lang/String;

.field public static final IVALUE_NIGHT_MODE_FALSE:Ljava/lang/String;

.field public static final IVALUE_NIGHT_MODE_SYSTEM:Ljava/lang/String;

.field public static final IVALUE_NIGHT_MODE_TRUE:Ljava/lang/String;

.field public static final MAP_BACK_KEY_BEHAVIOUR:Lcom/google/common/collect/ImmutableBiMap;

.field public static final MAP_BELL_BEHAVIOUR:Lcom/google/common/collect/ImmutableBiMap;

.field public static final MAP_NIGHT_MODE:Lcom/google/common/collect/ImmutableBiMap;

.field public static final MAP_SESSION_SHORTCUTS:Lcom/google/common/collect/ImmutableBiMap;

.field public static final MAP_SOFT_KEYBOARD_TOGGLE_BEHAVIOUR:Lcom/google/common/collect/ImmutableBiMap;

.field public static final MAP_TERMINAL_CURSOR_STYLE:Lcom/google/common/collect/ImmutableBiMap;

.field public static final MAP_VOLUME_KEYS_BEHAVIOUR:Lcom/google/common/collect/ImmutableBiMap;

.field public static final TERMUX_APP_PROPERTIES_LIST:Ljava/util/Set;

.field public static final TERMUX_DEFAULT_FALSE_BOOLEAN_BEHAVIOUR_PROPERTIES_LIST:Ljava/util/Set;

.field public static final TERMUX_DEFAULT_INVERETED_FALSE_BOOLEAN_BEHAVIOUR_PROPERTIES_LIST:Ljava/util/Set;

.field public static final TERMUX_DEFAULT_INVERETED_TRUE_BOOLEAN_BEHAVIOUR_PROPERTIES_LIST:Ljava/util/Set;

.field public static final TERMUX_DEFAULT_TRUE_BOOLEAN_BEHAVIOUR_PROPERTIES_LIST:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .locals 37

    .line 184
    new-instance v0, Lcom/google/common/collect/ImmutableBiMap$Builder;

    invoke-direct {v0}, Lcom/google/common/collect/ImmutableBiMap$Builder;-><init>()V

    const/4 v1, 0x1

    .line 186
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "vibrate"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/collect/ImmutableBiMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableBiMap$Builder;

    move-result-object v0

    const/4 v2, 0x2

    .line 187
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "beep"

    invoke-virtual {v0, v3, v2}, Lcom/google/common/collect/ImmutableBiMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableBiMap$Builder;

    move-result-object v0

    const/4 v3, 0x3

    .line 188
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "ignore"

    invoke-virtual {v0, v4, v3}, Lcom/google/common/collect/ImmutableBiMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableBiMap$Builder;

    move-result-object v0

    .line 189
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableBiMap$Builder;->build()Lcom/google/common/collect/ImmutableBiMap;

    move-result-object v0

    sput-object v0, Lcom/termux/shared/termux/settings/properties/TermuxPropertyConstants;->MAP_BELL_BEHAVIOUR:Lcom/google/common/collect/ImmutableBiMap;

    .line 214
    new-instance v0, Lcom/google/common/collect/ImmutableBiMap$Builder;

    invoke-direct {v0}, Lcom/google/common/collect/ImmutableBiMap$Builder;-><init>()V

    const/4 v4, 0x0

    .line 216
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "block"

    invoke-virtual {v0, v6, v5}, Lcom/google/common/collect/ImmutableBiMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableBiMap$Builder;

    move-result-object v0

    .line 217
    const-string v5, "underline"

    invoke-virtual {v0, v5, v1}, Lcom/google/common/collect/ImmutableBiMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableBiMap$Builder;

    move-result-object v0

    .line 218
    const-string v5, "bar"

    invoke-virtual {v0, v5, v2}, Lcom/google/common/collect/ImmutableBiMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableBiMap$Builder;

    move-result-object v0

    .line 219
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableBiMap$Builder;->build()Lcom/google/common/collect/ImmutableBiMap;

    move-result-object v0

    sput-object v0, Lcom/termux/shared/termux/settings/properties/TermuxPropertyConstants;->MAP_TERMINAL_CURSOR_STYLE:Lcom/google/common/collect/ImmutableBiMap;

    .line 289
    new-instance v0, Lcom/google/common/collect/ImmutableBiMap$Builder;

    invoke-direct {v0}, Lcom/google/common/collect/ImmutableBiMap$Builder;-><init>()V

    .line 291
    const-string v5, "shortcut.create-session"

    invoke-virtual {v0, v5, v1}, Lcom/google/common/collect/ImmutableBiMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableBiMap$Builder;

    move-result-object v0

    .line 292
    const-string v1, "shortcut.next-session"

    invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableBiMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableBiMap$Builder;

    move-result-object v0

    .line 293
    const-string v1, "shortcut.previous-session"

    invoke-virtual {v0, v1, v3}, Lcom/google/common/collect/ImmutableBiMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableBiMap$Builder;

    move-result-object v0

    const/4 v1, 0x4

    .line 294
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "shortcut.rename-session"

    invoke-virtual {v0, v2, v1}, Lcom/google/common/collect/ImmutableBiMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableBiMap$Builder;

    move-result-object v0

    .line 295
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableBiMap$Builder;->build()Lcom/google/common/collect/ImmutableBiMap;

    move-result-object v0

    sput-object v0, Lcom/termux/shared/termux/settings/properties/TermuxPropertyConstants;->MAP_SESSION_SHORTCUTS:Lcom/google/common/collect/ImmutableBiMap;

    .line 311
    new-instance v0, Lcom/google/common/collect/ImmutableBiMap$Builder;

    invoke-direct {v0}, Lcom/google/common/collect/ImmutableBiMap$Builder;-><init>()V

    const-string v1, "back"

    .line 313
    invoke-virtual {v0, v1, v1}, Lcom/google/common/collect/ImmutableBiMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableBiMap$Builder;

    move-result-object v0

    const-string v1, "escape"

    .line 314
    invoke-virtual {v0, v1, v1}, Lcom/google/common/collect/ImmutableBiMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableBiMap$Builder;

    move-result-object v0

    .line 315
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableBiMap$Builder;->build()Lcom/google/common/collect/ImmutableBiMap;

    move-result-object v0

    sput-object v0, Lcom/termux/shared/termux/settings/properties/TermuxPropertyConstants;->MAP_BACK_KEY_BEHAVIOUR:Lcom/google/common/collect/ImmutableBiMap;

    .line 340
    sget-object v0, Lcom/termux/shared/theme/NightMode;->TRUE:Lcom/termux/shared/theme/NightMode;

    invoke-virtual {v0}, Lcom/termux/shared/theme/NightMode;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/termux/shared/termux/settings/properties/TermuxPropertyConstants;->IVALUE_NIGHT_MODE_TRUE:Ljava/lang/String;

    .line 341
    sget-object v1, Lcom/termux/shared/theme/NightMode;->FALSE:Lcom/termux/shared/theme/NightMode;

    invoke-virtual {v1}, Lcom/termux/shared/theme/NightMode;->getName()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/termux/shared/termux/settings/properties/TermuxPropertyConstants;->IVALUE_NIGHT_MODE_FALSE:Ljava/lang/String;

    .line 342
    sget-object v2, Lcom/termux/shared/theme/NightMode;->SYSTEM:Lcom/termux/shared/theme/NightMode;

    invoke-virtual {v2}, Lcom/termux/shared/theme/NightMode;->getName()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/termux/shared/termux/settings/properties/TermuxPropertyConstants;->IVALUE_NIGHT_MODE_SYSTEM:Ljava/lang/String;

    .line 343
    sput-object v2, Lcom/termux/shared/termux/settings/properties/TermuxPropertyConstants;->DEFAULT_IVALUE_NIGHT_MODE:Ljava/lang/String;

    .line 346
    new-instance v3, Lcom/google/common/collect/ImmutableBiMap$Builder;

    invoke-direct {v3}, Lcom/google/common/collect/ImmutableBiMap$Builder;-><init>()V

    .line 348
    invoke-virtual {v3, v0, v0}, Lcom/google/common/collect/ImmutableBiMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableBiMap$Builder;

    move-result-object v0

    .line 349
    invoke-virtual {v0, v1, v1}, Lcom/google/common/collect/ImmutableBiMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableBiMap$Builder;

    move-result-object v0

    .line 350
    invoke-virtual {v0, v2, v2}, Lcom/google/common/collect/ImmutableBiMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableBiMap$Builder;

    move-result-object v0

    .line 351
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableBiMap$Builder;->build()Lcom/google/common/collect/ImmutableBiMap;

    move-result-object v0

    sput-object v0, Lcom/termux/shared/termux/settings/properties/TermuxPropertyConstants;->MAP_NIGHT_MODE:Lcom/google/common/collect/ImmutableBiMap;

    .line 363
    new-instance v0, Lcom/google/common/collect/ImmutableBiMap$Builder;

    invoke-direct {v0}, Lcom/google/common/collect/ImmutableBiMap$Builder;-><init>()V

    const-string v1, "show/hide"

    .line 365
    invoke-virtual {v0, v1, v1}, Lcom/google/common/collect/ImmutableBiMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableBiMap$Builder;

    move-result-object v0

    const-string v1, "enable/disable"

    .line 366
    invoke-virtual {v0, v1, v1}, Lcom/google/common/collect/ImmutableBiMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableBiMap$Builder;

    move-result-object v0

    .line 367
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableBiMap$Builder;->build()Lcom/google/common/collect/ImmutableBiMap;

    move-result-object v0

    sput-object v0, Lcom/termux/shared/termux/settings/properties/TermuxPropertyConstants;->MAP_SOFT_KEYBOARD_TOGGLE_BEHAVIOUR:Lcom/google/common/collect/ImmutableBiMap;

    .line 379
    new-instance v0, Lcom/google/common/collect/ImmutableBiMap$Builder;

    invoke-direct {v0}, Lcom/google/common/collect/ImmutableBiMap$Builder;-><init>()V

    const-string v1, "virtual"

    .line 381
    invoke-virtual {v0, v1, v1}, Lcom/google/common/collect/ImmutableBiMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableBiMap$Builder;

    move-result-object v0

    const-string v1, "volume"

    .line 382
    invoke-virtual {v0, v1, v1}, Lcom/google/common/collect/ImmutableBiMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableBiMap$Builder;

    move-result-object v0

    .line 383
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableBiMap$Builder;->build()Lcom/google/common/collect/ImmutableBiMap;

    move-result-object v0

    sput-object v0, Lcom/termux/shared/termux/settings/properties/TermuxPropertyConstants;->MAP_VOLUME_KEYS_BEHAVIOUR:Lcom/google/common/collect/ImmutableBiMap;

    .line 392
    new-instance v0, Ljava/util/HashSet;

    const-string v35, "soft-keyboard-toggle-behaviour"

    const-string v36, "volume-keys"

    const-string v5, "disable-file-share-receiver"

    const-string v6, "disable-file-view-receiver"

    const-string v7, "disable-hardware-keyboard-shortcuts"

    const-string v8, "disable-terminal-session-change-toast"

    const-string v9, "enforce-char-based-input"

    const-string v10, "extra-keys-text-all-caps"

    const-string v11, "hide-soft-keyboard-on-startup"

    const-string v12, "run-termux-am-socket-server"

    const-string v13, "terminal-onclick-url-open"

    const-string v14, "ctrl-space-workaround"

    const-string v15, "fullscreen"

    const-string v16, "use-fullscreen-workaround"

    const-string v17, "allow-external-apps"

    const-string v18, "bell-character"

    const-string v19, "delete-tmpdir-files-older-than-x-days-on-exit"

    const-string v20, "terminal-cursor-blink-rate"

    const-string v21, "terminal-cursor-style"

    const-string v22, "terminal-margin-horizontal"

    const-string v23, "terminal-margin-vertical"

    const-string v24, "terminal-transcript-rows"

    const-string v25, "terminal-toolbar-height"

    const-string v26, "shortcut.create-session"

    const-string v27, "shortcut.next-session"

    const-string v28, "shortcut.previous-session"

    const-string v29, "shortcut.rename-session"

    const-string v30, "back-key"

    const-string v31, "default-working-directory"

    const-string v32, "extra-keys"

    const-string v33, "extra-keys-style"

    const-string v34, "night-mode"

    filled-new-array/range {v5 .. v36}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/termux/shared/termux/settings/properties/TermuxPropertyConstants;->TERMUX_APP_PROPERTIES_LIST:Ljava/util/Set;

    .line 441
    new-instance v0, Ljava/util/HashSet;

    const-string v14, "use-fullscreen-workaround"

    const-string v15, "allow-external-apps"

    const-string v5, "disable-file-share-receiver"

    const-string v6, "disable-file-view-receiver"

    const-string v7, "disable-hardware-keyboard-shortcuts"

    const-string v8, "disable-terminal-session-change-toast"

    const-string v9, "enforce-char-based-input"

    const-string v10, "hide-soft-keyboard-on-startup"

    const-string v11, "terminal-onclick-url-open"

    const-string v12, "ctrl-space-workaround"

    const-string v13, "fullscreen"

    filled-new-array/range {v5 .. v15}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/termux/shared/termux/settings/properties/TermuxPropertyConstants;->TERMUX_DEFAULT_FALSE_BOOLEAN_BEHAVIOUR_PROPERTIES_LIST:Ljava/util/Set;

    .line 460
    new-instance v0, Ljava/util/HashSet;

    const-string v1, "extra-keys-text-all-caps"

    const-string v2, "run-termux-am-socket-server"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/termux/shared/termux/settings/properties/TermuxPropertyConstants;->TERMUX_DEFAULT_TRUE_BOOLEAN_BEHAVIOUR_PROPERTIES_LIST:Ljava/util/Set;

    .line 470
    new-instance v0, Ljava/util/HashSet;

    new-array v1, v4, [Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/termux/shared/termux/settings/properties/TermuxPropertyConstants;->TERMUX_DEFAULT_INVERETED_FALSE_BOOLEAN_BEHAVIOUR_PROPERTIES_LIST:Ljava/util/Set;

    .line 478
    new-instance v0, Ljava/util/HashSet;

    new-array v1, v4, [Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/termux/shared/termux/settings/properties/TermuxPropertyConstants;->TERMUX_DEFAULT_INVERETED_TRUE_BOOLEAN_BEHAVIOUR_PROPERTIES_LIST:Ljava/util/Set;

    return-void
.end method
