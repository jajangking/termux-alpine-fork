.class public abstract Lcom/termux/shared/settings/preferences/AppSharedPreferences;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected final mContext:Landroid/content/Context;

.field protected final mMultiProcessSharedPreferences:Landroid/content/SharedPreferences;

.field protected final mSharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Landroid/content/SharedPreferences;Landroid/content/SharedPreferences;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/termux/shared/settings/preferences/AppSharedPreferences;->mContext:Landroid/content/Context;

    .line 28
    iput-object p2, p0, Lcom/termux/shared/settings/preferences/AppSharedPreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 29
    iput-object p3, p0, Lcom/termux/shared/settings/preferences/AppSharedPreferences;->mMultiProcessSharedPreferences:Landroid/content/SharedPreferences;

    return-void
.end method
