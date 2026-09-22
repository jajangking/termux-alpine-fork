.class public abstract Lorg/apache/commons/io/FilenameUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final EXTENSION_SEPARATOR_STR:Ljava/lang/String;

.field private static final OTHER_SEPARATOR:C

.field private static final SYSTEM_SEPARATOR:C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x2e

    .line 97
    invoke-static {v0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/io/FilenameUtils;->EXTENSION_SEPARATOR_STR:Ljava/lang/String;

    .line 112
    sget-char v0, Ljava/io/File;->separatorChar:C

    sput-char v0, Lorg/apache/commons/io/FilenameUtils;->SYSTEM_SEPARATOR:C

    .line 119
    invoke-static {}, Lorg/apache/commons/io/FilenameUtils;->isSystemWindows()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x2f

    .line 120
    sput-char v0, Lorg/apache/commons/io/FilenameUtils;->OTHER_SEPARATOR:C

    goto :goto_0

    :cond_0
    const/16 v0, 0x5c

    .line 122
    sput-char v0, Lorg/apache/commons/io/FilenameUtils;->OTHER_SEPARATOR:C

    :goto_0
    return-void
.end method

.method static isSystemWindows()Z
    .locals 2

    .line 140
    sget-char v0, Lorg/apache/commons/io/FilenameUtils;->SYSTEM_SEPARATOR:C

    const/16 v1, 0x5c

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
