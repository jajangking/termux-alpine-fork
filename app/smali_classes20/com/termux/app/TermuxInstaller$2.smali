.class Lcom/termux/app/TermuxInstaller$2;
.super Ljava/lang/Thread;
.source "TermuxInstaller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/termux/app/TermuxInstaller;->setupStorageSymlinks(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "val$context"
        }
    .end annotation

    .line 298
    iput-object p1, p0, Lcom/termux/app/TermuxInstaller$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 18

    .line 302
    move-object/from16 v1, p0

    const-string v0, "\"."

    const-string v2, "## Setup Storage Error\n\n"

    const-string v3, "termux-storage"

    const/4 v4, 0x0

    const/4 v5, 0x1

    :try_start_0
    sget-object v6, Lcom/termux/shared/termux/TermuxConstants;->TERMUX_STORAGE_HOME_DIR:Ljava/io/File;

    .line 304
    .local v6, "storageDir":Ljava/io/File;
    const-string v7, "~/storage"

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/termux/shared/file/FileUtils;->clearDirectory(Ljava/lang/String;Ljava/lang/String;)Lcom/termux/shared/models/errors/Error;

    move-result-object v7

    .line 305
    .local v7, "error":Lcom/termux/shared/models/errors/Error;
    if-eqz v7, :cond_0

    .line 306
    iget-object v0, v1, Lcom/termux/app/TermuxInstaller$2;->val$context:Landroid/content/Context;

    invoke-virtual {v7}, Lcom/termux/shared/models/errors/Error;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v3, v8}, Lcom/termux/shared/logger/Logger;->logErrorAndShowToast(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Setup Storage Error\n"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v7}, Lcom/termux/shared/models/errors/Error;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/termux/shared/logger/Logger;->logErrorExtended(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    iget-object v0, v1, Lcom/termux/app/TermuxInstaller$2;->val$context:Landroid/content/Context;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v7}, Lcom/termux/shared/models/errors/Error;->getErrorMarkdownString(Lcom/termux/shared/models/errors/Error;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v3, v8, v5, v5}, Lcom/termux/app/utils/CrashUtils;->sendCrashReportNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 309
    return-void

    .line 312
    :cond_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Setting up storage symlinks at ~/storage/shared, ~/storage/downloads, ~/storage/dcim, ~/storage/pictures, ~/storage/music and ~/storage/movies for directories in \""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Lcom/termux/shared/logger/Logger;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v8

    .line 315
    .local v8, "sharedDir":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/io/File;

    const-string v11, "shared"

    invoke-direct {v10, v6, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/system/Os;->symlink(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    sget-object v9, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-static {v9}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v9

    .line 318
    .local v9, "downloadsDir":Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/io/File;

    const-string v12, "downloads"

    invoke-direct {v11, v6, v12}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/system/Os;->symlink(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    sget-object v10, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    invoke-static {v10}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v10

    .line 321
    .local v10, "dcimDir":Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    new-instance v12, Ljava/io/File;

    const-string v13, "dcim"

    invoke-direct {v12, v6, v13}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/system/Os;->symlink(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    sget-object v11, Landroid/os/Environment;->DIRECTORY_PICTURES:Ljava/lang/String;

    invoke-static {v11}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v11

    .line 324
    .local v11, "picturesDir":Ljava/io/File;
    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    new-instance v13, Ljava/io/File;

    const-string v14, "pictures"

    invoke-direct {v13, v6, v14}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v13}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/system/Os;->symlink(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    sget-object v12, Landroid/os/Environment;->DIRECTORY_MUSIC:Ljava/lang/String;

    invoke-static {v12}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v12

    .line 327
    .local v12, "musicDir":Ljava/io/File;
    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v13

    new-instance v14, Ljava/io/File;

    const-string v15, "music"

    invoke-direct {v14, v6, v15}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v14}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/system/Os;->symlink(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    sget-object v13, Landroid/os/Environment;->DIRECTORY_MOVIES:Ljava/lang/String;

    invoke-static {v13}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v13

    .line 330
    .local v13, "moviesDir":Ljava/io/File;
    invoke-virtual {v13}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v14

    new-instance v15, Ljava/io/File;

    const-string v5, "movies"

    invoke-direct {v15, v6, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v15}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v14, v5}, Landroid/system/Os;->symlink(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    iget-object v5, v1, Lcom/termux/app/TermuxInstaller$2;->val$context:Landroid/content/Context;

    invoke-virtual {v5, v4}, Landroid/content/Context;->getExternalFilesDirs(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v5

    .line 333
    .local v5, "dirs":[Ljava/io/File;
    if-eqz v5, :cond_3

    array-length v14, v5

    const/4 v15, 0x1

    if-le v14, v15, :cond_3

    .line 334
    const/4 v14, 0x1

    .local v14, "i":I
    :goto_0
    array-length v15, v5

    if-ge v14, v15, :cond_2

    .line 335
    aget-object v15, v5, v14

    .line 336
    .local v15, "dir":Ljava/io/File;
    if-nez v15, :cond_1

    move-object/from16 v16, v5

    move-object/from16 v17, v7

    goto :goto_1

    .line 337
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v16, v5

    .end local v5    # "dirs":[Ljava/io/File;
    .local v16, "dirs":[Ljava/io/File;
    const-string v5, "external-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 338
    .local v4, "symlinkName":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v17, v7

    .end local v7    # "error":Lcom/termux/shared/models/errors/Error;
    .local v17, "error":Lcom/termux/shared/models/errors/Error;
    const-string v7, "Setting up storage symlinks at ~/storage/"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, " for \""

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v15}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/termux/shared/logger/Logger;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    invoke-virtual {v15}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v6, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/system/Os;->symlink(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    .end local v4    # "symlinkName":Ljava/lang/String;
    .end local v15    # "dir":Ljava/io/File;
    :goto_1
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v5, v16

    move-object/from16 v7, v17

    const/4 v4, 0x0

    goto :goto_0

    .end local v16    # "dirs":[Ljava/io/File;
    .end local v17    # "error":Lcom/termux/shared/models/errors/Error;
    .restart local v5    # "dirs":[Ljava/io/File;
    .restart local v7    # "error":Lcom/termux/shared/models/errors/Error;
    :cond_2
    move-object/from16 v16, v5

    move-object/from16 v17, v7

    .end local v5    # "dirs":[Ljava/io/File;
    .end local v7    # "error":Lcom/termux/shared/models/errors/Error;
    .restart local v16    # "dirs":[Ljava/io/File;
    .restart local v17    # "error":Lcom/termux/shared/models/errors/Error;
    goto :goto_2

    .line 333
    .end local v14    # "i":I
    .end local v16    # "dirs":[Ljava/io/File;
    .end local v17    # "error":Lcom/termux/shared/models/errors/Error;
    .restart local v5    # "dirs":[Ljava/io/File;
    .restart local v7    # "error":Lcom/termux/shared/models/errors/Error;
    :cond_3
    move-object/from16 v16, v5

    move-object/from16 v17, v7

    .line 343
    .end local v5    # "dirs":[Ljava/io/File;
    .end local v7    # "error":Lcom/termux/shared/models/errors/Error;
    .restart local v16    # "dirs":[Ljava/io/File;
    .restart local v17    # "error":Lcom/termux/shared/models/errors/Error;
    :goto_2
    const-string v0, "Storage symlinks created successfully."

    invoke-static {v3, v0}, Lcom/termux/shared/logger/Logger;->logInfo(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 348
    .end local v6    # "storageDir":Ljava/io/File;
    .end local v8    # "sharedDir":Ljava/io/File;
    .end local v9    # "downloadsDir":Ljava/io/File;
    .end local v10    # "dcimDir":Ljava/io/File;
    .end local v11    # "picturesDir":Ljava/io/File;
    .end local v12    # "musicDir":Ljava/io/File;
    .end local v13    # "moviesDir":Ljava/io/File;
    .end local v16    # "dirs":[Ljava/io/File;
    .end local v17    # "error":Lcom/termux/shared/models/errors/Error;
    goto :goto_3

    .line 344
    :catch_0
    move-exception v0

    .line 345
    .local v0, "e":Ljava/lang/Exception;
    iget-object v4, v1, Lcom/termux/app/TermuxInstaller$2;->val$context:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v3, v5}, Lcom/termux/shared/logger/Logger;->logErrorAndShowToast(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    const-string v4, "Setup Storage Error: Error setting up link"

    invoke-static {v3, v4, v0}, Lcom/termux/shared/logger/Logger;->logStackTraceWithMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 347
    iget-object v4, v1, Lcom/termux/app/TermuxInstaller$2;->val$context:Landroid/content/Context;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lcom/termux/shared/logger/Logger;->getStackTracesStringArray(Ljava/lang/Throwable;)[Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v6, v5}, Lcom/termux/shared/logger/Logger;->getStackTracesMarkdownString(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x1

    invoke-static {v4, v3, v2, v5, v5}, Lcom/termux/app/utils/CrashUtils;->sendCrashReportNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 349
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_3
    return-void
.end method
