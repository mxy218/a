.class public Lcom/meizu/settings/applications/MzAppLaunchSettings;
.super Lcom/meizu/settings/SettingsPreferenceFragment;
.source "MzAppLaunchSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final sBrowserIntent:Landroid/content/Intent;


# instance fields
.field private mAppLinkState:Landroid/preference/ListPreference;

.field private mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

.field private mCheckSupportedLinks:Landroid/preference/Preference;

.field private mHasDomainUrls:Z

.field private mIsBrowser:Z

.field private mPackageName:Ljava/lang/String;

.field private mPm:Landroid/content/pm/PackageManager;

.field private mResetAutoLinks:Landroid/preference/Preference;

.field private mSupportedUrlEntries:[Ljava/lang/CharSequence;

.field private mUsbManager:Landroid/hardware/usb/IUsbManager;

.field private mUserId:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 51
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.action.VIEW"

    .line 52
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.category.BROWSABLE"

    .line 53
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "http:"

    .line 54
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lcom/meizu/settings/applications/MzAppLaunchSettings;->sBrowserIntent:Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 38
    invoke-direct {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/meizu/settings/applications/MzAppLaunchSettings;)Landroid/hardware/usb/IUsbManager;
    .registers 1

    .line 38
    iget-object p0, p0, Lcom/meizu/settings/applications/MzAppLaunchSettings;->mUsbManager:Landroid/hardware/usb/IUsbManager;

    return-object p0
.end method

.method static synthetic access$100(Lcom/meizu/settings/applications/MzAppLaunchSettings;)Ljava/lang/String;
    .registers 1

    .line 38
    iget-object p0, p0, Lcom/meizu/settings/applications/MzAppLaunchSettings;->mPackageName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/meizu/settings/applications/MzAppLaunchSettings;)Landroid/content/pm/PackageManager;
    .registers 1

    .line 38
    iget-object p0, p0, Lcom/meizu/settings/applications/MzAppLaunchSettings;->mPm:Landroid/content/pm/PackageManager;

    return-object p0
.end method

.method static synthetic access$300(Lcom/meizu/settings/applications/MzAppLaunchSettings;)I
    .registers 1

    .line 38
    iget p0, p0, Lcom/meizu/settings/applications/MzAppLaunchSettings;->mUserId:I

    return p0
.end method

.method static synthetic access$400(Lcom/meizu/settings/applications/MzAppLaunchSettings;)Landroid/appwidget/AppWidgetManager;
    .registers 1

    .line 38
    iget-object p0, p0, Lcom/meizu/settings/applications/MzAppLaunchSettings;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    return-object p0
.end method

.method static synthetic access$500(Lcom/meizu/settings/applications/MzAppLaunchSettings;)Landroid/preference/Preference;
    .registers 1

    .line 38
    iget-object p0, p0, Lcom/meizu/settings/applications/MzAppLaunchSettings;->mResetAutoLinks:Landroid/preference/Preference;

    return-object p0
.end method

.method private buildStateDropDown()V
    .registers 4

    .line 158
    iget-boolean v0, p0, Lcom/meizu/settings/applications/MzAppLaunchSettings;->mIsBrowser:Z

    if-eqz v0, :cond_1b

    .line 160
    iget-object v0, p0, Lcom/meizu/settings/applications/MzAppLaunchSettings;->mAppLinkState:Landroid/preference/ListPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setShouldDisableView(Z)V

    .line 161
    iget-object v0, p0, Lcom/meizu/settings/applications/MzAppLaunchSettings;->mAppLinkState:Landroid/preference/ListPreference;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 162
    iget-object v0, p0, Lcom/meizu/settings/applications/MzAppLaunchSettings;->mCheckSupportedLinks:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setShouldDisableView(Z)V

    .line 163
    iget-object p0, p0, Lcom/meizu/settings/applications/MzAppLaunchSettings;->mCheckSupportedLinks:Landroid/preference/Preference;

    invoke-virtual {p0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_34

    .line 164
    :cond_1b
    iget-boolean v0, p0, Lcom/meizu/settings/applications/MzAppLaunchSettings;->mHasDomainUrls:Z

    if-eqz v0, :cond_34

    .line 168
    iget-object v0, p0, Lcom/meizu/settings/applications/MzAppLaunchSettings;->mPm:Landroid/content/pm/PackageManager;

    iget-object v1, p0, Lcom/meizu/settings/applications/MzAppLaunchSettings;->mPackageName:Ljava/lang/String;

    iget v2, p0, Lcom/meizu/settings/applications/MzAppLaunchSettings;->mUserId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getIntentVerificationStatusAsUser(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_2c

    const/4 v0, 0x4

    .line 171
    :cond_2c
    invoke-direct {p0, v0}, Lcom/meizu/settings/applications/MzAppLaunchSettings;->updateAppLinkStateSummary(I)V

    .line 174
    iget-object v0, p0, Lcom/meizu/settings/applications/MzAppLaunchSettings;->mAppLinkState:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    :cond_34
    :goto_34
    return-void
.end method

.method private getSupportedUrlEntries(Ljava/lang/String;)[Ljava/lang/CharSequence;
    .registers 2

    .line 179
    iget-object p0, p0, Lcom/meizu/settings/applications/MzAppLaunchSettings;->mPm:Landroid/content/pm/PackageManager;

    invoke-static {p0, p1}, Lcom/android/settings/Utils;->getHandledDomains(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object p0

    .line 180
    invoke-virtual {p0}, Landroid/util/ArraySet;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/CharSequence;

    return-object p0
.end method

.method private initPreference()V
    .registers 2

    const-string v0, "app_link_state"

    .line 87
    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/meizu/settings/applications/MzAppLaunchSettings;->mAppLinkState:Landroid/preference/ListPreference;

    const-string v0, "check_supported_links"

    .line 88
    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/applications/MzAppLaunchSettings;->mCheckSupportedLinks:Landroid/preference/Preference;

    const-string/jumbo v0, "reset_auto_launch"

    .line 89
    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/applications/MzAppLaunchSettings;->mResetAutoLinks:Landroid/preference/Preference;

    return-void
.end method

.method private isBrowserApp(Ljava/lang/String;)Z
    .registers 6

    .line 144
    sget-object v0, Lcom/meizu/settings/applications/MzAppLaunchSettings;->sBrowserIntent:Landroid/content/Intent;

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 145
    iget-object p1, p0, Lcom/meizu/settings/applications/MzAppLaunchSettings;->mPm:Landroid/content/pm/PackageManager;

    sget-object v0, Lcom/meizu/settings/applications/MzAppLaunchSettings;->sBrowserIntent:Landroid/content/Intent;

    iget p0, p0, Lcom/meizu/settings/applications/MzAppLaunchSettings;->mUserId:I

    const/high16 v1, 0x20000

    invoke-virtual {p1, v0, v1, p0}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object p0

    .line 147
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x0

    move v1, v0

    :goto_17
    if-ge v1, p1, :cond_2c

    .line 149
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 150
    iget-object v3, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v3, :cond_29

    iget-boolean v2, v2, Landroid/content/pm/ResolveInfo;->handleAllWebDataURI:Z

    if-eqz v2, :cond_29

    const/4 p0, 0x1

    return p0

    :cond_29
    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    :cond_2c
    return v0
.end method

.method private refreshUi()V
    .registers 8

    .line 94
    iget-boolean v0, p0, Lcom/meizu/settings/applications/MzAppLaunchSettings;->mIsBrowser:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_52

    .line 95
    iget-object v0, p0, Lcom/meizu/settings/applications/MzAppLaunchSettings;->mPackageName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/meizu/settings/applications/MzAppLaunchSettings;->getSupportedUrlEntries(Ljava/lang/String;)[Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/applications/MzAppLaunchSettings;->mSupportedUrlEntries:[Ljava/lang/CharSequence;

    .line 96
    iget-object v0, p0, Lcom/meizu/settings/applications/MzAppLaunchSettings;->mSupportedUrlEntries:[Ljava/lang/CharSequence;

    array-length v0, v0

    if-nez v0, :cond_30

    .line 98
    iget-object v0, p0, Lcom/meizu/settings/applications/MzAppLaunchSettings;->mAppLinkState:Landroid/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setShouldDisableView(Z)V

    .line 99
    iget-object v0, p0, Lcom/meizu/settings/applications/MzAppLaunchSettings;->mAppLinkState:Landroid/preference/ListPreference;

    invoke-virtual {v0, v2}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 100
    iget-object v0, p0, Lcom/meizu/settings/applications/MzAppLaunchSettings;->mCheckSupportedLinks:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setShouldDisableView(Z)V

    .line 101
    iget-object v0, p0, Lcom/meizu/settings/applications/MzAppLaunchSettings;->mCheckSupportedLinks:Landroid/preference/Preference;

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 102
    iget-object v0, p0, Lcom/meizu/settings/applications/MzAppLaunchSettings;->mCheckSupportedLinks:Landroid/preference/Preference;

    const v3, 0x7f12048f

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_52

    :cond_30
    if-ne v0, v1, :cond_36

    const v0, 0x7f120490

    goto :goto_39

    :cond_36
    const v0, 0x7f120491

    .line 107
    :goto_39
    iget-object v3, p0, Lcom/meizu/settings/applications/MzAppLaunchSettings;->mSupportedUrlEntries:[Ljava/lang/CharSequence;

    aget-object v3, v3, v2

    .line 108
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    .line 109
    iget-object v5, p0, Lcom/meizu/settings/applications/MzAppLaunchSettings;->mCheckSupportedLinks:Landroid/preference/Preference;

    new-array v6, v1, [Ljava/lang/Object;

    aput-object v3, v6, v2

    invoke-virtual {v4, v0, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 112
    :cond_52
    :goto_52
    invoke-direct {p0}, Lcom/meizu/settings/applications/MzAppLaunchSettings;->buildStateDropDown()V

    .line 116
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 118
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 119
    iget-object v4, p0, Lcom/meizu/settings/applications/MzAppLaunchSettings;->mPm:Landroid/content/pm/PackageManager;

    iget-object v5, p0, Lcom/meizu/settings/applications/MzAppLaunchSettings;->mPackageName:Ljava/lang/String;

    invoke-virtual {v4, v3, v0, v5}, Landroid/content/pm/PackageManager;->getPreferredActivities(Ljava/util/List;Ljava/util/List;Ljava/lang/String;)I

    .line 123
    :try_start_66
    iget-object v3, p0, Lcom/meizu/settings/applications/MzAppLaunchSettings;->mUsbManager:Landroid/hardware/usb/IUsbManager;

    if-eqz v3, :cond_7d

    .line 124
    iget-object v3, p0, Lcom/meizu/settings/applications/MzAppLaunchSettings;->mUsbManager:Landroid/hardware/usb/IUsbManager;

    iget-object v4, p0, Lcom/meizu/settings/applications/MzAppLaunchSettings;->mPackageName:Ljava/lang/String;

    iget v5, p0, Lcom/meizu/settings/applications/MzAppLaunchSettings;->mUserId:I

    invoke-interface {v3, v4, v5}, Landroid/hardware/usb/IUsbManager;->hasDefaults(Ljava/lang/String;I)Z

    move-result v3
    :try_end_74
    .catch Landroid/os/RemoteException; {:try_start_66 .. :try_end_74} :catch_75

    goto :goto_7e

    :catch_75
    move-exception v3

    const-string v4, "MzAppLaunchSettings"

    const-string v5, "mUsbManager.hasDefaults"

    .line 127
    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_7d
    move v3, v2

    .line 129
    :goto_7e
    iget-object v4, p0, Lcom/meizu/settings/applications/MzAppLaunchSettings;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    iget-object v5, p0, Lcom/meizu/settings/applications/MzAppLaunchSettings;->mPackageName:Ljava/lang/String;

    .line 130
    invoke-virtual {v4, v5}, Landroid/appwidget/AppWidgetManager;->hasBindAppWidgetPermission(Ljava/lang/String;)Z

    move-result v4

    .line 132
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_90

    if-eqz v3, :cond_8f

    goto :goto_90

    :cond_8f
    move v1, v2

    :cond_90
    :goto_90
    if-nez v1, :cond_a2

    if-nez v4, :cond_a2

    .line 134
    iget-object v0, p0, Lcom/meizu/settings/applications/MzAppLaunchSettings;->mResetAutoLinks:Landroid/preference/Preference;

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 135
    iget-object p0, p0, Lcom/meizu/settings/applications/MzAppLaunchSettings;->mResetAutoLinks:Landroid/preference/Preference;

    const v0, 0x7f120f12

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_aa

    .line 137
    :cond_a2
    iget-object p0, p0, Lcom/meizu/settings/applications/MzAppLaunchSettings;->mResetAutoLinks:Landroid/preference/Preference;

    const v0, 0x7f121199

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setSummary(I)V

    :goto_aa
    return-void
.end method

.method private showResetAutoLinksDialog()V
    .registers 4

    .line 226
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f121198

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f1201f9

    const/4 v2, 0x0

    .line 227
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/meizu/settings/applications/MzAppLaunchSettings$1;

    invoke-direct {v1, p0}, Lcom/meizu/settings/applications/MzAppLaunchSettings$1;-><init>(Lcom/meizu/settings/applications/MzAppLaunchSettings;)V

    const p0, 0x7f1201fa

    .line 228
    invoke-virtual {v0, p0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 243
    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private showSupportedLinksDialog()V
    .registers 5

    .line 215
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 216
    :goto_6
    iget-object v2, p0, Lcom/meizu/settings/applications/MzAppLaunchSettings;->mSupportedUrlEntries:[Ljava/lang/CharSequence;

    array-length v2, v2

    if-ge v1, v2, :cond_26

    .line 217
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/meizu/settings/applications/MzAppLaunchSettings;->mSupportedUrlEntries:[Ljava/lang/CharSequence;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 219
    :cond_26
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const p0, 0x7f120183

    .line 220
    invoke-virtual {v1, p0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 221
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 222
    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private updateAppLinkState(I)Z
    .registers 6

    .line 184
    iget-boolean v0, p0, Lcom/meizu/settings/applications/MzAppLaunchSettings;->mIsBrowser:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    return v1

    .line 190
    :cond_6
    iget-object v0, p0, Lcom/meizu/settings/applications/MzAppLaunchSettings;->mPm:Landroid/content/pm/PackageManager;

    iget-object v2, p0, Lcom/meizu/settings/applications/MzAppLaunchSettings;->mPackageName:Ljava/lang/String;

    iget v3, p0, Lcom/meizu/settings/applications/MzAppLaunchSettings;->mUserId:I

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getIntentVerificationStatusAsUser(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, p1, :cond_13

    return v1

    .line 195
    :cond_13
    iget-object v0, p0, Lcom/meizu/settings/applications/MzAppLaunchSettings;->mPm:Landroid/content/pm/PackageManager;

    iget-object v2, p0, Lcom/meizu/settings/applications/MzAppLaunchSettings;->mPackageName:Ljava/lang/String;

    iget v3, p0, Lcom/meizu/settings/applications/MzAppLaunchSettings;->mUserId:I

    invoke-virtual {v0, v2, p1, v3}, Landroid/content/pm/PackageManager;->updateIntentVerificationStatusAsUser(Ljava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 198
    iget-object v0, p0, Lcom/meizu/settings/applications/MzAppLaunchSettings;->mPm:Landroid/content/pm/PackageManager;

    iget-object v2, p0, Lcom/meizu/settings/applications/MzAppLaunchSettings;->mPackageName:Ljava/lang/String;

    iget v3, p0, Lcom/meizu/settings/applications/MzAppLaunchSettings;->mUserId:I

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getIntentVerificationStatusAsUser(Ljava/lang/String;I)I

    move-result v0

    if-ne p1, v0, :cond_2c

    const/4 v1, 0x1

    :cond_2c
    move v0, v1

    .line 200
    invoke-direct {p0, p1}, Lcom/meizu/settings/applications/MzAppLaunchSettings;->updateAppLinkStateSummary(I)V

    goto :goto_38

    :cond_31
    const-string p0, "MzAppLaunchSettings"

    const-string p1, "Couldn\'t update intent verification status!"

    .line 202
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_38
    return v0
.end method

.method private updateAppLinkStateSummary(I)V
    .registers 3

    .line 208
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    .line 209
    iget-object v0, p0, Lcom/meizu/settings/applications/MzAppLaunchSettings;->mAppLinkState:Landroid/preference/ListPreference;

    invoke-virtual {v0, p1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 210
    iget-object p1, p0, Lcom/meizu/settings/applications/MzAppLaunchSettings;->mAppLinkState:Landroid/preference/ListPreference;

    invoke-virtual {p1}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object p1

    .line 211
    iget-object p0, p0, Lcom/meizu/settings/applications/MzAppLaunchSettings;->mAppLinkState:Landroid/preference/ListPreference;

    invoke-virtual {p0, p1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 3

    .line 67
    invoke-super {p0, p1}, Lcom/meizu/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f1600a9

    .line 69
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    .line 70
    invoke-direct {p0}, Lcom/meizu/settings/applications/MzAppLaunchSettings;->initPreference()V

    const-string/jumbo p1, "usb"

    .line 72
    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    .line 73
    invoke-static {p1}, Landroid/hardware/usb/IUsbManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/usb/IUsbManager;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/applications/MzAppLaunchSettings;->mUsbManager:Landroid/hardware/usb/IUsbManager;

    .line 74
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/applications/MzAppLaunchSettings;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    .line 76
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/applications/MzAppLaunchSettings;->mPm:Landroid/content/pm/PackageManager;

    .line 77
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p1

    iput p1, p0, Lcom/meizu/settings/applications/MzAppLaunchSettings;->mUserId:I

    .line 78
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_45

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string/jumbo v0, "package"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_46

    :cond_45
    const/4 p1, 0x0

    :goto_46
    iput-object p1, p0, Lcom/meizu/settings/applications/MzAppLaunchSettings;->mPackageName:Ljava/lang/String;

    .line 79
    iget-object p1, p0, Lcom/meizu/settings/applications/MzAppLaunchSettings;->mPackageName:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/meizu/settings/applications/MzAppLaunchSettings;->isBrowserApp(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/meizu/settings/applications/MzAppLaunchSettings;->mIsBrowser:Z

    .line 80
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_62

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string/jumbo v0, "private_flags"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    goto :goto_63

    :cond_62
    const/4 p1, -0x1

    :goto_63
    and-int/lit8 p1, p1, 0x10

    if-eqz p1, :cond_69

    const/4 p1, 0x1

    goto :goto_6a

    :cond_69
    const/4 p1, 0x0

    .line 81
    :goto_6a
    iput-boolean p1, p0, Lcom/meizu/settings/applications/MzAppLaunchSettings;->mHasDomainUrls:Z

    .line 83
    invoke-direct {p0}, Lcom/meizu/settings/applications/MzAppLaunchSettings;->refreshUi()V

    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .registers 4

    .line 258
    iget-object v0, p0, Lcom/meizu/settings/applications/MzAppLaunchSettings;->mAppLinkState:Landroid/preference/ListPreference;

    if-ne p1, v0, :cond_f

    .line 260
    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/meizu/settings/applications/MzAppLaunchSettings;->updateAppLinkState(I)Z

    move-result p0

    return p0

    :cond_f
    const/4 p0, 0x1

    return p0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .registers 4

    .line 248
    iget-object v0, p0, Lcom/meizu/settings/applications/MzAppLaunchSettings;->mCheckSupportedLinks:Landroid/preference/Preference;

    if-ne p2, v0, :cond_8

    .line 249
    invoke-direct {p0}, Lcom/meizu/settings/applications/MzAppLaunchSettings;->showSupportedLinksDialog()V

    goto :goto_f

    .line 250
    :cond_8
    iget-object v0, p0, Lcom/meizu/settings/applications/MzAppLaunchSettings;->mResetAutoLinks:Landroid/preference/Preference;

    if-ne p2, v0, :cond_f

    .line 251
    invoke-direct {p0}, Lcom/meizu/settings/applications/MzAppLaunchSettings;->showResetAutoLinksDialog()V

    .line 253
    :cond_f
    :goto_f
    invoke-super {p0, p1, p2}, Lcom/meizu/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result p0

    return p0
.end method
