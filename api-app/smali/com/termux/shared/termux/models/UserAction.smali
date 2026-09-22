.class public final enum Lcom/termux/shared/termux/models/UserAction;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $VALUES:[Lcom/termux/shared/termux/models/UserAction;

.field public static final enum CRASH_REPORT:Lcom/termux/shared/termux/models/UserAction;

.field public static final enum PLUGIN_EXECUTION_COMMAND:Lcom/termux/shared/termux/models/UserAction;


# instance fields
.field private final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 5
    new-instance v0, Lcom/termux/shared/termux/models/UserAction;

    const/4 v1, 0x0

    const-string v2, "crash report"

    const-string v3, "CRASH_REPORT"

    invoke-direct {v0, v3, v1, v2}, Lcom/termux/shared/termux/models/UserAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/termux/shared/termux/models/UserAction;->CRASH_REPORT:Lcom/termux/shared/termux/models/UserAction;

    .line 6
    new-instance v1, Lcom/termux/shared/termux/models/UserAction;

    const/4 v2, 0x1

    const-string v3, "plugin execution command"

    const-string v4, "PLUGIN_EXECUTION_COMMAND"

    invoke-direct {v1, v4, v2, v3}, Lcom/termux/shared/termux/models/UserAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/termux/shared/termux/models/UserAction;->PLUGIN_EXECUTION_COMMAND:Lcom/termux/shared/termux/models/UserAction;

    .line 3
    filled-new-array {v0, v1}, [Lcom/termux/shared/termux/models/UserAction;

    move-result-object v0

    sput-object v0, Lcom/termux/shared/termux/models/UserAction;->$VALUES:[Lcom/termux/shared/termux/models/UserAction;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 10
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 11
    iput-object p3, p0, Lcom/termux/shared/termux/models/UserAction;->name:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/termux/shared/termux/models/UserAction;
    .locals 1

    .line 3
    const-class v0, Lcom/termux/shared/termux/models/UserAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/termux/shared/termux/models/UserAction;

    return-object p0
.end method

.method public static values()[Lcom/termux/shared/termux/models/UserAction;
    .locals 1

    .line 3
    sget-object v0, Lcom/termux/shared/termux/models/UserAction;->$VALUES:[Lcom/termux/shared/termux/models/UserAction;

    invoke-virtual {v0}, [Lcom/termux/shared/termux/models/UserAction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/termux/shared/termux/models/UserAction;

    return-object v0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/termux/shared/termux/models/UserAction;->name:Ljava/lang/String;

    return-object v0
.end method
