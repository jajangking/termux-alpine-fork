.class public final enum Lcom/termux/app/models/UserAction;
.super Ljava/lang/Enum;
.source "UserAction.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/termux/app/models/UserAction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/termux/app/models/UserAction;

.field public static final enum ABOUT:Lcom/termux/app/models/UserAction;

.field public static final enum CRASH_REPORT:Lcom/termux/app/models/UserAction;

.field public static final enum PLUGIN_EXECUTION_COMMAND:Lcom/termux/app/models/UserAction;

.field public static final enum REPORT_ISSUE_FROM_TRANSCRIPT:Lcom/termux/app/models/UserAction;


# instance fields
.field private final name:Ljava/lang/String;


# direct methods
.method private static synthetic $values()[Lcom/termux/app/models/UserAction;
    .locals 3

    .line 3
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/termux/app/models/UserAction;

    sget-object v1, Lcom/termux/app/models/UserAction;->ABOUT:Lcom/termux/app/models/UserAction;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/termux/app/models/UserAction;->CRASH_REPORT:Lcom/termux/app/models/UserAction;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/termux/app/models/UserAction;->PLUGIN_EXECUTION_COMMAND:Lcom/termux/app/models/UserAction;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/termux/app/models/UserAction;->REPORT_ISSUE_FROM_TRANSCRIPT:Lcom/termux/app/models/UserAction;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 5
    new-instance v0, Lcom/termux/app/models/UserAction;

    const-string v1, "ABOUT"

    const/4 v2, 0x0

    const-string v3, "about"

    invoke-direct {v0, v1, v2, v3}, Lcom/termux/app/models/UserAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/termux/app/models/UserAction;->ABOUT:Lcom/termux/app/models/UserAction;

    .line 6
    new-instance v0, Lcom/termux/app/models/UserAction;

    const-string v1, "CRASH_REPORT"

    const/4 v2, 0x1

    const-string v3, "crash report"

    invoke-direct {v0, v1, v2, v3}, Lcom/termux/app/models/UserAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/termux/app/models/UserAction;->CRASH_REPORT:Lcom/termux/app/models/UserAction;

    .line 7
    new-instance v0, Lcom/termux/app/models/UserAction;

    const-string v1, "PLUGIN_EXECUTION_COMMAND"

    const/4 v2, 0x2

    const-string v3, "plugin execution command"

    invoke-direct {v0, v1, v2, v3}, Lcom/termux/app/models/UserAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/termux/app/models/UserAction;->PLUGIN_EXECUTION_COMMAND:Lcom/termux/app/models/UserAction;

    .line 8
    new-instance v0, Lcom/termux/app/models/UserAction;

    const-string v1, "REPORT_ISSUE_FROM_TRANSCRIPT"

    const/4 v2, 0x3

    const-string v3, "report issue from transcript"

    invoke-direct {v0, v1, v2, v3}, Lcom/termux/app/models/UserAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/termux/app/models/UserAction;->REPORT_ISSUE_FROM_TRANSCRIPT:Lcom/termux/app/models/UserAction;

    .line 3
    invoke-static {}, Lcom/termux/app/models/UserAction;->$values()[Lcom/termux/app/models/UserAction;

    move-result-object v0

    sput-object v0, Lcom/termux/app/models/UserAction;->$VALUES:[Lcom/termux/app/models/UserAction;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x10
        }
        names = {
            "$enum$name",
            "$enum$ordinal",
            "name"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 13
    iput-object p3, p0, Lcom/termux/app/models/UserAction;->name:Ljava/lang/String;

    .line 14
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/termux/app/models/UserAction;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 3
    const-class v0, Lcom/termux/app/models/UserAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/termux/app/models/UserAction;

    return-object v0
.end method

.method public static values()[Lcom/termux/app/models/UserAction;
    .locals 1

    .line 3
    sget-object v0, Lcom/termux/app/models/UserAction;->$VALUES:[Lcom/termux/app/models/UserAction;

    invoke-virtual {v0}, [Lcom/termux/app/models/UserAction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/termux/app/models/UserAction;

    return-object v0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/termux/app/models/UserAction;->name:Ljava/lang/String;

    return-object v0
.end method
