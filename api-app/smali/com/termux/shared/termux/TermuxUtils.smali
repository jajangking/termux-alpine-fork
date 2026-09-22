.class public abstract Lcom/termux/shared/termux/TermuxUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/termux/shared/termux/TermuxUtils$AppInfoMode;
    }
.end annotation


# direct methods
.method public static getAPKRelease(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    .line 702
    const-string p0, "null"

    return-object p0

    .line 704
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    const/4 v0, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "F7A038EB551F1BE8FDF388686B784ABAB4552A5D82DF423E3D8F1B5CBE1C69AE"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    goto :goto_0

    :sswitch_1
    const-string v1, "738F0A30A04D3C8A1BE304AF18D0779BCF3EA88FB60808F657A3521861C2EBF9"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    goto :goto_0

    :sswitch_2
    const-string v1, "B6DA01480EEFD5FBF2CD3771B8D1021EC791304BDD6C4BF41D3FAABAD48EE5E1"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    goto :goto_0

    :sswitch_3
    const-string v1, "228FB2CFE90831C1499EC3CCAF61E96E8E1CE70766B9474672CE427334D41C42"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 714
    const-string p0, "Unknown"

    return-object p0

    .line 712
    :pswitch_0
    const-string p0, "Termux Devs"

    return-object p0

    .line 710
    :pswitch_1
    const-string p0, "Google Play Store"

    return-object p0

    .line 708
    :pswitch_2
    const-string p0, "Github"

    return-object p0

    .line 706
    :pswitch_3
    const-string p0, "F-Droid"

    return-object p0

    :sswitch_data_0
    .sparse-switch
        -0x51543647 -> :sswitch_3
        -0x3dd0a505 -> :sswitch_2
        -0x3828258c -> :sswitch_1
        0x3cc58cb7 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getAppInfoMarkdownString(Landroid/content/Context;Lcom/termux/shared/termux/TermuxUtils$AppInfoMode;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 319
    invoke-static {p0, p1, v0}, Lcom/termux/shared/termux/TermuxUtils;->getAppInfoMarkdownString(Landroid/content/Context;Lcom/termux/shared/termux/TermuxUtils$AppInfoMode;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getAppInfoMarkdownString(Landroid/content/Context;Lcom/termux/shared/termux/TermuxUtils$AppInfoMode;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 338
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 339
    sget-object v2, Lcom/termux/shared/termux/TermuxUtils$1;->$SwitchMap$com$termux$shared$termux$TermuxUtils$AppInfoMode:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v2, p1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq p1, v2, :cond_9

    const/4 v4, 0x2

    if-eq p1, v4, :cond_8

    const/4 v2, 0x3

    if-eq p1, v2, :cond_6

    const/4 v2, 0x4

    if-eq p1, v2, :cond_5

    const/4 v2, 0x5

    if-eq p1, v2, :cond_1

    return-object v0

    .line 358
    :cond_1
    invoke-static {p0, v3}, Lcom/termux/shared/termux/TermuxUtils;->getAppInfoMarkdownString(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 359
    invoke-static {p2}, Lcom/termux/shared/data/DataUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 361
    sget-object p1, Lcom/termux/shared/termux/TermuxConstants;->TERMUX_PLUGIN_APP_PACKAGE_NAMES_LIST:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 362
    invoke-static {p0, p2}, Lcom/termux/shared/android/PackageUtils;->getContextForPackage(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 364
    invoke-static {p1, v3}, Lcom/termux/shared/termux/TermuxUtils;->getAppInfoMarkdownString(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 366
    :cond_2
    invoke-static {p0, p2}, Lcom/termux/shared/android/AndroidUtils;->getAppInfoMarkdownString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 368
    :cond_3
    invoke-static {p0, p2}, Lcom/termux/shared/android/AndroidUtils;->getAppInfoMarkdownString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_4

    .line 372
    invoke-static {p0, p2}, Lcom/termux/shared/android/PackageUtils;->getApplicationInfoForPackage(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 374
    const-string p2, "\n\n## "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0, p1}, Lcom/termux/shared/android/PackageUtils;->getAppNameForPackage(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " App Info\n"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 375
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 376
    const-string p0, "\n##\n"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 380
    :cond_4
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 355
    :cond_5
    invoke-static {p0}, Lcom/termux/shared/termux/TermuxUtils;->getTermuxPluginAppsInfoMarkdownString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 347
    :cond_6
    invoke-static {p0, v3}, Lcom/termux/shared/termux/TermuxUtils;->getAppInfoMarkdownString(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 349
    invoke-static {p0}, Lcom/termux/shared/termux/TermuxUtils;->getTermuxPluginAppsInfoMarkdownString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_7

    .line 351
    const-string p1, "\n\n"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 352
    :cond_7
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 344
    :cond_8
    invoke-static {p0, v2}, Lcom/termux/shared/termux/TermuxUtils;->getAppInfoMarkdownString(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 341
    :cond_9
    invoke-static {p0, v3}, Lcom/termux/shared/termux/TermuxUtils;->getAppInfoMarkdownString(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getAppInfoMarkdownString(Landroid/content/Context;Z)Ljava/lang/String;
    .locals 7

    if-nez p0, :cond_0

    .line 432
    const-string p0, "null"

    return-object p0

    .line 434
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 436
    invoke-static {p0}, Lcom/termux/shared/termux/TermuxUtils;->getTermuxPackageContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 441
    invoke-static {v1}, Lcom/termux/shared/android/PackageUtils;->getPackageNameForPackage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 442
    invoke-static {v1}, Lcom/termux/shared/android/PackageUtils;->getAppNameForPackage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    move-object v3, v2

    .line 445
    :goto_0
    invoke-static {p0}, Lcom/termux/shared/android/PackageUtils;->getPackageNameForPackage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 446
    invoke-static {p0}, Lcom/termux/shared/android/PackageUtils;->getAppNameForPackage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    if-eqz v2, :cond_2

    .line 448
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    .line 451
    :goto_1
    const-string v4, " App Info\n"

    const-string v6, "## "

    if-eqz p1, :cond_3

    if-nez v2, :cond_3

    .line 452
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " App Info (Current)\n"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 454
    :cond_3
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 455
    :goto_2
    invoke-static {p0}, Lcom/termux/shared/termux/TermuxUtils;->getAppInfoMarkdownStringInner(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 456
    const-string p0, "\n##\n"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_4

    if-eqz v1, :cond_4

    if-nez v2, :cond_4

    .line 459
    const-string p1, "\n\n## "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 460
    invoke-static {v1}, Lcom/termux/shared/termux/TermuxUtils;->getAppInfoMarkdownStringInner(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 461
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 465
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getAppInfoMarkdownStringInner(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .line 475
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 477
    invoke-static {p0}, Lcom/termux/shared/android/AndroidUtils;->getAppInfoMarkdownString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 479
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.termux.alpine"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 480
    const-string v1, "TERMUX_APP_PACKAGE_MANAGER"

    sget-object v2, Lcom/termux/shared/termux/TermuxBootstrap;->TERMUX_APP_PACKAGE_MANAGER:Lcom/termux/shared/termux/TermuxBootstrap$PackageManager;

    invoke-static {v0, v1, v2}, Lcom/termux/shared/android/AndroidUtils;->appendPropertyToMarkdown(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 481
    const-string v1, "TERMUX_APP_PACKAGE_VARIANT"

    sget-object v2, Lcom/termux/shared/termux/TermuxBootstrap;->TERMUX_APP_PACKAGE_VARIANT:Lcom/termux/shared/termux/TermuxBootstrap$PackageVariant;

    invoke-static {v0, v1, v2}, Lcom/termux/shared/android/AndroidUtils;->appendPropertyToMarkdown(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    const/4 v1, 0x1

    .line 485
    invoke-static {p0, v1, v1}, Lcom/termux/shared/termux/file/TermuxFileUtils;->isTermuxFilesDirectoryAccessible(Landroid/content/Context;ZZ)Lcom/termux/shared/errors/Error;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 487
    const-string v2, "TERMUX_FILES_DIR"

    const-string v3, "/data/data/com.termux/files"

    invoke-static {v0, v2, v3}, Lcom/termux/shared/android/AndroidUtils;->appendPropertyToMarkdown(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 488
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "false - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/termux/shared/errors/Error;->getMinimalErrorString(Lcom/termux/shared/errors/Error;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "IS_TERMUX_FILES_DIR_ACCESSIBLE"

    invoke-static {v0, v2, v1}, Lcom/termux/shared/android/AndroidUtils;->appendPropertyToMarkdown(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 491
    :cond_1
    invoke-static {p0}, Lcom/termux/shared/android/PackageUtils;->getSigningCertificateSHA256DigestForPackage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 493
    const-string v1, "APK_RELEASE"

    invoke-static {p0}, Lcom/termux/shared/termux/TermuxUtils;->getAPKRelease(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/termux/shared/android/AndroidUtils;->appendPropertyToMarkdown(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 494
    const-string v1, "SIGNING_CERTIFICATE_SHA256_DIGEST"

    invoke-static {v0, v1, p0}, Lcom/termux/shared/android/AndroidUtils;->appendPropertyToMarkdown(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;)V

    .line 497
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getContextForPackageOrExitApp(Landroid/content/Context;Ljava/lang/String;Z)Landroid/content/Context;
    .locals 1

    .line 140
    const-string v0, "https://github.com/termux/termux-app"

    invoke-static {p0, p1, p2, v0}, Lcom/termux/shared/android/PackageUtils;->getContextForPackageOrExitApp(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;)Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method public static getImportantLinksMarkdownString(Landroid/content/Context;)Ljava/lang/String;
    .locals 6

    if-nez p0, :cond_0

    .line 545
    const-string p0, "null"

    return-object p0

    .line 547
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 549
    const-string v0, "## Important Links"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 551
    const-string v0, "\n\n### GitHub\n"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 552
    const-string v0, "\n"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "https://github.com/termux/termux-app"

    const-string v2, "Termux"

    invoke-static {v2, v1}, Lcom/termux/shared/markdown/MarkdownUtils;->getLinkMarkdownString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 553
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "Termux:API"

    const-string v4, "https://github.com/termux/termux-api"

    invoke-static {v3, v4}, Lcom/termux/shared/markdown/MarkdownUtils;->getLinkMarkdownString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 554
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "Termux:Boot"

    const-string v4, "https://github.com/termux/termux-boot"

    invoke-static {v3, v4}, Lcom/termux/shared/markdown/MarkdownUtils;->getLinkMarkdownString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 555
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "Termux:Float"

    const-string v4, "https://github.com/termux/termux-float"

    invoke-static {v3, v4}, Lcom/termux/shared/markdown/MarkdownUtils;->getLinkMarkdownString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 556
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "Termux:Styling"

    const-string v4, "https://github.com/termux/termux-styling"

    invoke-static {v3, v4}, Lcom/termux/shared/markdown/MarkdownUtils;->getLinkMarkdownString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 557
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "Termux:Tasker"

    const-string v4, "https://github.com/termux/termux-tasker"

    invoke-static {v3, v4}, Lcom/termux/shared/markdown/MarkdownUtils;->getLinkMarkdownString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 558
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "Termux:Widget"

    const-string v4, "https://github.com/termux/termux-widget"

    invoke-static {v3, v4}, Lcom/termux/shared/markdown/MarkdownUtils;->getLinkMarkdownString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 559
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "https://github.com/termux/termux-packages"

    const-string v4, "termux-packages"

    invoke-static {v4, v3}, Lcom/termux/shared/markdown/MarkdownUtils;->getLinkMarkdownString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 561
    const-string v3, "\n\n### Email\n"

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 562
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "support@termux.dev"

    const-string v5, "mailto:support@termux.dev"

    invoke-static {v3, v5}, Lcom/termux/shared/markdown/MarkdownUtils;->getLinkMarkdownString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 564
    const-string v3, "\n\n### Reddit\n"

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 565
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "r/termux"

    const-string v5, "https://www.reddit.com/r/termux"

    invoke-static {v3, v5}, Lcom/termux/shared/markdown/MarkdownUtils;->getLinkMarkdownString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 567
    const-string v3, "\n\n### Wiki\n"

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 568
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "Termux Wiki"

    const-string v5, "https://wiki.termux.com"

    invoke-static {v3, v5}, Lcom/termux/shared/markdown/MarkdownUtils;->getLinkMarkdownString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 569
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "https://github.com/termux/termux-app/wiki"

    invoke-static {v2, v3}, Lcom/termux/shared/markdown/MarkdownUtils;->getLinkMarkdownString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 570
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "https://github.com/termux/termux-packages/wiki"

    invoke-static {v4, v0}, Lcom/termux/shared/markdown/MarkdownUtils;->getLinkMarkdownString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 572
    const-string v0, "\n##\n"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 574
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getReportIssueMarkdownString(Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    if-nez p0, :cond_0

    .line 507
    const-string p0, "null"

    return-object p0

    .line 509
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 511
    const-string v1, "## Where To Report An Issue"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 513
    const-string v1, "\n\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/termux/shared/R$string;->msg_report_issue:I

    const-string v2, "https://wiki.termux.com"

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\n"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 515
    const-string v1, "\n\n### Email\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 516
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "support@termux.dev"

    const-string v2, "mailto:support@termux.dev"

    invoke-static {v1, v2}, Lcom/termux/shared/markdown/MarkdownUtils;->getLinkMarkdownString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 518
    const-string v2, "\n\n### Reddit\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 519
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "r/termux"

    const-string v3, "https://www.reddit.com/r/termux"

    invoke-static {v2, v3}, Lcom/termux/shared/markdown/MarkdownUtils;->getLinkMarkdownString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 521
    const-string v2, "\n\n### GitHub Issues for Termux apps\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 522
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Termux"

    const-string v3, "https://github.com/termux/termux-app/issues"

    invoke-static {v2, v3}, Lcom/termux/shared/markdown/MarkdownUtils;->getLinkMarkdownString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 523
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Termux:API"

    const-string v3, "https://github.com/termux/termux-api/issues"

    invoke-static {v2, v3}, Lcom/termux/shared/markdown/MarkdownUtils;->getLinkMarkdownString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 524
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Termux:Boot"

    const-string v3, "https://github.com/termux/termux-boot/issues"

    invoke-static {v2, v3}, Lcom/termux/shared/markdown/MarkdownUtils;->getLinkMarkdownString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 525
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Termux:Float"

    const-string v3, "https://github.com/termux/termux-float/issues"

    invoke-static {v2, v3}, Lcom/termux/shared/markdown/MarkdownUtils;->getLinkMarkdownString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 526
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Termux:Styling"

    const-string v3, "https://github.com/termux/termux-styling/issues"

    invoke-static {v2, v3}, Lcom/termux/shared/markdown/MarkdownUtils;->getLinkMarkdownString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 527
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Termux:Tasker"

    const-string v3, "https://github.com/termux/termux-tasker/issues"

    invoke-static {v2, v3}, Lcom/termux/shared/markdown/MarkdownUtils;->getLinkMarkdownString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 528
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Termux:Widget"

    const-string v3, "https://github.com/termux/termux-widget/issues"

    invoke-static {v2, v3}, Lcom/termux/shared/markdown/MarkdownUtils;->getLinkMarkdownString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 530
    const-string v2, "\n\n### GitHub Issues for Termux packages\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 531
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "termux-packages"

    const-string v2, "https://github.com/termux/termux-packages/issues"

    invoke-static {p0, v2}, Lcom/termux/shared/markdown/MarkdownUtils;->getLinkMarkdownString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 533
    const-string p0, "\n##\n"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 535
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getTermuxPackageContext(Landroid/content/Context;)Landroid/content/Context;
    .locals 1

    .line 63
    const-string v0, "com.termux.alpine"

    invoke-static {p0, v0}, Lcom/termux/shared/android/PackageUtils;->getContextForPackage(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method public static getTermuxPluginAppsInfoMarkdownString(Landroid/content/Context;)Ljava/lang/String;
    .locals 6

    if-nez p0, :cond_0

    .line 395
    const-string p0, "null"

    return-object p0

    .line 397
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 399
    sget-object v1, Lcom/termux/shared/termux/TermuxConstants;->TERMUX_PLUGIN_APP_PACKAGE_NAMES_LIST:Ljava/util/List;

    if-eqz v1, :cond_3

    const/4 v2, 0x0

    move v3, v2

    .line 402
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 403
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 404
    invoke-static {p0, v4}, Lcom/termux/shared/android/PackageUtils;->getContextForPackage(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Context;

    move-result-object v4

    if-eqz v4, :cond_2

    if-eqz v3, :cond_1

    .line 408
    const-string v5, "\n\n"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 409
    :cond_1
    invoke-static {v4, v2}, Lcom/termux/shared/termux/TermuxUtils;->getAppInfoMarkdownString(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 414
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 417
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
