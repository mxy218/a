.class public Lcom/meizu/settings/language/FlymeLanguageAndDatetimeSettings;
.super Lcom/meizu/settings/SettingsPreferenceFragment;
.source "FlymeLanguageAndDatetimeSettings.java"

# interfaces
.implements Lcom/meizu/common/widget/TimePickerDialog$OnTimeSetListener;
.implements Lcom/meizu/common/widget/DatePickerDialog$OnDateSetListener;
.implements Lcom/meizu/settings/search/Indexable;
.implements Landroid/hardware/input/InputManager$InputDeviceListener;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/meizu/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field private final AUTOFILL_PROBE:Landroid/content/Intent;

.field private mAutoTimePref:Lcom/meizu/settings/widget/RestrictedSwitchPreference;

.field private mCountryPref:Landroid/preference/Preference;

.field private mDatePref:Lcom/meizu/settings/widget/RestrictedPreference;

.field private mDefaultAutofill:Landroid/preference/Preference;

.field private mDummyDate:Ljava/util/Calendar;

.field private mHardKeyboardCategory:Landroid/preference/PreferenceCategory;

.field private mIm:Landroid/hardware/input/InputManager;

.field private mImm:Landroid/view/inputmethod/InputMethodManager;

.field private mInputMethodSettingValue:Lcom/meizu/settings/language/FlymeInputMethodSettingValuesWrapper;

.field private mInputmethodProtocolPreference:Landroid/preference/Preference;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mKeyboardCategory:Landroid/preference/PreferenceCategory;

.field private mLanguagePreference:Landroid/preference/Preference;

.field private mNeedOverridePending:Z

.field private mPasswordProtection:Lcom/meizu/common/preference/SwitchPreference;

.field private mPm:Landroid/content/pm/PackageManager;

.field private mTime24Pref:Landroid/preference/Preference;

.field private mTimePref:Lcom/meizu/settings/widget/RestrictedPreference;

.field private mTimeZone:Lcom/meizu/settings/widget/RestrictedPreference;

.field private mUsageStatsProxy:Lcom/meizu/settings/datareport/UsageStatsProxy;

.field private mUserId:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 707
    new-instance v0, Lcom/meizu/settings/language/FlymeLanguageAndDatetimeSettings$3;

    invoke-direct {v0}, Lcom/meizu/settings/language/FlymeLanguageAndDatetimeSettings$3;-><init>()V

    sput-object v0, Lcom/meizu/settings/language/FlymeLanguageAndDatetimeSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/meizu/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 82
    invoke-direct {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;-><init>()V

    .line 135
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.service.autofill.AutofillService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/meizu/settings/language/FlymeLanguageAndDatetimeSettings;->AUTOFILL_PROBE:Landroid/content/Intent;

    const/4 v0, 0x0

    .line 139
    iput-boolean v0, p0, Lcom/meizu/settings/language/FlymeLanguageAndDatetimeSettings;->mNeedOverridePending:Z

    .line 680
    new-instance v0, Lcom/meizu/settings/language/FlymeLanguageAndDatetimeSettings$2;

    invoke-direct {v0, p0}, Lcom/meizu/settings/language/FlymeLanguageAndDatetimeSettings$2;-><init>(Lcom/meizu/settings/language/FlymeLanguageAndDatetimeSettings;)V

    iput-object v0, p0, Lcom/meizu/settings/language/FlymeLanguageAndDatetimeSettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$002(Lcom/meizu/settings/language/FlymeLanguageAndDatetimeSettings;Z)Z
    .registers 2

    .line 82
    iput-boolean p1, p0, Lcom/meizu/settings/language/FlymeLanguageAndDatetimeSettings;->mNeedOverridePending:Z

    return p1
.end method

.method static synthetic access$100(Lcom/meizu/settings/language/FlymeLanguageAndDatetimeSettings;)Lcom/meizu/settings/datareport/UsageStatsProxy;
    .registers 1

    .line 82
    iget-object p0, p0, Lcom/meizu/settings/language/FlymeLanguageAndDatetimeSettings;->mUsageStatsProxy:Lcom/meizu/settings/datareport/UsageStatsProxy;

    return-object p0
.end method

.method private addInputMethodItem(Landroid/view/inputmethod/InputMethodInfo;ILjava/util/HashMap;Z)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/inputmethod/InputMethodInfo;",
            "I",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;>;Z)V"
        }
    .end annotation

    .line 361
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getSettingsActivity()Ljava/lang/String;

    move-result-object p2

    .line 362
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 363
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 364
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 367
    :cond_18
    invoke-direct {p0, p1, p4}, Lcom/meizu/settings/language/FlymeLanguageAndDatetimeSettings;->getInputMethodPreference(Landroid/view/inputmethod/InputMethodInfo;Z)Landroid/preference/Preference;

    move-result-object p2

    if-nez p2, :cond_1f

    return-void

    .line 372
    :cond_1f
    invoke-static {p1}, Lcom/meizu/settings/language/FlymeInputMethodAndSubtypeUtil;->isDefaultIme(Landroid/view/inputmethod/InputMethodInfo;)Z

    move-result p4

    if-eqz p4, :cond_29

    const/4 p4, -0x1

    .line 373
    invoke-virtual {p2, p4}, Landroid/preference/Preference;->setOrder(I)V

    .line 375
    :cond_29
    iget-object p0, p0, Lcom/meizu/settings/language/FlymeLanguageAndDatetimeSettings;->mKeyboardCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {p0, p2}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    .line 376
    instance-of p0, p2, Lcom/meizu/settings/language/FlymeInputMethodPreference;

    if-eqz p0, :cond_41

    if-eqz p3, :cond_41

    .line 377
    check-cast p2, Lcom/meizu/settings/language/FlymeInputMethodPreference;

    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    invoke-virtual {p2, p0}, Lcom/meizu/settings/language/FlymeInputMethodPreference;->setChecked(Z)V

    :cond_41
    return-void
.end method

.method private addThirdProtocolPreference()V
    .registers 3

    .line 351
    new-instance v0, Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/meizu/settings/language/FlymeLanguageAndDatetimeSettings;->mInputmethodProtocolPreference:Landroid/preference/Preference;

    .line 352
    iget-object v0, p0, Lcom/meizu/settings/language/FlymeLanguageAndDatetimeSettings;->mInputmethodProtocolPreference:Landroid/preference/Preference;

    const v1, 0x7f1215dd

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 353
    iget-object v0, p0, Lcom/meizu/settings/language/FlymeLanguageAndDatetimeSettings;->mInputmethodProtocolPreference:Landroid/preference/Preference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSelectable(Z)V

    .line 354
    iget-object v0, p0, Lcom/meizu/settings/language/FlymeLanguageAndDatetimeSettings;->mKeyboardCategory:Landroid/preference/PreferenceCategory;

    iget-object p0, p0, Lcom/meizu/settings/language/FlymeLanguageAndDatetimeSettings;->mInputmethodProtocolPreference:Landroid/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    return-void
.end method

.method static configureDatePicker(Lcom/meizu/common/widget/DatePicker;)V
    .registers 5

    .line 525
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 526
    invoke-virtual {v0}, Ljava/util/Calendar;->clear()V

    const/16 v1, 0x7b2

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 527
    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Calendar;->set(III)V

    .line 528
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/meizu/common/widget/DatePicker;->setMinDate(J)V

    .line 529
    invoke-virtual {v0}, Ljava/util/Calendar;->clear()V

    const/16 v1, 0x7f5

    const/16 v2, 0xb

    const/16 v3, 0x1f

    .line 530
    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Calendar;->set(III)V

    .line 531
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/meizu/common/widget/DatePicker;->setMaxDate(J)V

    return-void
.end method

.method private createSysKbdPreferenceOnClickListener(Landroid/content/Intent;)Landroid/preference/Preference$OnPreferenceClickListener;
    .registers 3

    .line 411
    new-instance v0, Lcom/meizu/settings/language/FlymeLanguageAndDatetimeSettings$1;

    invoke-direct {v0, p0, p1}, Lcom/meizu/settings/language/FlymeLanguageAndDatetimeSettings$1;-><init>(Lcom/meizu/settings/language/FlymeLanguageAndDatetimeSettings;Landroid/content/Intent;)V

    return-object v0
.end method

.method private getAutoState(Ljava/lang/String;)Z
    .registers 3

    const/4 v0, 0x0

    .line 606
    :try_start_1
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, p1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result p0
    :try_end_d
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_d} :catch_10

    if-lez p0, :cond_10

    const/4 v0, 0x1

    :catch_10
    :cond_10
    return v0
.end method

.method private getDefaultAutofillName()Ljava/lang/String;
    .registers 5

    .line 260
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 261
    invoke-virtual {p0}, Lcom/meizu/settings/language/FlymeLanguageAndDatetimeSettings;->getCandidates()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_23

    .line 263
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_23

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/widget/CandidateInfo;

    .line 264
    invoke-virtual {v2}, Lcom/android/settingslib/widget/CandidateInfo;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_f

    .line 267
    :cond_23
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker;->getDefaultKey(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    .line 268
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/widget/CandidateInfo;

    if-eqz v0, :cond_40

    .line 271
    invoke-virtual {v0}, Lcom/android/settingslib/widget/CandidateInfo;->loadLabel()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_47

    :cond_40
    const v0, 0x7f120189

    .line 273
    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_47
    return-object p0
.end method

.method private getInputMethodNumFilterGoogleVoice(Ljava/util/List;)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/inputmethod/InputMethodInfo;",
            ">;)I"
        }
    .end annotation

    if-nez p1, :cond_4

    const/4 p0, 0x0

    goto :goto_8

    .line 336
    :cond_4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    .line 338
    :goto_8
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodInfo;

    .line 339
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodInfo;->getSettingsActivity()Ljava/lang/String;

    move-result-object v0

    .line 340
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_c

    const-string v1, "com.google.android.voicesearch.ime"

    .line 341
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    add-int/lit8 p0, p0, -0x1

    :cond_2c
    return p0
.end method

.method private getInputMethodPreference(Landroid/view/inputmethod/InputMethodInfo;Z)Landroid/preference/Preference;
    .registers 12

    .line 382
    invoke-virtual {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 383
    invoke-virtual {p1, v0}, Landroid/view/inputmethod/InputMethodInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 386
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getSettingsActivity()Ljava/lang/String;

    move-result-object v1

    .line 387
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_21

    .line 388
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 389
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_22

    :cond_21
    const/4 v2, 0x0

    :goto_22
    move-object v5, v2

    .line 395
    invoke-static {p1}, Lcom/meizu/settings/language/FlymeInputMethodAndSubtypeUtil;->isDefaultIme(Landroid/view/inputmethod/InputMethodInfo;)Z

    move-result v1

    if-eqz v1, :cond_4b

    .line 396
    new-instance p1, Landroid/preference/Preference;

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    const-string p2, "system_keyboard"

    .line 397
    invoke-virtual {p1, p2}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    const p2, 0x7f1215aa

    .line 398
    invoke-virtual {p1, p2}, Landroid/preference/Preference;->setTitle(I)V

    .line 399
    invoke-direct {p0, v5}, Lcom/meizu/settings/language/FlymeLanguageAndDatetimeSettings;->createSysKbdPreferenceOnClickListener(Landroid/content/Intent;)Landroid/preference/Preference$OnPreferenceClickListener;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    const p0, 0x7f0d0214

    .line 400
    invoke-virtual {p1, p0}, Landroid/preference/Preference;->setWidgetLayoutResource(I)V

    goto :goto_61

    .line 403
    :cond_4b
    new-instance v1, Lcom/meizu/settings/language/FlymeInputMethodPreference;

    iget-object v6, p0, Lcom/meizu/settings/language/FlymeLanguageAndDatetimeSettings;->mImm:Landroid/view/inputmethod/InputMethodManager;

    move-object v3, v1

    move-object v4, p0

    move-object v7, p1

    move v8, p2

    invoke-direct/range {v3 .. v8}, Lcom/meizu/settings/language/FlymeInputMethodPreference;-><init>(Lcom/meizu/settings/SettingsPreferenceFragment;Landroid/content/Intent;Landroid/view/inputmethod/InputMethodManager;Landroid/view/inputmethod/InputMethodInfo;Z)V

    .line 404
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 405
    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    move-object p1, v1

    :goto_61
    return-object p1
.end method

.method private static getLocaleName(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    .line 247
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    const/4 v1, 0x1

    .line 248
    invoke-static {p0, v1}, Lcom/android/internal/app/LocalePicker;->getAllAssetLocales(Landroid/content/Context;Z)Ljava/util/List;

    move-result-object p0

    .line 249
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_13
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2e

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/LocalePicker$LocaleInfo;

    .line 250
    invoke-virtual {v1}, Lcom/android/internal/app/LocalePicker$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 251
    invoke-virtual {v1}, Lcom/android/internal/app/LocalePicker$LocaleInfo;->getLabel()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 256
    :cond_2e
    invoke-virtual {v0, v0}, Ljava/util/Locale;->getDisplayName(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getTimeZoneText(Ljava/util/TimeZone;Z)Ljava/lang/String;
    .registers 7

    .line 653
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 656
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "ZZZZ"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 657
    invoke-virtual {v1, p0}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 658
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 661
    invoke-static {}, Landroid/text/BidiFormatter;->getInstance()Landroid/text/BidiFormatter;

    move-result-object v2

    .line 662
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    .line 663
    invoke-static {v3}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_23

    goto :goto_24

    :cond_23
    const/4 v4, 0x0

    :goto_24
    if-eqz v4, :cond_29

    .line 665
    sget-object v3, Landroid/text/TextDirectionHeuristics;->RTL:Landroid/text/TextDirectionHeuristic;

    goto :goto_2b

    :cond_29
    sget-object v3, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    .line 664
    :goto_2b
    invoke-virtual {v2, v1, v3}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;Landroid/text/TextDirectionHeuristic;)Ljava/lang/String;

    move-result-object v1

    if-nez p1, :cond_32

    return-object v1

    .line 672
    :cond_32
    new-instance p1, Ljava/text/SimpleDateFormat;

    const-string v2, "zzzz"

    invoke-direct {p1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 673
    invoke-virtual {p1, p0}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 674
    invoke-virtual {p1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    .line 677
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private handlePreferenceInAntiAddictionMode()V
    .registers 2

    const-string v0, "date_and_time"

    .line 230
    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    .line 231
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-static {p0}, Lcom/meizu/settings/utils/MzUtils;->isInAntiAddictionMode(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_16

    const/4 p0, 0x0

    .line 232
    invoke-virtual {v0, p0}, Landroid/preference/PreferenceCategory;->setEnabled(Z)V

    :cond_16
    return-void
.end method

.method private initDateTimePreference()V
    .registers 6

    const-string v0, "auto_time"

    .line 439
    invoke-direct {p0, v0}, Lcom/meizu/settings/language/FlymeLanguageAndDatetimeSettings;->getAutoState(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "auto_time_zone"

    .line 440
    invoke-direct {p0, v2}, Lcom/meizu/settings/language/FlymeLanguageAndDatetimeSettings;->getAutoState(Ljava/lang/String;)Z

    move-result v2

    .line 442
    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/meizu/settings/widget/RestrictedSwitchPreference;

    iput-object v0, p0, Lcom/meizu/settings/language/FlymeLanguageAndDatetimeSettings;->mAutoTimePref:Lcom/meizu/settings/widget/RestrictedSwitchPreference;

    .line 443
    iget-object v0, p0, Lcom/meizu/settings/language/FlymeLanguageAndDatetimeSettings;->mAutoTimePref:Lcom/meizu/settings/widget/RestrictedSwitchPreference;

    invoke-virtual {v0}, Lcom/meizu/settings/widget/RestrictedSwitchPreference;->isDisabledByAdmin()Z

    move-result v0

    if-nez v0, :cond_29

    .line 444
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->checkIfAutoTimeRequired(Landroid/content/Context;)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    .line 445
    iget-object v3, p0, Lcom/meizu/settings/language/FlymeLanguageAndDatetimeSettings;->mAutoTimePref:Lcom/meizu/settings/widget/RestrictedSwitchPreference;

    invoke-virtual {v3, v0}, Lcom/meizu/settings/widget/RestrictedSwitchPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 448
    :cond_29
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v3, "device_policy"

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 450
    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getAutoTimeRequired()Z

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_41

    .line 451
    iget-object v0, p0, Lcom/meizu/settings/language/FlymeLanguageAndDatetimeSettings;->mAutoTimePref:Lcom/meizu/settings/widget/RestrictedSwitchPreference;

    invoke-virtual {v0, v3}, Lcom/meizu/settings/widget/RestrictedSwitchPreference;->setEnabled(Z)V

    .line 458
    :cond_41
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v4, "firstRun"

    .line 459
    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 461
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    iput-object v3, p0, Lcom/meizu/settings/language/FlymeLanguageAndDatetimeSettings;->mDummyDate:Ljava/util/Calendar;

    .line 463
    iget-object v3, p0, Lcom/meizu/settings/language/FlymeLanguageAndDatetimeSettings;->mAutoTimePref:Lcom/meizu/settings/widget/RestrictedSwitchPreference;

    invoke-virtual {v3, v1}, Lcom/meizu/common/preference/SwitchPreference;->setChecked(Z)V

    const-string v3, "time"

    .line 465
    invoke-virtual {p0, v3}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/meizu/settings/widget/RestrictedPreference;

    iput-object v3, p0, Lcom/meizu/settings/language/FlymeLanguageAndDatetimeSettings;->mTimePref:Lcom/meizu/settings/widget/RestrictedPreference;

    const-string v3, "24 hour"

    .line 466
    invoke-virtual {p0, v3}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/meizu/settings/language/FlymeLanguageAndDatetimeSettings;->mTime24Pref:Landroid/preference/Preference;

    const-string v3, "timezone"

    .line 467
    invoke-virtual {p0, v3}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/meizu/settings/widget/RestrictedPreference;

    iput-object v3, p0, Lcom/meizu/settings/language/FlymeLanguageAndDatetimeSettings;->mTimeZone:Lcom/meizu/settings/widget/RestrictedPreference;

    const-string v3, "date"

    .line 468
    invoke-virtual {p0, v3}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/meizu/settings/widget/RestrictedPreference;

    iput-object v3, p0, Lcom/meizu/settings/language/FlymeLanguageAndDatetimeSettings;->mDatePref:Lcom/meizu/settings/widget/RestrictedPreference;

    if-eqz v0, :cond_8b

    .line 470
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v3, p0, Lcom/meizu/settings/language/FlymeLanguageAndDatetimeSettings;->mTime24Pref:Landroid/preference/Preference;

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 473
    :cond_8b
    iget-object v0, p0, Lcom/meizu/settings/language/FlymeLanguageAndDatetimeSettings;->mTimePref:Lcom/meizu/settings/widget/RestrictedPreference;

    xor-int/lit8 v3, v1, 0x1

    invoke-virtual {v0, v3}, Lcom/meizu/settings/widget/RestrictedPreference;->setEnabled(Z)V

    .line 474
    iget-object v0, p0, Lcom/meizu/settings/language/FlymeLanguageAndDatetimeSettings;->mDatePref:Lcom/meizu/settings/widget/RestrictedPreference;

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/meizu/settings/widget/RestrictedPreference;->setEnabled(Z)V

    .line 475
    iget-object p0, p0, Lcom/meizu/settings/language/FlymeLanguageAndDatetimeSettings;->mTimeZone:Lcom/meizu/settings/widget/RestrictedPreference;

    xor-int/lit8 v0, v2, 0x1

    invoke-virtual {p0, v0}, Lcom/meizu/settings/widget/RestrictedPreference;->setEnabled(Z)V

    return-void
.end method

.method private is24Hour()Z
    .registers 1

    .line 595
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-static {p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public static isSetTimeChangeByUser(Landroid/content/Context;)Z
    .registers 3

    .line 619
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "set_time_change_by_user"

    .line 620
    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method private set24Hour(Z)V
    .registers 3

    .line 599
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    if-eqz p1, :cond_d

    const-string p1, "24"

    goto :goto_f

    :cond_d
    const-string p1, "12"

    :goto_f
    const-string v0, "time_12_24"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method private setDate(Landroid/content/Context;III)V
    .registers 11

    .line 624
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x1

    .line 626
    invoke-virtual {v0, v1, p2}, Ljava/util/Calendar;->set(II)V

    const/4 p2, 0x2

    .line 627
    invoke-virtual {v0, p2, p3}, Ljava/util/Calendar;->set(II)V

    const/4 p2, 0x5

    .line 628
    invoke-virtual {v0, p2, p4}, Ljava/util/Calendar;->set(II)V

    .line 629
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p2

    const-wide/16 v2, 0x3e8

    .line 631
    div-long v2, p2, v2

    const-wide/32 v4, 0x7fffffff

    cmp-long p4, v2, v4

    if-gez p4, :cond_31

    const-string p4, "alarm"

    .line 632
    invoke-virtual {p1, p4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/AlarmManager;

    invoke-virtual {p1, p2, p3}, Landroid/app/AlarmManager;->setTime(J)V

    .line 633
    invoke-virtual {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, v1}, Lcom/meizu/settings/language/FlymeLanguageAndDatetimeSettings;->setTimeChangeByUser(Landroid/content/Context;Z)V

    :cond_31
    return-void
.end method

.method private setTime(Landroid/content/Context;II)V
    .registers 8

    .line 638
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/16 v1, 0xb

    .line 640
    invoke-virtual {v0, v1, p2}, Ljava/util/Calendar;->set(II)V

    const/16 p2, 0xc

    .line 641
    invoke-virtual {v0, p2, p3}, Ljava/util/Calendar;->set(II)V

    const/4 p2, 0x0

    const/16 p3, 0xd

    .line 642
    invoke-virtual {v0, p3, p2}, Ljava/util/Calendar;->set(II)V

    const/16 p3, 0xe

    .line 643
    invoke-virtual {v0, p3, p2}, Ljava/util/Calendar;->set(II)V

    .line 644
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p2

    const-wide/16 v0, 0x3e8

    .line 646
    div-long v0, p2, v0

    const-wide/32 v2, 0x7fffffff

    cmp-long v0, v0, v2

    if-gez v0, :cond_3b

    const-string v0, "alarm"

    .line 647
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/AlarmManager;

    invoke-virtual {p1, p2, p3}, Landroid/app/AlarmManager;->setTime(J)V

    .line 648
    invoke-virtual {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object p0

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/meizu/settings/language/FlymeLanguageAndDatetimeSettings;->setTimeChangeByUser(Landroid/content/Context;Z)V

    :cond_3b
    return-void
.end method

.method public static setTimeChangeByUser(Landroid/content/Context;Z)V
    .registers 4

    .line 614
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 613
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 615
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "set_time_change_by_user"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private timeUpdated(Z)V
    .registers 4

    .line 587
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.TIME_SET"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.extra.TIME_PREF_24_HOUR_FORMAT"

    .line 588
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 589
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private updateCountryPreference(Landroid/content/Context;)V
    .registers 2

    .line 784
    iget-object p0, p0, Lcom/meizu/settings/language/FlymeLanguageAndDatetimeSettings;->mCountryPref:Landroid/preference/Preference;

    invoke-static {p1}, Lcom/meizu/settings/language/FlymeRegion;->getCurrentCountryName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private updateHardKeyboards()V
    .registers 6

    .line 752
    invoke-static {}, Landroid/view/InputDevice;->getDeviceIds()[I

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    .line 753
    :goto_6
    array-length v3, v0

    if-ge v2, v3, :cond_21

    .line 754
    aget v3, v0, v2

    invoke-static {v3}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    move-result-object v3

    if-eqz v3, :cond_1e

    .line 756
    invoke-virtual {v3}, Landroid/view/InputDevice;->isVirtual()Z

    move-result v4

    if-nez v4, :cond_1e

    .line 757
    invoke-virtual {v3}, Landroid/view/InputDevice;->isFullKeyboard()Z

    move-result v3

    if-eqz v3, :cond_1e

    goto :goto_22

    :cond_1e
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_21
    const/4 v1, 0x1

    :goto_22
    if-eqz v1, :cond_2d

    .line 764
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object p0, p0, Lcom/meizu/settings/language/FlymeLanguageAndDatetimeSettings;->mHardKeyboardCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0, p0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_2d
    return-void
.end method

.method private updateInputDevices()V
    .registers 1

    .line 747
    invoke-direct {p0}, Lcom/meizu/settings/language/FlymeLanguageAndDatetimeSettings;->updateHardKeyboards()V

    return-void
.end method

.method private updateThirdInputMethod()V
    .registers 11

    .line 302
    iget-object v0, p0, Lcom/meizu/settings/language/FlymeLanguageAndDatetimeSettings;->mKeyboardCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroid/preference/PreferenceCategory;->removeAll()V

    .line 304
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-class v1, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 305
    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getPermittedInputMethodsForCurrentUser()Ljava/util/List;

    move-result-object v0

    .line 307
    iget-object v1, p0, Lcom/meizu/settings/language/FlymeLanguageAndDatetimeSettings;->mInputMethodSettingValue:Lcom/meizu/settings/language/FlymeInputMethodSettingValuesWrapper;

    invoke-virtual {v1}, Lcom/meizu/settings/language/FlymeInputMethodSettingValuesWrapper;->refreshAllInputMethodAndSubtypes()V

    .line 308
    iget-object v1, p0, Lcom/meizu/settings/language/FlymeLanguageAndDatetimeSettings;->mInputMethodSettingValue:Lcom/meizu/settings/language/FlymeInputMethodSettingValuesWrapper;

    invoke-virtual {v1}, Lcom/meizu/settings/language/FlymeInputMethodSettingValuesWrapper;->getInputMethodList()Ljava/util/List;

    move-result-object v1

    .line 309
    invoke-direct {p0, v1}, Lcom/meizu/settings/language/FlymeLanguageAndDatetimeSettings;->getInputMethodNumFilterGoogleVoice(Ljava/util/List;)I

    move-result v2

    const/4 v3, 0x0

    if-nez v1, :cond_2f

    move v4, v3

    goto :goto_33

    .line 310
    :cond_2f
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    .line 311
    :goto_33
    invoke-virtual {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v5}, Lcom/meizu/settings/language/FlymeInputMethodAndSubtypeUtil;->getEnabledInputMethodsAndSubtypeList(Landroid/content/ContentResolver;)Ljava/util/HashMap;

    move-result-object v5

    move v6, v3

    :goto_3c
    const/4 v7, 0x1

    if-ge v6, v4, :cond_60

    .line 313
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/inputmethod/InputMethodInfo;

    .line 317
    invoke-static {v8}, Lcom/meizu/settings/language/FlymeInputMethodAndSubtypeUtil;->isGoogleVoiceInput(Landroid/view/inputmethod/InputMethodInfo;)Z

    move-result v9

    if-eqz v9, :cond_4c

    goto :goto_5d

    :cond_4c
    if-eqz v0, :cond_5a

    .line 322
    invoke-virtual {v8}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v0, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_59

    goto :goto_5a

    :cond_59
    move v7, v3

    .line 324
    :cond_5a
    :goto_5a
    invoke-direct {p0, v8, v2, v5, v7}, Lcom/meizu/settings/language/FlymeLanguageAndDatetimeSettings;->addInputMethodItem(Landroid/view/inputmethod/InputMethodInfo;ILjava/util/HashMap;Z)V

    :goto_5d
    add-int/lit8 v6, v6, 0x1

    goto :goto_3c

    .line 327
    :cond_60
    iget-object v0, p0, Lcom/meizu/settings/language/FlymeLanguageAndDatetimeSettings;->mPasswordProtection:Lcom/meizu/common/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "mz_safe_keyboard"

    invoke-static {v1, v2, v7}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v7, :cond_6f

    move v3, v7

    :cond_6f
    invoke-virtual {v0, v3}, Lcom/meizu/common/preference/SwitchPreference;->setChecked(Z)V

    .line 330
    iget-object v0, p0, Lcom/meizu/settings/language/FlymeLanguageAndDatetimeSettings;->mKeyboardCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroid/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v0

    if-le v0, v7, :cond_7d

    .line 331
    invoke-direct {p0}, Lcom/meizu/settings/language/FlymeLanguageAndDatetimeSettings;->addThirdProtocolPreference()V

    :cond_7d
    return-void
.end method


# virtual methods
.method protected getCandidates()Ljava/util/List;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/settingslib/applications/DefaultAppInfo;",
            ">;"
        }
    .end annotation

    .line 279
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 280
    iget-object v1, p0, Lcom/meizu/settings/language/FlymeLanguageAndDatetimeSettings;->mPm:Landroid/content/pm/PackageManager;

    iget-object v2, p0, Lcom/meizu/settings/language/FlymeLanguageAndDatetimeSettings;->AUTOFILL_PROBE:Landroid/content/Intent;

    const/16 v3, 0x80

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 282
    invoke-virtual {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 283
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_17
    :goto_17
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_91

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 284
    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v4, v4, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    const-string v5, "android.permission.BIND_AUTOFILL_SERVICE"

    .line 285
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_48

    .line 286
    new-instance v5, Lcom/android/settingslib/applications/DefaultAppInfo;

    iget-object v6, p0, Lcom/meizu/settings/language/FlymeLanguageAndDatetimeSettings;->mPm:Landroid/content/pm/PackageManager;

    iget v7, p0, Lcom/meizu/settings/language/FlymeLanguageAndDatetimeSettings;->mUserId:I

    new-instance v8, Landroid/content/ComponentName;

    iget-object v9, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v9, v9, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v10, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v10, v10, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v8, v9, v10}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v5, v2, v6, v7, v8}, Lcom/android/settingslib/applications/DefaultAppInfo;-><init>(Landroid/content/Context;Landroid/content/pm/PackageManager;ILandroid/content/ComponentName;)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_48
    const-string v5, "android.permission.BIND_AUTOFILL"

    .line 289
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_17

    .line 291
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AutofillService from \'"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v6, v6, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\' uses unsupported permission "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ". It works for now, but might not be supported on future releases"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "FlymeLanguageAndDatetimeSettings"

    invoke-static {v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    new-instance v4, Lcom/android/settingslib/applications/DefaultAppInfo;

    iget-object v5, p0, Lcom/meizu/settings/language/FlymeLanguageAndDatetimeSettings;->mPm:Landroid/content/pm/PackageManager;

    iget v6, p0, Lcom/meizu/settings/language/FlymeLanguageAndDatetimeSettings;->mUserId:I

    new-instance v7, Landroid/content/ComponentName;

    iget-object v8, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v8, v8, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v3, v3, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v7, v8, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v4, v2, v5, v6, v7}, Lcom/android/settingslib/applications/DefaultAppInfo;-><init>(Landroid/content/Context;Landroid/content/pm/PackageManager;ILandroid/content/ComponentName;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_17

    :cond_91
    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 4

    .line 583
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/meizu/settings/language/FlymeLanguageAndDatetimeSettings;->updateTimeAndDateDisplay(Landroid/content/Context;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 3

    .line 143
    invoke-super {p0, p1}, Lcom/meizu/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 144
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    const v0, 0x7f160083

    .line 146
    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    const-string v0, "phone_language"

    .line 148
    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/language/FlymeLanguageAndDatetimeSettings;->mLanguagePreference:Landroid/preference/Preference;

    const-string v0, "keyboard_settings_category"

    .line 149
    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/meizu/settings/language/FlymeLanguageAndDatetimeSettings;->mKeyboardCategory:Landroid/preference/PreferenceCategory;

    const-string v0, "password_protected"

    .line 150
    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/meizu/common/preference/SwitchPreference;

    iput-object v0, p0, Lcom/meizu/settings/language/FlymeLanguageAndDatetimeSettings;->mPasswordProtection:Lcom/meizu/common/preference/SwitchPreference;

    const-string v0, "default_autofill"

    .line 151
    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/language/FlymeLanguageAndDatetimeSettings;->mDefaultAutofill:Landroid/preference/Preference;

    const-string v0, "input_method"

    .line 153
    invoke-virtual {p0, v0}, Lcom/meizu/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/meizu/settings/language/FlymeLanguageAndDatetimeSettings;->mImm:Landroid/view/inputmethod/InputMethodManager;

    .line 154
    invoke-virtual {p1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/language/FlymeLanguageAndDatetimeSettings;->mPm:Landroid/content/pm/PackageManager;

    .line 155
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    iput v0, p0, Lcom/meizu/settings/language/FlymeLanguageAndDatetimeSettings;->mUserId:I

    .line 157
    invoke-direct {p0}, Lcom/meizu/settings/language/FlymeLanguageAndDatetimeSettings;->initDateTimePreference()V

    .line 158
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/meizu/settings/datareport/UsageStatsProxy;->getInstance(Landroid/content/Context;)Lcom/meizu/settings/datareport/UsageStatsProxy;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/language/FlymeLanguageAndDatetimeSettings;->mUsageStatsProxy:Lcom/meizu/settings/datareport/UsageStatsProxy;

    .line 160
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/meizu/settings/language/FlymeInputMethodSettingValuesWrapper;->getInstance(Landroid/content/Context;)Lcom/meizu/settings/language/FlymeInputMethodSettingValuesWrapper;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/language/FlymeLanguageAndDatetimeSettings;->mInputMethodSettingValue:Lcom/meizu/settings/language/FlymeInputMethodSettingValuesWrapper;

    const-string v0, "hard_keyboard"

    .line 165
    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/meizu/settings/language/FlymeLanguageAndDatetimeSettings;->mHardKeyboardCategory:Landroid/preference/PreferenceCategory;

    const-string v0, "input"

    .line 166
    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/input/InputManager;

    iput-object p1, p0, Lcom/meizu/settings/language/FlymeLanguageAndDatetimeSettings;->mIm:Landroid/hardware/input/InputManager;

    const-string p1, "country"

    .line 168
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/language/FlymeLanguageAndDatetimeSettings;->mCountryPref:Landroid/preference/Preference;

    .line 169
    invoke-static {}, Landroid/os/BuildExt;->isProductInternational()Z

    move-result p1

    if-nez p1, :cond_89

    .line 170
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object p1

    iget-object v0, p0, Lcom/meizu/settings/language/FlymeLanguageAndDatetimeSettings;->mCountryPref:Landroid/preference/Preference;

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 173
    :cond_89
    invoke-virtual {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settings/Utils;->getManagedProfile(Landroid/os/UserManager;)Landroid/os/UserHandle;

    move-result-object p1

    if-eqz p1, :cond_a1

    .line 174
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p1

    invoke-static {p1}, Landroid/os/UserHandle;->isMultiOpenUserId(I)Z

    move-result p1

    if-eqz p1, :cond_ae

    .line 175
    :cond_a1
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object p1

    const-string v0, "language_and_input_for_work_category"

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_ae
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .registers 10

    .line 500
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz p1, :cond_2f

    if-ne p1, v1, :cond_29

    .line 512
    new-instance p1, Lcom/meizu/common/widget/TimePickerDialog;

    .line 513
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const/16 v1, 0xb

    .line 515
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v5

    const/16 v1, 0xc

    .line 516
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v6

    .line 517
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v7

    move-object v2, p1

    move-object v4, p0

    invoke-direct/range {v2 .. v7}, Lcom/meizu/common/widget/TimePickerDialog;-><init>(Landroid/content/Context;Lcom/meizu/common/widget/TimePickerDialog$OnTimeSetListener;IIZ)V

    return-object p1

    .line 519
    :cond_29
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    .line 503
    :cond_2f
    new-instance p1, Lcom/meizu/common/widget/DatePickerDialog;

    .line 504
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 506
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/4 v1, 0x2

    .line 507
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/4 v1, 0x5

    .line 508
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v5

    move-object v0, p1

    move-object v1, v2

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/meizu/common/widget/DatePickerDialog;-><init>(Landroid/content/Context;Lcom/meizu/common/widget/DatePickerDialog$OnDateSetListener;III)V

    .line 509
    invoke-virtual {p1}, Lcom/meizu/common/widget/DatePickerDialog;->getDatePicker()Lcom/meizu/common/widget/DatePicker;

    move-result-object p0

    invoke-static {p0}, Lcom/meizu/settings/language/FlymeLanguageAndDatetimeSettings;->configureDatePicker(Lcom/meizu/common/widget/DatePicker;)V

    return-object p1
.end method

.method public onDateSet(Lcom/meizu/common/widget/DatePicker;III)V
    .registers 5

    .line 480
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    if-eqz p1, :cond_c

    .line 482
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/meizu/settings/language/FlymeLanguageAndDatetimeSettings;->setDate(Landroid/content/Context;III)V

    .line 483
    invoke-virtual {p0, p1}, Lcom/meizu/settings/language/FlymeLanguageAndDatetimeSettings;->updateTimeAndDateDisplay(Landroid/content/Context;)V

    :cond_c
    return-void
.end method

.method public onInputDeviceAdded(I)V
    .registers 2

    .line 770
    invoke-direct {p0}, Lcom/meizu/settings/language/FlymeLanguageAndDatetimeSettings;->updateInputDevices()V

    return-void
.end method

.method public onInputDeviceChanged(I)V
    .registers 2

    .line 775
    invoke-direct {p0}, Lcom/meizu/settings/language/FlymeLanguageAndDatetimeSettings;->updateInputDevices()V

    return-void
.end method

.method public onInputDeviceRemoved(I)V
    .registers 2

    .line 780
    invoke-direct {p0}, Lcom/meizu/settings/language/FlymeLanguageAndDatetimeSettings;->updateInputDevices()V

    return-void
.end method

.method public onPause()V
    .registers 3

    .line 238
    invoke-super {p0}, Lcom/meizu/settings/InstrumentedPreferenceFragment;->onPause()V

    .line 239
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/settings/language/FlymeLanguageAndDatetimeSettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 242
    iget-object v0, p0, Lcom/meizu/settings/language/FlymeLanguageAndDatetimeSettings;->mIm:Landroid/hardware/input/InputManager;

    invoke-virtual {v0, p0}, Landroid/hardware/input/InputManager;->unregisterInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;)V

    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .registers 9

    .line 536
    iget-object v0, p0, Lcom/meizu/settings/language/FlymeLanguageAndDatetimeSettings;->mUsageStatsProxy:Lcom/meizu/settings/datareport/UsageStatsProxy;

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FlymeLanguageAndDatetimeSettings"

    invoke-virtual {v0, v2, v1, p2}, Lcom/meizu/settings/datareport/UsageStatsProxy;->reportData(Ljava/lang/String;Ljava/lang/String;Landroid/preference/Preference;)V

    .line 537
    iget-object v0, p0, Lcom/meizu/settings/language/FlymeLanguageAndDatetimeSettings;->mDatePref:Lcom/meizu/settings/widget/RestrictedPreference;

    const/4 v1, 0x0

    const/4 v3, 0x1

    if-ne p2, v0, :cond_15

    .line 538
    invoke-virtual {p0, v1}, Lcom/meizu/settings/SettingsPreferenceFragment;->showDialog(I)V

    return v3

    .line 540
    :cond_15
    iget-object v0, p0, Lcom/meizu/settings/language/FlymeLanguageAndDatetimeSettings;->mTimePref:Lcom/meizu/settings/widget/RestrictedPreference;

    if-ne p2, v0, :cond_20

    .line 542
    invoke-virtual {p0, v3}, Lcom/meizu/settings/SettingsPreferenceFragment;->removeDialog(I)V

    .line 543
    invoke-virtual {p0, v3}, Lcom/meizu/settings/SettingsPreferenceFragment;->showDialog(I)V

    return v3

    .line 545
    :cond_20
    iget-object v0, p0, Lcom/meizu/settings/language/FlymeLanguageAndDatetimeSettings;->mTime24Pref:Landroid/preference/Preference;

    if-ne p2, v0, :cond_38

    .line 546
    check-cast v0, Lcom/meizu/common/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result p1

    .line 547
    invoke-direct {p0, p1}, Lcom/meizu/settings/language/FlymeLanguageAndDatetimeSettings;->set24Hour(Z)V

    .line 548
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/meizu/settings/language/FlymeLanguageAndDatetimeSettings;->updateTimeAndDateDisplay(Landroid/content/Context;)V

    .line 549
    invoke-direct {p0, p1}, Lcom/meizu/settings/language/FlymeLanguageAndDatetimeSettings;->timeUpdated(Z)V

    return v3

    .line 551
    :cond_38
    iget-object v0, p0, Lcom/meizu/settings/language/FlymeLanguageAndDatetimeSettings;->mPasswordProtection:Lcom/meizu/common/preference/SwitchPreference;

    if-ne p2, v0, :cond_65

    .line 552
    invoke-virtual {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    .line 554
    iget-object p2, p0, Lcom/meizu/settings/language/FlymeLanguageAndDatetimeSettings;->mPasswordProtection:Lcom/meizu/common/preference/SwitchPreference;

    invoke-virtual {p2}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result p2

    if-eqz p2, :cond_4a

    move p2, v3

    goto :goto_4b

    :cond_4a
    move p2, v1

    :goto_4b
    const-string v0, "mz_safe_keyboard"

    .line 552
    invoke-static {p1, v0, p2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 555
    iget-object p1, p0, Lcom/meizu/settings/language/FlymeLanguageAndDatetimeSettings;->mPasswordProtection:Lcom/meizu/common/preference/SwitchPreference;

    invoke-virtual {p1}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_59

    move v1, v3

    .line 556
    :cond_59
    iget-object p0, p0, Lcom/meizu/settings/language/FlymeLanguageAndDatetimeSettings;->mUsageStatsProxy:Lcom/meizu/settings/datareport/UsageStatsProxy;

    .line 557
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "password_protect"

    .line 556
    invoke-virtual {p0, p2, v2, p1}, Lcom/meizu/settings/datareport/UsageStatsProxy;->reportData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v3

    .line 559
    :cond_65
    iget-object v0, p0, Lcom/meizu/settings/language/FlymeLanguageAndDatetimeSettings;->mAutoTimePref:Lcom/meizu/settings/widget/RestrictedSwitchPreference;

    if-ne p2, v0, :cond_b4

    .line 560
    invoke-virtual {v0}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v0

    .line 561
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    if-eqz v0, :cond_79

    move v4, v3

    goto :goto_7a

    :cond_79
    move v4, v1

    :goto_7a
    const-string v5, "auto_time"

    invoke-static {v2, v5, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 564
    iget-object v2, p0, Lcom/meizu/settings/language/FlymeLanguageAndDatetimeSettings;->mTimePref:Lcom/meizu/settings/widget/RestrictedPreference;

    if-nez v0, :cond_85

    move v4, v3

    goto :goto_86

    :cond_85
    move v4, v1

    :goto_86
    invoke-virtual {v2, v4}, Lcom/meizu/settings/widget/RestrictedPreference;->setEnabled(Z)V

    .line 565
    iget-object v2, p0, Lcom/meizu/settings/language/FlymeLanguageAndDatetimeSettings;->mDatePref:Lcom/meizu/settings/widget/RestrictedPreference;

    if-nez v0, :cond_8f

    move v4, v3

    goto :goto_90

    :cond_8f
    move v4, v1

    :goto_90
    invoke-virtual {v2, v4}, Lcom/meizu/settings/widget/RestrictedPreference;->setEnabled(Z)V

    .line 569
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    if-eqz v0, :cond_9f

    move v4, v3

    goto :goto_a0

    :cond_9f
    move v4, v1

    :goto_a0
    const-string v5, "auto_time_zone"

    .line 568
    invoke-static {v2, v5, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 571
    iget-object v2, p0, Lcom/meizu/settings/language/FlymeLanguageAndDatetimeSettings;->mTimeZone:Lcom/meizu/settings/widget/RestrictedPreference;

    if-nez v0, :cond_aa

    move v1, v3

    :cond_aa
    invoke-virtual {v2, v1}, Lcom/meizu/settings/widget/RestrictedPreference;->setEnabled(Z)V

    .line 573
    invoke-virtual {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/meizu/settings/language/FlymeLanguageAndDatetimeSettings;->setTimeChangeByUser(Landroid/content/Context;Z)V

    .line 575
    :cond_b4
    invoke-super {p0, p1, p2}, Lcom/meizu/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public onResume()V
    .registers 5

    .line 198
    invoke-direct {p0}, Lcom/meizu/settings/language/FlymeLanguageAndDatetimeSettings;->updateThirdInputMethod()V

    .line 199
    invoke-super {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;->onResume()V

    .line 201
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f120ac3

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(I)V

    .line 202
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/meizu/settings/language/FlymeLanguageAndDatetimeSettings;->getLocaleName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 203
    iget-object v1, p0, Lcom/meizu/settings/language/FlymeLanguageAndDatetimeSettings;->mLanguagePreference:Landroid/preference/Preference;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 205
    invoke-direct {p0}, Lcom/meizu/settings/language/FlymeLanguageAndDatetimeSettings;->getDefaultAutofillName()Ljava/lang/String;

    move-result-object v0

    .line 206
    iget-object v1, p0, Lcom/meizu/settings/language/FlymeLanguageAndDatetimeSettings;->mDefaultAutofill:Landroid/preference/Preference;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 208
    iget-object v0, p0, Lcom/meizu/settings/language/FlymeLanguageAndDatetimeSettings;->mTime24Pref:Landroid/preference/Preference;

    check-cast v0, Lcom/meizu/common/preference/SwitchPreference;

    invoke-direct {p0}, Lcom/meizu/settings/language/FlymeLanguageAndDatetimeSettings;->is24Hour()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/meizu/common/preference/SwitchPreference;->setChecked(Z)V

    .line 211
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.TIME_TICK"

    .line 212
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.TIME_SET"

    .line 213
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    .line 214
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 215
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/settings/language/FlymeLanguageAndDatetimeSettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 217
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/meizu/settings/language/FlymeLanguageAndDatetimeSettings;->updateTimeAndDateDisplay(Landroid/content/Context;)V

    .line 220
    iget-object v0, p0, Lcom/meizu/settings/language/FlymeLanguageAndDatetimeSettings;->mIm:Landroid/hardware/input/InputManager;

    invoke-virtual {v0, p0, v3}, Landroid/hardware/input/InputManager;->registerInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;Landroid/os/Handler;)V

    .line 221
    invoke-direct {p0}, Lcom/meizu/settings/language/FlymeLanguageAndDatetimeSettings;->updateInputDevices()V

    .line 224
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/meizu/settings/language/FlymeLanguageAndDatetimeSettings;->updateCountryPreference(Landroid/content/Context;)V

    .line 226
    invoke-direct {p0}, Lcom/meizu/settings/language/FlymeLanguageAndDatetimeSettings;->handlePreferenceInAntiAddictionMode()V

    return-void
.end method

.method public onStart()V
    .registers 3

    .line 181
    invoke-super {p0}, Lcom/meizu/settings/core/lifecycle/ObservablePreferenceFragment;->onStart()V

    .line 182
    iget-object v0, p0, Lcom/meizu/settings/language/FlymeLanguageAndDatetimeSettings;->mUsageStatsProxy:Lcom/meizu/settings/datareport/UsageStatsProxy;

    const-string v1, "FlymeLanguageAndDatetimeSettings"

    invoke-virtual {v0, v1}, Lcom/meizu/settings/datareport/UsageStatsProxy;->onPageStart(Ljava/lang/String;)V

    .line 184
    iget-boolean v0, p0, Lcom/meizu/settings/language/FlymeLanguageAndDatetimeSettings;->mNeedOverridePending:Z

    if-eqz v0, :cond_18

    .line 185
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/meizu/settings/utils/MzUtils;->setCloseAnimationToPreviousPage(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 186
    iput-boolean v0, p0, Lcom/meizu/settings/language/FlymeLanguageAndDatetimeSettings;->mNeedOverridePending:Z

    :cond_18
    return-void
.end method

.method public onStop()V
    .registers 2

    .line 192
    invoke-super {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;->onStop()V

    .line 193
    iget-object p0, p0, Lcom/meizu/settings/language/FlymeLanguageAndDatetimeSettings;->mUsageStatsProxy:Lcom/meizu/settings/datareport/UsageStatsProxy;

    const-string v0, "FlymeLanguageAndDatetimeSettings"

    invoke-virtual {p0, v0}, Lcom/meizu/settings/datareport/UsageStatsProxy;->onPageStop(Ljava/lang/String;)V

    return-void
.end method

.method public onTimeSet(Lcom/meizu/common/widget/TimePicker;II)V
    .registers 4

    .line 489
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    if-eqz p1, :cond_c

    .line 491
    invoke-direct {p0, p1, p2, p3}, Lcom/meizu/settings/language/FlymeLanguageAndDatetimeSettings;->setTime(Landroid/content/Context;II)V

    .line 492
    invoke-virtual {p0, p1}, Lcom/meizu/settings/language/FlymeLanguageAndDatetimeSettings;->updateTimeAndDateDisplay(Landroid/content/Context;)V

    :cond_c
    return-void
.end method

.method public updateTimeAndDateDisplay(Landroid/content/Context;)V
    .registers 12

    .line 691
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 692
    iget-object v1, p0, Lcom/meizu/settings/language/FlymeLanguageAndDatetimeSettings;->mDummyDate:Ljava/util/Calendar;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 695
    iget-object v3, p0, Lcom/meizu/settings/language/FlymeLanguageAndDatetimeSettings;->mDummyDate:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/16 v5, 0xb

    const/16 v6, 0x1f

    const/16 v7, 0xd

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v3 .. v9}, Ljava/util/Calendar;->set(IIIIII)V

    .line 696
    iget-object v2, p0, Lcom/meizu/settings/language/FlymeLanguageAndDatetimeSettings;->mDummyDate:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    .line 700
    iget-object v3, p0, Lcom/meizu/settings/language/FlymeLanguageAndDatetimeSettings;->mDatePref:Lcom/meizu/settings/widget/RestrictedPreference;

    invoke-static {p1}, Landroid/text/format/DateFormat;->getLongDateFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object p1

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 702
    iget-object p1, p0, Lcom/meizu/settings/language/FlymeLanguageAndDatetimeSettings;->mTimePref:Lcom/meizu/settings/widget/RestrictedPreference;

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v3

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 703
    iget-object p1, p0, Lcom/meizu/settings/language/FlymeLanguageAndDatetimeSettings;->mTimeZone:Lcom/meizu/settings/widget/RestrictedPreference;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/meizu/settings/language/FlymeLanguageAndDatetimeSettings;->getTimeZoneText(Ljava/util/TimeZone;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 704
    iget-object p1, p0, Lcom/meizu/settings/language/FlymeLanguageAndDatetimeSettings;->mTime24Pref:Landroid/preference/Preference;

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p0

    invoke-static {p0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object p0

    invoke-virtual {p0, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method
