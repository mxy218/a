.class public Lcom/meizu/settings/applications/AppPermissionView;
.super Landroid/widget/LinearLayout;
.source "AppPermissionView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mAppNotificationManage:Landroid/widget/TextView;

.field private mAppNotificationManageContainer:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mExternalSourceManage:Landroid/widget/TextView;

.field private mExternalSourceManageContainer:Landroid/view/View;

.field private mExternalSourceManageSummary:Landroid/widget/TextView;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mIntent:Landroid/content/Intent;

.field private mPackageName:Ljava/lang/String;

.field private mPermissionDetail:Landroid/widget/TextView;

.field private mPermissionDetailSummary:Landroid/widget/TextView;

.field private mPermissionLable:Landroid/widget/TextView;

.field private mPermissionManage:Landroid/widget/TextView;

.field private mPermissionManageContainer:Landroid/view/View;

.field private mPermissionManageSummary:Landroid/widget/TextView;

.field private mPm:Landroid/content/pm/PackageManager;

.field private mSmsManager:Lcom/android/internal/telephony/ISms;

.field private mTitle:Ljava/lang/String;

.field private mUid:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 63
    invoke-direct {p0, p1, v0}, Lcom/meizu/settings/applications/AppPermissionView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 67
    invoke-direct {p0, p1, p2, v0}, Lcom/meizu/settings/applications/AppPermissionView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 71
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 72
    iput-object p1, p0, Lcom/meizu/settings/applications/AppPermissionView;->mContext:Landroid/content/Context;

    const-string p1, "isms"

    .line 73
    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/telephony/ISms$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ISms;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/applications/AppPermissionView;->mSmsManager:Lcom/android/internal/telephony/ISms;

    .line 74
    iget-object p1, p0, Lcom/meizu/settings/applications/AppPermissionView;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/applications/AppPermissionView;->mInflater:Landroid/view/LayoutInflater;

    .line 75
    iget-object p1, p0, Lcom/meizu/settings/applications/AppPermissionView;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/applications/AppPermissionView;->mPm:Landroid/content/pm/PackageManager;

    return-void
.end method

.method private getPremiumSmsPermission(Ljava/lang/String;)I
    .registers 3

    .line 193
    :try_start_0
    iget-object v0, p0, Lcom/meizu/settings/applications/AppPermissionView;->mSmsManager:Lcom/android/internal/telephony/ISms;

    if-eqz v0, :cond_b

    .line 194
    iget-object p0, p0, Lcom/meizu/settings/applications/AppPermissionView;->mSmsManager:Lcom/android/internal/telephony/ISms;

    invoke-interface {p0, p1}, Lcom/android/internal/telephony/ISms;->getPremiumSmsPermission(Ljava/lang/String;)I

    move-result p0
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_a} :catch_b

    return p0

    :catch_b
    :cond_b
    const/4 p0, 0x0

    return p0
.end method

.method private isPotentialAppSource(Ljava/lang/String;I)Z
    .registers 5

    .line 287
    new-instance v0, Lcom/meizu/settings/applications/AppStateInstallAppsBridge;

    iget-object p0, p0, Lcom/meizu/settings/applications/AppPermissionView;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, v1}, Lcom/meizu/settings/applications/AppStateInstallAppsBridge;-><init>(Landroid/content/Context;Lcom/meizu/settings/applications/ApplicationsState;Lcom/meizu/settings/applications/AppStateBaseBridge$Callback;)V

    .line 289
    invoke-virtual {v0, p1, p2}, Lcom/meizu/settings/applications/AppStateInstallAppsBridge;->createInstallAppsStateFor(Ljava/lang/String;I)Lcom/meizu/settings/applications/AppStateInstallAppsBridge$InstallAppsState;

    move-result-object p0

    .line 290
    invoke-virtual {p0}, Lcom/meizu/settings/applications/AppStateInstallAppsBridge$InstallAppsState;->isPotentialAppSource()Z

    move-result p0

    return p0
.end method

.method private needHidePermissionManagement()Z
    .registers 4

    .line 163
    iget-object v0, p0, Lcom/meizu/settings/applications/AppPermissionView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/meizu/settings/utils/MzUtils;->isGuestUser(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    return v1

    .line 166
    :cond_a
    iget-object v0, p0, Lcom/meizu/settings/applications/AppPermissionView;->mContext:Landroid/content/Context;

    const-string v2, "com.meizu.safe"

    invoke-static {v0, v2}, Lcom/meizu/settings/utils/MzUtils;->isPackageExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1f

    iget-object v0, p0, Lcom/meizu/settings/applications/AppPermissionView;->mContext:Landroid/content/Context;

    const-string v2, "com.aliyun.SecurityCenter"

    .line 167
    invoke-static {v0, v2}, Lcom/meizu/settings/utils/MzUtils;->isPackageExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1f

    return v1

    .line 171
    :cond_1f
    iget-object v0, p0, Lcom/meizu/settings/applications/AppPermissionView;->mPackageName:Ljava/lang/String;

    if-nez v0, :cond_24

    return v1

    :cond_24
    const-string v2, "com.sohu.inputmethod.sogou.meizu"

    .line 175
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_2e

    return v2

    .line 181
    :cond_2e
    :try_start_2e
    iget-object v0, p0, Lcom/meizu/settings/applications/AppPermissionView;->mPm:Landroid/content/pm/PackageManager;

    iget-object p0, p0, Lcom/meizu/settings/applications/AppPermissionView;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, p0, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_36} :catch_45

    if-eqz p0, :cond_44

    .line 185
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v0, v1

    if-nez v0, :cond_43

    invoke-static {p0}, Lcom/meizu/settings/utils/MzUtils;->isSystemPackageCanUninstall(Landroid/content/pm/ApplicationInfo;)Z

    move-result p0

    if-eqz p0, :cond_44

    :cond_43
    return v1

    :cond_44
    return v2

    :catch_45
    return v1
.end method

.method private startApplicationAppNotificationManageActivity()V
    .registers 12

    .line 261
    iget-object v0, p0, Lcom/meizu/settings/applications/AppPermissionView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/meizu/settings/datareport/UsageStatsProxy;->getInstance(Landroid/content/Context;)Lcom/meizu/settings/datareport/UsageStatsProxy;

    move-result-object v0

    const-string/jumbo v1, "per_notification_clicked"

    const-string v2, "AppPermissionView"

    const-string/jumbo v3, "per_notification"

    invoke-virtual {v0, v1, v2, v3}, Lcom/meizu/settings/datareport/UsageStatsProxy;->reportData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 266
    iget-object v0, p0, Lcom/meizu/settings/applications/AppPermissionView;->mPackageName:Ljava/lang/String;

    const-string v1, "android.provider.extra.APP_PACKAGE"

    invoke-virtual {v6, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    iget v0, p0, Lcom/meizu/settings/applications/AppPermissionView;->mUid:I

    const-string v1, "app_uid"

    invoke-virtual {v6, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 268
    iget-object v0, p0, Lcom/meizu/settings/applications/AppPermissionView;->mIntent:Landroid/content/Intent;

    if-eqz v0, :cond_2a

    const/4 v0, 0x1

    goto :goto_2b

    :cond_2a
    const/4 v0, 0x0

    :goto_2b
    const-string v1, "has_settings_intent"

    invoke-virtual {v6, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 269
    iget-object v0, p0, Lcom/meizu/settings/applications/AppPermissionView;->mIntent:Landroid/content/Intent;

    const-string/jumbo v1, "settings_intent"

    invoke-virtual {v6, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 270
    iget-object v4, p0, Lcom/meizu/settings/applications/AppPermissionView;->mContext:Landroid/content/Context;

    const-class v0, Lcom/meizu/settings/notificationstatusbar/AppNotificationSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    const/4 v8, -0x1

    const/4 v9, -0x1

    iget-object v10, p0, Lcom/meizu/settings/applications/AppPermissionView;->mTitle:Ljava/lang/String;

    invoke-static/range {v4 .. v10}, Lcom/android/settings/Utils;->startWithFragment(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Fragment;IILjava/lang/CharSequence;)V

    return-void
.end method

.method private startApplicationDetailsPermissionActivity()V
    .registers 12

    .line 248
    iget-object v0, p0, Lcom/meizu/settings/applications/AppPermissionView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/meizu/settings/datareport/UsageStatsProxy;->getInstance(Landroid/content/Context;)Lcom/meizu/settings/datareport/UsageStatsProxy;

    move-result-object v0

    const-string/jumbo v1, "per_detail_clicked"

    const-string v2, "AppPermissionView"

    const-string/jumbo v3, "per_detail"

    invoke-virtual {v0, v1, v2, v3}, Lcom/meizu/settings/datareport/UsageStatsProxy;->reportData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 254
    iget-object v0, p0, Lcom/meizu/settings/applications/AppPermissionView;->mPackageName:Ljava/lang/String;

    const-string/jumbo v1, "package"

    invoke-virtual {v6, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    iget-object v0, p0, Lcom/meizu/settings/applications/AppPermissionView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f120fdd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 256
    iget-object v4, p0, Lcom/meizu/settings/applications/AppPermissionView;->mContext:Landroid/content/Context;

    const-class p0, Lcom/meizu/settings/applications/InstalledAppDetailsPermissionsDetails;

    .line 257
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    const/4 v8, -0x1

    const/4 v9, -0x1

    .line 256
    invoke-static/range {v4 .. v10}, Lcom/android/settings/Utils;->startWithFragment(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Fragment;IILjava/lang/CharSequence;)V

    return-void
.end method

.method private startApplicationPermissionManageActivity()V
    .registers 5

    .line 226
    iget-object v0, p0, Lcom/meizu/settings/applications/AppPermissionView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/meizu/settings/datareport/UsageStatsProxy;->getInstance(Landroid/content/Context;)Lcom/meizu/settings/datareport/UsageStatsProxy;

    move-result-object v0

    const-string v1, "AppPermissionView"

    const-string/jumbo v2, "per_manage_clicked"

    const-string/jumbo v3, "per_manage"

    invoke-virtual {v0, v2, v1, v3}, Lcom/meizu/settings/datareport/UsageStatsProxy;->reportData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    iget-object v0, p0, Lcom/meizu/settings/applications/AppPermissionView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/meizu/settings/utils/MzUtils;->isCtsRunning(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 232
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.MANAGE_APP_PERMISSIONS"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 233
    iget-object v2, p0, Lcom/meizu/settings/applications/AppPermissionView;->mPackageName:Ljava/lang/String;

    const-string v3, "android.intent.extra.PACKAGE_NAME"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v2, 0x1

    const-string v3, "hideInfoButton"

    .line 234
    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_48

    .line 235
    :cond_2e
    invoke-static {}, Landroid/os/BuildExt;->isMarshallowFlymePermissionDisable()Z

    move-result v0

    if-nez v0, :cond_47

    .line 236
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.meizu.safe.security.SHOW_APPSEC"

    .line 237
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 238
    iget-object v2, p0, Lcom/meizu/settings/applications/AppPermissionView;->mPackageName:Ljava/lang/String;

    const-string/jumbo v3, "packageName"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_48

    :cond_47
    const/4 v0, 0x0

    .line 241
    :goto_48
    :try_start_48
    iget-object p0, p0, Lcom/meizu/settings/applications/AppPermissionView;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_4d
    .catch Landroid/content/ActivityNotFoundException; {:try_start_48 .. :try_end_4d} :catch_4e

    goto :goto_64

    :catch_4e
    move-exception p0

    .line 243
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startApplicationPermissionManageActivity e = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_64
    return-void
.end method

.method private startExternalSourceDetails()V
    .registers 5

    .line 294
    iget-object v0, p0, Lcom/meizu/settings/applications/AppPermissionView;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/meizu/settings/applications/AppPermissionView;->mPackageName:Ljava/lang/String;

    iget v2, p0, Lcom/meizu/settings/applications/AppPermissionView;->mUid:I

    iget-object p0, p0, Lcom/meizu/settings/applications/AppPermissionView;->mTitle:Ljava/lang/String;

    const/4 v3, -0x1

    invoke-static {v0, v1, v2, v3, p0}, Lcom/meizu/settings/applications/ExternalSourcesDetails;->startExternalSourcesDetails(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;)V

    return-void
.end method

.method private updateExternalSourceSummary()V
    .registers 4

    .line 280
    iget-object v0, p0, Lcom/meizu/settings/applications/AppPermissionView;->mExternalSourceManageContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_17

    .line 281
    iget-object v0, p0, Lcom/meizu/settings/applications/AppPermissionView;->mExternalSourceManageSummary:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/meizu/settings/applications/AppPermissionView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/meizu/settings/applications/AppPermissionView;->mPackageName:Ljava/lang/String;

    iget p0, p0, Lcom/meizu/settings/applications/AppPermissionView;->mUid:I

    .line 282
    invoke-static {v1, v2, p0}, Lcom/meizu/settings/applications/ExternalSourcesDetails;->getPreferenceSummary(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/CharSequence;

    move-result-object p0

    .line 281
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_17
    return-void
.end method


# virtual methods
.method public doCreate(Ljava/lang/String;ILandroid/content/Intent;Ljava/lang/String;)V
    .registers 10

    .line 122
    iput-object p1, p0, Lcom/meizu/settings/applications/AppPermissionView;->mPackageName:Ljava/lang/String;

    const/16 v0, 0x8

    if-eqz p3, :cond_d

    .line 124
    iput p2, p0, Lcom/meizu/settings/applications/AppPermissionView;->mUid:I

    .line 125
    iput-object p3, p0, Lcom/meizu/settings/applications/AppPermissionView;->mIntent:Landroid/content/Intent;

    .line 126
    iput-object p4, p0, Lcom/meizu/settings/applications/AppPermissionView;->mTitle:Ljava/lang/String;

    goto :goto_12

    .line 128
    :cond_d
    iget-object p3, p0, Lcom/meizu/settings/applications/AppPermissionView;->mAppNotificationManageContainer:Landroid/view/View;

    invoke-virtual {p3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 130
    :goto_12
    new-instance p3, Lcom/meizu/settings/applications/AppSecurityPermissions;

    iget-object p4, p0, Lcom/meizu/settings/applications/AppPermissionView;->mContext:Landroid/content/Context;

    invoke-direct {p3, p4, p1}, Lcom/meizu/settings/applications/AppSecurityPermissions;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 131
    invoke-virtual {p3}, Lcom/meizu/settings/applications/AppSecurityPermissions;->getPermissionCount()I

    move-result p3

    .line 133
    invoke-direct {p0, p1}, Lcom/meizu/settings/applications/AppPermissionView;->getPremiumSmsPermission(Ljava/lang/String;)I

    move-result p4

    const/4 v1, 0x0

    if-gtz p3, :cond_2b

    if-eqz p4, :cond_27

    goto :goto_2b

    .line 149
    :cond_27
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_50

    .line 142
    :cond_2b
    :goto_2b
    iget-object p4, p0, Lcom/meizu/settings/applications/AppPermissionView;->mPermissionDetailSummary:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/meizu/settings/applications/AppPermissionView;->mContext:Landroid/content/Context;

    const v3, 0x7f120fde

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    .line 143
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, v4, v1

    .line 142
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p4, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 144
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 145
    invoke-direct {p0}, Lcom/meizu/settings/applications/AppPermissionView;->needHidePermissionManagement()Z

    move-result p3

    if-eqz p3, :cond_50

    .line 146
    iget-object p3, p0, Lcom/meizu/settings/applications/AppPermissionView;->mPermissionManageContainer:Landroid/view/View;

    invoke-virtual {p3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 153
    :cond_50
    :goto_50
    invoke-direct {p0, p1, p2}, Lcom/meizu/settings/applications/AppPermissionView;->isPotentialAppSource(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_5f

    .line 154
    iget-object p1, p0, Lcom/meizu/settings/applications/AppPermissionView;->mExternalSourceManageContainer:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 155
    invoke-direct {p0}, Lcom/meizu/settings/applications/AppPermissionView;->updateExternalSourceSummary()V

    goto :goto_64

    .line 157
    :cond_5f
    iget-object p0, p0, Lcom/meizu/settings/applications/AppPermissionView;->mExternalSourceManageContainer:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_64
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 2

    .line 204
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sparse-switch p1, :sswitch_data_18

    goto :goto_17

    .line 213
    :sswitch_8
    invoke-direct {p0}, Lcom/meizu/settings/applications/AppPermissionView;->startApplicationPermissionManageActivity()V

    goto :goto_17

    .line 210
    :sswitch_c
    invoke-direct {p0}, Lcom/meizu/settings/applications/AppPermissionView;->startApplicationDetailsPermissionActivity()V

    goto :goto_17

    .line 217
    :sswitch_10
    invoke-direct {p0}, Lcom/meizu/settings/applications/AppPermissionView;->startExternalSourceDetails()V

    goto :goto_17

    .line 207
    :sswitch_14
    invoke-direct {p0}, Lcom/meizu/settings/applications/AppPermissionView;->startApplicationAppNotificationManageActivity()V

    :goto_17
    return-void

    :sswitch_data_18
    .sparse-switch
        0x7f0a00ae -> :sswitch_14
        0x7f0a0282 -> :sswitch_10
        0x7f0a0548 -> :sswitch_c
        0x7f0a0552 -> :sswitch_8
    .end sparse-switch
.end method

.method protected onFinishInflate()V
    .registers 6

    .line 80
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const v0, 0x7f0a0547

    .line 82
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a03b3

    .line 83
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/meizu/settings/applications/AppPermissionView;->mPermissionLable:Landroid/widget/TextView;

    .line 84
    iget-object v1, p0, Lcom/meizu/settings/applications/AppPermissionView;->mPermissionLable:Landroid/widget/TextView;

    const v2, 0x7f120f69

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    const v1, 0x7f0a05e7

    .line 85
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f0a00ae

    .line 88
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/applications/AppPermissionView;->mAppNotificationManageContainer:Landroid/view/View;

    .line 89
    iget-object v0, p0, Lcom/meizu/settings/applications/AppPermissionView;->mAppNotificationManageContainer:Landroid/view/View;

    const v1, 0x7f0a0157

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meizu/settings/applications/AppPermissionView;->mAppNotificationManage:Landroid/widget/TextView;

    .line 90
    iget-object v0, p0, Lcom/meizu/settings/applications/AppPermissionView;->mAppNotificationManage:Landroid/widget/TextView;

    const v2, 0x7f12019f

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 91
    iget-object v0, p0, Lcom/meizu/settings/applications/AppPermissionView;->mAppNotificationManageContainer:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0548

    .line 94
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 95
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/meizu/settings/applications/AppPermissionView;->mPermissionDetail:Landroid/widget/TextView;

    const v2, 0x7f0a015b

    .line 96
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/meizu/settings/applications/AppPermissionView;->mPermissionDetailSummary:Landroid/widget/TextView;

    .line 97
    iget-object v3, p0, Lcom/meizu/settings/applications/AppPermissionView;->mPermissionDetail:Landroid/widget/TextView;

    const v4, 0x7f120fdd

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 98
    iget-object v3, p0, Lcom/meizu/settings/applications/AppPermissionView;->mPermissionDetailSummary:Landroid/widget/TextView;

    const v4, 0x7f120fde

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 99
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0552

    .line 102
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/applications/AppPermissionView;->mPermissionManageContainer:Landroid/view/View;

    .line 103
    iget-object v0, p0, Lcom/meizu/settings/applications/AppPermissionView;->mPermissionManageContainer:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meizu/settings/applications/AppPermissionView;->mPermissionManage:Landroid/widget/TextView;

    .line 104
    iget-object v0, p0, Lcom/meizu/settings/applications/AppPermissionView;->mPermissionManage:Landroid/widget/TextView;

    const v3, 0x7f120fdf

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 105
    iget-object v0, p0, Lcom/meizu/settings/applications/AppPermissionView;->mPermissionManageContainer:Landroid/view/View;

    .line 106
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meizu/settings/applications/AppPermissionView;->mPermissionManageSummary:Landroid/widget/TextView;

    .line 107
    iget-object v0, p0, Lcom/meizu/settings/applications/AppPermissionView;->mPermissionManageSummary:Landroid/widget/TextView;

    const v3, 0x7f120fe0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    .line 108
    iget-object v0, p0, Lcom/meizu/settings/applications/AppPermissionView;->mPermissionManageContainer:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0282

    .line 111
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/applications/AppPermissionView;->mExternalSourceManageContainer:Landroid/view/View;

    .line 112
    iget-object v0, p0, Lcom/meizu/settings/applications/AppPermissionView;->mExternalSourceManageContainer:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meizu/settings/applications/AppPermissionView;->mExternalSourceManage:Landroid/widget/TextView;

    .line 114
    iget-object v0, p0, Lcom/meizu/settings/applications/AppPermissionView;->mExternalSourceManage:Landroid/widget/TextView;

    const v1, 0x7f120a20

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 115
    iget-object v0, p0, Lcom/meizu/settings/applications/AppPermissionView;->mExternalSourceManageContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/meizu/settings/applications/AppPermissionView;->mExternalSourceManageSummary:Landroid/widget/TextView;

    .line 117
    iget-object v0, p0, Lcom/meizu/settings/applications/AppPermissionView;->mExternalSourceManageContainer:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public resume()V
    .registers 1

    .line 276
    invoke-direct {p0}, Lcom/meizu/settings/applications/AppPermissionView;->updateExternalSourceSummary()V

    return-void
.end method
