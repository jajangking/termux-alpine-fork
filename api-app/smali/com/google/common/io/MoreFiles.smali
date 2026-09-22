.class public abstract Lcom/google/common/io/MoreFiles;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final FILE_TREE:Lcom/google/common/graph/SuccessorsFunction;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 331
    new-instance v0, Lcom/google/common/io/MoreFiles$1;

    invoke-direct {v0}, Lcom/google/common/io/MoreFiles$1;-><init>()V

    sput-object v0, Lcom/google/common/io/MoreFiles;->FILE_TREE:Lcom/google/common/graph/SuccessorsFunction;

    return-void
.end method

.method private static addException(Ljava/util/Collection;Ljava/io/IOException;)Ljava/util/Collection;
    .locals 0

    if-nez p0, :cond_0

    .line 794
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 796
    :cond_0
    invoke-interface {p0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method private static checkAllowsInsecure(Ljava/nio/file/Path;[Lcom/google/common/io/RecursiveDeleteOption;)V
    .locals 1

    .line 782
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    sget-object v0, Lcom/google/common/io/RecursiveDeleteOption;->ALLOW_INSECURE:Lcom/google/common/io/RecursiveDeleteOption;

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 783
    :cond_0
    new-instance p1, Lcom/google/common/io/InsecureRecursiveDeleteException;

    invoke-static {p0}, Lcom/google/common/io/MoreFiles$$ExternalSyntheticApiModelOutline0;->m(Ljava/nio/file/Path;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lcom/google/common/io/InsecureRecursiveDeleteException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static concat(Ljava/util/Collection;Ljava/util/Collection;)Ljava/util/Collection;
    .locals 0

    if-nez p0, :cond_0

    return-object p1

    :cond_0
    if-eqz p1, :cond_1

    .line 812
    invoke-interface {p0, p1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    :cond_1
    return-object p0
.end method

.method private static deleteDirectoryContentsInsecure(Ljava/nio/file/DirectoryStream;)Ljava/util/Collection;
    .locals 2

    const/4 v0, 0x0

    .line 730
    :try_start_0
    invoke-static {p0}, Lcom/google/common/io/MoreFiles$$ExternalSyntheticApiModelOutline23;->m(Ljava/nio/file/DirectoryStream;)Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/io/MoreFiles$$ExternalSyntheticApiModelOutline24;->m(Ljava/lang/Object;)Ljava/nio/file/Path;

    move-result-object v1

    .line 731
    invoke-static {v1}, Lcom/google/common/io/MoreFiles;->deleteRecursivelyInsecure(Ljava/nio/file/Path;)Ljava/util/Collection;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/io/MoreFiles;->concat(Ljava/util/Collection;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0
    :try_end_0
    .catch Ljava/nio/file/DirectoryIteratorException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    return-object v0

    .line 736
    :goto_1
    invoke-static {p0}, Lcom/google/common/io/MoreFiles$$ExternalSyntheticApiModelOutline25;->m(Ljava/nio/file/DirectoryIteratorException;)Ljava/io/IOException;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/google/common/io/MoreFiles;->addException(Ljava/util/Collection;Ljava/io/IOException;)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method private static deleteDirectoryContentsSecure(Ljava/nio/file/SecureDirectoryStream;)Ljava/util/Collection;
    .locals 3

    const/4 v0, 0x0

    .line 684
    :try_start_0
    invoke-static {p0}, Lcom/google/common/io/MoreFiles$$ExternalSyntheticApiModelOutline26;->m(Ljava/nio/file/SecureDirectoryStream;)Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/google/common/io/MoreFiles$$ExternalSyntheticApiModelOutline24;->m(Ljava/lang/Object;)Ljava/nio/file/Path;

    move-result-object v2

    .line 685
    invoke-static {v2}, Lcom/google/common/io/MoreFiles$$ExternalSyntheticApiModelOutline4;->m(Ljava/nio/file/Path;)Ljava/nio/file/Path;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/google/common/io/MoreFiles;->deleteRecursivelySecure(Ljava/nio/file/SecureDirectoryStream;Ljava/nio/file/Path;)Ljava/util/Collection;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/google/common/io/MoreFiles;->concat(Ljava/util/Collection;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0
    :try_end_0
    .catch Ljava/nio/file/DirectoryIteratorException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :cond_0
    return-object v0

    .line 690
    :goto_1
    invoke-static {p0}, Lcom/google/common/io/MoreFiles$$ExternalSyntheticApiModelOutline25;->m(Ljava/nio/file/DirectoryIteratorException;)Ljava/io/IOException;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/google/common/io/MoreFiles;->addException(Ljava/util/Collection;Ljava/io/IOException;)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public static varargs deleteRecursively(Ljava/nio/file/Path;[Lcom/google/common/io/RecursiveDeleteOption;)V
    .locals 4

    .line 558
    invoke-static {p0}, Lcom/google/common/io/MoreFiles;->getParentPath(Ljava/nio/file/Path;)Ljava/nio/file/Path;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 566
    :try_start_0
    invoke-static {v0}, Lcom/google/common/io/MoreFiles$$ExternalSyntheticApiModelOutline1;->m(Ljava/nio/file/Path;)Ljava/nio/file/DirectoryStream;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 567
    :try_start_1
    invoke-static {v0}, Lcom/google/common/io/MoreFiles$$ExternalSyntheticApiModelOutline2;->m(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 569
    invoke-static {v0}, Lcom/google/common/io/MoreFiles$$ExternalSyntheticApiModelOutline3;->m(Ljava/lang/Object;)Ljava/nio/file/SecureDirectoryStream;

    move-result-object v2

    .line 570
    invoke-static {p0}, Lcom/google/common/io/MoreFiles$$ExternalSyntheticApiModelOutline4;->m(Ljava/nio/file/Path;)Ljava/nio/file/Path;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/common/io/MoreFiles;->deleteRecursivelySecure(Ljava/nio/file/SecureDirectoryStream;Ljava/nio/file/Path;)Ljava/util/Collection;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v2, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 572
    :try_start_2
    invoke-static {v0}, Lcom/google/common/io/MoreFiles$$ExternalSyntheticApiModelOutline5;->m(Ljava/nio/file/DirectoryStream;)V

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_4

    :cond_1
    :goto_1
    if-nez v2, :cond_3

    .line 575
    invoke-static {p0, p1}, Lcom/google/common/io/MoreFiles;->checkAllowsInsecure(Ljava/nio/file/Path;[Lcom/google/common/io/RecursiveDeleteOption;)V

    .line 576
    invoke-static {p0}, Lcom/google/common/io/MoreFiles;->deleteRecursivelyInsecure(Ljava/nio/file/Path;)Ljava/util/Collection;

    move-result-object v1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_5

    .line 566
    :goto_2
    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v2

    if-eqz v0, :cond_2

    .line 572
    :try_start_4
    invoke-static {v0}, Lcom/google/common/io/MoreFiles$$ExternalSyntheticApiModelOutline5;->m(Ljava/nio/file/DirectoryStream;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_3

    :catchall_2
    move-exception v0

    :try_start_5
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_3
    throw v2
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    :goto_4
    if-eqz v1, :cond_5

    .line 582
    invoke-interface {v1, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_5
    if-eqz v1, :cond_4

    .line 587
    invoke-static {p0, v1}, Lcom/google/common/io/MoreFiles;->throwDeleteFailed(Ljava/nio/file/Path;Ljava/util/Collection;)V

    :cond_4
    return-void

    .line 580
    :cond_5
    throw p1

    .line 560
    :cond_6
    invoke-static {}, Lcom/google/common/io/MoreFiles$$ExternalSyntheticApiModelOutline28;->m()V

    invoke-static {p0}, Lcom/google/common/io/MoreFiles$$ExternalSyntheticApiModelOutline0;->m(Ljava/nio/file/Path;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "can\'t delete recursively"

    invoke-static {p0, v1, p1}, Lcom/google/common/io/MoreFiles$$ExternalSyntheticApiModelOutline27;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/nio/file/FileSystemException;

    move-result-object p0

    throw p0
.end method

.method private static deleteRecursivelyInsecure(Ljava/nio/file/Path;)Ljava/util/Collection;
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 702
    :try_start_0
    new-array v0, v0, [Ljava/nio/file/LinkOption;

    invoke-static {}, Lcom/google/common/io/MoreFiles$$ExternalSyntheticApiModelOutline6;->m()Ljava/nio/file/LinkOption;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v0, v3

    invoke-static {p0, v0}, Lcom/google/common/io/MoreFiles$$ExternalSyntheticApiModelOutline7;->m(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 703
    invoke-static {p0}, Lcom/google/common/io/MoreFiles$$ExternalSyntheticApiModelOutline1;->m(Ljava/nio/file/Path;)Ljava/nio/file/DirectoryStream;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 704
    :try_start_1
    invoke-static {v0}, Lcom/google/common/io/MoreFiles;->deleteDirectoryContentsInsecure(Ljava/nio/file/DirectoryStream;)Ljava/util/Collection;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_1

    .line 705
    :try_start_2
    invoke-static {v0}, Lcom/google/common/io/MoreFiles$$ExternalSyntheticApiModelOutline5;->m(Ljava/nio/file/DirectoryStream;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_2

    :catchall_0
    move-exception p0

    .line 703
    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v2

    if-eqz v0, :cond_0

    .line 705
    :try_start_4
    invoke-static {v0}, Lcom/google/common/io/MoreFiles$$ExternalSyntheticApiModelOutline5;->m(Ljava/nio/file/DirectoryStream;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v0

    :try_start_5
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    throw v2

    :cond_1
    :goto_1
    if-nez v1, :cond_2

    .line 711
    invoke-static {p0}, Lcom/google/common/io/MoreFiles$$ExternalSyntheticApiModelOutline8;->m(Ljava/nio/file/Path;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    :cond_2
    return-object v1

    .line 716
    :goto_2
    invoke-static {v1, p0}, Lcom/google/common/io/MoreFiles;->addException(Ljava/util/Collection;Ljava/io/IOException;)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method private static deleteRecursivelySecure(Ljava/nio/file/SecureDirectoryStream;Ljava/nio/file/Path;)Ljava/util/Collection;
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 655
    :try_start_0
    new-array v2, v0, [Ljava/nio/file/LinkOption;

    invoke-static {}, Lcom/google/common/io/MoreFiles$$ExternalSyntheticApiModelOutline6;->m()Ljava/nio/file/LinkOption;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {p0, p1, v2}, Lcom/google/common/io/MoreFiles;->isDirectory(Ljava/nio/file/SecureDirectoryStream;Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 656
    new-array v0, v0, [Ljava/nio/file/LinkOption;

    invoke-static {}, Lcom/google/common/io/MoreFiles$$ExternalSyntheticApiModelOutline6;->m()Ljava/nio/file/LinkOption;

    move-result-object v2

    aput-object v2, v0, v4

    invoke-static {p0, p1, v0}, Lcom/google/common/io/MoreFiles$$ExternalSyntheticApiModelOutline9;->m(Ljava/nio/file/SecureDirectoryStream;Ljava/lang/Object;[Ljava/nio/file/LinkOption;)Ljava/nio/file/SecureDirectoryStream;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 657
    :try_start_1
    invoke-static {v0}, Lcom/google/common/io/MoreFiles;->deleteDirectoryContentsSecure(Ljava/nio/file/SecureDirectoryStream;)Ljava/util/Collection;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_0

    .line 658
    :try_start_2
    invoke-static {v0}, Lcom/google/common/io/MoreFiles$$ExternalSyntheticApiModelOutline10;->m(Ljava/nio/file/SecureDirectoryStream;)V

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_3

    :cond_0
    :goto_0
    if-nez v1, :cond_3

    .line 663
    invoke-static {p0, p1}, Lcom/google/common/io/MoreFiles$$ExternalSyntheticApiModelOutline11;->m(Ljava/nio/file/SecureDirectoryStream;Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catchall_0
    move-exception p0

    .line 656
    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    if-eqz v0, :cond_1

    .line 658
    :try_start_4
    invoke-static {v0}, Lcom/google/common/io/MoreFiles$$ExternalSyntheticApiModelOutline10;->m(Ljava/nio/file/SecureDirectoryStream;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v0

    :try_start_5
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    throw p1

    .line 666
    :cond_2
    invoke-static {p0, p1}, Lcom/google/common/io/MoreFiles$$ExternalSyntheticApiModelOutline12;->m(Ljava/nio/file/SecureDirectoryStream;Ljava/lang/Object;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    :cond_3
    :goto_2
    return-object v1

    .line 671
    :goto_3
    invoke-static {v1, p0}, Lcom/google/common/io/MoreFiles;->addException(Ljava/util/Collection;Ljava/io/IOException;)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method private static getParentPath(Ljava/nio/file/Path;)Ljava/nio/file/Path;
    .locals 2

    .line 747
    invoke-static {p0}, Lcom/google/common/io/MoreFiles$$ExternalSyntheticApiModelOutline14;->m(Ljava/nio/file/Path;)Ljava/nio/file/Path;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 760
    :cond_0
    invoke-static {p0}, Lcom/google/common/io/MoreFiles$$ExternalSyntheticApiModelOutline15;->m(Ljava/nio/file/Path;)I

    move-result v0

    if-nez v0, :cond_1

    const/4 p0, 0x0

    return-object p0

    .line 775
    :cond_1
    invoke-static {p0}, Lcom/google/common/io/MoreFiles$$ExternalSyntheticApiModelOutline16;->m(Ljava/nio/file/Path;)Ljava/nio/file/FileSystem;

    move-result-object p0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "."

    invoke-static {p0, v1, v0}, Lcom/google/common/io/MoreFiles$$ExternalSyntheticApiModelOutline17;->m(Ljava/nio/file/FileSystem;Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p0

    return-object p0
.end method

.method private static varargs isDirectory(Ljava/nio/file/SecureDirectoryStream;Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z
    .locals 1

    .line 373
    invoke-static {}, Lcom/google/common/io/MoreFiles$$ExternalSyntheticApiModelOutline18;->m()Ljava/lang/Class;

    move-result-object v0

    invoke-static {p0, p1, v0, p2}, Lcom/google/common/io/MoreFiles$$ExternalSyntheticApiModelOutline19;->m(Ljava/nio/file/SecureDirectoryStream;Ljava/lang/Object;Ljava/lang/Class;[Ljava/nio/file/LinkOption;)Ljava/nio/file/attribute/FileAttributeView;

    move-result-object p0

    invoke-static {p0}, Lcom/google/common/io/MoreFiles$$ExternalSyntheticApiModelOutline20;->m(Ljava/lang/Object;)Ljava/nio/file/attribute/BasicFileAttributeView;

    move-result-object p0

    .line 374
    invoke-static {p0}, Lcom/google/common/io/MoreFiles$$ExternalSyntheticApiModelOutline21;->m(Ljava/nio/file/attribute/BasicFileAttributeView;)Ljava/nio/file/attribute/BasicFileAttributes;

    move-result-object p0

    .line 375
    invoke-static {p0}, Lcom/google/common/io/MoreFiles$$ExternalSyntheticApiModelOutline22;->m(Ljava/nio/file/attribute/BasicFileAttributes;)Z

    move-result p0

    return p0
.end method

.method private static throwDeleteFailed(Ljava/nio/file/Path;Ljava/util/Collection;)V
    .locals 2

    .line 826
    invoke-static {}, Lcom/google/common/io/MoreFiles$$ExternalSyntheticApiModelOutline28;->m()V

    .line 828
    invoke-static {p0}, Lcom/google/common/io/MoreFiles$$ExternalSyntheticApiModelOutline0;->m(Ljava/nio/file/Path;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    const-string v1, "failed to delete one or more files; see suppressed exceptions for details"

    invoke-static {p0, v0, v1}, Lcom/google/common/io/MoreFiles$$ExternalSyntheticApiModelOutline27;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/nio/file/FileSystemException;

    move-result-object p0

    .line 831
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/IOException;

    .line 832
    invoke-static {p0, v0}, Lcom/google/common/io/MoreFiles$$ExternalSyntheticApiModelOutline13;->m(Ljava/nio/file/FileSystemException;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 834
    :cond_0
    throw p0
.end method
