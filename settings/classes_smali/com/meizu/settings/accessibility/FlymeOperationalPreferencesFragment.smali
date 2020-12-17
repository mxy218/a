.class public Lcom/meizu/settings/accessibility/FlymeOperationalPreferencesFragment;
.super Lcom/meizu/settings/SettingsPreferenceFragment;
.source "FlymeOperationalPreferencesFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/meizu/settings/search/Indexable;


# static fields
.field private static final DEFAULT_SHOW_NAVIGATION_BAR:Z

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

.field private final TYPE_HOME_DOUBLE_CLICK:I

.field private final TYPE_HOME_LONG_PRESS:I

.field private final TYPE_INVALID:I

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mForceTouchArrays:[Ljava/lang/CharSequence;

.field private mForceTouchPreference:Landroid/preference/Preference;

.field private mHomeDoubleClick:Landroid/preference/ListPreference;

.field private mHomeLongPress:Landroid/preference/ListPreference;

.field private mKeyboardBackBehavior:Landroid/preference/ListPreference;

.field private mMultiTaskPreference:Landroid/preference/Preference;

.field private mOtherCategory:Landroid/preference/PreferenceCategory;

.field private mShowNavigatoinBarPreference:Lcom/meizu/common/preference/SwitchPreference;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 58
    invoke-static {}, Landroid/os/BuildExt;->isProductInternational()Z

    move-result v0

    sput-boolean v0, Lcom/meizu/settings/accessibility/FlymeOperationalPreferencesFragment;->DEFAULT_SHOW_NAVIGATION_BAR:Z

    .line 327
    new-instance v0, Lcom/meizu/settings/accessibility/FlymeOperationalPreferencesFragment$2;

    invoke-direct {v0}, Lcom/meizu/settings/accessibility/FlymeOperationalPreferencesFragment$2;-><init>()V

    sput-object v0, Lcom/meizu/settings/accessibility/FlymeOperationalPreferencesFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/meizu/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 41
    invoke-direct {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;-><init>()V

    const-string v0, "-1"

    .line 71
    iput-object v0, p0, Lcom/meizu/settings/accessibility/FlymeOperationalPreferencesFragment;->ENTRY_VALUE_INVALID:Ljava/lang/String;

    const-string v0, "0"

    .line 72
    iput-object v0, p0, Lcom/meizu/settings/accessibility/FlymeOperationalPreferencesFragment;->HOME_KEY_BEHAVIOR_DOUBLE_CLICK_VALUE_NO_RESPONSE:Ljava/lang/String;

    const-string v0, "1"

    .line 73
    iput-object v0, p0, Lcom/meizu/settings/accessibility/FlymeOperationalPreferencesFragment;->HOME_KEY_BEHAVIOR_DOUBLE_CLICK_VALUE_MUSIC:Ljava/lang/String;

    const-string v0, "2"

    .line 74
    iput-object v0, p0, Lcom/meizu/settings/accessibility/FlymeOperationalPreferencesFragment;->HOME_KEY_BEHAVIOR_DOUBLE_CLICK_VALUE_CAMERA:Ljava/lang/String;

    const-string v0, "3"

    .line 75
    iput-object v0, p0, Lcom/meizu/settings/accessibility/FlymeOperationalPreferencesFragment;->HOME_KEY_BEHAVIOR_DOUBLE_CLICK_VALUE_MEIZU_PAY:Ljava/lang/String;

    const-string v0, "com.meizu.mznfcpay.SHOW_PAY_PAGE_ACTION"

    .line 76
    iput-object v0, p0, Lcom/meizu/settings/accessibility/FlymeOperationalPreferencesFragment;->ACTION_SHOW_MEIZU_PAY_PAGE:Ljava/lang/String;

    const-string v0, "com.meizu.mznfcpay"

    .line 77
    iput-object v0, p0, Lcom/meizu/settings/accessibility/FlymeOperationalPreferencesFragment;->PKG_MEIZU_NFC_PAY:Ljava/lang/String;

    const/4 v0, -0x1

    .line 79
    iput v0, p0, Lcom/meizu/settings/accessibility/FlymeOperationalPreferencesFragment;->TYPE_INVALID:I

    const/4 v0, 0x0

    .line 80
    iput v0, p0, Lcom/meizu/settings/accessibility/FlymeOperationalPreferencesFragment;->TYPE_HOME_DOUBLE_CLICK:I

    const/4 v1, 0x1

    .line 81
    iput v1, p0, Lcom/meizu/settings/accessibility/FlymeOperationalPreferencesFragment;->TYPE_HOME_LONG_PRESS:I

    .line 83
    iput v0, p0, Lcom/meizu/settings/accessibility/FlymeOperationalPreferencesFragment;->HOME_KEY_BEHAVIOR_LONG_PRESS_VALUE_SCREEN_OFF:I

    .line 84
    iput v1, p0, Lcom/meizu/settings/accessibility/FlymeOperationalPreferencesFragment;->HOME_KEY_BEHAVIOR_LONG_PRESS_VALUE_VOICE:I

    const/4 v0, 0x2

    .line 85
    iput v0, p0, Lcom/meizu/settings/accessibility/FlymeOperationalPreferencesFragment;->HOME_KEY_BEHAVIOR_LONG_PRESS_VALUE_NO_RESPONSE:I

    const/4 v0, 0x3

    .line 86
    iput v0, p0, Lcom/meizu/settings/accessibility/FlymeOperationalPreferencesFragment;->HOME_KEY_BEHAVIOR_LONG_PRESS_VALUE_PERSONAL_ASSISTANT:I

    const-string v0, "com.meizu.assistant"

    .line 88
    iput-object v0, p0, Lcom/meizu/settings/accessibility/FlymeOperationalPreferencesFragment;->PKG_PERSONAL_ASSISTANT:Ljava/lang/String;

    const-string v0, "com.meizu.assistant.ui.activity.FakeLauncherActivity"

    .line 89
    iput-object v0, p0, Lcom/meizu/settings/accessibility/FlymeOperationalPreferencesFragment;->CLASS_PERSONAL_ASSISTANT:Ljava/lang/String;

    const-string v0, "com.google.android.googlequicksearchbox"

    .line 90
    iput-object v0, p0, Lcom/meizu/settings/accessibility/FlymeOperationalPreferencesFragment;->PKG_GOOGLE_QUICK_SEARCH:Ljava/lang/String;

    const-string v0, "android.intent.action.VOICE_ASSIST"

    .line 91
    iput-object v0, p0, Lcom/meizu/settings/accessibility/FlymeOperationalPreferencesFragment;->ACTION_GOOGLE_VOICE_ASSISTANT:Ljava/lang/String;

    const-string v0, "com.meizu.voiceassistant"

    .line 92
    iput-object v0, p0, Lcom/meizu/settings/accessibility/FlymeOperationalPreferencesFragment;->PKG_MEIZU_VOICE_ASSISTANT:Ljava/lang/String;

    const-string v0, "com.meizu.voiceassistant.MainActivity"

    .line 93
    iput-object v0, p0, Lcom/meizu/settings/accessibility/FlymeOperationalPreferencesFragment;->CLASS_MEIZU_VOICE_ASSISTANT:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/meizu/settings/accessibility/FlymeOperationalPreferencesFragment;)Lcom/meizu/common/preference/SwitchPreference;
    .registers 1

    .line 41
    iget-object p0, p0, Lcom/meizu/settings/accessibility/FlymeOperationalPreferencesFragment;->mShowNavigatoinBarPreference:Lcom/meizu/common/preference/SwitchPreference;

    return-object p0
.end method

.method private checkFeatureSupport(ILjava/lang/CharSequence;)Z
    .registers 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_54

    if-eq p1, v1, :cond_7

    goto :goto_73

    .line 423
    :cond_7
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.meizu.assistant"

    const-string v3, "com.meizu.assistant.ui.activity.FakeLauncherActivity"

    .line 424
    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 p1, 0x2

    .line 425
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_73

    .line 426
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_73

    const/4 p1, 0x3

    .line 427
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3d

    invoke-direct {p0, p1}, Lcom/meizu/settings/accessibility/FlymeOperationalPreferencesFragment;->constructIntent(I)Landroid/content/Intent;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/meizu/settings/accessibility/FlymeOperationalPreferencesFragment;->checkResolveInfo(Landroid/content/Intent;)Z

    move-result p1

    if-nez p1, :cond_73

    .line 428
    :cond_3d
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_52

    invoke-direct {p0, v1}, Lcom/meizu/settings/accessibility/FlymeOperationalPreferencesFragment;->constructIntent(I)Landroid/content/Intent;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/meizu/settings/accessibility/FlymeOperationalPreferencesFragment;->checkResolveInfo(Landroid/content/Intent;)Z

    move-result p0

    if-eqz p0, :cond_52

    goto :goto_73

    :cond_52
    move v1, v0

    goto :goto_73

    .line 416
    :cond_54
    new-instance p1, Landroid/content/Intent;

    const-string v2, "com.meizu.mznfcpay.SHOW_PAY_PAGE_ACTION"

    invoke-direct {p1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "android.intent.category.DEFAULT"

    .line 417
    invoke-virtual {p1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "com.meizu.mznfcpay"

    .line 418
    invoke-virtual {p1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "3"

    .line 419
    invoke-static {p2, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_73

    invoke-direct {p0, p1}, Lcom/meizu/settings/accessibility/FlymeOperationalPreferencesFragment;->checkResolveInfo(Landroid/content/Intent;)Z

    move-result p0

    if-eqz p0, :cond_52

    :cond_73
    :goto_73
    return v1
.end method

.method private checkIfNeedRemovePreference()V
    .registers 4

    .line 143
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/meizu/settings/utils/MzUtils;->isGuestUser(Landroid/content/Context;)Z

    move-result v0

    .line 145
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "com.meizu.voiceassistant"

    invoke-static {v1, v2}, Lcom/meizu/settings/utils/MzUtils;->isPackageExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_16

    if-eqz v0, :cond_19

    .line 147
    :cond_16
    invoke-direct {p0, v0}, Lcom/meizu/settings/accessibility/FlymeOperationalPreferencesFragment;->removeHomeLongPress(Z)V

    :cond_19
    if-eqz v0, :cond_24

    .line 152
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/settings/accessibility/FlymeOperationalPreferencesFragment;->mHomeDoubleClick:Landroid/preference/ListPreference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 155
    :cond_24
    invoke-static {}, Landroid/os/BuildExt;->isProductInternational()Z

    move-result v1

    if-eqz v1, :cond_4c

    iget-object v1, p0, Lcom/meizu/settings/accessibility/FlymeOperationalPreferencesFragment;->mHomeLongPress:Landroid/preference/ListPreference;

    if-eqz v1, :cond_4c

    .line 156
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "com.google.android.googlequicksearchbox"

    invoke-static {v1, v2}, Lcom/meizu/settings/utils/MzUtils;->isPackageExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_43

    .line 157
    iget-object v1, p0, Lcom/meizu/settings/accessibility/FlymeOperationalPreferencesFragment;->mHomeLongPress:Landroid/preference/ListPreference;

    const v2, 0x7f0300a9

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setEntries(I)V

    goto :goto_4c

    .line 159
    :cond_43
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/settings/accessibility/FlymeOperationalPreferencesFragment;->mHomeLongPress:Landroid/preference/ListPreference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 163
    :cond_4c
    :goto_4c
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "android.hardware.touchscreen.forcetouch"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_63

    .line 164
    iget-object v1, p0, Lcom/meizu/settings/accessibility/FlymeOperationalPreferencesFragment;->mOtherCategory:Landroid/preference/PreferenceCategory;

    iget-object v2, p0, Lcom/meizu/settings/accessibility/FlymeOperationalPreferencesFragment;->mForceTouchPreference:Landroid/preference/Preference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 167
    :cond_63
    invoke-static {}, Lcom/meizu/settings/utils/MzUtils;->hasHardwareMainKeys()Z

    move-result v1

    if-eqz v1, :cond_6b

    if-eqz v0, :cond_72

    .line 168
    :cond_6b
    iget-object v0, p0, Lcom/meizu/settings/accessibility/FlymeOperationalPreferencesFragment;->mOtherCategory:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/meizu/settings/accessibility/FlymeOperationalPreferencesFragment;->mShowNavigatoinBarPreference:Lcom/meizu/common/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 171
    :cond_72
    iget-object v0, p0, Lcom/meizu/settings/accessibility/FlymeOperationalPreferencesFragment;->mOtherCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v0

    if-nez v0, :cond_83

    .line 172
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/settings/accessibility/FlymeOperationalPreferencesFragment;->mOtherCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 175
    :cond_83
    iget-object v0, p0, Lcom/meizu/settings/accessibility/FlymeOperationalPreferencesFragment;->mHomeDoubleClick:Landroid/preference/ListPreference;

    invoke-direct {p0, v0}, Lcom/meizu/settings/accessibility/FlymeOperationalPreferencesFragment;->removeUnsupportFeature(Landroid/preference/ListPreference;)V

    .line 176
    iget-object v0, p0, Lcom/meizu/settings/accessibility/FlymeOperationalPreferencesFragment;->mHomeLongPress:Landroid/preference/ListPreference;

    invoke-direct {p0, v0}, Lcom/meizu/settings/accessibility/FlymeOperationalPreferencesFragment;->removeUnsupportFeature(Landroid/preference/ListPreference;)V

    return-void
.end method

.method private checkResolveInfo(Landroid/content/Intent;)Z
    .registers 3

    .line 437
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v0, 0x0

    .line 438
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0

    .line 439
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_14

    const/4 v0, 0x1

    :cond_14
    return v0
.end method

.method private constructIntent(I)Landroid/content/Intent;
    .registers 3

    const/4 p0, 0x1

    if-eq p1, p0, :cond_18

    const/4 p0, 0x3

    if-eq p1, p0, :cond_8

    const/4 p0, 0x0

    goto :goto_35

    .line 446
    :cond_8
    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    const-string p1, "com.meizu.assistant"

    const-string v0, "com.meizu.assistant.ui.activity.FakeLauncherActivity"

    .line 447
    invoke-virtual {p0, p1, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 448
    invoke-virtual {p0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_35

    .line 451
    :cond_18
    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    .line 452
    invoke-static {}, Landroid/os/BuildExt;->isProductInternational()Z

    move-result p1

    if-eqz p1, :cond_2e

    const-string p1, "android.intent.action.VOICE_ASSIST"

    .line 453
    invoke-virtual {p0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "com.google.android.googlequicksearchbox"

    .line 454
    invoke-virtual {p0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_35

    :cond_2e
    const-string p1, "com.meizu.voiceassistant"

    const-string v0, "com.meizu.voiceassistant.MainActivity"

    .line 456
    invoke-virtual {p0, p1, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_35
    return-object p0
.end method

.method private getOperationType(Landroid/preference/Preference;)I
    .registers 3

    .line 402
    iget-object v0, p0, Lcom/meizu/settings/accessibility/FlymeOperationalPreferencesFragment;->mHomeDoubleClick:Landroid/preference/ListPreference;

    if-ne p1, v0, :cond_6

    const/4 p0, 0x0

    return p0

    .line 404
    :cond_6
    iget-object p0, p0, Lcom/meizu/settings/accessibility/FlymeOperationalPreferencesFragment;->mHomeLongPress:Landroid/preference/ListPreference;

    if-ne p1, p0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, -0x1

    return p0
.end method

.method private initData()V
    .registers 3

    .line 106
    invoke-virtual {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/accessibility/FlymeOperationalPreferencesFragment;->mContentResolver:Landroid/content/ContentResolver;

    .line 108
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f03009a

    .line 109
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/accessibility/FlymeOperationalPreferencesFragment;->mForceTouchArrays:[Ljava/lang/CharSequence;

    return-void
.end method

.method private initPreference()V
    .registers 5

    const-string v0, "home_double_click"

    .line 113
    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/meizu/settings/accessibility/FlymeOperationalPreferencesFragment;->mHomeDoubleClick:Landroid/preference/ListPreference;

    .line 114
    iget-object v0, p0, Lcom/meizu/settings/accessibility/FlymeOperationalPreferencesFragment;->mHomeDoubleClick:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 115
    invoke-static {}, Lcom/meizu/settings/utils/MzUtils;->hasHardwareMainKeys()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 116
    iget-object v0, p0, Lcom/meizu/settings/accessibility/FlymeOperationalPreferencesFragment;->mHomeDoubleClick:Landroid/preference/ListPreference;

    const v1, 0x7f0300a4

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 117
    iget-object v0, p0, Lcom/meizu/settings/accessibility/FlymeOperationalPreferencesFragment;->mHomeDoubleClick:Landroid/preference/ListPreference;

    const v1, 0x7f0300a7

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntryValues(I)V

    goto :goto_36

    .line 120
    :cond_26
    iget-object v0, p0, Lcom/meizu/settings/accessibility/FlymeOperationalPreferencesFragment;->mHomeDoubleClick:Landroid/preference/ListPreference;

    const v1, 0x7f0300a5

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntries(I)V

    .line 121
    iget-object v0, p0, Lcom/meizu/settings/accessibility/FlymeOperationalPreferencesFragment;->mHomeDoubleClick:Landroid/preference/ListPreference;

    const v1, 0x7f0300a6

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setEntryValues(I)V

    :goto_36
    const-string v0, "home_long_press"

    .line 124
    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/meizu/settings/accessibility/FlymeOperationalPreferencesFragment;->mHomeLongPress:Landroid/preference/ListPreference;

    .line 125
    iget-object v0, p0, Lcom/meizu/settings/accessibility/FlymeOperationalPreferencesFragment;->mHomeLongPress:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string v0, "keyboard_back_behavior"

    .line 127
    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/meizu/settings/accessibility/FlymeOperationalPreferencesFragment;->mKeyboardBackBehavior:Landroid/preference/ListPreference;

    .line 128
    iget-object v0, p0, Lcom/meizu/settings/accessibility/FlymeOperationalPreferencesFragment;->mKeyboardBackBehavior:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string v0, "multi_task"

    .line 130
    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/accessibility/FlymeOperationalPreferencesFragment;->mMultiTaskPreference:Landroid/preference/Preference;

    const-string v0, "category_other"

    .line 132
    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/meizu/settings/accessibility/FlymeOperationalPreferencesFragment;->mOtherCategory:Landroid/preference/PreferenceCategory;

    const-string v0, "force_touch"

    .line 133
    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/accessibility/FlymeOperationalPreferencesFragment;->mForceTouchPreference:Landroid/preference/Preference;

    const-string/jumbo v0, "show_navigationbar"

    .line 135
    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/meizu/common/preference/SwitchPreference;

    iput-object v0, p0, Lcom/meizu/settings/accessibility/FlymeOperationalPreferencesFragment;->mShowNavigatoinBarPreference:Lcom/meizu/common/preference/SwitchPreference;

    .line 136
    iget-object v0, p0, Lcom/meizu/settings/accessibility/FlymeOperationalPreferencesFragment;->mShowNavigatoinBarPreference:Lcom/meizu/common/preference/SwitchPreference;

    iget-object v1, p0, Lcom/meizu/settings/accessibility/FlymeOperationalPreferencesFragment;->mContentResolver:Landroid/content/ContentResolver;

    .line 137
    sget-boolean v2, Lcom/meizu/settings/accessibility/FlymeOperationalPreferencesFragment;->DEFAULT_SHOW_NAVIGATION_BAR:Z

    const-string v3, "mz_show_navigation_bar"

    .line 136
    invoke-static {v1, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_89

    const/4 v1, 0x1

    goto :goto_8a

    :cond_89
    const/4 v1, 0x0

    :goto_8a
    invoke-virtual {v0, v1}, Lcom/meizu/common/preference/SwitchPreference;->setChecked(Z)V

    .line 139
    invoke-direct {p0}, Lcom/meizu/settings/accessibility/FlymeOperationalPreferencesFragment;->checkIfNeedRemovePreference()V

    return-void
.end method

.method private removeHomeLongPress(Z)V
    .registers 5

    .line 180
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "com.google.android.googlequicksearchbox"

    invoke-static {v0, v1}, Lcom/meizu/settings/utils/MzUtils;->isPackageExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 181
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/settings/accessibility/FlymeOperationalPreferencesFragment;->mHomeLongPress:Landroid/preference/ListPreference;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 182
    invoke-static {}, Landroid/os/BuildExt;->isProductInternational()Z

    move-result v1

    if-eqz v1, :cond_2f

    if-nez p1, :cond_2f

    if-eqz v0, :cond_27

    .line 184
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object p1

    iget-object p0, p0, Lcom/meizu/settings/accessibility/FlymeOperationalPreferencesFragment;->mHomeLongPress:Landroid/preference/ListPreference;

    invoke-virtual {p1, p0}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_2f

    .line 186
    :cond_27
    iget-object p0, p0, Lcom/meizu/settings/accessibility/FlymeOperationalPreferencesFragment;->mContentResolver:Landroid/content/ContentResolver;

    const/4 p1, 0x0

    const-string v0, "mz_intelligent_voice"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_2f
    :goto_2f
    return-void
.end method

.method private removeUnsupportFeature(Landroid/preference/ListPreference;)V
    .registers 13

    if-eqz p1, :cond_ca

    .line 366
    instance-of v0, p1, Landroid/preference/ListPreference;

    if-eqz v0, :cond_ca

    .line 367
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    .line 368
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_ca

    if-eqz v0, :cond_ca

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    .line 373
    :goto_15
    array-length v5, v1

    const-string v6, "-1"

    const-string v7, "FlymeOperationalPreferencesFragment"

    const/4 v8, 0x1

    if-ge v3, v5, :cond_77

    .line 374
    array-length v5, v0

    if-lt v3, v5, :cond_22

    move v5, v8

    goto :goto_23

    :cond_22
    move v5, v2

    :goto_23
    if-nez v5, :cond_37

    .line 375
    invoke-direct {p0, p1}, Lcom/meizu/settings/accessibility/FlymeOperationalPreferencesFragment;->getOperationType(Landroid/preference/Preference;)I

    move-result v9

    array-length v10, v1

    sub-int/2addr v10, v8

    sub-int/2addr v10, v3

    aget-object v10, v1, v10

    invoke-direct {p0, v9, v10}, Lcom/meizu/settings/accessibility/FlymeOperationalPreferencesFragment;->checkFeatureSupport(ILjava/lang/CharSequence;)Z

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

    .line 377
    :cond_40
    :goto_40
    array-length v10, v1

    sub-int/2addr v10, v8

    sub-int/2addr v10, v3

    aput-object v6, v1, v10

    .line 381
    :goto_45
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "removeUnsupportFeature valueNotExist = "

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

    .line 384
    :cond_77
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "supportCount = "

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", oldEntries.length = "

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v3, v0

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v7, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    array-length p0, v1

    if-ne v4, p0, :cond_9f

    array-length p0, v0

    if-ne v4, p0, :cond_9f

    array-length p0, v1

    array-length v3, v0

    if-eq p0, v3, :cond_ca

    .line 386
    :cond_9f
    new-array p0, v4, [Ljava/lang/CharSequence;

    .line 387
    new-array v3, v4, [Ljava/lang/CharSequence;

    :goto_a3
    if-ge v2, v4, :cond_c4

    .line 389
    array-length v5, v1

    sub-int/2addr v5, v8

    sub-int/2addr v5, v2

    aget-object v5, v1, v5

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_c1

    sub-int v5, v4, v2

    sub-int/2addr v5, v8

    .line 390
    array-length v7, v0

    sub-int/2addr v7, v8

    sub-int/2addr v7, v2

    aget-object v7, v0, v7

    aput-object v7, p0, v5

    .line 391
    array-length v7, v1

    sub-int/2addr v7, v8

    sub-int/2addr v7, v2

    aget-object v7, v1, v7

    aput-object v7, v3, v5

    :cond_c1
    add-int/lit8 v2, v2, 0x1

    goto :goto_a3

    .line 394
    :cond_c4
    invoke-virtual {p1, p0}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 395
    invoke-virtual {p1, v3}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    :cond_ca
    return-void
.end method

.method private updateForceTouchPreference()V
    .registers 6

    .line 200
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "mz_force_touch_level_index"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 203
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "mz_force_touch_switch"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_2d

    if-eqz v0, :cond_2c

    if-eq v0, v4, :cond_2a

    if-eq v0, v3, :cond_28

    goto :goto_2d

    :cond_28
    move v1, v4

    goto :goto_2d

    :cond_2a
    move v1, v3

    goto :goto_2d

    :cond_2c
    const/4 v1, 0x3

    .line 221
    :cond_2d
    :goto_2d
    iget-object v0, p0, Lcom/meizu/settings/accessibility/FlymeOperationalPreferencesFragment;->mForceTouchPreference:Landroid/preference/Preference;

    iget-object p0, p0, Lcom/meizu/settings/accessibility/FlymeOperationalPreferencesFragment;->mForceTouchArrays:[Ljava/lang/CharSequence;

    aget-object p0, p0, v1

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private updateHomeKeyDoubleClickPreference()V
    .registers 5

    .line 244
    iget-object v0, p0, Lcom/meizu/settings/accessibility/FlymeOperationalPreferencesFragment;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v1, 0x2

    const-string v2, "home_double_click"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 245
    iget-object v2, p0, Lcom/meizu/settings/accessibility/FlymeOperationalPreferencesFragment;->mHomeDoubleClick:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v2

    .line 246
    iget-object v3, p0, Lcom/meizu/settings/accessibility/FlymeOperationalPreferencesFragment;->mHomeDoubleClick:Landroid/preference/ListPreference;

    invoke-virtual {v3}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v3

    if-ltz v0, :cond_21

    if-eqz v2, :cond_1c

    .line 247
    array-length v2, v2

    if-ge v0, v2, :cond_21

    :cond_1c
    if-eqz v3, :cond_2e

    array-length v2, v3

    if-lt v0, v2, :cond_2e

    .line 249
    :cond_21
    iget-object v0, p0, Lcom/meizu/settings/accessibility/FlymeOperationalPreferencesFragment;->mHomeDoubleClick:Landroid/preference/ListPreference;

    const-string v2, "2"

    invoke-virtual {v0, v2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 251
    iget-object v0, p0, Lcom/meizu/settings/accessibility/FlymeOperationalPreferencesFragment;->mHomeDoubleClick:Landroid/preference/ListPreference;

    invoke-virtual {v0, v2}, Landroid/preference/ListPreference;->setDefaultValue(Ljava/lang/Object;)V

    move v0, v1

    .line 253
    :cond_2e
    iget-object v1, p0, Lcom/meizu/settings/accessibility/FlymeOperationalPreferencesFragment;->mHomeDoubleClick:Landroid/preference/ListPreference;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 254
    iget-object p0, p0, Lcom/meizu/settings/accessibility/FlymeOperationalPreferencesFragment;->mHomeDoubleClick:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private updateHomeKeyLongPressPreference()V
    .registers 4

    .line 229
    iget-object v0, p0, Lcom/meizu/settings/accessibility/FlymeOperationalPreferencesFragment;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "mz_intelligent_voice"

    const/4 v2, 0x3

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 231
    iget-object v1, p0, Lcom/meizu/settings/accessibility/FlymeOperationalPreferencesFragment;->mHomeLongPress:Landroid/preference/ListPreference;

    invoke-virtual {v1}, Landroid/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v1

    .line 232
    iget-object v2, p0, Lcom/meizu/settings/accessibility/FlymeOperationalPreferencesFragment;->mHomeLongPress:Landroid/preference/ListPreference;

    invoke-virtual {v2}, Landroid/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v2

    if-ltz v0, :cond_33

    if-eqz v1, :cond_33

    .line 233
    array-length v1, v1

    if-ge v0, v1, :cond_33

    if-eqz v2, :cond_33

    array-length v1, v2

    if-ge v0, v1, :cond_33

    .line 235
    iget-object v1, p0, Lcom/meizu/settings/accessibility/FlymeOperationalPreferencesFragment;->mHomeLongPress:Landroid/preference/ListPreference;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 236
    iget-object p0, p0, Lcom/meizu/settings/accessibility/FlymeOperationalPreferencesFragment;->mHomeLongPress:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_33
    return-void
.end method

.method private updateKeyboardBackBehaviorPreference()V
    .registers 4

    .line 258
    iget-object v0, p0, Lcom/meizu/settings/accessibility/FlymeOperationalPreferencesFragment;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "keyboard_exit_directly"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 260
    iget-object v1, p0, Lcom/meizu/settings/accessibility/FlymeOperationalPreferencesFragment;->mKeyboardBackBehavior:Landroid/preference/ListPreference;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 261
    iget-object p0, p0, Lcom/meizu/settings/accessibility/FlymeOperationalPreferencesFragment;->mKeyboardBackBehavior:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private updatePreference()V
    .registers 1

    .line 192
    invoke-direct {p0}, Lcom/meizu/settings/accessibility/FlymeOperationalPreferencesFragment;->updateHomeKeyDoubleClickPreference()V

    .line 193
    invoke-direct {p0}, Lcom/meizu/settings/accessibility/FlymeOperationalPreferencesFragment;->updateHomeKeyLongPressPreference()V

    .line 194
    invoke-direct {p0}, Lcom/meizu/settings/accessibility/FlymeOperationalPreferencesFragment;->updateKeyboardBackBehaviorPreference()V

    .line 195
    invoke-direct {p0}, Lcom/meizu/settings/accessibility/FlymeOperationalPreferencesFragment;->updateForceTouchPreference()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 2

    .line 97
    invoke-super {p0, p1}, Lcom/meizu/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f1600aa

    .line 99
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    .line 101
    invoke-direct {p0}, Lcom/meizu/settings/accessibility/FlymeOperationalPreferencesFragment;->initData()V

    .line 102
    invoke-direct {p0}, Lcom/meizu/settings/accessibility/FlymeOperationalPreferencesFragment;->initPreference()V

    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .registers 5

    .line 266
    invoke-virtual {p0, p1, p2}, Lcom/meizu/settings/SettingsPreferenceFragment;->reportPreferenceChangeUsageStats(Landroid/preference/Preference;Ljava/lang/Object;)V

    .line 268
    iget-object v0, p0, Lcom/meizu/settings/accessibility/FlymeOperationalPreferencesFragment;->mHomeLongPress:Landroid/preference/ListPreference;

    const/4 v1, 0x1

    if-ne p1, v0, :cond_19

    .line 269
    check-cast p2, Ljava/lang/String;

    .line 270
    iget-object p1, p0, Lcom/meizu/settings/accessibility/FlymeOperationalPreferencesFragment;->mContentResolver:Landroid/content/ContentResolver;

    .line 271
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    const-string v0, "mz_intelligent_voice"

    .line 270
    invoke-static {p1, v0, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 272
    invoke-direct {p0}, Lcom/meizu/settings/accessibility/FlymeOperationalPreferencesFragment;->updateHomeKeyLongPressPreference()V

    return v1

    .line 274
    :cond_19
    iget-object v0, p0, Lcom/meizu/settings/accessibility/FlymeOperationalPreferencesFragment;->mKeyboardBackBehavior:Landroid/preference/ListPreference;

    if-ne p1, v0, :cond_2e

    .line 275
    check-cast p2, Ljava/lang/String;

    .line 276
    iget-object p1, p0, Lcom/meizu/settings/accessibility/FlymeOperationalPreferencesFragment;->mContentResolver:Landroid/content/ContentResolver;

    .line 277
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    const-string v0, "keyboard_exit_directly"

    .line 276
    invoke-static {p1, v0, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 278
    invoke-direct {p0}, Lcom/meizu/settings/accessibility/FlymeOperationalPreferencesFragment;->updateKeyboardBackBehaviorPreference()V

    return v1

    .line 280
    :cond_2e
    iget-object v0, p0, Lcom/meizu/settings/accessibility/FlymeOperationalPreferencesFragment;->mHomeDoubleClick:Landroid/preference/ListPreference;

    if-ne p1, v0, :cond_43

    .line 281
    check-cast p2, Ljava/lang/String;

    .line 282
    iget-object p1, p0, Lcom/meizu/settings/accessibility/FlymeOperationalPreferencesFragment;->mContentResolver:Landroid/content/ContentResolver;

    .line 283
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    const-string v0, "home_double_click"

    .line 282
    invoke-static {p1, v0, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 284
    invoke-direct {p0}, Lcom/meizu/settings/accessibility/FlymeOperationalPreferencesFragment;->updateHomeKeyDoubleClickPreference()V

    return v1

    :cond_43
    const/4 p0, 0x0

    return p0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .registers 7

    .line 292
    invoke-virtual {p0, p2}, Lcom/meizu/settings/SettingsPreferenceFragment;->reportPreferenceTreeClickUsageStats(Landroid/preference/Preference;)V

    .line 294
    iget-object v0, p0, Lcom/meizu/settings/accessibility/FlymeOperationalPreferencesFragment;->mMultiTaskPreference:Landroid/preference/Preference;

    const/4 v1, 0x1

    if-ne p2, v0, :cond_25

    .line 295
    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.flyme.settings.MULTI_TASK"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p2, "com.flyme.systemuitools"

    .line 296
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p2, 0x20000000

    .line 297
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 299
    :try_start_19
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceFragment;->startActivity(Landroid/content/Intent;)V
    :try_end_1c
    .catch Landroid/content/ActivityNotFoundException; {:try_start_19 .. :try_end_1c} :catch_1d

    goto :goto_24

    :catch_1d
    const-string p0, "FlymeOperationalPreferencesFragment"

    const-string p1, "ActivityNotFoundException for multi-task"

    .line 301
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_24
    return v1

    .line 304
    :cond_25
    iget-object v0, p0, Lcom/meizu/settings/accessibility/FlymeOperationalPreferencesFragment;->mShowNavigatoinBarPreference:Lcom/meizu/common/preference/SwitchPreference;

    if-ne p2, v0, :cond_4b

    .line 305
    iget-object v2, p0, Lcom/meizu/settings/accessibility/FlymeOperationalPreferencesFragment;->mContentResolver:Landroid/content/ContentResolver;

    .line 307
    invoke-virtual {v0}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_33

    goto :goto_34

    :cond_33
    move v1, v3

    :goto_34
    const-string v0, "mz_show_navigation_bar"

    .line 305
    invoke-static {v2, v0, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 308
    invoke-virtual {p2, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 309
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/meizu/settings/accessibility/FlymeOperationalPreferencesFragment$1;

    invoke-direct {v1, p0}, Lcom/meizu/settings/accessibility/FlymeOperationalPreferencesFragment$1;-><init>(Lcom/meizu/settings/accessibility/FlymeOperationalPreferencesFragment;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 317
    :cond_4b
    invoke-super {p0, p1, p2}, Lcom/meizu/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public onResume()V
    .registers 1

    .line 322
    invoke-super {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;->onResume()V

    .line 324
    invoke-direct {p0}, Lcom/meizu/settings/accessibility/FlymeOperationalPreferencesFragment;->updatePreference()V

    return-void
.end method
