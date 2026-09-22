.class public abstract Lcom/termux/api/util/ResultReturner;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/termux/api/util/ResultReturner$ResultWriter;,
        Lcom/termux/api/util/ResultReturner$WithAncillaryFd;,
        Lcom/termux/api/util/ResultReturner$BinaryOutput;,
        Lcom/termux/api/util/ResultReturner$WithInput;,
        Lcom/termux/api/util/ResultReturner$ResultJsonWriter;,
        Lcom/termux/api/util/ResultReturner$WithStringInput;
    }
.end annotation


# static fields
.field public static context:Landroid/content/Context;


# direct methods
.method public static synthetic $r8$lambda$RFR2zSHu5FsJH7JvuCx4CPnUmMY(Landroid/content/Intent;Lcom/termux/api/util/ResultReturner$ResultWriter;Landroid/content/BroadcastReceiver$PendingResult;Landroid/content/BroadcastReceiver;Landroid/app/Activity;Ljava/lang/Throwable;)V
    .locals 0

    .line 0
    invoke-static/range {p0 .. p5}, Lcom/termux/api/util/ResultReturner;->lambda$returnData$0(Landroid/content/Intent;Lcom/termux/api/util/ResultReturner$ResultWriter;Landroid/content/BroadcastReceiver$PendingResult;Landroid/content/BroadcastReceiver;Landroid/app/Activity;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static copyIntentExtras(Landroid/content/Intent;Landroid/content/Intent;)V
    .locals 2

    .line 184
    const-string v0, "api_method"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 185
    const-string v0, "socket_output"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 186
    const-string v0, "socket_input"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-void
.end method

.method public static getApiLocalSocketAddress(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/net/LocalSocketAddress;
    .locals 3

    .line 204
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 205
    const-string v0, "com.termux"

    invoke-static {p0, v0}, Lcom/termux/shared/android/PackageUtils;->getApplicationInfoForPackage(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 212
    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    const-string v0, "/data/data/com.termux"

    filled-new-array {p0, v0}, [Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x1

    .line 214
    invoke-static {p2, p0, v0}, Lcom/termux/shared/file/FileUtils;->isPathInDirPaths(Ljava/lang/String;Ljava/util/List;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 219
    new-instance p0, Landroid/net/LocalSocketAddress;

    sget-object p1, Landroid/net/LocalSocketAddress$Namespace;->FILESYSTEM:Landroid/net/LocalSocketAddress$Namespace;

    invoke-direct {p0, p2, p1}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    return-object p0

    .line 215
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " socket address \""

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\" is not under Termux app data directories: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 208
    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Failed to get ApplicationInfo for the Termux app package: com.termux"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 221
    :cond_2
    new-instance p0, Landroid/net/LocalSocketAddress;

    sget-object p1, Landroid/net/LocalSocketAddress$Namespace;->ABSTRACT:Landroid/net/LocalSocketAddress$Namespace;

    invoke-direct {p0, p2, p1}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    return-object p0
.end method

.method private static synthetic lambda$returnData$0(Landroid/content/Intent;Lcom/termux/api/util/ResultReturner$ResultWriter;Landroid/content/BroadcastReceiver$PendingResult;Landroid/content/BroadcastReceiver;Landroid/app/Activity;Ljava/lang/Throwable;)V
    .locals 8

    .line 242
    const-string v0, "Failed to finish"

    const-string v1, "Failed to close"

    const-string v2, "ResultReturner"

    const/4 v3, 0x0

    .line 245
    :try_start_0
    new-instance v4, Landroid/net/LocalSocket;

    invoke-direct {v4}, Landroid/net/LocalSocket;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 246
    :try_start_1
    const-string v5, "socket_output"

    invoke-virtual {p0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_8

    .line 247
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_8

    .line 249
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Connecting to output socket \""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/termux/shared/logger/Logger;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    sget-object v6, Lcom/termux/api/util/ResultReturner;->context:Landroid/content/Context;

    const-string v7, "output"

    invoke-static {v6, v7, v5}, Lcom/termux/api/util/ResultReturner;->getApiLocalSocketAddress(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/net/LocalSocketAddress;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V

    .line 251
    new-instance v5, Ljava/io/PrintWriter;

    invoke-virtual {v4}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    if-eqz p1, :cond_4

    .line 254
    :try_start_2
    instance-of v3, p1, Lcom/termux/api/util/ResultReturner$WithAncillaryFd;

    if-eqz v3, :cond_0

    .line 255
    move-object v3, p1

    check-cast v3, Lcom/termux/api/util/ResultReturner$WithAncillaryFd;

    invoke-virtual {v3, v4}, Lcom/termux/api/util/ResultReturner$WithAncillaryFd;->setOutputSocketForFds(Landroid/net/LocalSocket;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    move-object v3, v5

    goto/16 :goto_7

    .line 257
    :cond_0
    :goto_0
    instance-of v3, p1, Lcom/termux/api/util/ResultReturner$BinaryOutput;

    if-eqz v3, :cond_1

    .line 258
    move-object v3, p1

    check-cast v3, Lcom/termux/api/util/ResultReturner$BinaryOutput;

    .line 259
    invoke-virtual {v4}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v6

    invoke-virtual {v3, v6}, Lcom/termux/api/util/ResultReturner$BinaryOutput;->setOutput(Ljava/io/OutputStream;)V

    .line 261
    :cond_1
    instance-of v3, p1, Lcom/termux/api/util/ResultReturner$WithInput;

    if-eqz v3, :cond_3

    .line 262
    new-instance v3, Landroid/net/LocalSocket;

    invoke-direct {v3}, Landroid/net/LocalSocket;-><init>()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 263
    :try_start_3
    const-string v6, "socket_input"

    invoke-virtual {p0, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 264
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_2

    .line 266
    sget-object v6, Lcom/termux/api/util/ResultReturner;->context:Landroid/content/Context;

    const-string v7, "input"

    invoke-static {v6, v7, p0}, Lcom/termux/api/util/ResultReturner;->getApiLocalSocketAddress(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/net/LocalSocketAddress;

    move-result-object p0

    invoke-virtual {v3, p0}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V

    .line 267
    move-object p0, p1

    check-cast p0, Lcom/termux/api/util/ResultReturner$WithInput;

    invoke-virtual {v3}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/termux/api/util/ResultReturner$WithInput;->setInput(Ljava/io/InputStream;)V

    .line 268
    invoke-interface {p1, v5}, Lcom/termux/api/util/ResultReturner$ResultWriter;->writeResult(Ljava/io/PrintWriter;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 269
    :try_start_4
    invoke-virtual {v3}, Landroid/net/LocalSocket;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_3

    :catchall_1
    move-exception p0

    goto :goto_1

    .line 265
    :cond_2
    :try_start_5
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Missing \'socket_input\' extra"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 262
    :goto_1
    :try_start_6
    invoke-virtual {v3}, Landroid/net/LocalSocket;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception p1

    :try_start_7
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw p0

    .line 271
    :cond_3
    invoke-interface {p1, v5}, Lcom/termux/api/util/ResultReturner$ResultWriter;->writeResult(Ljava/io/PrintWriter;)V

    .line 273
    :goto_3
    instance-of p0, p1, Lcom/termux/api/util/ResultReturner$WithAncillaryFd;

    if-eqz p0, :cond_4

    .line 274
    check-cast p1, Lcom/termux/api/util/ResultReturner$WithAncillaryFd;

    invoke-virtual {p1}, Lcom/termux/api/util/ResultReturner$WithAncillaryFd;->cleanupFds()V

    :cond_4
    const/4 p0, 0x0

    if-eqz p2, :cond_5

    .line 279
    invoke-virtual {p3}, Landroid/content/BroadcastReceiver;->isOrderedBroadcast()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 280
    invoke-virtual {p2, p0}, Landroid/content/BroadcastReceiver$PendingResult;->setResultCode(I)V

    goto :goto_4

    :cond_5
    if-eqz p4, :cond_6

    .line 282
    invoke-virtual {p4, p0}, Landroid/app/Activity;->setResult(I)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 301
    :cond_6
    :goto_4
    :try_start_8
    invoke-virtual {v5}, Ljava/io/PrintWriter;->close()V

    .line 303
    invoke-virtual {v4}, Landroid/net/LocalSocket;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    goto :goto_5

    :catch_0
    move-exception p0

    .line 305
    invoke-static {v2, v1, p0}, Lcom/termux/shared/logger/Logger;->logStackTraceWithMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_5
    if-eqz p2, :cond_7

    .line 310
    :try_start_9
    invoke-virtual {p2}, Landroid/content/BroadcastReceiver$PendingResult;->finish()V

    goto/16 :goto_d

    :catch_1
    move-exception p0

    goto :goto_6

    :cond_7
    if-eqz p4, :cond_f

    .line 312
    invoke-virtual {p4}, Landroid/app/Activity;->finish()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    goto :goto_d

    .line 315
    :goto_6
    invoke-static {v2, v0, p0}, Lcom/termux/shared/logger/Logger;->logStackTraceWithMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_d

    :catchall_3
    move-exception p0

    goto :goto_7

    .line 248
    :cond_8
    :try_start_a
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Missing \'socket_output\' extra"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    :catchall_4
    move-exception p0

    move-object v4, v3

    .line 285
    :goto_7
    :try_start_b
    const-string p1, "Error in ResultReturner"

    if-eqz p5, :cond_9

    .line 287
    invoke-virtual {p0, p5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_8

    :catchall_5
    move-exception p0

    goto :goto_e

    .line 288
    :cond_9
    :goto_8
    invoke-static {v2, p1, p0}, Lcom/termux/shared/logger/Logger;->logStackTraceWithMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 290
    sget-object p5, Lcom/termux/api/util/ResultReturner;->context:Landroid/content/Context;

    const-string v5, "Termux:API Error"

    invoke-static {p5, v2, v5, p1, p0}, Lcom/termux/shared/termux/plugins/TermuxPluginUtils;->sendPluginCommandErrorNotification(Landroid/content/Context;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x1

    if-eqz p2, :cond_a

    if-eqz p3, :cond_a

    .line 293
    invoke-virtual {p3}, Landroid/content/BroadcastReceiver;->isOrderedBroadcast()Z

    move-result p1

    if-eqz p1, :cond_a

    .line 294
    invoke-virtual {p2, p0}, Landroid/content/BroadcastReceiver$PendingResult;->setResultCode(I)V

    goto :goto_9

    :cond_a
    if-eqz p4, :cond_b

    .line 296
    invoke-virtual {p4, p0}, Landroid/app/Activity;->setResult(I)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    :cond_b
    :goto_9
    if-eqz v3, :cond_c

    .line 301
    :try_start_c
    invoke-virtual {v3}, Ljava/io/PrintWriter;->close()V

    goto :goto_a

    :catch_2
    move-exception p0

    goto :goto_b

    :cond_c
    :goto_a
    if-eqz v4, :cond_d

    .line 303
    invoke-virtual {v4}, Landroid/net/LocalSocket;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_2

    goto :goto_c

    .line 305
    :goto_b
    invoke-static {v2, v1, p0}, Lcom/termux/shared/logger/Logger;->logStackTraceWithMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_d
    :goto_c
    if-eqz p2, :cond_e

    .line 310
    :try_start_d
    invoke-virtual {p2}, Landroid/content/BroadcastReceiver$PendingResult;->finish()V

    goto :goto_d

    :cond_e
    if-eqz p4, :cond_f

    .line 312
    invoke-virtual {p4}, Landroid/app/Activity;->finish()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_1

    :cond_f
    :goto_d
    return-void

    :goto_e
    if-eqz v3, :cond_10

    .line 301
    :try_start_e
    invoke-virtual {v3}, Ljava/io/PrintWriter;->close()V

    goto :goto_f

    :catch_3
    move-exception p1

    goto :goto_10

    :cond_10
    :goto_f
    if-eqz v4, :cond_11

    .line 303
    invoke-virtual {v4}, Landroid/net/LocalSocket;->close()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_3

    goto :goto_11

    .line 305
    :goto_10
    invoke-static {v2, v1, p1}, Lcom/termux/shared/logger/Logger;->logStackTraceWithMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_11
    :goto_11
    if-nez p2, :cond_12

    if-eqz p4, :cond_13

    .line 312
    :try_start_f
    invoke-virtual {p4}, Landroid/app/Activity;->finish()V

    goto :goto_13

    :catch_4
    move-exception p1

    goto :goto_12

    .line 310
    :cond_12
    invoke-virtual {p2}, Landroid/content/BroadcastReceiver$PendingResult;->finish()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_4

    goto :goto_13

    .line 315
    :goto_12
    invoke-static {v2, v0, p1}, Lcom/termux/shared/logger/Logger;->logStackTraceWithMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 317
    :cond_13
    :goto_13
    throw p0
.end method

.method public static noteDone(Landroid/content/BroadcastReceiver;Landroid/content/Intent;)V
    .locals 1

    const/4 v0, 0x0

    .line 180
    invoke-static {p0, p1, v0}, Lcom/termux/api/util/ResultReturner;->returnData(Ljava/lang/Object;Landroid/content/Intent;Lcom/termux/api/util/ResultReturner$ResultWriter;)V

    return-void
.end method

.method public static returnData(Ljava/lang/Object;Landroid/content/Intent;Lcom/termux/api/util/ResultReturner$ResultWriter;)V
    .locals 9

    .line 233
    instance-of v0, p0, Landroid/content/BroadcastReceiver;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, p0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    move-object v6, v0

    check-cast v6, Landroid/content/BroadcastReceiver;

    .line 234
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_1

    move-object v0, p0

    goto :goto_1

    :cond_1
    move-object v0, v1

    :goto_1
    move-object v7, v0

    check-cast v7, Landroid/app/Activity;

    if-eqz v6, :cond_2

    .line 235
    invoke-virtual {v6}, Landroid/content/BroadcastReceiver;->goAsync()Landroid/content/BroadcastReceiver$PendingResult;

    move-result-object v0

    move-object v5, v0

    goto :goto_2

    :cond_2
    move-object v5, v1

    .line 239
    :goto_2
    invoke-static {p0}, Lcom/termux/api/util/ResultReturner;->shouldRunThreadForResultRunnable(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v1, Ljava/lang/Exception;

    const-string v0, "Called by:"

    invoke-direct {v1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    :cond_3
    move-object v8, v1

    .line 241
    new-instance v0, Lcom/termux/api/util/ResultReturner$$ExternalSyntheticLambda0;

    move-object v2, v0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v2 .. v8}, Lcom/termux/api/util/ResultReturner$$ExternalSyntheticLambda0;-><init>(Landroid/content/Intent;Lcom/termux/api/util/ResultReturner$ResultWriter;Landroid/content/BroadcastReceiver$PendingResult;Landroid/content/BroadcastReceiver;Landroid/app/Activity;Ljava/lang/Throwable;)V

    .line 320
    invoke-static {p0}, Lcom/termux/api/util/ResultReturner;->shouldRunThreadForResultRunnable(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    .line 321
    new-instance p0, Ljava/lang/Thread;

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    goto :goto_3

    .line 323
    :cond_4
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :goto_3
    return-void
.end method

.method public static setContext(Landroid/content/Context;)V
    .locals 0

    .line 328
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sput-object p0, Lcom/termux/api/util/ResultReturner;->context:Landroid/content/Context;

    return-void
.end method

.method public static shouldRunThreadForResultRunnable(Ljava/lang/Object;)Z
    .locals 0

    .line 226
    instance-of p0, p0, Landroid/app/IntentService;

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method
