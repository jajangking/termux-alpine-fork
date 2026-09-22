.class public final enum Lcom/termux/shared/termux/crash/TermuxCrashUtils$TYPE;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/termux/shared/termux/crash/TermuxCrashUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TYPE"
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/termux/shared/termux/crash/TermuxCrashUtils$TYPE;

.field public static final enum CAUGHT_EXCEPTION:Lcom/termux/shared/termux/crash/TermuxCrashUtils$TYPE;

.field public static final enum UNCAUGHT_EXCEPTION:Lcom/termux/shared/termux/crash/TermuxCrashUtils$TYPE;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 37
    new-instance v0, Lcom/termux/shared/termux/crash/TermuxCrashUtils$TYPE;

    const-string v1, "UNCAUGHT_EXCEPTION"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/termux/shared/termux/crash/TermuxCrashUtils$TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/termux/shared/termux/crash/TermuxCrashUtils$TYPE;->UNCAUGHT_EXCEPTION:Lcom/termux/shared/termux/crash/TermuxCrashUtils$TYPE;

    .line 38
    new-instance v1, Lcom/termux/shared/termux/crash/TermuxCrashUtils$TYPE;

    const-string v2, "CAUGHT_EXCEPTION"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/termux/shared/termux/crash/TermuxCrashUtils$TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/termux/shared/termux/crash/TermuxCrashUtils$TYPE;->CAUGHT_EXCEPTION:Lcom/termux/shared/termux/crash/TermuxCrashUtils$TYPE;

    .line 36
    filled-new-array {v0, v1}, [Lcom/termux/shared/termux/crash/TermuxCrashUtils$TYPE;

    move-result-object v0

    sput-object v0, Lcom/termux/shared/termux/crash/TermuxCrashUtils$TYPE;->$VALUES:[Lcom/termux/shared/termux/crash/TermuxCrashUtils$TYPE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/termux/shared/termux/crash/TermuxCrashUtils$TYPE;
    .locals 1

    .line 36
    const-class v0, Lcom/termux/shared/termux/crash/TermuxCrashUtils$TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/termux/shared/termux/crash/TermuxCrashUtils$TYPE;

    return-object p0
.end method

.method public static values()[Lcom/termux/shared/termux/crash/TermuxCrashUtils$TYPE;
    .locals 1

    .line 36
    sget-object v0, Lcom/termux/shared/termux/crash/TermuxCrashUtils$TYPE;->$VALUES:[Lcom/termux/shared/termux/crash/TermuxCrashUtils$TYPE;

    invoke-virtual {v0}, [Lcom/termux/shared/termux/crash/TermuxCrashUtils$TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/termux/shared/termux/crash/TermuxCrashUtils$TYPE;

    return-object v0
.end method
