.class public Lcom/termux/api/activities/TermuxAPIMainActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "SourceFile"


# instance fields
.field private mBatteryOptimizationNotDisabledWarning:Landroid/widget/TextView;

.field private mDisableBatteryOptimization:Landroid/widget/Button;

.field private mDisplayOverOtherAppsPermissionNotGrantedWarning:Landroid/widget/TextView;

.field private mGrantDisplayOverOtherAppsPermission:Landroid/widget/Button;


# direct methods
.method public static synthetic $r8$lambda$OzM1eY2PJoWo96KwhA4UnyMH54Y(Lcom/termux/api/activities/TermuxAPIMainActivity;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/termux/api/activities/TermuxAPIMainActivity;->lambda$onCreate$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$QC1PIzjWcDPirSvkvRt4JFXJaaw(Lcom/termux/api/activities/TermuxAPIMainActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p5}, Lcom/termux/api/activities/TermuxAPIMainActivity;->lambda$setChangeLauncherActivityStateViews$2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$dUkoeDQfQQNyovWUuNRPy78wBEM(Lcom/termux/api/activities/TermuxAPIMainActivity;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/termux/api/activities/TermuxAPIMainActivity;->lambda$onCreate$0(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method private checkIfBatteryOptimizationNotDisabled()V
    .locals 4

    .line 101
    iget-object v0, p0, Lcom/termux/api/activities/TermuxAPIMainActivity;->mBatteryOptimizationNotDisabledWarning:Landroid/widget/TextView;

    if-nez v0, :cond_0

    return-void

    .line 104
    :cond_0
    invoke-static {p0}, Lcom/termux/shared/android/PermissionUtils;->checkIfBatteryOptimizationsDisabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 105
    iget-object v0, p0, Lcom/termux/api/activities/TermuxAPIMainActivity;->mBatteryOptimizationNotDisabledWarning:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/termux/api/activities/TermuxAPIMainActivity;->mDisableBatteryOptimization:Landroid/widget/Button;

    sget v2, Lcom/termux/api/R$string;->action_disable_battery_optimizations:I

    .line 106
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    .line 105
    invoke-static {p0, v0, v1, v3, v2}, Lcom/termux/api/util/ViewUtils;->setWarningTextViewAndButtonState(Landroid/content/Context;Landroid/widget/TextView;Landroid/widget/Button;ZLjava/lang/String;)V

    goto :goto_0

    .line 108
    :cond_1
    iget-object v0, p0, Lcom/termux/api/activities/TermuxAPIMainActivity;->mBatteryOptimizationNotDisabledWarning:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/termux/api/activities/TermuxAPIMainActivity;->mDisableBatteryOptimization:Landroid/widget/Button;

    sget v2, Lcom/termux/api/R$string;->action_already_disabled:I

    .line 109
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 108
    invoke-static {p0, v0, v1, v3, v2}, Lcom/termux/api/util/ViewUtils;->setWarningTextViewAndButtonState(Landroid/content/Context;Landroid/widget/TextView;Landroid/widget/Button;ZLjava/lang/String;)V

    :goto_0
    return-void
.end method

.method private checkIfDisplayOverOtherAppsPermissionNotGranted()V
    .locals 4

    .line 121
    iget-object v0, p0, Lcom/termux/api/activities/TermuxAPIMainActivity;->mDisplayOverOtherAppsPermissionNotGrantedWarning:Landroid/widget/TextView;

    if-nez v0, :cond_0

    return-void

    .line 124
    :cond_0
    invoke-static {p0}, Lcom/termux/shared/android/PermissionUtils;->checkDisplayOverOtherAppsPermission(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 125
    iget-object v0, p0, Lcom/termux/api/activities/TermuxAPIMainActivity;->mDisplayOverOtherAppsPermissionNotGrantedWarning:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/termux/api/activities/TermuxAPIMainActivity;->mGrantDisplayOverOtherAppsPermission:Landroid/widget/Button;

    sget v2, Lcom/termux/api/R$string;->action_grant_display_over_other_apps_permission:I

    .line 126
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    .line 125
    invoke-static {p0, v0, v1, v3, v2}, Lcom/termux/api/util/ViewUtils;->setWarningTextViewAndButtonState(Landroid/content/Context;Landroid/widget/TextView;Landroid/widget/Button;ZLjava/lang/String;)V

    goto :goto_0

    .line 128
    :cond_1
    iget-object v0, p0, Lcom/termux/api/activities/TermuxAPIMainActivity;->mDisplayOverOtherAppsPermissionNotGrantedWarning:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/termux/api/activities/TermuxAPIMainActivity;->mGrantDisplayOverOtherAppsPermission:Landroid/widget/Button;

    sget v2, Lcom/termux/api/R$string;->action_already_granted:I

    .line 129
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 128
    invoke-static {p0, v0, v1, v3, v2}, Lcom/termux/api/util/ViewUtils;->setWarningTextViewAndButtonState(Landroid/content/Context;Landroid/widget/TextView;Landroid/widget/Button;ZLjava/lang/String;)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$onCreate$0(Landroid/view/View;)V
    .locals 0

    .line 58
    invoke-direct {p0}, Lcom/termux/api/activities/TermuxAPIMainActivity;->requestDisableBatteryOptimizations()V

    return-void
.end method

.method private synthetic lambda$onCreate$1(Landroid/view/View;)V
    .locals 0

    .line 62
    invoke-direct {p0}, Lcom/termux/api/activities/TermuxAPIMainActivity;->requestDisplayOverOtherAppsPermission()V

    return-void
.end method

.method private synthetic lambda$setChangeLauncherActivityStateViews$2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroid/view/View;)V
    .locals 6

    .line 176
    const-string p5, "TermuxAPIMainActivity"

    invoke-static {p5, p1}, Lcom/termux/shared/logger/Logger;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move-object v4, p1

    .line 177
    invoke-static/range {v0 .. v5}, Lcom/termux/shared/android/PackageUtils;->setComponentState(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    .line 180
    invoke-direct {p0}, Lcom/termux/api/activities/TermuxAPIMainActivity;->setChangeLauncherActivityStateViews()V

    goto :goto_0

    .line 182
    :cond_0
    invoke-static {p5, p1}, Lcom/termux/shared/logger/Logger;->logError(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private openSettings()V
    .locals 2

    .line 214
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-class v1, Lcom/termux/api/settings/activities/TermuxAPISettingsActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/termux/shared/activity/ActivityUtils;->startActivity(Landroid/content/Context;Landroid/content/Intent;)Lcom/termux/shared/errors/Error;

    return-void
.end method

.method private requestDisableBatteryOptimizations()V
    .locals 2

    .line 114
    const-string v0, "TermuxAPIMainActivity"

    const-string v1, "Requesting to disable battery optimizations"

    invoke-static {v0, v1}, Lcom/termux/shared/logger/Logger;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x7d0

    .line 115
    invoke-static {p0, v0}, Lcom/termux/shared/android/PermissionUtils;->requestDisableBatteryOptimizations(Landroid/content/Context;I)Lcom/termux/shared/errors/Error;

    return-void
.end method

.method private requestDisplayOverOtherAppsPermission()V
    .locals 2

    .line 134
    const-string v0, "TermuxAPIMainActivity"

    const-string v1, "Requesting to grant display over other apps permission"

    invoke-static {v0, v1}, Lcom/termux/shared/logger/Logger;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x7d1

    .line 135
    invoke-static {p0, v0}, Lcom/termux/shared/android/PermissionUtils;->requestDisplayOverOtherAppsPermission(Landroid/content/Context;I)Lcom/termux/shared/errors/Error;

    return-void
.end method

.method private setChangeLauncherActivityStateViews()V
    .locals 9

    .line 144
    sget v0, Lcom/termux/api/R$id;->textview_change_launcher_activity_state_details:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 145
    sget v1, Lcom/termux/api/R$string;->msg_change_launcher_activity_state_info:I

    .line 146
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v6, "com.termux.api"

    filled-new-array {v6, v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 145
    invoke-static {p0, v1}, Lcom/termux/shared/markdown/MarkdownUtils;->getSpannedMarkdownText(Landroid/content/Context;Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 148
    sget v0, Lcom/termux/api/R$id;->button_change_launcher_activity_state:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 152
    const-string v7, "com.termux.api.activities.TermuxAPILauncherActivity"

    const/4 v1, 0x0

    invoke-static {p0, v6, v7, v1}, Lcom/termux/shared/android/PackageUtils;->isComponentDisabled(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/Boolean;

    move-result-object v2

    if-nez v2, :cond_0

    .line 155
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to check if \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\" launcher activity is disabled"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "TermuxAPIMainActivity"

    invoke-static {v3, v2}, Lcom/termux/shared/logger/Logger;->logError(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    const/high16 v1, 0x3f000000    # 0.5f

    .line 157
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 158
    sget v1, Lcom/termux/shared/R$string;->action_disable_launcher_icon:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    const/4 v1, 0x0

    .line 159
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_0
    const/4 v3, 0x1

    .line 163
    invoke-virtual {v0, v3}, Landroid/view/View;->setEnabled(Z)V

    const/high16 v4, 0x3f800000    # 1.0f

    .line 164
    invoke-virtual {v0, v4}, Landroid/view/View;->setAlpha(F)V

    .line 165
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    const-string v4, "Termux:API"

    if-eqz v2, :cond_1

    .line 166
    sget v1, Lcom/termux/shared/R$string;->action_enable_launcher_icon:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 167
    sget v1, Lcom/termux/shared/R$string;->msg_enabling_launcher_icon:I

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    move-object v5, v1

    move v8, v3

    goto :goto_0

    .line 170
    :cond_1
    sget v2, Lcom/termux/shared/R$string;->action_disable_launcher_icon:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 171
    sget v2, Lcom/termux/shared/R$string;->msg_disabling_launcher_icon:I

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    move v8, v1

    move-object v5, v2

    .line 175
    :goto_0
    new-instance v1, Lcom/termux/api/activities/TermuxAPIMainActivity$$ExternalSyntheticLambda0;

    move-object v3, v1

    move-object v4, p0

    invoke-direct/range {v3 .. v8}, Lcom/termux/api/activities/TermuxAPIMainActivity$$ExternalSyntheticLambda0;-><init>(Lcom/termux/api/activities/TermuxAPIMainActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .line 190
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 191
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onActivityResult: requestCode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", resultCode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", data: "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Lcom/termux/shared/data/IntentUtils;->getIntentString(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "TermuxAPIMainActivity"

    invoke-static {p3, p2}, Lcom/termux/shared/logger/Logger;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p2, 0x7d0

    if-eq p1, p2, :cond_2

    const/16 p2, 0x7d1

    if-eq p1, p2, :cond_0

    .line 207
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown request code \""

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "\" passed to onRequestPermissionsResult"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Lcom/termux/shared/logger/Logger;->logError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 201
    :cond_0
    invoke-static {p0}, Lcom/termux/shared/android/PermissionUtils;->checkDisplayOverOtherAppsPermission(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 202
    const-string p1, "Display over other apps granted by user on request."

    invoke-static {p3, p1}, Lcom/termux/shared/logger/Logger;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 204
    :cond_1
    const-string p1, "Display over other apps denied by user on request."

    invoke-static {p3, p1}, Lcom/termux/shared/logger/Logger;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 195
    :cond_2
    invoke-static {p0}, Lcom/termux/shared/android/PermissionUtils;->checkIfBatteryOptimizationsDisabled(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 196
    const-string p1, "Battery optimizations disabled by user on request."

    invoke-static {p3, p1}, Lcom/termux/shared/logger/Logger;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 198
    :cond_3
    const-string p1, "Battery optimizations not disabled by user on request."

    invoke-static {p3, p1}, Lcom/termux/shared/logger/Logger;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 39
    const-string v0, "TermuxAPIMainActivity"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Lcom/termux/shared/logger/Logger;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 42
    sget p1, Lcom/termux/api/R$layout;->activity_termux_api_main:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 45
    invoke-static {p0}, Lcom/termux/shared/termux/theme/TermuxThemeUtils;->setAppNightMode(Landroid/content/Context;)V

    .line 46
    invoke-static {}, Lcom/termux/shared/theme/NightMode;->getAppNightMode()Lcom/termux/shared/theme/NightMode;

    move-result-object p1

    invoke-virtual {p1}, Lcom/termux/shared/theme/NightMode;->getName()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/termux/shared/activity/media/AppCompatActivityUtils;->setNightMode(Landroidx/appcompat/app/AppCompatActivity;Ljava/lang/String;Z)V

    .line 48
    sget p1, Lcom/termux/shared/R$id;->toolbar:I

    invoke-static {p0, p1}, Lcom/termux/shared/activity/media/AppCompatActivityUtils;->setToolbar(Landroidx/appcompat/app/AppCompatActivity;I)V

    .line 49
    sget p1, Lcom/termux/shared/R$id;->toolbar:I

    const-string v0, "Termux:API"

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1}, Lcom/termux/shared/activity/media/AppCompatActivityUtils;->setToolbarTitle(Landroidx/appcompat/app/AppCompatActivity;ILjava/lang/String;I)V

    .line 51
    sget p1, Lcom/termux/api/R$id;->textview_plugin_info:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 52
    sget v0, Lcom/termux/api/R$string;->plugin_info:I

    const-string v1, "termux-api"

    const-string v2, "https://github.com/termux/termux-api-package"

    const-string v3, "https://github.com/termux/termux-app"

    const-string v4, "https://github.com/termux/termux-api"

    filled-new-array {v3, v4, v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    sget p1, Lcom/termux/api/R$id;->textview_battery_optimization_not_disabled_warning:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/termux/api/activities/TermuxAPIMainActivity;->mBatteryOptimizationNotDisabledWarning:Landroid/widget/TextView;

    .line 57
    sget p1, Lcom/termux/api/R$id;->btn_disable_battery_optimizations:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/termux/api/activities/TermuxAPIMainActivity;->mDisableBatteryOptimization:Landroid/widget/Button;

    .line 58
    new-instance v0, Lcom/termux/api/activities/TermuxAPIMainActivity$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/termux/api/activities/TermuxAPIMainActivity$$ExternalSyntheticLambda1;-><init>(Lcom/termux/api/activities/TermuxAPIMainActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    sget p1, Lcom/termux/api/R$id;->textview_display_over_other_apps_not_granted_warning:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/termux/api/activities/TermuxAPIMainActivity;->mDisplayOverOtherAppsPermissionNotGrantedWarning:Landroid/widget/TextView;

    .line 61
    sget p1, Lcom/termux/api/R$id;->button_grant_display_over_other_apps_permission:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/termux/api/activities/TermuxAPIMainActivity;->mGrantDisplayOverOtherAppsPermission:Landroid/widget/Button;

    .line 62
    new-instance v0, Lcom/termux/api/activities/TermuxAPIMainActivity$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/termux/api/activities/TermuxAPIMainActivity$$ExternalSyntheticLambda2;-><init>(Lcom/termux/api/activities/TermuxAPIMainActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .line 81
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 82
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    sget v1, Lcom/termux/api/R$menu;->activity_termux_api_main:I

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 88
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 90
    sget v1, Lcom/termux/api/R$id;->menu_settings:I

    if-ne v0, v1, :cond_0

    .line 91
    invoke-direct {p0}, Lcom/termux/api/activities/TermuxAPIMainActivity;->openSettings()V

    const/4 p1, 0x1

    return p1

    .line 95
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method protected onResume()V
    .locals 2

    .line 67
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    const/4 v0, 0x0

    .line 70
    invoke-static {p0, v0}, Lcom/termux/api/TermuxAPIApplication;->setLogConfig(Landroid/content/Context;Z)V

    .line 72
    const-string v0, "TermuxAPIMainActivity"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Lcom/termux/shared/logger/Logger;->logVerbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    invoke-direct {p0}, Lcom/termux/api/activities/TermuxAPIMainActivity;->checkIfBatteryOptimizationNotDisabled()V

    .line 75
    invoke-direct {p0}, Lcom/termux/api/activities/TermuxAPIMainActivity;->checkIfDisplayOverOtherAppsPermissionNotGranted()V

    .line 76
    invoke-direct {p0}, Lcom/termux/api/activities/TermuxAPIMainActivity;->setChangeLauncherActivityStateViews()V

    return-void
.end method
