.class public Lcom/termux/shared/termux/settings/properties/TermuxSharedProperties$SharedPropertiesParserClient;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/termux/shared/settings/properties/SharedPropertiesParser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/termux/shared/termux/settings/properties/TermuxSharedProperties;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SharedPropertiesParserClient"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 200
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInternalPropertyValueFromValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 214
    invoke-static {p1, p2, p3}, Lcom/termux/shared/termux/settings/properties/TermuxSharedProperties;->getInternalTermuxPropertyValueFromValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public preProcessPropertiesOnReadFromDisk(Landroid/content/Context;Ljava/util/Properties;)Ljava/util/Properties;
    .locals 0

    .line 204
    invoke-static {p2}, Lcom/termux/shared/termux/settings/properties/TermuxSharedProperties;->replaceUseBlackUIProperty(Ljava/util/Properties;)Ljava/util/Properties;

    move-result-object p1

    return-object p1
.end method
