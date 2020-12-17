.class public Lcom/meizu/settings/navigationandrecents/FlymeNavigationAndRecentsSettings;
.super Lcom/meizu/settings/SettingsPreferenceFragment;
.source "FlymeNavigationAndRecentsSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/meizu/settings/search/Indexable;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/meizu/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field public final ACTION_GOOGLE_VOICE_ASSISTANT:Ljava/lang/String;

.field private final ACTION_SHOW_MEIZU_PAY_PAGE:Ljava/lang/String;

.field public final CLASS_MEIZU_VOICE_ASSISTANT:Ljava/lang/String;

.field private final CLASS_PERSONAL_ASSISTANT:Ljava/lang/String;

.field private final ENTRY_VALUE_INVALID:Ljava/lang/String;

.field private final HOME_KEY_BEHAVIOR_DOUBLE_CLICK_VALUE_CAMERA:Ljava/lang/String;

.field private final HOME_KEY_BEHAVIOR_DOUBLE_CLICK_VALUE_MEIZU_PAY:Ljava/lang/String;

.field private final HOME_KEY_BEHAVIOR_DOUBLE_CLICK_VALUE_MUSIC:Ljava/lang/String;

.field private final HOME_KEY_BEHAVIOR_DOUBLE_CLICK_VALUE_NO_RESPONSE:Ljava/lang/String;

.field private final HOME_KEY_BEHAVIOR_LONG_PRESS_VALUE_NO_RESPONSE:I

.field private final HOME_KEY_BEHAVIOR_LONG_PRESS_VALUE_PERSONAL_ASSISTANT:I

.field private final HOME_KEY_BEHAVIOR_LONG_PRESS_VALUE_SCREEN_OFF:I

.field private final HOME_KEY_BEHAVIOR_LONG_PRESS_VALUE_VOICE:I

.field public final PKG_GOOGLE_QUICK_SEARCH:Ljava/lang/String;

.field private final PKG_MEIZU_NFC_PAY:Ljava/lang/String;

.field public final PKG_MEIZU_VOICE_ASSISTANT:Ljava/lang/String;

.field private final PKG_PERSONAL_ASSISTANT:Ljava/lang/String;

.field private final POWER_KEY_BEHAVIOR_DOUBLE_CLICK_VALUE_CAMERA:Ljava/lang/String;

.field private final POWER_KEY_BEHAVIOR_DOUBLE_CLICK_VALUE_MEIZU_PAY:Ljava/lang/String;

.field private final POWER_KEY_BEHAVIOR_DOUBLE_CLICK_VALUE_NO_RESPONSE:Ljava/lang/String;

.field private final POWER_KEY_BEHAVIOR_DOUBLE_CLICK_VALUE_PERSONAL_ASSISTANT:Ljava/lang/String;

.field private final POWER_KEY_BEHAVIOR_SMART_VOICE:Ljava/lang/String;

.field private final TYPE_HOME_DOUBLE_CLICK:I

.field private final TYPE_HOME_LONG_PRESS:I

.field private final TYPE_INVALID:I

.field private final TYPE_POWER_DOUBLE_CLICK:I

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mGuestureWakeupPreference:Landroid/preference/Preference;

.field private mHomeDoubleClick:Landroid/preference/ListPreference;

.field private mHomeLongPress:Landroid/preference/ListPreference;

.field private mKeyboardBackBehavior:Landroid/preference/ListPreference;

.field private mNavigatoinBarPreference:Landroid/preference/Preference;

.field private mPowerDoubleClick:Landroid/preference/ListPreference;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 314
    new-instance v0, Lcom/meizu/settings/navigationandrecents/FlymeNavigationAndRecentsSettings$1;

    invoke-direct {v0}, Lcom/meizu/settings/navigationandrecents/FlymeNavigationAndRecentsSettings$1;-><init>()V

    sput-object v0, Lcom/meizu/settings/navigationandrecents/FlymeNavigationAndRecentsSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/meizu/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .registers 6

    .line 40
    invoke-direct {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;-><init>()V

    const-string v0, "-1"

    .line 62
    iput-object v0, p0, Lcom/meizu/settings/navigationandrecents/FlymeNavigationAndRecentsSettings;->ENTRY_VALUE_INVALID:Ljava/lang/String;

    const-string v0, "0"

    .line 63
    iput-object v0, p0, Lcom/meizu/settings/navigationandrecents/FlymeNavigationAndRecentsSettings;->HOME_KEY_BEHAVIOR_DOUBLE_CLICK_VALUE_NO_RESPONSE:Ljava/lang/String;

    const-string v1, "1"

    .line 64
    iput-object v1, p0, Lcom/meizu/settings/navigationandrecents/FlymeNavigationAndRecentsSettings;->HOME_KEY_BEHAVIOR_DOUBLE_CLICK_VALUE_MUSIC:Ljava/lang/String;

    const-string v2, "2"

    .line 65
    iput-object v2, p0, Lcom/meizu/settings/navigationandrecents/FlymeNavigationAndRecentsSettings;->HOME_KEY_BEHAVIOR_DOUBLE_CLICK_VALUE_CAMERA:Ljava/lang/String;

    const-string v3, "3"

    .line 66
    iput-object v3, p0, Lcom/meizu/settings/navigationandrecents/FlymeNavigationAndRecentsSettings;->HOME_KEY_BEHAVIOR_DOUBLE_CLICK_VALUE_MEIZU_PAY:Ljava/lang/String;

    const-string v4, "com.meizu.mznfcpay.SHOW_PAY_PAGE_ACTION"

    .line 67
    iput-object v4, p0, Lcom/meizu/settings/navigationandrecents/FlymeNavigationAndRecentsSettings;->ACTION_SHOW_MEIZU_PAY_PAGE:Ljava/lang/String;

    const-string v4, "com.meizu.mznfcpay"

    .line 68
    iput-object v4, p0, Lcom/meizu/settings/navigationandrecents/FlymeNavigationAndRecentsSettings;->PKG_MEIZU_NFC_PAY:Ljava/lang/String;

    .line 71
    iput-object v0, p0, Lcom/meizu/settings/navigationandrecents/FlymeNavigationAndRecentsSettings;->POWER_KEY_BEHAVIOR_DOUBLE_CLICK_VALUE_MEIZU_PAY:Ljava/lang/String;

    .line 72
    iput-object v1, p0, Lcom/meizu/settings/navigationandrecents/FlymeNavigationAndRecentsSettings;->POWER_KEY_BEHAVIOR_DOUBLE_CLICK_VALUE_PERSONAL_ASSISTANT:Ljava/lang/String;

    .line 73
    iput-object v2, p0, Lcom/meizu/settings/navigationandrecents/FlymeNavigationAndRecentsSettings;->POWER_KEY_BEHAVIOR_DOUBLE_CLICK_VALUE_CAMERA:Ljava/lang/String;

    .line 74
    iput-object v3, p0, Lcom/meizu/settings/navigationandrecents/FlymeNavigationAndRecentsSettings;->POWER_KEY_BEHAVIOR_DOUBLE_CLICK_VALUE_NO_RESPONSE:Ljava/lang/String;

    const-string v0, "4"

    .line 75
    iput-object v0, p0, Lcom/meizu/settings/navigationandrecents/FlymeNavigationAndRecentsSettings;->POWER_KEY_BEHAVIOR_SMART_VOICE:Ljava/lang/String;

    const/4 v0, -0x1

    .line 78
    iput v0, p0, Lcom/meizu/settings/navigationandrecents/FlymeNavigationAndRecentsSettings;->TYPE_INVALID:I

    const/4 v0, 0x0

    .line 79
    iput v0, p0, Lcom/meizu/settings/navigationandrecents/FlymeNavigationAndRecentsSettings;->TYPE_HOME_DOUBLE_CLICK:I

    const/4 v1, 0x1

    .line 80
    iput v1, p0, Lcom/meizu/settings/navigationandrecents/FlymeNavigationAndRecentsSettings;->TYPE_HOME_LONG_PRESS:I

    const/4 v2, 0x2

    .line 81
    iput v2, p0, Lcom/meizu/settings/navigationandrecents/FlymeNavigationAndRecentsSettings;->TYPE_POWER_DOUBLE_CLICK:I

    .line 83
    iput v0, p0, Lcom/meizu/settings/navigationandrecents/FlymeNavigationAndRecentsSettings;->HOME_KEY_BEHAVIOR_LONG_PRESS_VALUE_SCREEN_OFF:I

    .line 84
    iput v1, p0, Lcom/meizu/settings/navigationandrecents/FlymeNavigationAndRecentsSettings;->HOME_KEY_BEHAVIOR_LONG_PRESS_VALUE_VOICE:I

    .line 85
    iput v2, p0, Lcom/meizu/settings/navigationandrecents/FlymeNavigationAndRecentsSettings;->HOME_KEY_BEHAVIOR_LONG_PRESS_VALUE_NO_RESPONSE:I

    const/4 v0, 0x3

    .line 86
    iput v0, p0, Lcom/meizu/settings/navigationandrecents/FlymeNavigationAndRecentsSettings;->HOME_KEY_BEHAVIOR_LONG_PRESS_VALUE_PERSONAL_ASSISTANT:I

    const-string v0, "com.meizu.assistant"

    .line 88
    iput-object v0, p0, Lcom/meizu/settings/navigationandrecents/FlymeNavigationAndRecentsSettings;->PKG_PERSONAL_ASSISTANT:Ljava/lang/String;

    const-string v0, "com.meizu.assistant.ui.activity.FakeLauncherActivity"

    .line 89
    iput-object v0, p0, Lcom/meizu/settings/navigationandrecents/FlymeNavigationAndRecentsSettings;->CLASS_PERSONAL_ASSISTANT:Ljava/lang/String;

    const-string v0, "com.google.android.googlequicksearchbox"

    .line 90
    iput-object v0, p0, Lcom/meizu/settings/navigationandrecents/FlymeNavigationAndRecentsSettings;->PKG_GOOGLE_QUICK_SEARCH:Ljava/lang/String;

    const-string v0, "android.intent.action.VOICE_ASSIST"

    .line 91
    iput-object v0, p0, Lcom/meizu/settings/navigationandrecents/FlymeNavigationAndRecentsSettings;->ACTION_GOOGLE_VOICE_ASSISTANT:Ljava/lang/String;

    const-string v0, "com.meizu.voiceassistant"

    .line 92
    iput-object v0, p0, Lcom/meizu/settings/navigationandrecents/FlymeNavigationAndRecentsSettings;->PKG_MEIZU_VOICE_ASSISTANT:Ljava/lang/String;

    const-string v0, "com.meizu.voiceassistant.MainActivity"

    .line 93
    iput-object v0, p0, Lcom/meizu/settings/navigationandrecents/FlymeNavigationAndRecentsSettings;->CLASS_MEIZU_VOICE_ASSISTANT:Ljava/lang/String;

    return-void
.end method

.method private checkActivityResolveInfo(Landroid/content/Intent;)Z
    .registers 3

    .line 467
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v0, 0x0

    .line 468
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0

    .line 469
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_14

    const/4 v0, 0x1

    :cond_14
    return v0
.end method

.method private checkBroadcastResolveInfo(Landroid/content/Intent;)Z
    .registers 3

    .line 473
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v0, 0x0

    .line 474
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0

    .line 475
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_14

    const/4 v0, 0x1

    :cond_14
    return v0
.end method

.method private checkFeatureSupport(ILjava/lang/CharSequence;)Z
    .registers 12

    const-string v0, "3"

    const-string v1, "com.meizu.mznfcpay"

    const-string v2, "android.intent.category.DEFAULT"

    const-string v3, "com.meizu.mznfcpay.SHOW_PAY_PAGE_ACTION"

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz p1, :cond_d1

    const-string v6, "com.meizu.assistant.ui.activity.FakeLauncherActivity"

    const/4 v7, 0x2

    const-string v8, "com.meizu.assistant"

    if-eq p1, v5, :cond_8b

    if-eq p1, v7, :cond_17

    goto/16 :goto_e8

    .line 434
    :cond_17
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 435
    invoke-static {}, Landroid/os/BuildExt;->isProductInternational()Z

    move-result v7

    if-eqz v7, :cond_2d

    const-string v6, "android.intent.action.VOICE_ASSIST"

    .line 436
    invoke-virtual {p1, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v6, "com.google.android.googlequicksearchbox"

    .line 437
    invoke-virtual {p1, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_33

    .line 439
    :cond_2d
    invoke-virtual {p1, v8, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 440
    invoke-virtual {p1, v8}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 443
    :goto_33
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 444
    invoke-virtual {v6, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 445
    invoke-virtual {v6, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 447
    new-instance v1, Landroid/content/Intent;

    const-string v2, "flyme.intent.action.VOICE_COMMAND"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "com.meizu.voiceassistant"

    .line 448
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 450
    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_e8

    const-string v0, "2"

    .line 451
    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_e8

    const-string v0, "1"

    .line 452
    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6c

    invoke-direct {p0, p1}, Lcom/meizu/settings/navigationandrecents/FlymeNavigationAndRecentsSettings;->checkActivityResolveInfo(Landroid/content/Intent;)Z

    move-result p1

    if-eqz p1, :cond_6c

    invoke-direct {p0}, Lcom/meizu/settings/navigationandrecents/FlymeNavigationAndRecentsSettings;->isPersonalAssistantOpened()Z

    move-result p1

    if-nez p1, :cond_e8

    :cond_6c
    const-string p1, "0"

    .line 453
    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_7a

    invoke-direct {p0, v6}, Lcom/meizu/settings/navigationandrecents/FlymeNavigationAndRecentsSettings;->checkActivityResolveInfo(Landroid/content/Intent;)Z

    move-result p1

    if-nez p1, :cond_e8

    :cond_7a
    const-string p1, "4"

    .line 454
    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_89

    invoke-direct {p0, v1}, Lcom/meizu/settings/navigationandrecents/FlymeNavigationAndRecentsSettings;->checkBroadcastResolveInfo(Landroid/content/Intent;)Z

    move-result p0

    if-eqz p0, :cond_89

    goto :goto_e8

    :cond_89
    move v5, v4

    goto :goto_e8

    .line 426
    :cond_8b
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 427
    invoke-virtual {p1, v8, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 428
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_e8

    .line 429
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_e8

    const/4 p1, 0x3

    .line 430
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_bc

    invoke-direct {p0, p1}, Lcom/meizu/settings/navigationandrecents/FlymeNavigationAndRecentsSettings;->constructIntent(I)Landroid/content/Intent;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/meizu/settings/navigationandrecents/FlymeNavigationAndRecentsSettings;->checkActivityResolveInfo(Landroid/content/Intent;)Z

    move-result p1

    if-nez p1, :cond_e8

    .line 431
    :cond_bc
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_89

    invoke-direct {p0, v5}, Lcom/meizu/settings/navigationandrecents/FlymeNavigationAndRecentsSettings;->constructIntent(I)Landroid/content/Intent;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/meizu/settings/navigationandrecents/FlymeNavigationAndRecentsSettings;->checkActivityResolveInfo(Landroid/content/Intent;)Z

    move-result p0

    if-eqz p0, :cond_89

    goto :goto_e8

    .line 419
    :cond_d1
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 420
    invoke-virtual {p1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 421
    invoke-virtual {p1, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 422
    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_e8

    invoke-direct {p0, p1}, Lcom/meizu/settings/navigationandrecents/FlymeNavigationAndRecentsSettings;->checkActivityResolveInfo(Landroid/content/Intent;)Z

    move-result p0

    if-eqz p0, :cond_89

    :cond_e8
    :goto_e8
    return v5
.end method

.method private checkIfNeedRemovePreference()V
    .registers 5

    .line 144
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/meizu/settings/utils/MzUtils;->isGuestUser(Landroid/content/Context;)Z

    move-result v0

    .line 145
    invoke-static {}, Landroid/os/BuildExt;->isProductInternational()Z

    move-result v1

    .line 147
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "com.meizu.voiceassistant"

    invoke-static {v2, v3}, Lcom/meizu/settings/utils/MzUtils;->isPackageExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1a

    if-eqz v0, :cond_1d

    .line 149
    :cond_1a
    invoke-direct {p0, v0}, Lcom/meizu/settings/navigationandrecents/FlymeNavigationAndRecentsSettings;->removeHomeLongPress(Z)V

    :cond_1d
    if-eqz v0, :cond_31

    .line 154
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/meizu/settings/navigationandrecents/FlymeNavigationAndRecentsSettings;->mHomeDoubleClick:Landroid/preference/ListPreference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 155
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/meizu/settings/navigationandrecents/FlymeNavigationAndRecentsSettings;->mPowerDoubleClick:Landroid/preference/ListPreference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 158
    :cond_31
    invoke-static {}, Landroid/os/BuildExt;->isProductInternational()Z

    move-result v2

    if-eqz v2, :cond_59

    iget-object v2, p0, Lcom/meizu/settings/navigationandrecents/FlymeNavigationAndRecentsSettings;->mHomeLongPress:Landroid/preference/ListPreference;

    if-eqz v2, :cond_59

    .line 159
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v3, "com.google.android.googlequicksearchbox"

    invoke-static {v2, v3}, Lcom/meizu/settings/utils/MzUtils;->isPackageExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_50

    .line 160
    iget-object v2, p0, Lcom/meizu/settings/navigationandrecents/FlymeNavigationAndRecentsSettings;->mHomeLongPress:Landroid/preference/ListPreference;

    const v3, 0x7f0300a9

    invoke-virtual {v2, v3}, Landroid/preference/ListPreference;->setEntries(I)V

    goto :goto_59

    .line 162
    :cond_50
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/meizu/settings/navigationandrecents/FlymeNavigationAndRecentsSettings;->mHomeLongPress:Landroid/preference/ListPreference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_59
    :goto_59
    if-nez v0, :cond_65

    .line 166
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/meizu/settings/utils/MzUtils;->isEasyModeOpened(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_6e

    .line 167
    :cond_65
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/meizu/settings/navigationandrecents/FlymeNavigationAndRecentsSettings;->mGuestureWakeupPreference:Landroid/preference/Preference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_6e
    if-nez v1, :cond_72

    if-eqz v0, :cond_7f

    .line 172
    :cond_72
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "app_small_window"

    invoke-virtual {p0, v1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 175
    :cond_7f
    iget-object v0, p0, Lcom/meizu/settings/navigationandrecents/FlymeNavigationAndRecentsSettings;->mHomeDoubleClick:Landroid/preference/ListPreference;

    invoke-direct {p0, v0}, Lcom/meizu/settings/navigationandrecents/FlymeNavigationAndRecentsSettings;->removeUnsupportFeature(Landroid/preference/ListPreference;)V

    .line 176
    iget-object v0, p0, Lcom/meizu/settings/navigationandrecents/FlymeNavigationAndRecentsSettings;->mHomeLongPress:Landroid/preference/ListPreference;

    invoke-direct {p0, v0}, Lcom/meizu/settings/navigationandrecents/FlymeNavigationAndRecentsSettings;->removeUnsupportFeature(Landroid/preference/ListPreference;)V

    .line 177
    iget-object v0, p0, Lcom/meizu/settings/navigationandrecents/FlymeNavigationAndRecentsSettings;->mPowerDoubleClick:Landroid/preference/ListPreference;

    invoke-direct {p0, v0}, Lcom/meizu/settings/navigationandrecents/FlymeNavigationAndRecentsSettings;->removeUnsupportFeature(Landroid/preference/ListPreference;)V

    return-void
.end method

.method private constructIntent(I)Landroid/content/Intent;
    .registers 3

    const/4 p0, 0x1

    if-eq p1, p0, :cond_18

    const/4 p0, 0x3

    if-eq p1, p0, :cond_8

    const/4 p0, 0x0

    goto :goto_35

    .line 482
    :cond_8
    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    const-string p1, "com.meizu.assistant"

    const-string v0, "com.meizu.assistant.ui.activity.FakeLauncherActivity"

    .line 483
    invoke-virtual {p0, p1, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 484
    invoke-virtual {p0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_35

    .line 487
    :cond_18
    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    .line 488
    invoke-static {}, Landroid/os/BuildExt;->isProductInternational()Z

    move-result p1

    if-eqz p1, :cond_2e

    const-string p1, "android.intent.action.VOICE_ASSIST"

    .line 489
    invoke-virtual {p0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "com.google.android.googlequicksearchbox"

    .line 490
    invoke-virtual {p0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_35

    :cond_2e
    const-string p1, "com.meizu.voiceassistant"

    const-string v0, "com.meizu.voiceassistant.MainActivity"

    .line 492
    invoke-virtual {p0, p1, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_35
    return-object p0
.end method

.method private getOperationType(Landroid/preference/Preference;)I
    .registers 3

    .line 403
    iget-object v0, p0, Lcom/meizu/settings/navigationandrecents/FlymeNavigationAndRecentsSettings;->mHomeDoubleClick:Landroid/preference/ListPreference;

    if-ne p1, v0, :cond_6

    const/4 p0, 0x0

    return p0

    .line 405
    :cond_6
    iget-object v0, p0, Lcom/meizu/settings/navigationandrecents/FlymeNavigationAndRecentsSettings;->mHomeLongPress:Landroid/preference/ListPreference;

    if-ne p1, v0, :cond_c

    const/4 p0, 0x1

    return p0

    .line 407
    :cond_c
    iget-object p0, p0, Lcom/meizu/settings/navigationandrecents/FlymeNavigationAndRecentsSettings;->mPowerDoubleClick:Landroid/preference/ListPreference;

    if-ne p1, p0, :cond_12

    const/4 p0, 0x2

    return p0

    :cond_12
    const/4 p0, -0x1

    return p0
.end method

.method private initData()V
    .registers 2

    .line 106
    invoke-virtual {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/navigationandrecents/FlymeNavigationAndRecentsSettings;->mContentResolver:Landroid/content/ContentResolver;

    return-void
.end method

.method private initPreference()V
    .registers 3

    const-string v0, "gesture_system_navigation_input_summary"

    .line 110
    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/navigationandrecents/FlymeNavigationAndRecentsSettings;->mNavigatoinBarPreference:Landroid/preference/Preference;

    const-string v0, "power_double_click"

    .line 111
    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/meizu/settings/navigationandrecents/FlymeNavigationAndRecentsSettings;->mPowerDoubleClick:Landroid/preference/ListPreference;

    .line 112
    invoke-static {}, Landroid/os/BuildExt;->isProductInternational()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 113
    iget-object v0, p0, Lcom/meizu/settings/navigationandrecents/FlymeNavigationAndRecentsSettings;->mPowerDoubleClick:Landroid/preference/ListPreference;

    const v1, 0x7f0300d6

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 114
    iget-object v0, p0, Lcom/meizu/settings/navigationandrecents/FlymeNavigationAndRecentsSettings;->mPowerDoubleClick:Landroid/preference/ListPreference;

    const v1, 0x7f0300d9

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntryValues(I)V

    goto :goto_39

    .line 116
    :cond_29
    iget-object v0, p0, Lcom/meizu/settings/navigationandrecents/FlymeNavigationAndRecentsSettings;->mPowerDoubleClick:Landroid/preference/ListPreference;

    const v1, 0x7f0300d7

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 117
    iget-object v0, p0, Lcom/meizu/settings/navigationandrecents/FlymeNavigationAndRecentsSettings;->mPowerDoubleClick:Landroid/preference/ListPreference;

    const v1, 0x7f0300d8

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntryValues(I)V

    .line 119
    :goto_39
    iget-object v0, p0, Lcom/meizu/settings/navigationandrecents/FlymeNavigationAndRecentsSettings;->mPowerDoubleClick:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string v0, "home_double_click"

    .line 121
    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/meizu/settings/navigationandrecents/FlymeNavigationAndRecentsSettings;->mHomeDoubleClick:Landroid/preference/ListPreference;

    .line 122
    iget-object v0, p0, Lcom/meizu/settings/navigationandrecents/FlymeNavigationAndRecentsSettings;->mHomeDoubleClick:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 123
    invoke-static {}, Lcom/meizu/settings/utils/MzUtils;->hasHardwareMainKeys()Z

    move-result v0

    if-eqz v0, :cond_64

    .line 124
    iget-object v0, p0, Lcom/meizu/settings/navigationandrecents/FlymeNavigationAndRecentsSettings;->mHomeDoubleClick:Landroid/preference/ListPreference;

    const v1, 0x7f0300a4

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 125
    iget-object v0, p0, Lcom/meizu/settings/navigationandrecents/FlymeNavigationAndRecentsSettings;->mHomeDoubleClick:Landroid/preference/ListPreference;

    const v1, 0x7f0300a7

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntryValues(I)V

    goto :goto_74

    .line 128
    :cond_64
    iget-object v0, p0, Lcom/meizu/settings/navigationandrecents/FlymeNavigationAndRecentsSettings;->mHomeDoubleClick:Landroid/preference/ListPreference;

    const v1, 0x7f0300a5

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 129
    iget-object v0, p0, Lcom/meizu/settings/navigationandrecents/FlymeNavigationAndRecentsSettings;->mHomeDoubleClick:Landroid/preference/ListPreference;

    const v1, 0x7f0300a6

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntryValues(I)V

    :goto_74
    const-string v0, "home_long_press"

    .line 132
    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/meizu/settings/navigationandrecents/FlymeNavigationAndRecentsSettings;->mHomeLongPress:Landroid/preference/ListPreference;

    .line 133
    iget-object v0, p0, Lcom/meizu/settings/navigationandrecents/FlymeNavigationAndRecentsSettings;->mHomeLongPress:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string v0, "keyboard_back_behavior"

    .line 135
    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/meizu/settings/navigationandrecents/FlymeNavigationAndRecentsSettings;->mKeyboardBackBehavior:Landroid/preference/ListPreference;

    .line 136
    iget-object v0, p0, Lcom/meizu/settings/navigationandrecents/FlymeNavigationAndRecentsSettings;->mKeyboardBackBehavior:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string v0, "quick_wakeup"

    .line 138
    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/navigationandrecents/FlymeNavigationAndRecentsSettings;->mGuestureWakeupPreference:Landroid/preference/Preference;

    .line 140
    invoke-direct {p0}, Lcom/meizu/settings/navigationandrecents/FlymeNavigationAndRecentsSettings;->checkIfNeedRemovePreference()V

    return-void
.end method

.method private isPersonalAssistantOpened()Z
    .registers 3

    .line 463
    iget-object p0, p0, Lcom/meizu/settings/navigationandrecents/FlymeNavigationAndRecentsSettings;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v0, 0x1

    const-string v1, "mz_assistant_app_open_state"

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v0, :cond_c

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method private removeHomeLongPress(Z)V
    .registers 5

    .line 181
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "com.google.android.googlequicksearchbox"

    invoke-static {v0, v1}, Lcom/meizu/settings/utils/MzUtils;->isPackageExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 182
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/settings/navigationandrecents/FlymeNavigationAndRecentsSettings;->mHomeLongPress:Landroid/preference/ListPreference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 183
    invoke-static {}, Landroid/os/BuildExt;->isProductInternational()Z

    move-result v1

    if-eqz v1, :cond_2f

    if-nez p1, :cond_2f

    if-eqz v0, :cond_27

    .line 185
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object p1

    iget-object p0, p0, Lcom/meizu/settings/navigationandrecents/FlymeNavigationAndRecentsSettings;->mHomeLongPress:Landroid/preference/ListPreference;

    invoke-virtual {p1, p0}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_2f

    .line 187
    :cond_27
    iget-object p0, p0, Lcom/meizu/settings/navigationandrecents/FlymeNavigationAndRecentsSettings;->mContentResolver:Landroid/content/ContentResolver;

    const/4 p1, 0x0

    const-string v0, "mz_intelligent_voice"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_2f
    :goto_2f
    return-void
.end method

.method private removePreference()V
    .registers 3

    .line 523
    invoke-static {}, Lcom/meizu/settings/utils/MzUtils;->hasHardwareMainKeys()Z

    move-result v0

    if-nez v0, :cond_19

    .line 524
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/settings/navigationandrecents/FlymeNavigationAndRecentsSettings;->mHomeDoubleClick:Landroid/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 525
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object p0, p0, Lcom/meizu/settings/navigationandrecents/FlymeNavigationAndRecentsSettings;->mHomeLongPress:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_22

    .line 527
    :cond_19
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object p0, p0, Lcom/meizu/settings/navigationandrecents/FlymeNavigationAndRecentsSettings;->mPowerDoubleClick:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :goto_22
    return-void
.end method

.method private removeUnsupportFeature(Landroid/preference/ListPreference;)V
    .registers 13

    if-eqz p1, :cond_cc

    .line 362
    instance-of v0, p1, Landroid/preference/ListPreference;

    if-eqz v0, :cond_cc

    .line 363
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    .line 364
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_cc

    if-eqz v0, :cond_cc

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    .line 369
    :goto_15
    array-length v5, v1

    const-string v6, "-1"

    const-string v7, "FlymeNavigationAndRecentsSettings"

    const/4 v8, 0x1

    if-ge v3, v5, :cond_76

    .line 370
    array-length v5, v0

    if-lt v3, v5, :cond_22

    move v5, v8

    goto :goto_23

    :cond_22
    move v5, v2

    :goto_23
    if-nez v5, :cond_37

    .line 371
    invoke-direct {p0, p1}, Lcom/meizu/settings/navigationandrecents/FlymeNavigationAndRecentsSettings;->getOperationType(Landroid/preference/Preference;)I

    move-result v9

    array-length v10, v1

    sub-int/2addr v10, v8

    sub-int/2addr v10, v3

    aget-object v10, v1, v10

    invoke-direct {p0, v9, v10}, Lcom/meizu/settings/navigationandrecents/FlymeNavigationAndRecentsSettings;->checkFeatureSupport(ILjava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_35

    goto :goto_37

    :cond_35
    move v9, v2

    goto :goto_38

    :cond_37
    :goto_37
    move v9, v8

    :goto_38
    if-nez v5, :cond_40

    if-eqz v9, :cond_3d

    goto :goto_40

    :cond_3d
    add-int/lit8 v4, v4, 0x1

    goto :goto_45

    .line 373
    :cond_40
    :goto_40
    array-length v10, v1

    sub-int/2addr v10, v8

    sub-int/2addr v10, v3

    aput-object v6, v1, v10

    .line 377
    :goto_45
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "removeUnsupportFeature valueNotExist = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", featureNotSupport = "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", i = "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", value = "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, v1, v3

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v3, v3, 0x1

    goto :goto_15

    .line 380
    :cond_76
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "supportCount = "

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", oldEntries.length = "

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v3, v0

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v7, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    array-length p0, v1

    if-ne v4, p0, :cond_9d

    array-length p0, v0

    if-ne v4, p0, :cond_9d

    array-length p0, v1

    array-length v3, v0

    if-eq p0, v3, :cond_cc

    .line 382
    :cond_9d
    new-array p0, v4, [Ljava/lang/CharSequence;

    .line 383
    new-array v3, v4, [Ljava/lang/CharSequence;

    sub-int/2addr v4, v8

    .line 385
    :goto_a2
    array-length v5, v0

    if-ge v2, v5, :cond_c6

    if-gez v4, :cond_a8

    goto :goto_c6

    .line 389
    :cond_a8
    array-length v5, v1

    sub-int/2addr v5, v8

    sub-int/2addr v5, v2

    aget-object v5, v1, v5

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_c3

    .line 390
    array-length v5, v0

    sub-int/2addr v5, v8

    sub-int/2addr v5, v2

    aget-object v5, v0, v5

    aput-object v5, p0, v4

    .line 391
    array-length v5, v1

    sub-int/2addr v5, v8

    sub-int/2addr v5, v2

    aget-object v5, v1, v5

    aput-object v5, v3, v4

    add-int/lit8 v4, v4, -0x1

    :cond_c3
    add-int/lit8 v2, v2, 0x1

    goto :goto_a2

    .line 395
    :cond_c6
    :goto_c6
    invoke-virtual {p1, p0}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 396
    invoke-virtual {p1, v3}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    :cond_cc
    return-void
.end method

.method private updateHomeKeyDoubleClickPreference()V
    .registers 5

    .line 220
    iget-object v0, p0, Lcom/meizu/settings/navigationandrecents/FlymeNavigationAndRecentsSettings;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v1, 0x2

    const-string v2, "home_double_click"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 221
    iget-object v2, p0, Lcom/meizu/settings/navigationandrecents/FlymeNavigationAndRecentsSettings;->mHomeDoubleClick:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v2

    .line 222
    iget-object v3, p0, Lcom/meizu/settings/navigationandrecents/FlymeNavigationAndRecentsSettings;->mHomeDoubleClick:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v3

    if-ltz v0, :cond_21

    if-eqz v2, :cond_1c

    .line 223
    array-length v2, v2

    if-ge v0, v2, :cond_21

    :cond_1c
    if-eqz v3, :cond_2e

    array-length v2, v3

    if-lt v0, v2, :cond_2e

    .line 225
    :cond_21
    iget-object v0, p0, Lcom/meizu/settings/navigationandrecents/FlymeNavigationAndRecentsSettings;->mHomeDoubleClick:Landroid/preference/ListPreference;

    const-string v2, "2"

    invoke-virtual {v0, v2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 227
    iget-object v0, p0, Lcom/meizu/settings/navigationandrecents/FlymeNavigationAndRecentsSettings;->mHomeDoubleClick:Landroid/preference/ListPreference;

    invoke-virtual {v0, v2}, Landroid/preference/ListPreference;->setDefaultValue(Ljava/lang/Object;)V

    move v0, v1

    .line 229
    :cond_2e
    iget-object v1, p0, Lcom/meizu/settings/navigationandrecents/FlymeNavigationAndRecentsSettings;->mHomeDoubleClick:Landroid/preference/ListPreference;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 230
    iget-object p0, p0, Lcom/meizu/settings/navigationandrecents/FlymeNavigationAndRecentsSettings;->mHomeDoubleClick:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private updateHomeKeyLongPressPreference()V
    .registers 4

    .line 205
    iget-object v0, p0, Lcom/meizu/settings/navigationandrecents/FlymeNavigationAndRecentsSettings;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "mz_intelligent_voice"

    const/4 v2, 0x3

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 207
    iget-object v1, p0, Lcom/meizu/settings/navigationandrecents/FlymeNavigationAndRecentsSettings;->mHomeLongPress:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v1

    .line 208
    iget-object v2, p0, Lcom/meizu/settings/navigationandrecents/FlymeNavigationAndRecentsSettings;->mHomeLongPress:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v2

    if-ltz v0, :cond_33

    if-eqz v1, :cond_33

    .line 209
    array-length v1, v1

    if-ge v0, v1, :cond_33

    if-eqz v2, :cond_33

    array-length v1, v2

    if-ge v0, v1, :cond_33

    .line 211
    iget-object v1, p0, Lcom/meizu/settings/navigationandrecents/FlymeNavigationAndRecentsSettings;->mHomeLongPress:Landroid/preference/ListPreference;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 212
    iget-object p0, p0, Lcom/meizu/settings/navigationandrecents/FlymeNavigationAndRecentsSettings;->mHomeLongPress:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_33
    return-void
.end method

.method private updateKeyboardBackBehaviorPreference()V
    .registers 4

    .line 250
    iget-object v0, p0, Lcom/meizu/settings/navigationandrecents/FlymeNavigationAndRecentsSettings;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "keyboard_exit_directly"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 252
    iget-object v1, p0, Lcom/meizu/settings/navigationandrecents/FlymeNavigationAndRecentsSettings;->mKeyboardBackBehavior:Landroid/preference/ListPreference;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 253
    iget-object p0, p0, Lcom/meizu/settings/navigationandrecents/FlymeNavigationAndRecentsSettings;->mKeyboardBackBehavior:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private updateNavigationPreference()V
    .registers 7

    .line 503
    invoke-virtual {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 504
    invoke-virtual {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/gestures/SystemNavigationGestureSettings;->getCurrentSystemNavigationMode(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 506
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, -0x76e8d558

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eq v2, v3, :cond_3a

    const v3, -0x51fa588d

    if-eq v2, v3, :cond_30

    const v3, -0x700f466

    if-eq v2, v3, :cond_26

    goto :goto_44

    :cond_26
    const-string v2, "system_nav_3buttons"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_44

    move v2, v4

    goto :goto_45

    :cond_30
    const-string v2, "system_nav_gestural"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_44

    const/4 v2, 0x0

    goto :goto_45

    :cond_3a
    const-string v2, "system_nav_mback"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_44

    move v2, v5

    goto :goto_45

    :cond_44
    :goto_44
    const/4 v2, -0x1

    :goto_45
    if-eqz v2, :cond_5e

    if-eq v2, v5, :cond_56

    if-eq v2, v4, :cond_4e

    const-string v0, ""

    goto :goto_65

    :cond_4e
    const v2, 0x7f12157e

    .line 514
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_65

    :cond_56
    const v2, 0x7f12157d

    .line 511
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_65

    :cond_5e
    const v2, 0x7f121583

    .line 508
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 518
    :goto_65
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateNavigationPreference: mode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",sum="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FlymeNavigationAndRecentsSettings"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    iget-object p0, p0, Lcom/meizu/settings/navigationandrecents/FlymeNavigationAndRecentsSettings;->mNavigatoinBarPreference:Landroid/preference/Preference;

    invoke-virtual {p0, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private updatePowerKeyDoubleClickPreference()V
    .registers 5

    .line 238
    iget-object v0, p0, Lcom/meizu/settings/navigationandrecents/FlymeNavigationAndRecentsSettings;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v1, 0x3

    const-string v2, "power_double_click"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ltz v0, :cond_1b

    .line 239
    iget-object v2, p0, Lcom/meizu/settings/navigationandrecents/FlymeNavigationAndRecentsSettings;->mPowerDoubleClick:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_28

    .line 240
    :cond_1b
    iget-object v0, p0, Lcom/meizu/settings/navigationandrecents/FlymeNavigationAndRecentsSettings;->mPowerDoubleClick:Landroid/preference/ListPreference;

    const-string v2, "3"

    invoke-virtual {v0, v2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 242
    iget-object v0, p0, Lcom/meizu/settings/navigationandrecents/FlymeNavigationAndRecentsSettings;->mPowerDoubleClick:Landroid/preference/ListPreference;

    invoke-virtual {v0, v2}, Landroid/preference/ListPreference;->setDefaultValue(Ljava/lang/Object;)V

    move v0, v1

    .line 245
    :cond_28
    iget-object v1, p0, Lcom/meizu/settings/navigationandrecents/FlymeNavigationAndRecentsSettings;->mPowerDoubleClick:Landroid/preference/ListPreference;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 246
    iget-object p0, p0, Lcom/meizu/settings/navigationandrecents/FlymeNavigationAndRecentsSettings;->mPowerDoubleClick:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private updatePreference()V
    .registers 1

    .line 193
    invoke-direct {p0}, Lcom/meizu/settings/navigationandrecents/FlymeNavigationAndRecentsSettings;->removePreference()V

    .line 194
    invoke-direct {p0}, Lcom/meizu/settings/navigationandrecents/FlymeNavigationAndRecentsSettings;->updateNavigationPreference()V

    .line 195
    invoke-direct {p0}, Lcom/meizu/settings/navigationandrecents/FlymeNavigationAndRecentsSettings;->updatePowerKeyDoubleClickPreference()V

    .line 196
    invoke-direct {p0}, Lcom/meizu/settings/navigationandrecents/FlymeNavigationAndRecentsSettings;->updateHomeKeyDoubleClickPreference()V

    .line 197
    invoke-direct {p0}, Lcom/meizu/settings/navigationandrecents/FlymeNavigationAndRecentsSettings;->updateHomeKeyLongPressPreference()V

    .line 198
    invoke-direct {p0}, Lcom/meizu/settings/navigationandrecents/FlymeNavigationAndRecentsSettings;->updateKeyboardBackBehaviorPreference()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 2

    .line 97
    invoke-super {p0, p1}, Lcom/meizu/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f16006c

    .line 99
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    .line 101
    invoke-direct {p0}, Lcom/meizu/settings/navigationandrecents/FlymeNavigationAndRecentsSettings;->initData()V

    .line 102
    invoke-direct {p0}, Lcom/meizu/settings/navigationandrecents/FlymeNavigationAndRecentsSettings;->initPreference()V

    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .registers 5

    .line 258
    invoke-virtual {p0, p1, p2}, Lcom/meizu/settings/SettingsPreferenceFragment;->reportPreferenceChangeUsageStats(Landroid/preference/Preference;Ljava/lang/Object;)V

    .line 260
    iget-object v0, p0, Lcom/meizu/settings/navigationandrecents/FlymeNavigationAndRecentsSettings;->mHomeLongPress:Landroid/preference/ListPreference;

    const/4 v1, 0x1

    if-ne p1, v0, :cond_19

    .line 261
    check-cast p2, Ljava/lang/String;

    .line 262
    iget-object p1, p0, Lcom/meizu/settings/navigationandrecents/FlymeNavigationAndRecentsSettings;->mContentResolver:Landroid/content/ContentResolver;

    .line 263
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    const-string v0, "mz_intelligent_voice"

    .line 262
    invoke-static {p1, v0, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 264
    invoke-direct {p0}, Lcom/meizu/settings/navigationandrecents/FlymeNavigationAndRecentsSettings;->updateHomeKeyLongPressPreference()V

    return v1

    .line 266
    :cond_19
    iget-object v0, p0, Lcom/meizu/settings/navigationandrecents/FlymeNavigationAndRecentsSettings;->mKeyboardBackBehavior:Landroid/preference/ListPreference;

    if-ne p1, v0, :cond_2e

    .line 267
    check-cast p2, Ljava/lang/String;

    .line 268
    iget-object p1, p0, Lcom/meizu/settings/navigationandrecents/FlymeNavigationAndRecentsSettings;->mContentResolver:Landroid/content/ContentResolver;

    .line 269
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    const-string v0, "keyboard_exit_directly"

    .line 268
    invoke-static {p1, v0, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 270
    invoke-direct {p0}, Lcom/meizu/settings/navigationandrecents/FlymeNavigationAndRecentsSettings;->updateKeyboardBackBehaviorPreference()V

    return v1

    .line 272
    :cond_2e
    iget-object v0, p0, Lcom/meizu/settings/navigationandrecents/FlymeNavigationAndRecentsSettings;->mHomeDoubleClick:Landroid/preference/ListPreference;

    if-ne p1, v0, :cond_43

    .line 273
    check-cast p2, Ljava/lang/String;

    .line 274
    iget-object p1, p0, Lcom/meizu/settings/navigationandrecents/FlymeNavigationAndRecentsSettings;->mContentResolver:Landroid/content/ContentResolver;

    .line 275
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    const-string v0, "home_double_click"

    .line 274
    invoke-static {p1, v0, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 276
    invoke-direct {p0}, Lcom/meizu/settings/navigationandrecents/FlymeNavigationAndRecentsSettings;->updateHomeKeyDoubleClickPreference()V

    return v1

    .line 278
    :cond_43
    iget-object v0, p0, Lcom/meizu/settings/navigationandrecents/FlymeNavigationAndRecentsSettings;->mPowerDoubleClick:Landroid/preference/ListPreference;

    if-ne p1, v0, :cond_58

    .line 279
    check-cast p2, Ljava/lang/String;

    .line 280
    iget-object p1, p0, Lcom/meizu/settings/navigationandrecents/FlymeNavigationAndRecentsSettings;->mContentResolver:Landroid/content/ContentResolver;

    .line 281
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    const-string v0, "power_double_click"

    .line 280
    invoke-static {p1, v0, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 282
    invoke-direct {p0}, Lcom/meizu/settings/navigationandrecents/FlymeNavigationAndRecentsSettings;->updatePowerKeyDoubleClickPreference()V

    return v1

    :cond_58
    const/4 p0, 0x0

    return p0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .registers 5

    .line 290
    invoke-virtual {p0, p2}, Lcom/meizu/settings/SettingsPreferenceFragment;->reportPreferenceTreeClickUsageStats(Landroid/preference/Preference;)V

    .line 292
    invoke-virtual {p2}, Landroid/preference/Preference;->hasKey()Z

    move-result v0

    if-eqz v0, :cond_2f

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "app_small_window"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 294
    :try_start_15
    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.flyme.settings.SYSTEM_UI_TOOLS_PLUGIN_ACTIVITY"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p2, "systemuitools://plugin/windowModeSettings"

    .line 295
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 296
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceFragment;->startActivity(Landroid/content/Intent;)V
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_28} :catch_29

    goto :goto_2d

    :catch_29
    move-exception p0

    .line 298
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2d
    const/4 p0, 0x1

    return p0

    .line 304
    :cond_2f
    invoke-super {p0, p1, p2}, Lcom/meizu/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public onResume()V
    .registers 1

    .line 309
    invoke-super {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;->onResume()V

    .line 311
    invoke-direct {p0}, Lcom/meizu/settings/navigationandrecents/FlymeNavigationAndRecentsSettings;->updatePreference()V

    return-void
.end method
