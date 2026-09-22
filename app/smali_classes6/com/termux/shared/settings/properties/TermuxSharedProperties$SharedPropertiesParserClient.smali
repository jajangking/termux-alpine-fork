.class public Lcom/termux/shared/settings/properties/TermuxSharedProperties$SharedPropertiesParserClient;
.super Ljava/lang/Object;
.source "TermuxSharedProperties.java"

# interfaces
.implements Lcom/termux/shared/settings/properties/SharedPropertiesParser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/termux/shared/settings/properties/TermuxSharedProperties;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SharedPropertiesParserClient"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInternalPropertyValueFromValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "key",
            "value"
        }
    .end annotation

    .line 193
    invoke-static {p1, p2, p3}, Lcom/termux/shared/settings/properties/TermuxSharedProperties;->getInternalTermuxPropertyValueFromValue(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
