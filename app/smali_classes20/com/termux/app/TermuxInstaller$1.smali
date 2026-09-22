.class Lcom/termux/app/TermuxInstaller$1;
.super Ljava/lang/Thread;
.source "TermuxInstaller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/termux/app/TermuxInstaller;->setupBootstrapIfNeeded(Landroid/app/Activity;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$progress:Landroid/app/ProgressDialog;

.field final synthetic val$whenDone:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Landroid/app/Activity;Ljava/lang/Runnable;Landroid/app/ProgressDialog;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "val$activity",
            "val$whenDone",
            "val$progress"
        }
    .end annotation

    .line 113
    iput-object p1, p0, Lcom/termux/app/TermuxInstaller$1;->val$activity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/termux/app/TermuxInstaller$1;->val$whenDone:Ljava/lang/Runnable;

    iput-object p3, p0, Lcom/termux/app/TermuxInstaller$1;->val$progress:Landroid/app/ProgressDialog;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method static synthetic lambda$run$0(Landroid/app/ProgressDialog;)V
    .locals 1
    .param p0, "progress"    # Landroid/app/ProgressDialog;

    .line 252
    :try_start_0
    invoke-virtual {p0}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 255
    goto :goto_0

    .line 253
    :catch_0
    move-exception v0

    .line 256
    :goto_0
    return-void
.end method


# virtual methods
.method public run()V
    .locals 25

    .line 117
    move-object/from16 v1, p0

    const-string v0, "/data/data/com.termux.alpine/files/usr"

    const-string v2, "termux prefix directory"

    const-string v3, "/data/data/com.termux.alpine/files/usr-staging"

    const-string v4, "TermuxInstaller"

    :try_start_0
    const-string v6, "Installing Termux bootstrap packages."

    invoke-static {v4, v6}, Lcom/termux/shared/logger/Logger;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    const-string v6, "termux prefix staging directory"

    const/4 v7, 0x1

    invoke-static {v6, v3, v7}, Lcom/termux/shared/file/FileUtils;->deleteFile(Ljava/lang/String;Ljava/lang/String;Z)Lcom/termux/shared/models/errors/Error;

    move-result-object v6

    .line 123
    .local v6, "error":Lcom/termux/shared/models/errors/Error;
    if-eqz v6, :cond_0

    .line 124
    iget-object v0, v1, Lcom/termux/app/TermuxInstaller$1;->val$activity:Landroid/app/Activity;

    iget-object v2, v1, Lcom/termux/app/TermuxInstaller$1;->val$whenDone:Ljava/lang/Runnable;

    invoke-static {v6}, Lcom/termux/shared/models/errors/Error;->getErrorMarkdownString(Lcom/termux/shared/models/errors/Error;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/termux/app/TermuxInstaller;->showBootstrapErrorDialog(Landroid/app/Activity;Ljava/lang/Runnable;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    .line 250
    iget-object v0, v1, Lcom/termux/app/TermuxInstaller$1;->val$activity:Landroid/app/Activity;

    iget-object v2, v1, Lcom/termux/app/TermuxInstaller$1;->val$progress:Landroid/app/ProgressDialog;

    new-instance v3, Lcom/termux/app/-$$Lambda$TermuxInstaller$1$xd41MVUJilhezFSlBVbZseoZtDk;

    invoke-direct {v3, v2}, Lcom/termux/app/-$$Lambda$TermuxInstaller$1$xd41MVUJilhezFSlBVbZseoZtDk;-><init>(Landroid/app/ProgressDialog;)V

    invoke-virtual {v0, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 125
    return-void

    .line 129
    :cond_0
    :try_start_1
    invoke-static {v2, v0, v7}, Lcom/termux/shared/file/FileUtils;->deleteFile(Ljava/lang/String;Ljava/lang/String;Z)Lcom/termux/shared/models/errors/Error;

    move-result-object v8

    move-object v6, v8

    .line 130
    if-eqz v6, :cond_1

    .line 131
    iget-object v0, v1, Lcom/termux/app/TermuxInstaller$1;->val$activity:Landroid/app/Activity;

    iget-object v2, v1, Lcom/termux/app/TermuxInstaller$1;->val$whenDone:Ljava/lang/Runnable;

    invoke-static {v6}, Lcom/termux/shared/models/errors/Error;->getErrorMarkdownString(Lcom/termux/shared/models/errors/Error;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/termux/app/TermuxInstaller;->showBootstrapErrorDialog(Landroid/app/Activity;Ljava/lang/Runnable;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_6

    .line 250
    iget-object v0, v1, Lcom/termux/app/TermuxInstaller$1;->val$activity:Landroid/app/Activity;

    iget-object v2, v1, Lcom/termux/app/TermuxInstaller$1;->val$progress:Landroid/app/ProgressDialog;

    new-instance v3, Lcom/termux/app/-$$Lambda$TermuxInstaller$1$xd41MVUJilhezFSlBVbZseoZtDk;

    invoke-direct {v3, v2}, Lcom/termux/app/-$$Lambda$TermuxInstaller$1$xd41MVUJilhezFSlBVbZseoZtDk;-><init>(Landroid/app/ProgressDialog;)V

    invoke-virtual {v0, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 132
    return-void

    .line 136
    :cond_1
    :try_start_2
    invoke-static {v7, v7}, Lcom/termux/shared/file/TermuxFileUtils;->isTermuxPrefixStagingDirectoryAccessible(ZZ)Lcom/termux/shared/models/errors/Error;

    move-result-object v8

    move-object v6, v8

    .line 137
    if-eqz v6, :cond_2

    .line 138
    iget-object v0, v1, Lcom/termux/app/TermuxInstaller$1;->val$activity:Landroid/app/Activity;

    iget-object v2, v1, Lcom/termux/app/TermuxInstaller$1;->val$whenDone:Ljava/lang/Runnable;

    invoke-static {v6}, Lcom/termux/shared/models/errors/Error;->getErrorMarkdownString(Lcom/termux/shared/models/errors/Error;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/termux/app/TermuxInstaller;->showBootstrapErrorDialog(Landroid/app/Activity;Ljava/lang/Runnable;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_6

    .line 250
    iget-object v0, v1, Lcom/termux/app/TermuxInstaller$1;->val$activity:Landroid/app/Activity;

    iget-object v2, v1, Lcom/termux/app/TermuxInstaller$1;->val$progress:Landroid/app/ProgressDialog;

    new-instance v3, Lcom/termux/app/-$$Lambda$TermuxInstaller$1$xd41MVUJilhezFSlBVbZseoZtDk;

    invoke-direct {v3, v2}, Lcom/termux/app/-$$Lambda$TermuxInstaller$1$xd41MVUJilhezFSlBVbZseoZtDk;-><init>(Landroid/app/ProgressDialog;)V

    invoke-virtual {v0, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 139
    return-void

    .line 143
    :cond_2
    :try_start_3
    invoke-static {v7, v7}, Lcom/termux/shared/file/TermuxFileUtils;->isTermuxPrefixDirectoryAccessible(ZZ)Lcom/termux/shared/models/errors/Error;

    move-result-object v8

    move-object v6, v8

    .line 144
    if-eqz v6, :cond_3

    .line 145
    iget-object v0, v1, Lcom/termux/app/TermuxInstaller$1;->val$activity:Landroid/app/Activity;

    iget-object v2, v1, Lcom/termux/app/TermuxInstaller$1;->val$whenDone:Ljava/lang/Runnable;

    invoke-static {v6}, Lcom/termux/shared/models/errors/Error;->getErrorMarkdownString(Lcom/termux/shared/models/errors/Error;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/termux/app/TermuxInstaller;->showBootstrapErrorDialog(Landroid/app/Activity;Ljava/lang/Runnable;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_6

    .line 250
    iget-object v0, v1, Lcom/termux/app/TermuxInstaller$1;->val$activity:Landroid/app/Activity;

    iget-object v2, v1, Lcom/termux/app/TermuxInstaller$1;->val$progress:Landroid/app/ProgressDialog;

    new-instance v3, Lcom/termux/app/-$$Lambda$TermuxInstaller$1$xd41MVUJilhezFSlBVbZseoZtDk;

    invoke-direct {v3, v2}, Lcom/termux/app/-$$Lambda$TermuxInstaller$1$xd41MVUJilhezFSlBVbZseoZtDk;-><init>(Landroid/app/ProgressDialog;)V

    invoke-virtual {v0, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 146
    return-void

    .line 149
    :cond_3
    :try_start_4
    const-string v8, "Extracting bootstrap zip to prefix staging directory \"/data/data/com.termux.alpine/files/usr-staging\"."

    invoke-static {v4, v8}, Lcom/termux/shared/logger/Logger;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    const/16 v8, 0x1fa0

    new-array v8, v8, [B

    .line 152
    .local v8, "buffer":[B
    new-instance v9, Ljava/util/ArrayList;

    const/16 v10, 0x32

    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(I)V

    .line 154
    .local v9, "symlinks":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-static {}, Lcom/termux/app/TermuxInstaller;->loadZipBytes()[B

    move-result-object v10

    .line 155
    .local v10, "zipBytes":[B
    new-instance v11, Ljava/util/zip/ZipInputStream;

    new-instance v12, Ljava/io/ByteArrayInputStream;

    invoke-direct {v12, v10}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v11, v12}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_6

    .line 157
    .local v11, "zipInput":Ljava/util/zip/ZipInputStream;
    :goto_0
    :try_start_5
    invoke-virtual {v11}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v12

    move-object v13, v12

    .local v13, "zipEntry":Ljava/util/zip/ZipEntry;
    if-eqz v12, :cond_e

    .line 158
    invoke-virtual {v13}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v12

    const-string v5, "SYMLINKS.txt"

    invoke-virtual {v12, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 159
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v12, Ljava/io/InputStreamReader;

    invoke-direct {v12, v11}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v5, v12}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 161
    .local v5, "symlinksReader":Ljava/io/BufferedReader;
    :goto_1
    :try_start_6
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v12

    move-object v14, v12

    .local v14, "line":Ljava/lang/String;
    if-eqz v12, :cond_6

    .line 162
    const-string v12, "\u2190"

    invoke-virtual {v14, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 163
    .local v12, "parts":[Ljava/lang/String;
    array-length v7, v12

    const/4 v15, 0x2

    if-ne v7, v15, :cond_5

    .line 165
    const/4 v7, 0x0

    aget-object v15, v12, v7

    move-object v7, v15

    .line 166
    .local v7, "oldPath":Ljava/lang/String;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v16, v5

    .end local v5    # "symlinksReader":Ljava/io/BufferedReader;
    .local v16, "symlinksReader":Ljava/io/BufferedReader;
    const-string v5, "/data/data/com.termux.alpine/files/usr-staging/"

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-object/from16 v17, v6

    const/4 v15, 0x1

    .end local v6    # "error":Lcom/termux/shared/models/errors/Error;
    .local v17, "error":Lcom/termux/shared/models/errors/Error;
    :try_start_7
    aget-object v6, v12, v15

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 167
    .local v5, "newPath":Ljava/lang/String;
    invoke-static {v7, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v6

    invoke-interface {v9, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 169
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v6

    invoke-static {v6}, Lcom/termux/app/TermuxInstaller;->access$000(Ljava/io/File;)Lcom/termux/shared/models/errors/Error;

    move-result-object v6
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 170
    .end local v17    # "error":Lcom/termux/shared/models/errors/Error;
    .restart local v6    # "error":Lcom/termux/shared/models/errors/Error;
    if-eqz v6, :cond_4

    .line 171
    :try_start_8
    iget-object v0, v1, Lcom/termux/app/TermuxInstaller$1;->val$activity:Landroid/app/Activity;

    iget-object v2, v1, Lcom/termux/app/TermuxInstaller$1;->val$whenDone:Ljava/lang/Runnable;

    invoke-static {v6}, Lcom/termux/shared/models/errors/Error;->getErrorMarkdownString(Lcom/termux/shared/models/errors/Error;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/termux/app/TermuxInstaller;->showBootstrapErrorDialog(Landroid/app/Activity;Ljava/lang/Runnable;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 201
    :try_start_9
    invoke-virtual {v11}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    .line 250
    iget-object v0, v1, Lcom/termux/app/TermuxInstaller$1;->val$activity:Landroid/app/Activity;

    iget-object v2, v1, Lcom/termux/app/TermuxInstaller$1;->val$progress:Landroid/app/ProgressDialog;

    new-instance v3, Lcom/termux/app/-$$Lambda$TermuxInstaller$1$xd41MVUJilhezFSlBVbZseoZtDk;

    invoke-direct {v3, v2}, Lcom/termux/app/-$$Lambda$TermuxInstaller$1$xd41MVUJilhezFSlBVbZseoZtDk;-><init>(Landroid/app/ProgressDialog;)V

    invoke-virtual {v0, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 172
    return-void

    .line 174
    .end local v5    # "newPath":Ljava/lang/String;
    .end local v7    # "oldPath":Ljava/lang/String;
    .end local v12    # "parts":[Ljava/lang/String;
    :cond_4
    move-object/from16 v5, v16

    const/4 v7, 0x1

    goto :goto_1

    .line 164
    .end local v16    # "symlinksReader":Ljava/io/BufferedReader;
    .local v5, "symlinksReader":Ljava/io/BufferedReader;
    .restart local v12    # "parts":[Ljava/lang/String;
    :cond_5
    move-object/from16 v16, v5

    move-object/from16 v17, v6

    .end local v5    # "symlinksReader":Ljava/io/BufferedReader;
    .end local v6    # "error":Lcom/termux/shared/models/errors/Error;
    .restart local v16    # "symlinksReader":Ljava/io/BufferedReader;
    .restart local v17    # "error":Lcom/termux/shared/models/errors/Error;
    :try_start_a
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Malformed symlink line: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .end local v8    # "buffer":[B
    .end local v9    # "symlinks":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v10    # "zipBytes":[B
    .end local v11    # "zipInput":Ljava/util/zip/ZipInputStream;
    .end local v17    # "error":Lcom/termux/shared/models/errors/Error;
    throw v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 155
    .end local v12    # "parts":[Ljava/lang/String;
    .end local v13    # "zipEntry":Ljava/util/zip/ZipEntry;
    .end local v14    # "line":Ljava/lang/String;
    .end local v16    # "symlinksReader":Ljava/io/BufferedReader;
    .restart local v8    # "buffer":[B
    .restart local v9    # "symlinks":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    .restart local v10    # "zipBytes":[B
    .restart local v11    # "zipInput":Ljava/util/zip/ZipInputStream;
    .restart local v17    # "error":Lcom/termux/shared/models/errors/Error;
    :catchall_0
    move-exception v0

    move-object v2, v0

    move-object/from16 v6, v17

    goto/16 :goto_9

    .line 161
    .end local v17    # "error":Lcom/termux/shared/models/errors/Error;
    .restart local v5    # "symlinksReader":Ljava/io/BufferedReader;
    .restart local v6    # "error":Lcom/termux/shared/models/errors/Error;
    .restart local v13    # "zipEntry":Ljava/util/zip/ZipEntry;
    .restart local v14    # "line":Ljava/lang/String;
    :cond_6
    move-object/from16 v16, v5

    move-object/from16 v17, v6

    .line 175
    .end local v5    # "symlinksReader":Ljava/io/BufferedReader;
    .end local v6    # "error":Lcom/termux/shared/models/errors/Error;
    .end local v14    # "line":Ljava/lang/String;
    .restart local v17    # "error":Lcom/termux/shared/models/errors/Error;
    const/4 v7, 0x1

    goto/16 :goto_0

    .line 155
    .end local v13    # "zipEntry":Ljava/util/zip/ZipEntry;
    .end local v17    # "error":Lcom/termux/shared/models/errors/Error;
    .restart local v6    # "error":Lcom/termux/shared/models/errors/Error;
    :catchall_1
    move-exception v0

    move-object/from16 v17, v6

    move-object v2, v0

    .end local v6    # "error":Lcom/termux/shared/models/errors/Error;
    .restart local v17    # "error":Lcom/termux/shared/models/errors/Error;
    goto/16 :goto_9

    .line 176
    .end local v17    # "error":Lcom/termux/shared/models/errors/Error;
    .restart local v6    # "error":Lcom/termux/shared/models/errors/Error;
    .restart local v13    # "zipEntry":Ljava/util/zip/ZipEntry;
    :cond_7
    :try_start_b
    invoke-virtual {v13}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v5

    .line 177
    .local v5, "zipEntryName":Ljava/lang/String;
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    .local v7, "targetFile":Ljava/io/File;
    invoke-virtual {v13}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v12

    .line 180
    .local v12, "isDirectory":Z
    if-eqz v12, :cond_8

    move-object v15, v7

    goto :goto_2

    :cond_8
    invoke-virtual {v7}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v15

    :goto_2
    invoke-static {v15}, Lcom/termux/app/TermuxInstaller;->access$000(Ljava/io/File;)Lcom/termux/shared/models/errors/Error;

    move-result-object v15

    move-object v6, v15

    .line 181
    if-eqz v6, :cond_9

    .line 182
    iget-object v0, v1, Lcom/termux/app/TermuxInstaller$1;->val$activity:Landroid/app/Activity;

    iget-object v2, v1, Lcom/termux/app/TermuxInstaller$1;->val$whenDone:Ljava/lang/Runnable;

    invoke-static {v6}, Lcom/termux/shared/models/errors/Error;->getErrorMarkdownString(Lcom/termux/shared/models/errors/Error;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/termux/app/TermuxInstaller;->showBootstrapErrorDialog(Landroid/app/Activity;Ljava/lang/Runnable;Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    .line 201
    :try_start_c
    invoke-virtual {v11}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    .line 250
    iget-object v0, v1, Lcom/termux/app/TermuxInstaller$1;->val$activity:Landroid/app/Activity;

    iget-object v2, v1, Lcom/termux/app/TermuxInstaller$1;->val$progress:Landroid/app/ProgressDialog;

    new-instance v3, Lcom/termux/app/-$$Lambda$TermuxInstaller$1$xd41MVUJilhezFSlBVbZseoZtDk;

    invoke-direct {v3, v2}, Lcom/termux/app/-$$Lambda$TermuxInstaller$1$xd41MVUJilhezFSlBVbZseoZtDk;-><init>(Landroid/app/ProgressDialog;)V

    invoke-virtual {v0, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 183
    return-void

    .line 186
    :cond_9
    if-nez v12, :cond_c

    .line 187
    :try_start_d
    new-instance v15, Ljava/io/FileOutputStream;

    invoke-direct {v15, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    .line 189
    .local v15, "outStream":Ljava/io/FileOutputStream;
    :goto_3
    :try_start_e
    invoke-virtual {v11, v8}, Ljava/util/zip/ZipInputStream;->read([B)I

    move-result v14

    move/from16 v17, v14

    move-object/from16 v18, v3

    const/4 v3, -0x1

    .local v17, "readBytes":I
    if-eq v14, v3, :cond_a

    .line 190
    move/from16 v3, v17

    const/4 v14, 0x0

    .end local v17    # "readBytes":I
    .local v3, "readBytes":I
    invoke-virtual {v15, v8, v14, v3}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    move-object/from16 v3, v18

    goto :goto_3

    .line 189
    .end local v3    # "readBytes":I
    .restart local v17    # "readBytes":I
    :cond_a
    move/from16 v3, v17

    .line 191
    .end local v17    # "readBytes":I
    :try_start_f
    invoke-virtual {v15}, Ljava/io/FileOutputStream;->close()V

    .line 192
    .end local v15    # "outStream":Ljava/io/FileOutputStream;
    const-string v3, "bin/"

    invoke-virtual {v5, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_b

    const-string v3, "libexec"

    invoke-virtual {v5, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_b

    const-string v3, "lib/apt/apt-helper"

    .line 193
    invoke-virtual {v5, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_b

    const-string v3, "lib/apt/methods"

    invoke-virtual {v5, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_b

    const-string v3, "etc/termux/bootstrap/termux-bootstrap-second-stage.sh"

    .line 194
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 196
    :cond_b
    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    const/16 v14, 0x1c0

    invoke-static {v3, v14}, Landroid/system/Os;->chmod(Ljava/lang/String;I)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    goto :goto_5

    .line 187
    .restart local v15    # "outStream":Ljava/io/FileOutputStream;
    :catchall_2
    move-exception v0

    move-object v2, v0

    :try_start_10
    invoke-virtual {v15}, Ljava/io/FileOutputStream;->close()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    goto :goto_4

    :catchall_3
    move-exception v0

    move-object v3, v0

    :try_start_11
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v6    # "error":Lcom/termux/shared/models/errors/Error;
    .end local v8    # "buffer":[B
    .end local v9    # "symlinks":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v10    # "zipBytes":[B
    .end local v11    # "zipInput":Ljava/util/zip/ZipInputStream;
    :goto_4
    throw v2
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_4

    .line 186
    .end local v15    # "outStream":Ljava/io/FileOutputStream;
    .restart local v6    # "error":Lcom/termux/shared/models/errors/Error;
    .restart local v8    # "buffer":[B
    .restart local v9    # "symlinks":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    .restart local v10    # "zipBytes":[B
    .restart local v11    # "zipInput":Ljava/util/zip/ZipInputStream;
    :cond_c
    move-object/from16 v18, v3

    .line 199
    .end local v5    # "zipEntryName":Ljava/lang/String;
    .end local v7    # "targetFile":Ljava/io/File;
    .end local v12    # "isDirectory":Z
    :cond_d
    :goto_5
    move-object/from16 v3, v18

    const/4 v7, 0x1

    goto/16 :goto_0

    .line 201
    .end local v13    # "zipEntry":Ljava/util/zip/ZipEntry;
    :cond_e
    :try_start_12
    invoke-virtual {v11}, Ljava/util/zip/ZipInputStream;->close()V

    .line 203
    .end local v11    # "zipInput":Ljava/util/zip/ZipInputStream;
    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_16

    .line 205
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/Pair;

    .line 206
    .local v5, "symlink":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v7, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    iget-object v11, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v11, Ljava/lang/String;

    invoke-static {v7, v11}, Landroid/system/Os;->symlink(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    .end local v5    # "symlink":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_6

    .line 209
    :cond_f
    const-string v3, "Moving termux prefix staging to prefix directory."

    invoke-static {v4, v3}, Lcom/termux/shared/logger/Logger;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    sget-object v3, Lcom/termux/shared/termux/TermuxConstants;->TERMUX_STAGING_PREFIX_DIR:Ljava/io/File;

    sget-object v5, Lcom/termux/shared/termux/TermuxConstants;->TERMUX_PREFIX_DIR:Ljava/io/File;

    invoke-virtual {v3, v5}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v3

    if-eqz v3, :cond_15

    iget-object v5, v1, Lcom/termux/app/TermuxInstaller$1;->val$activity:Landroid/app/Activity;

    invoke-static {v5}, Lcom/termux/app/TermuxInstaller;->rewriteBootstrapPaths(Landroid/content/Context;)V

    .line 216
    const-string v3, "/data/data/com.termux.alpine/files/usr/etc/termux/bootstrap/termux-bootstrap-second-stage.sh"

    .line 217
    .local v3, "termuxBootstrapSecondStageFile":Ljava/lang/String;
    const/4 v5, 0x0

    invoke-static {v3, v5}, Lcom/termux/shared/file/FileUtils;->fileExists(Ljava/lang/String;Z)Z

    move-result v5

    if-nez v5, :cond_10

    .line 218
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not running Termux bootstrap second stage since script not found at \""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\" path."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/termux/shared/logger/Logger;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    .line 220
    :cond_10
    const-string v5, "/data/data/com.termux.alpine/files/usr/bin/bash"

    const/4 v7, 0x1

    invoke-static {v5, v7}, Lcom/termux/shared/file/FileUtils;->fileExists(Ljava/lang/String;Z)Z

    move-result v5

    if-nez v5, :cond_11

    .line 221
    const-string v5, "Not running Termux bootstrap second stage since bash not found."

    invoke-static {v4, v5}, Lcom/termux/shared/logger/Logger;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    :cond_11
    const-string v5, "Running Termux bootstrap second stage."

    invoke-static {v4, v5}, Lcom/termux/shared/logger/Logger;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    new-instance v5, Lcom/termux/shared/models/ExecutionCommand;

    const/4 v7, -0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x1

    const/16 v24, 0x0

    move-object/from16 v17, v5

    move-object/from16 v19, v3

    invoke-direct/range {v17 .. v24}, Lcom/termux/shared/models/ExecutionCommand;-><init>(Ljava/lang/Integer;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 228
    .local v5, "executionCommand":Lcom/termux/shared/models/ExecutionCommand;
    const-string v7, "Termux Bootstrap Second Stage Command"

    iput-object v7, v5, Lcom/termux/shared/models/ExecutionCommand;->commandLabel:Ljava/lang/String;

    .line 229
    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    iput-object v11, v5, Lcom/termux/shared/models/ExecutionCommand;->backgroundCustomLogLevel:Ljava/lang/Integer;

    .line 230
    iget-object v7, v1, Lcom/termux/app/TermuxInstaller$1;->val$activity:Landroid/app/Activity;

    new-instance v11, Lcom/termux/shared/shell/TermuxShellEnvironmentClient;

    invoke-direct {v11}, Lcom/termux/shared/shell/TermuxShellEnvironmentClient;-><init>()V

    const/4 v12, 0x0

    const/4 v13, 0x1

    invoke-static {v7, v5, v12, v11, v13}, Lcom/termux/shared/shell/TermuxTask;->execute(Landroid/content/Context;Lcom/termux/shared/models/ExecutionCommand;Lcom/termux/shared/shell/TermuxTask$TermuxTaskClient;Lcom/termux/shared/shell/ShellEnvironmentClient;Z)Lcom/termux/shared/shell/TermuxTask;

    move-result-object v7

    .line 231
    .local v7, "termuxTask":Lcom/termux/shared/shell/TermuxTask;
    if-eqz v7, :cond_13

    invoke-virtual {v5}, Lcom/termux/shared/models/ExecutionCommand;->isSuccessful()Z

    move-result v11

    if-eqz v11, :cond_13

    iget-object v11, v5, Lcom/termux/shared/models/ExecutionCommand;->resultData:Lcom/termux/shared/models/ResultData;

    iget-object v11, v11, Lcom/termux/shared/models/ResultData;->exitCode:Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-eqz v11, :cond_12

    goto :goto_8

    .line 243
    .end local v5    # "executionCommand":Lcom/termux/shared/models/ExecutionCommand;
    .end local v7    # "termuxTask":Lcom/termux/shared/shell/TermuxTask;
    :cond_12
    :goto_7
    const-string v0, "Bootstrap packages installed successfully."

    invoke-static {v4, v0}, Lcom/termux/shared/logger/Logger;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    iget-object v0, v1, Lcom/termux/app/TermuxInstaller$1;->val$activity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/termux/app/TermuxInstaller;->bakeTermuxFixes(Landroid/content/Context;)V

    iget-object v0, v1, Lcom/termux/app/TermuxInstaller$1;->val$activity:Landroid/app/Activity;

    iget-object v2, v1, Lcom/termux/app/TermuxInstaller$1;->val$whenDone:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_0
    .catchall {:try_start_12 .. :try_end_12} :catchall_6

    .line 250
    .end local v3    # "termuxBootstrapSecondStageFile":Ljava/lang/String;
    .end local v6    # "error":Lcom/termux/shared/models/errors/Error;
    .end local v8    # "buffer":[B
    .end local v9    # "symlinks":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v10    # "zipBytes":[B
    iget-object v0, v1, Lcom/termux/app/TermuxInstaller$1;->val$activity:Landroid/app/Activity;

    iget-object v2, v1, Lcom/termux/app/TermuxInstaller$1;->val$progress:Landroid/app/ProgressDialog;

    new-instance v3, Lcom/termux/app/-$$Lambda$TermuxInstaller$1$xd41MVUJilhezFSlBVbZseoZtDk;

    invoke-direct {v3, v2}, Lcom/termux/app/-$$Lambda$TermuxInstaller$1$xd41MVUJilhezFSlBVbZseoZtDk;-><init>(Landroid/app/ProgressDialog;)V

    goto :goto_b

    .line 233
    .restart local v3    # "termuxBootstrapSecondStageFile":Ljava/lang/String;
    .restart local v5    # "executionCommand":Lcom/termux/shared/models/ExecutionCommand;
    .restart local v6    # "error":Lcom/termux/shared/models/errors/Error;
    .restart local v7    # "termuxTask":Lcom/termux/shared/shell/TermuxTask;
    .restart local v8    # "buffer":[B
    .restart local v9    # "symlinks":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    .restart local v10    # "zipBytes":[B
    :cond_13
    :goto_8
    :try_start_13
    iget-object v11, v1, Lcom/termux/app/TermuxInstaller$1;->val$activity:Landroid/app/Activity;

    iget-object v12, v1, Lcom/termux/app/TermuxInstaller$1;->val$whenDone:Ljava/lang/Runnable;

    invoke-virtual {v5}, Lcom/termux/shared/models/ExecutionCommand;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x1

    invoke-static {v13, v14}, Lcom/termux/shared/markdown/MarkdownUtils;->getMarkdownCodeForString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v12, v13}, Lcom/termux/app/TermuxInstaller;->showBootstrapErrorDialog(Landroid/app/Activity;Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 236
    invoke-static {v2, v0, v14}, Lcom/termux/shared/file/FileUtils;->deleteFile(Ljava/lang/String;Ljava/lang/String;Z)Lcom/termux/shared/models/errors/Error;

    move-result-object v0

    .line 237
    .end local v6    # "error":Lcom/termux/shared/models/errors/Error;
    .local v0, "error":Lcom/termux/shared/models/errors/Error;
    if-eqz v0, :cond_14

    .line 238
    invoke-virtual {v0}, Lcom/termux/shared/models/errors/Error;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/termux/shared/logger/Logger;->logErrorExtended(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_0
    .catchall {:try_start_13 .. :try_end_13} :catchall_6

    .line 250
    :cond_14
    iget-object v2, v1, Lcom/termux/app/TermuxInstaller$1;->val$activity:Landroid/app/Activity;

    iget-object v4, v1, Lcom/termux/app/TermuxInstaller$1;->val$progress:Landroid/app/ProgressDialog;

    new-instance v6, Lcom/termux/app/-$$Lambda$TermuxInstaller$1$xd41MVUJilhezFSlBVbZseoZtDk;

    invoke-direct {v6, v4}, Lcom/termux/app/-$$Lambda$TermuxInstaller$1$xd41MVUJilhezFSlBVbZseoZtDk;-><init>(Landroid/app/ProgressDialog;)V

    invoke-virtual {v2, v6}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 239
    return-void

    .line 212
    .end local v0    # "error":Lcom/termux/shared/models/errors/Error;
    .end local v3    # "termuxBootstrapSecondStageFile":Ljava/lang/String;
    .end local v5    # "executionCommand":Lcom/termux/shared/models/ExecutionCommand;
    .end local v7    # "termuxTask":Lcom/termux/shared/shell/TermuxTask;
    .restart local v6    # "error":Lcom/termux/shared/models/errors/Error;
    :cond_15
    :try_start_14
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "Moving termux prefix staging to prefix directory failed"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 204
    :cond_16
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "No SYMLINKS.txt encountered"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_0
    .catchall {:try_start_14 .. :try_end_14} :catchall_6

    .line 155
    .restart local v11    # "zipInput":Ljava/util/zip/ZipInputStream;
    :catchall_4
    move-exception v0

    move-object v2, v0

    :goto_9
    :try_start_15
    invoke-virtual {v11}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_5

    goto :goto_a

    :catchall_5
    move-exception v0

    move-object v3, v0

    :try_start_16
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_a
    throw v2
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_0
    .catchall {:try_start_16 .. :try_end_16} :catchall_6

    .line 250
    .end local v6    # "error":Lcom/termux/shared/models/errors/Error;
    .end local v8    # "buffer":[B
    .end local v9    # "symlinks":Ljava/util/List;, "Ljava/util/List<Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v10    # "zipBytes":[B
    .end local v11    # "zipInput":Ljava/util/zip/ZipInputStream;
    :catchall_6
    move-exception v0

    goto :goto_c

    .line 246
    :catch_0
    move-exception v0

    .line 247
    .local v0, "e":Ljava/lang/Exception;
    :try_start_17
    iget-object v2, v1, Lcom/termux/app/TermuxInstaller$1;->val$activity:Landroid/app/Activity;

    iget-object v3, v1, Lcom/termux/app/TermuxInstaller$1;->val$whenDone:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/termux/shared/logger/Logger;->getStackTracesStringArray(Ljava/lang/Throwable;)[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v5, v4}, Lcom/termux/shared/logger/Logger;->getStackTracesMarkdownString(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/termux/app/TermuxInstaller;->showBootstrapErrorDialog(Landroid/app/Activity;Ljava/lang/Runnable;Ljava/lang/String;)V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_6

    .line 250
    .end local v0    # "e":Ljava/lang/Exception;
    iget-object v0, v1, Lcom/termux/app/TermuxInstaller$1;->val$activity:Landroid/app/Activity;

    iget-object v2, v1, Lcom/termux/app/TermuxInstaller$1;->val$progress:Landroid/app/ProgressDialog;

    new-instance v3, Lcom/termux/app/-$$Lambda$TermuxInstaller$1$xd41MVUJilhezFSlBVbZseoZtDk;

    invoke-direct {v3, v2}, Lcom/termux/app/-$$Lambda$TermuxInstaller$1$xd41MVUJilhezFSlBVbZseoZtDk;-><init>(Landroid/app/ProgressDialog;)V

    :goto_b
    invoke-virtual {v0, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 257
    nop

    .line 258
    return-void

    .line 250
    :goto_c
    iget-object v2, v1, Lcom/termux/app/TermuxInstaller$1;->val$activity:Landroid/app/Activity;

    iget-object v3, v1, Lcom/termux/app/TermuxInstaller$1;->val$progress:Landroid/app/ProgressDialog;

    new-instance v4, Lcom/termux/app/-$$Lambda$TermuxInstaller$1$xd41MVUJilhezFSlBVbZseoZtDk;

    invoke-direct {v4, v3}, Lcom/termux/app/-$$Lambda$TermuxInstaller$1$xd41MVUJilhezFSlBVbZseoZtDk;-><init>(Landroid/app/ProgressDialog;)V

    invoke-virtual {v2, v4}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 257
    throw v0
.end method
