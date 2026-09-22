.class public Lcom/termux/shared/file/tests/FileUtilsTests;
.super Ljava/lang/Object;
.source "FileUtilsTests.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "FileUtilsTests"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static assertEqual(Ljava/lang/String;Ljava/lang/String;Lcom/termux/shared/models/errors/Error;)V
    .locals 3
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "expected"    # Ljava/lang/String;
    .param p2, "actual"    # Lcom/termux/shared/models/errors/Error;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "message",
            "expected",
            "actual"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 284
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/termux/shared/models/errors/Error;->getMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 285
    .local v0, "actualString":Ljava/lang/String;
    :goto_0
    invoke-static {p1, v0}, Lcom/termux/shared/file/tests/FileUtilsTests;->equalsRegardingNull(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 286
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\nexpected: \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\"\nactual: \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\"\nFull Error:\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/termux/shared/models/errors/Error;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_1
    const-string v2, ""

    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/termux/shared/file/tests/FileUtilsTests;->throwException(Ljava/lang/String;)V

    .line 287
    :cond_2
    return-void
.end method

.method public static assertEqual(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "expected"    # Ljava/lang/String;
    .param p2, "actual"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "message",
            "expected",
            "actual"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 290
    invoke-static {p1, p2}, Lcom/termux/shared/file/tests/FileUtilsTests;->equalsRegardingNull(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 291
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nexpected: \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\"\nactual: \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/termux/shared/file/tests/FileUtilsTests;->throwException(Ljava/lang/String;)V

    .line 292
    :cond_0
    return-void
.end method

.method private static equalsRegardingNull(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "expected"    # Ljava/lang/String;
    .param p1, "actual"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "expected",
            "actual"
        }
    .end annotation

    .line 295
    if-nez p0, :cond_1

    .line 296
    if-nez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 299
    :cond_1
    invoke-static {p0, p1}, Lcom/termux/shared/file/tests/FileUtilsTests;->isEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static isEquals(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "expected"    # Ljava/lang/String;
    .param p1, "actual"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "expected",
            "actual"
        }
    .end annotation

    .line 303
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static runTests(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "testRootDirectoryPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "context",
            "testRootDirectoryPath"
        }
    .end annotation

    .line 32
    const-string v0, "FileUtilsTests"

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "Running tests"

    invoke-static {v0, v2}, Lcom/termux/shared/logger/Logger;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "testRootDirectoryPath: \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/termux/shared/logger/Logger;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    invoke-static {p1, v1}, Lcom/termux/shared/file/FileUtils;->getCanonicalPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 36
    .local v2, "fileUtilsTestsDirectoryCanonicalPath":Ljava/lang/String;
    const-string v3, "FileUtilsTests directory path is not a canonical path"

    invoke-static {v3, p1, v2}, Lcom/termux/shared/file/tests/FileUtilsTests;->assertEqual(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    invoke-static {p1}, Lcom/termux/shared/file/tests/FileUtilsTests;->runTestsInner(Ljava/lang/String;)V

    .line 39
    const-string v3, "All tests successful"

    invoke-static {v0, v3}, Lcom/termux/shared/logger/Logger;->logInfo(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    .end local v2    # "fileUtilsTestsDirectoryCanonicalPath":Ljava/lang/String;
    goto :goto_0

    .line 40
    :catch_0
    move-exception v2

    .line 41
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/termux/shared/logger/Logger;->logErrorExtended(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "(?s)\nFull Error:\n.*"

    const-string v3, ""

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_0
    const/4 v0, 0x1

    invoke-static {p0, v1, v0}, Lcom/termux/shared/logger/Logger;->showToast(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 44
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private static runTestsInner(Ljava/lang/String;)V
    .locals 36
    .param p0, "testRootDirectoryPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "testRootDirectoryPath"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 65
    move-object/from16 v0, p0

    const-string v1, "dir1"

    .line 66
    .local v1, "dir1_label":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/dir1"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 68
    .local v2, "dir1_path":Ljava/lang/String;
    const-string v3, "dir1/sub_dir1"

    .line 69
    .local v3, "dir1__sub_dir1_label":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/sub_dir1"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 71
    .local v4, "dir1__sub_dir1_path":Ljava/lang/String;
    const-string v5, "dir1/sub_reg1"

    .line 72
    .local v5, "dir1__sub_reg1_label":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/sub_reg1"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 74
    .local v6, "dir1__sub_reg1_path":Ljava/lang/String;
    const-string v8, "dir1/sub_sym1"

    .line 75
    .local v8, "dir1__sub_sym1_label":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/sub_sym1"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 77
    .local v9, "dir1__sub_sym1_path":Ljava/lang/String;
    const-string v10, "dir1/sub_sym2"

    .line 78
    .local v10, "dir1__sub_sym2_label":Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "/sub_sym2"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 80
    .local v11, "dir1__sub_sym2_path":Ljava/lang/String;
    const-string v12, "dir1/sub_sym3"

    .line 81
    .local v12, "dir1__sub_sym3_label":Ljava/lang/String;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "/sub_sym3"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 84
    .local v13, "dir1__sub_sym3_path":Ljava/lang/String;
    const-string v14, "dir2"

    .line 85
    .local v14, "dir2_label":Ljava/lang/String;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v16, v13

    .end local v13    # "dir1__sub_sym3_path":Ljava/lang/String;
    .local v16, "dir1__sub_sym3_path":Ljava/lang/String;
    const-string v13, "/dir2"

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 87
    .local v13, "dir2_path":Ljava/lang/String;
    const-string v15, "dir2/sub_reg1"

    .line 88
    .local v15, "dir2__sub_reg1_label":Ljava/lang/String;
    move-object/from16 v17, v12

    .end local v12    # "dir1__sub_sym3_label":Ljava/lang/String;
    .local v17, "dir1__sub_sym3_label":Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 90
    .local v7, "dir2__sub_reg1_path":Ljava/lang/String;
    const-string v12, "dir2/sub_reg2"

    .line 91
    .local v12, "dir2__sub_reg2_label":Ljava/lang/String;
    move-object/from16 v18, v12

    .end local v12    # "dir2__sub_reg2_label":Ljava/lang/String;
    .local v18, "dir2__sub_reg2_label":Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v19, v7

    .end local v7    # "dir2__sub_reg1_path":Ljava/lang/String;
    .local v19, "dir2__sub_reg1_path":Ljava/lang/String;
    const-string v7, "/sub_reg2"

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 94
    .local v7, "dir2__sub_reg2_path":Ljava/lang/String;
    const-string v12, "dir3"

    .line 95
    .local v12, "dir3_label":Ljava/lang/String;
    move-object/from16 v20, v12

    .end local v12    # "dir3_label":Ljava/lang/String;
    .local v20, "dir3_label":Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v21, v7

    .end local v7    # "dir2__sub_reg2_path":Ljava/lang/String;
    .local v21, "dir2__sub_reg2_path":Ljava/lang/String;
    const-string v7, "/dir3"

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 97
    .local v7, "dir3_path":Ljava/lang/String;
    const-string v12, "dir4"

    .line 98
    .local v12, "dir4_label":Ljava/lang/String;
    move-object/from16 v22, v12

    .end local v12    # "dir4_label":Ljava/lang/String;
    .local v22, "dir4_label":Ljava/lang/String;
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v23, v7

    .end local v7    # "dir3_path":Ljava/lang/String;
    .local v23, "dir3_path":Ljava/lang/String;
    const-string v7, "/dir4"

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 105
    .local v7, "dir4_path":Ljava/lang/String;
    const-string v12, "testRootDirectoryPath"

    .line 106
    .local v12, "label":Ljava/lang/String;
    move-object/from16 v24, v7

    .end local v7    # "dir4_path":Ljava/lang/String;
    .local v24, "dir4_path":Ljava/lang/String;
    invoke-static {v12, v0}, Lcom/termux/shared/file/FileUtils;->clearDirectory(Ljava/lang/String;Ljava/lang/String;)Lcom/termux/shared/models/errors/Error;

    move-result-object v7

    .line 107
    .local v7, "error":Lcom/termux/shared/models/errors/Error;
    move-object/from16 v25, v15

    .end local v15    # "dir2__sub_reg1_label":Ljava/lang/String;
    .local v25, "dir2__sub_reg1_label":Ljava/lang/String;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v26, v11

    .end local v11    # "dir1__sub_sym2_path":Ljava/lang/String;
    .local v26, "dir1__sub_sym2_path":Ljava/lang/String;
    const-string v11, "Failed to create "

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v27, v10

    .end local v10    # "dir1__sub_sym2_label":Ljava/lang/String;
    .local v27, "dir1__sub_sym2_label":Ljava/lang/String;
    const-string v10, " directory file"

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v28, v9

    .end local v9    # "dir1__sub_sym1_path":Ljava/lang/String;
    .local v28, "dir1__sub_sym1_path":Ljava/lang/String;
    const/4 v9, 0x0

    invoke-static {v15, v9, v7}, Lcom/termux/shared/file/tests/FileUtilsTests;->assertEqual(Ljava/lang/String;Ljava/lang/String;Lcom/termux/shared/models/errors/Error;)V

    .line 109
    const/4 v15, 0x0

    invoke-static {v0, v15}, Lcom/termux/shared/file/FileUtils;->directoryFileExists(Ljava/lang/String;Z)Z

    move-result v29

    const-string v15, " directory file does not exist as expected after creation"

    const-string v9, "The "

    if-nez v29, :cond_0

    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/termux/shared/file/tests/FileUtilsTests;->throwException(Ljava/lang/String;)V

    .line 114
    :cond_0
    invoke-static {v1, v2}, Lcom/termux/shared/file/FileUtils;->createDirectoryFile(Ljava/lang/String;Ljava/lang/String;)Lcom/termux/shared/models/errors/Error;

    move-result-object v0

    .line 115
    .end local v7    # "error":Lcom/termux/shared/models/errors/Error;
    .local v0, "error":Lcom/termux/shared/models/errors/Error;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v29, v12

    const/4 v12, 0x0

    .end local v12    # "label":Ljava/lang/String;
    .local v29, "label":Ljava/lang/String;
    invoke-static {v7, v12, v0}, Lcom/termux/shared/file/tests/FileUtilsTests;->assertEqual(Ljava/lang/String;Ljava/lang/String;Lcom/termux/shared/models/errors/Error;)V

    .line 118
    invoke-static {v14, v13}, Lcom/termux/shared/file/FileUtils;->createDirectoryFile(Ljava/lang/String;Ljava/lang/String;)Lcom/termux/shared/models/errors/Error;

    move-result-object v0

    .line 119
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v12, v0}, Lcom/termux/shared/file/tests/FileUtilsTests;->assertEqual(Ljava/lang/String;Ljava/lang/String;Lcom/termux/shared/models/errors/Error;)V

    .line 126
    move-object v7, v3

    .end local v29    # "label":Ljava/lang/String;
    .local v7, "label":Ljava/lang/String;
    move-object v12, v4

    .line 127
    .local v12, "path":Ljava/lang/String;
    invoke-static {v7, v12}, Lcom/termux/shared/file/FileUtils;->createDirectoryFile(Ljava/lang/String;Ljava/lang/String;)Lcom/termux/shared/models/errors/Error;

    move-result-object v0

    .line 128
    move-object/from16 v29, v3

    .end local v3    # "dir1__sub_dir1_label":Ljava/lang/String;
    .local v29, "dir1__sub_dir1_label":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v30, v4

    const/4 v4, 0x0

    .end local v4    # "dir1__sub_dir1_path":Ljava/lang/String;
    .local v30, "dir1__sub_dir1_path":Ljava/lang/String;
    invoke-static {v3, v4, v0}, Lcom/termux/shared/file/tests/FileUtilsTests;->assertEqual(Ljava/lang/String;Ljava/lang/String;Lcom/termux/shared/models/errors/Error;)V

    .line 129
    const/4 v3, 0x0

    invoke-static {v12, v3}, Lcom/termux/shared/file/FileUtils;->directoryFileExists(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_1

    .line 130
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/termux/shared/file/tests/FileUtilsTests;->throwException(Ljava/lang/String;)V

    .line 133
    :cond_1
    move-object v3, v5

    .end local v7    # "label":Ljava/lang/String;
    .local v3, "label":Ljava/lang/String;
    move-object v4, v6

    .line 134
    .end local v12    # "path":Ljava/lang/String;
    .local v4, "path":Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/termux/shared/file/FileUtils;->createRegularFile(Ljava/lang/String;Ljava/lang/String;)Lcom/termux/shared/models/errors/Error;

    move-result-object v0

    .line 135
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v12, " regular file"

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v15, 0x0

    invoke-static {v7, v15, v0}, Lcom/termux/shared/file/tests/FileUtilsTests;->assertEqual(Ljava/lang/String;Ljava/lang/String;Lcom/termux/shared/models/errors/Error;)V

    .line 136
    const/4 v7, 0x0

    invoke-static {v4, v7}, Lcom/termux/shared/file/FileUtils;->regularFileExists(Ljava/lang/String;Z)Z

    move-result v15

    if-nez v15, :cond_2

    .line 137
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v15, " regular file does not exist as expected after creation"

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/termux/shared/file/tests/FileUtilsTests;->throwException(Ljava/lang/String;)V

    .line 140
    :cond_2
    move-object v3, v8

    move-object/from16 v4, v28

    .line 141
    invoke-static {v3, v13, v4}, Lcom/termux/shared/file/FileUtils;->createSymlinkFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/termux/shared/models/errors/Error;

    move-result-object v0

    .line 142
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v15, " symlink file"

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v31, v5

    const/4 v5, 0x0

    .end local v5    # "dir1__sub_reg1_label":Ljava/lang/String;
    .local v31, "dir1__sub_reg1_label":Ljava/lang/String;
    invoke-static {v7, v5, v0}, Lcom/termux/shared/file/tests/FileUtilsTests;->assertEqual(Ljava/lang/String;Ljava/lang/String;Lcom/termux/shared/models/errors/Error;)V

    .line 143
    invoke-static {v4}, Lcom/termux/shared/file/FileUtils;->symlinkFileExists(Ljava/lang/String;)Z

    move-result v5

    const-string v7, " symlink file does not exist as expected after creation"

    if-nez v5, :cond_3

    .line 144
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/termux/shared/file/tests/FileUtilsTests;->throwException(Ljava/lang/String;)V

    .line 147
    :cond_3
    move-object/from16 v3, v27

    move-object/from16 v4, v26

    .line 148
    move-object/from16 v32, v6

    move-object/from16 v5, v28

    move-object/from16 v28, v0

    const/4 v0, 0x0

    .end local v0    # "error":Lcom/termux/shared/models/errors/Error;
    .end local v6    # "dir1__sub_reg1_path":Ljava/lang/String;
    .local v5, "dir1__sub_sym1_path":Ljava/lang/String;
    .local v28, "error":Lcom/termux/shared/models/errors/Error;
    .local v32, "dir1__sub_reg1_path":Ljava/lang/String;
    invoke-static {v3, v5, v4, v0}, Lcom/termux/shared/file/FileUtils;->copySymlinkFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/termux/shared/models/errors/Error;

    move-result-object v6

    .line 149
    .end local v28    # "error":Lcom/termux/shared/models/errors/Error;
    .local v6, "error":Lcom/termux/shared/models/errors/Error;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v28, v5

    .end local v5    # "dir1__sub_sym1_path":Ljava/lang/String;
    .local v28, "dir1__sub_sym1_path":Ljava/lang/String;
    const-string v5, "Failed to copy "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v33, v12

    const-string v12, " symlink file to "

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v12, 0x0

    invoke-static {v0, v12, v6}, Lcom/termux/shared/file/tests/FileUtilsTests;->assertEqual(Ljava/lang/String;Ljava/lang/String;Lcom/termux/shared/models/errors/Error;)V

    .line 150
    invoke-static {v4}, Lcom/termux/shared/file/FileUtils;->symlinkFileExists(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 151
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v12, " symlink file does not exist as expected after copying it from "

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/termux/shared/file/tests/FileUtilsTests;->throwException(Ljava/lang/String;)V

    .line 152
    :cond_4
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 153
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v12, " symlink file does not point to "

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/termux/shared/file/tests/FileUtilsTests;->throwException(Ljava/lang/String;)V

    .line 160
    :cond_5
    move-object/from16 v0, v25

    .end local v3    # "label":Ljava/lang/String;
    .local v0, "label":Ljava/lang/String;
    move-object/from16 v3, v19

    .line 161
    .end local v4    # "path":Ljava/lang/String;
    .local v3, "path":Ljava/lang/String;
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v4

    const-string v12, "line1"

    move-object/from16 v34, v6

    const/4 v6, 0x0

    .end local v6    # "error":Lcom/termux/shared/models/errors/Error;
    .local v34, "error":Lcom/termux/shared/models/errors/Error;
    invoke-static {v0, v3, v4, v12, v6}, Lcom/termux/shared/file/FileUtils;->writeStringToFile(Ljava/lang/String;Ljava/lang/String;Ljava/nio/charset/Charset;Ljava/lang/String;Z)Lcom/termux/shared/models/errors/Error;

    move-result-object v4

    .line 162
    .end local v34    # "error":Lcom/termux/shared/models/errors/Error;
    .local v4, "error":Lcom/termux/shared/models/errors/Error;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Failed to write string to "

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v34, v8

    .end local v8    # "dir1__sub_sym1_label":Ljava/lang/String;
    .local v34, "dir1__sub_sym1_label":Ljava/lang/String;
    const-string v8, " file with append mode false"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    invoke-static {v6, v8, v4}, Lcom/termux/shared/file/tests/FileUtilsTests;->assertEqual(Ljava/lang/String;Ljava/lang/String;Lcom/termux/shared/models/errors/Error;)V

    .line 163
    const/4 v6, 0x0

    invoke-static {v3, v6}, Lcom/termux/shared/file/FileUtils;->regularFileExists(Ljava/lang/String;Z)Z

    move-result v8

    if-nez v8, :cond_6

    .line 164
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " file does not exist as expected after writing to it with append mode false"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/termux/shared/file/tests/FileUtilsTests;->throwException(Ljava/lang/String;)V

    .line 167
    :cond_6
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v6

    const/4 v8, 0x1

    move-object/from16 v35, v4

    .end local v4    # "error":Lcom/termux/shared/models/errors/Error;
    .local v35, "error":Lcom/termux/shared/models/errors/Error;
    const-string v4, "\nline2"

    invoke-static {v0, v3, v6, v4, v8}, Lcom/termux/shared/file/FileUtils;->writeStringToFile(Ljava/lang/String;Ljava/lang/String;Ljava/nio/charset/Charset;Ljava/lang/String;Z)Lcom/termux/shared/models/errors/Error;

    move-result-object v4

    .line 168
    .end local v35    # "error":Lcom/termux/shared/models/errors/Error;
    .restart local v4    # "error":Lcom/termux/shared/models/errors/Error;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " file with append mode true"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    invoke-static {v6, v8, v4}, Lcom/termux/shared/file/tests/FileUtilsTests;->assertEqual(Ljava/lang/String;Ljava/lang/String;Lcom/termux/shared/models/errors/Error;)V

    .line 171
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 172
    .local v6, "dataStringBuilder":Ljava/lang/StringBuilder;
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v8

    const/4 v12, 0x0

    invoke-static {v0, v3, v8, v6, v12}, Lcom/termux/shared/file/FileUtils;->readStringFromFile(Ljava/lang/String;Ljava/lang/String;Ljava/nio/charset/Charset;Ljava/lang/StringBuilder;Z)Lcom/termux/shared/models/errors/Error;

    move-result-object v4

    .line 173
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Failed to read from "

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v12, " file"

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v12, 0x0

    invoke-static {v8, v12, v4}, Lcom/termux/shared/file/tests/FileUtilsTests;->assertEqual(Ljava/lang/String;Ljava/lang/String;Lcom/termux/shared/models/errors/Error;)V

    .line 174
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "The data read from "

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v12, " file in not as expected"

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v35, v0

    .end local v0    # "label":Ljava/lang/String;
    .local v35, "label":Ljava/lang/String;
    const-string v0, "line1\nline2"

    invoke-static {v8, v0, v12}, Lcom/termux/shared/file/tests/FileUtilsTests;->assertEqual(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    move-object/from16 v0, v18

    .end local v35    # "label":Ljava/lang/String;
    .restart local v0    # "label":Ljava/lang/String;
    move-object/from16 v3, v21

    .line 178
    move-object/from16 v8, v19

    const/4 v12, 0x0

    .end local v19    # "dir2__sub_reg1_path":Ljava/lang/String;
    .local v8, "dir2__sub_reg1_path":Ljava/lang/String;
    invoke-static {v0, v8, v3, v12}, Lcom/termux/shared/file/FileUtils;->copyRegularFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/termux/shared/models/errors/Error;

    move-result-object v4

    .line 179
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v19, v6

    move-object/from16 v6, v25

    .end local v25    # "dir2__sub_reg1_label":Ljava/lang/String;
    .local v6, "dir2__sub_reg1_label":Ljava/lang/String;
    .local v19, "dataStringBuilder":Ljava/lang/StringBuilder;
    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v25, v8

    .end local v8    # "dir2__sub_reg1_path":Ljava/lang/String;
    .local v25, "dir2__sub_reg1_path":Ljava/lang/String;
    const-string v8, " regular file to "

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v12, 0x0

    invoke-static {v8, v12, v4}, Lcom/termux/shared/file/tests/FileUtilsTests;->assertEqual(Ljava/lang/String;Ljava/lang/String;Lcom/termux/shared/models/errors/Error;)V

    .line 180
    const/4 v8, 0x0

    invoke-static {v3, v8}, Lcom/termux/shared/file/FileUtils;->regularFileExists(Ljava/lang/String;Z)Z

    move-result v12

    if-nez v12, :cond_7

    .line 181
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v12, " regular file does not exist as expected after copying it from "

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/termux/shared/file/tests/FileUtilsTests;->throwException(Ljava/lang/String;)V

    .line 188
    :cond_7
    move-object/from16 v0, v20

    move-object/from16 v3, v23

    .line 189
    const/4 v8, 0x0

    invoke-static {v0, v13, v3, v8}, Lcom/termux/shared/file/FileUtils;->copyDirectoryFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/termux/shared/models/errors/Error;

    move-result-object v4

    .line 190
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v12, " directory file to "

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v35, v6

    const/4 v6, 0x0

    .end local v6    # "dir2__sub_reg1_label":Ljava/lang/String;
    .local v35, "dir2__sub_reg1_label":Ljava/lang/String;
    invoke-static {v8, v6, v4}, Lcom/termux/shared/file/tests/FileUtilsTests;->assertEqual(Ljava/lang/String;Ljava/lang/String;Lcom/termux/shared/models/errors/Error;)V

    .line 191
    const/4 v6, 0x0

    invoke-static {v3, v6}, Lcom/termux/shared/file/FileUtils;->directoryFileExists(Ljava/lang/String;Z)Z

    move-result v8

    const-string v6, " directory file does not exist as expected after copying it from "

    if-nez v8, :cond_8

    .line 192
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/termux/shared/file/tests/FileUtilsTests;->throwException(Ljava/lang/String;)V

    .line 195
    :cond_8
    move-object/from16 v0, v20

    move-object/from16 v3, v23

    .line 196
    const/4 v8, 0x0

    invoke-static {v0, v13, v3, v8}, Lcom/termux/shared/file/FileUtils;->copyDirectoryFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/termux/shared/models/errors/Error;

    move-result-object v4

    .line 197
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v8, 0x0

    invoke-static {v5, v8, v4}, Lcom/termux/shared/file/tests/FileUtilsTests;->assertEqual(Ljava/lang/String;Ljava/lang/String;Lcom/termux/shared/models/errors/Error;)V

    .line 198
    const/4 v5, 0x0

    invoke-static {v3, v5}, Lcom/termux/shared/file/FileUtils;->directoryFileExists(Ljava/lang/String;Z)Z

    move-result v8

    if-nez v8, :cond_9

    .line 199
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/termux/shared/file/tests/FileUtilsTests;->throwException(Ljava/lang/String;)V

    .line 202
    :cond_9
    move-object/from16 v0, v22

    move-object/from16 v3, v24

    .line 203
    move-object/from16 v5, v23

    const/4 v8, 0x0

    .end local v23    # "dir3_path":Ljava/lang/String;
    .local v5, "dir3_path":Ljava/lang/String;
    invoke-static {v0, v5, v3, v8}, Lcom/termux/shared/file/FileUtils;->moveDirectoryFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/termux/shared/models/errors/Error;

    move-result-object v4

    .line 204
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .end local v5    # "dir3_path":Ljava/lang/String;
    .restart local v23    # "dir3_path":Ljava/lang/String;
    const-string v5, "Failed to move "

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v8, v20

    .end local v20    # "dir3_label":Ljava/lang/String;
    .local v8, "dir3_label":Ljava/lang/String;
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v12, 0x0

    invoke-static {v5, v12, v4}, Lcom/termux/shared/file/tests/FileUtilsTests;->assertEqual(Ljava/lang/String;Ljava/lang/String;Lcom/termux/shared/models/errors/Error;)V

    .line 205
    const/4 v5, 0x0

    invoke-static {v3, v5}, Lcom/termux/shared/file/FileUtils;->directoryFileExists(Ljava/lang/String;Z)Z

    move-result v12

    if-nez v12, :cond_a

    .line 206
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/termux/shared/file/tests/FileUtilsTests;->throwException(Ljava/lang/String;)V

    .line 213
    :cond_a
    move-object/from16 v0, v17

    move-object/from16 v3, v16

    .line 214
    const-string v5, "../dir4"

    invoke-static {v0, v5, v3}, Lcom/termux/shared/file/FileUtils;->createSymlinkFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/termux/shared/models/errors/Error;

    move-result-object v4

    .line 215
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v5, v6, v4}, Lcom/termux/shared/file/tests/FileUtilsTests;->assertEqual(Ljava/lang/String;Ljava/lang/String;Lcom/termux/shared/models/errors/Error;)V

    .line 216
    invoke-static {v3}, Lcom/termux/shared/file/FileUtils;->symlinkFileExists(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_b

    .line 217
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/termux/shared/file/tests/FileUtilsTests;->throwException(Ljava/lang/String;)V

    .line 221
    :cond_b
    move-object/from16 v0, v17

    move-object/from16 v3, v16

    .line 222
    const-string v5, "../dirX"

    invoke-static {v0, v5, v3}, Lcom/termux/shared/file/FileUtils;->createSymlinkFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/termux/shared/models/errors/Error;

    move-result-object v4

    .line 223
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v5, v6, v4}, Lcom/termux/shared/file/tests/FileUtilsTests;->assertEqual(Ljava/lang/String;Ljava/lang/String;Lcom/termux/shared/models/errors/Error;)V

    .line 224
    invoke-static {v3}, Lcom/termux/shared/file/FileUtils;->symlinkFileExists(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_c

    .line 225
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " dangling symlink file does not exist as expected after creation"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/termux/shared/file/tests/FileUtilsTests;->throwException(Ljava/lang/String;)V

    .line 232
    :cond_c
    move-object/from16 v0, v27

    move-object/from16 v3, v26

    .line 233
    const/4 v5, 0x0

    invoke-static {v0, v3, v5}, Lcom/termux/shared/file/FileUtils;->deleteSymlinkFile(Ljava/lang/String;Ljava/lang/String;Z)Lcom/termux/shared/models/errors/Error;

    move-result-object v4

    .line 234
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to delete "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v11, 0x0

    invoke-static {v6, v11, v4}, Lcom/termux/shared/file/tests/FileUtilsTests;->assertEqual(Ljava/lang/String;Ljava/lang/String;Lcom/termux/shared/models/errors/Error;)V

    .line 235
    invoke-static {v3, v5}, Lcom/termux/shared/file/FileUtils;->fileExists(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 236
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " symlink file still exist after deletion"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/termux/shared/file/tests/FileUtilsTests;->throwException(Ljava/lang/String;)V

    .line 240
    :cond_d
    move-object v0, v14

    move-object v3, v13

    .line 241
    const/4 v5, 0x0

    invoke-static {v3, v5}, Lcom/termux/shared/file/FileUtils;->directoryFileExists(Ljava/lang/String;Z)Z

    move-result v6

    const-string v5, " directory file has unexpectedly been deleted after deletion of "

    if-nez v6, :cond_e

    .line 242
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v11, v27

    .end local v27    # "dir1__sub_sym2_label":Ljava/lang/String;
    .local v11, "dir1__sub_sym2_label":Ljava/lang/String;
    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/termux/shared/file/tests/FileUtilsTests;->throwException(Ljava/lang/String;)V

    goto :goto_0

    .line 241
    .end local v11    # "dir1__sub_sym2_label":Ljava/lang/String;
    .restart local v27    # "dir1__sub_sym2_label":Ljava/lang/String;
    :cond_e
    move-object/from16 v11, v27

    .line 249
    .end local v27    # "dir1__sub_sym2_label":Ljava/lang/String;
    .restart local v11    # "dir1__sub_sym2_label":Ljava/lang/String;
    :goto_0
    move-object v0, v1

    move-object v3, v2

    .line 250
    const/4 v6, 0x0

    invoke-static {v0, v3, v6}, Lcom/termux/shared/file/FileUtils;->deleteDirectoryFile(Ljava/lang/String;Ljava/lang/String;Z)Lcom/termux/shared/models/errors/Error;

    move-result-object v4

    .line 251
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v12, 0x0

    invoke-static {v10, v12, v4}, Lcom/termux/shared/file/tests/FileUtilsTests;->assertEqual(Ljava/lang/String;Ljava/lang/String;Lcom/termux/shared/models/errors/Error;)V

    .line 252
    invoke-static {v3, v6}, Lcom/termux/shared/file/FileUtils;->fileExists(Ljava/lang/String;Z)Z

    move-result v10

    if-eqz v10, :cond_f

    .line 253
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v10, " directory file still exist after deletion"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/termux/shared/file/tests/FileUtilsTests;->throwException(Ljava/lang/String;)V

    .line 259
    :cond_f
    move-object v0, v14

    move-object v3, v13

    .line 260
    const/4 v6, 0x0

    invoke-static {v3, v6}, Lcom/termux/shared/file/FileUtils;->directoryFileExists(Ljava/lang/String;Z)Z

    move-result v10

    if-nez v10, :cond_10

    .line 261
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/termux/shared/file/tests/FileUtilsTests;->throwException(Ljava/lang/String;)V

    .line 262
    :cond_10
    move-object/from16 v0, v35

    move-object/from16 v3, v25

    .line 263
    const/4 v5, 0x0

    invoke-static {v3, v5}, Lcom/termux/shared/file/FileUtils;->fileExists(Ljava/lang/String;Z)Z

    move-result v6

    if-nez v6, :cond_11

    .line 264
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " regular file has unexpectedly been deleted after deletion of "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/termux/shared/file/tests/FileUtilsTests;->throwException(Ljava/lang/String;)V

    .line 271
    :cond_11
    move-object/from16 v0, v35

    move-object/from16 v3, v25

    .line 272
    const/4 v5, 0x0

    invoke-static {v0, v3, v5}, Lcom/termux/shared/file/FileUtils;->deleteRegularFile(Ljava/lang/String;Ljava/lang/String;Z)Lcom/termux/shared/models/errors/Error;

    move-result-object v4

    .line 273
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v7, v33

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v6, v7, v4}, Lcom/termux/shared/file/tests/FileUtilsTests;->assertEqual(Ljava/lang/String;Ljava/lang/String;Lcom/termux/shared/models/errors/Error;)V

    .line 274
    invoke-static {v3, v5}, Lcom/termux/shared/file/FileUtils;->fileExists(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_12

    .line 275
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " regular file still exist after deletion"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/termux/shared/file/tests/FileUtilsTests;->throwException(Ljava/lang/String;)V

    .line 277
    :cond_12
    const-string v5, "/dev/ptmx"

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/termux/shared/file/FileUtils;->getFileType(Ljava/lang/String;Z)Lcom/termux/shared/file/filesystem/FileType;

    .line 278
    const-string v5, "/dev/null"

    invoke-static {v5, v6}, Lcom/termux/shared/file/FileUtils;->getFileType(Ljava/lang/String;Z)Lcom/termux/shared/file/filesystem/FileType;

    .line 279
    return-void
.end method

.method public static throwException(Ljava/lang/String;)V
    .locals 1
    .param p0, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "message"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 307
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method
