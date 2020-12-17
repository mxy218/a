.class public Lcom/meizu/settings/accessibility/FlymeSmartTouchFragment;
.super Lcom/meizu/settings/SettingsPreferenceFragment;
.source "FlymeSmartTouchFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mClickListPreference:Landroid/preference/ListPreference;

.field private mDoubleClickListPreference:Landroid/preference/ListPreference;

.field private mDownListPreference:Landroid/preference/ListPreference;

.field private mLeftRightListPreference:Landroid/preference/ListPreference;

.field private mLongListPreference:Landroid/preference/ListPreference;

.field private mObserver:Landroid/database/ContentObserver;

.field private mOpacitySeekbarPreference:Lcom/meizu/settings/widget/SeekBarPreference;

.field private mPreferenceCategory:Landroid/preference/PreferenceCategory;

.field private mResolver:Landroid/content/ContentResolver;

.field private mSmartTouchSwitch:Lcom/meizu/common/preference/SwitchPreference;

.field private mUpListPreference:Landroid/preference/ListPreference;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 22
    invoke-direct {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;-><init>()V

    .line 46
    new-instance v0, Lcom/meizu/settings/accessibility/FlymeSmartTouchFragment$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/meizu/settings/accessibility/FlymeSmartTouchFragment$1;-><init>(Lcom/meizu/settings/accessibility/FlymeSmartTouchFragment;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/meizu/settings/accessibility/FlymeSmartTouchFragment;->mObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/meizu/settings/accessibility/FlymeSmartTouchFragment;)Landroid/content/ContentResolver;
    .registers 1

    .line 22
    iget-object p0, p0, Lcom/meizu/settings/accessibility/FlymeSmartTouchFragment;->mResolver:Landroid/content/ContentResolver;

    return-object p0
.end method

.method static synthetic access$100(Lcom/meizu/settings/accessibility/FlymeSmartTouchFragment;)Lcom/meizu/common/preference/SwitchPreference;
    .registers 1

    .line 22
    iget-object p0, p0, Lcom/meizu/settings/accessibility/FlymeSmartTouchFragment;->mSmartTouchSwitch:Lcom/meizu/common/preference/SwitchPreference;

    return-object p0
.end method

.method static synthetic access$200(Lcom/meizu/settings/accessibility/FlymeSmartTouchFragment;)V
    .registers 1

    .line 22
    invoke-direct {p0}, Lcom/meizu/settings/accessibility/FlymeSmartTouchFragment;->updateBehavior()V

    return-void
.end method

.method static synthetic access$300(Lcom/meizu/settings/accessibility/FlymeSmartTouchFragment;)V
    .registers 1

    .line 22
    invoke-direct {p0}, Lcom/meizu/settings/accessibility/FlymeSmartTouchFragment;->notifySmartTouchChange()V

    return-void
.end method

.method private getOpactityString(I)Ljava/lang/String;
    .registers 6

    int-to-double v0, p1

    const-wide/high16 v2, 0x3ff0000000000000L  # 1.0

    mul-double/2addr v0, v2

    const-wide v2, 0x406fe00000000000L  # 255.0

    div-double/2addr v0, v2

    const-wide/high16 v2, 0x4059000000000000L  # 100.0

    mul-double/2addr v0, v2

    double-to-int p1, v0

    .line 130
    invoke-static {p1}, Lcom/android/settingslib/Utils;->formatPercentage(I)Ljava/lang/String;

    move-result-object p1

    .line 131
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const p1, 0x7f12144f

    invoke-virtual {p0, p1, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final notifySmartTouchChange()V
    .registers 4

    .line 168
    iget-object p0, p0, Lcom/meizu/settings/accessibility/FlymeSmartTouchFragment;->mResolver:Landroid/content/ContentResolver;

    const/4 v0, 0x0

    const-string v1, "mz_smart_touch_change"

    .line 170
    invoke-static {p0, v1, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_c

    const/4 v0, 0x1

    .line 168
    :cond_c
    invoke-static {p0, v1, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method private final updateBehavior()V
    .registers 3

    .line 176
    iget-object v0, p0, Lcom/meizu/settings/accessibility/FlymeSmartTouchFragment;->mOpacitySeekbarPreference:Lcom/meizu/settings/widget/SeekBarPreference;

    iget-object v1, p0, Lcom/meizu/settings/accessibility/FlymeSmartTouchFragment;->mSmartTouchSwitch:Lcom/meizu/common/preference/SwitchPreference;

    invoke-virtual {v1}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 177
    iget-object v0, p0, Lcom/meizu/settings/accessibility/FlymeSmartTouchFragment;->mPreferenceCategory:Landroid/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/meizu/settings/accessibility/FlymeSmartTouchFragment;->mSmartTouchSwitch:Lcom/meizu/common/preference/SwitchPreference;

    invoke-virtual {v1}, Landroid/preference/TwoStatePreference;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->setEnabled(Z)V

    .line 178
    iget-object v0, p0, Lcom/meizu/settings/accessibility/FlymeSmartTouchFragment;->mClickListPreference:Landroid/preference/ListPreference;

    invoke-virtual {v0}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 179
    iget-object v0, p0, Lcom/meizu/settings/accessibility/FlymeSmartTouchFragment;->mDoubleClickListPreference:Landroid/preference/ListPreference;

    invoke-virtual {v0}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 180
    iget-object v0, p0, Lcom/meizu/settings/accessibility/FlymeSmartTouchFragment;->mLongListPreference:Landroid/preference/ListPreference;

    invoke-virtual {v0}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 181
    iget-object v0, p0, Lcom/meizu/settings/accessibility/FlymeSmartTouchFragment;->mUpListPreference:Landroid/preference/ListPreference;

    invoke-virtual {v0}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 182
    iget-object v0, p0, Lcom/meizu/settings/accessibility/FlymeSmartTouchFragment;->mDownListPreference:Landroid/preference/ListPreference;

    invoke-virtual {v0}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 183
    iget-object p0, p0, Lcom/meizu/settings/accessibility/FlymeSmartTouchFragment;->mLeftRightListPreference:Landroid/preference/ListPreference;

    invoke-virtual {p0}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 13

    .line 61
    invoke-super {p0, p1}, Lcom/meizu/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f16008f

    .line 62
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    const-string p1, "mz_smart_touch_switch"

    .line 64
    invoke-virtual {p0, p1}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/meizu/common/preference/SwitchPreference;

    iput-object v0, p0, Lcom/meizu/settings/accessibility/FlymeSmartTouchFragment;->mSmartTouchSwitch:Lcom/meizu/common/preference/SwitchPreference;

    .line 65
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/meizu/settings/utils/MzUtils;->isPowerSuperSavingMode(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_23

    .line 66
    iget-object v0, p0, Lcom/meizu/settings/accessibility/FlymeSmartTouchFragment;->mSmartTouchSwitch:Lcom/meizu/common/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/TwoStatePreference;->setEnabled(Z)V

    :cond_23
    const-string/jumbo v0, "smart_touch_opacity"

    .line 68
    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/meizu/settings/widget/SeekBarPreference;

    iput-object v0, p0, Lcom/meizu/settings/accessibility/FlymeSmartTouchFragment;->mOpacitySeekbarPreference:Lcom/meizu/settings/widget/SeekBarPreference;

    const-string v0, "category"

    .line 69
    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/meizu/settings/accessibility/FlymeSmartTouchFragment;->mPreferenceCategory:Landroid/preference/PreferenceCategory;

    const-string v0, "mz_smart_touch_behavior_click"

    .line 70
    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/ListPreference;

    iput-object v2, p0, Lcom/meizu/settings/accessibility/FlymeSmartTouchFragment;->mClickListPreference:Landroid/preference/ListPreference;

    const-string v2, "mz_smart_touch_behavior_doubleclick"

    .line 71
    invoke-virtual {p0, v2}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/ListPreference;

    iput-object v3, p0, Lcom/meizu/settings/accessibility/FlymeSmartTouchFragment;->mDoubleClickListPreference:Landroid/preference/ListPreference;

    const-string v3, "mz_smart_touch_behavior_long"

    .line 72
    invoke-virtual {p0, v3}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/ListPreference;

    iput-object v4, p0, Lcom/meizu/settings/accessibility/FlymeSmartTouchFragment;->mLongListPreference:Landroid/preference/ListPreference;

    const-string v4, "mz_smart_touch_behavior_up"

    .line 73
    invoke-virtual {p0, v4}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v5

    check-cast v5, Landroid/preference/ListPreference;

    iput-object v5, p0, Lcom/meizu/settings/accessibility/FlymeSmartTouchFragment;->mUpListPreference:Landroid/preference/ListPreference;

    const-string v5, "mz_smart_touch_behavior_down"

    .line 74
    invoke-virtual {p0, v5}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v6

    check-cast v6, Landroid/preference/ListPreference;

    iput-object v6, p0, Lcom/meizu/settings/accessibility/FlymeSmartTouchFragment;->mDownListPreference:Landroid/preference/ListPreference;

    const-string v6, "mz_smart_touch_behavior_leftright"

    .line 75
    invoke-virtual {p0, v6}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    check-cast v7, Landroid/preference/ListPreference;

    iput-object v7, p0, Lcom/meizu/settings/accessibility/FlymeSmartTouchFragment;->mLeftRightListPreference:Landroid/preference/ListPreference;

    .line 76
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    iput-object v7, p0, Lcom/meizu/settings/accessibility/FlymeSmartTouchFragment;->mResolver:Landroid/content/ContentResolver;

    .line 78
    iget-object v7, p0, Lcom/meizu/settings/accessibility/FlymeSmartTouchFragment;->mOpacitySeekbarPreference:Lcom/meizu/settings/widget/SeekBarPreference;

    const/16 v8, 0xff

    invoke-virtual {v7, v8}, Lcom/meizu/settings/widget/SeekBarPreference;->setMax(I)V

    .line 79
    iget-object v7, p0, Lcom/meizu/settings/accessibility/FlymeSmartTouchFragment;->mResolver:Landroid/content/ContentResolver;

    const-string v9, "animation_brightness"

    .line 80
    invoke-static {v7, v9, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    const-string v10, "mz_smart_touch_behavior_alpha"

    .line 79
    invoke-static {v7, v10, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    sub-int/2addr v8, v7

    .line 83
    iget-object v7, p0, Lcom/meizu/settings/accessibility/FlymeSmartTouchFragment;->mOpacitySeekbarPreference:Lcom/meizu/settings/widget/SeekBarPreference;

    invoke-virtual {v7, v8}, Lcom/meizu/settings/widget/SeekBarPreference;->setProgress(I)V

    .line 84
    iget-object v7, p0, Lcom/meizu/settings/accessibility/FlymeSmartTouchFragment;->mOpacitySeekbarPreference:Lcom/meizu/settings/widget/SeekBarPreference;

    invoke-direct {p0, v8}, Lcom/meizu/settings/accessibility/FlymeSmartTouchFragment;->getOpactityString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 85
    iget-object v7, p0, Lcom/meizu/settings/accessibility/FlymeSmartTouchFragment;->mOpacitySeekbarPreference:Lcom/meizu/settings/widget/SeekBarPreference;

    invoke-virtual {v7, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 87
    iget-object v7, p0, Lcom/meizu/settings/accessibility/FlymeSmartTouchFragment;->mClickListPreference:Landroid/preference/ListPreference;

    iget-object v8, p0, Lcom/meizu/settings/accessibility/FlymeSmartTouchFragment;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v8, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 89
    iget-object v0, p0, Lcom/meizu/settings/accessibility/FlymeSmartTouchFragment;->mDoubleClickListPreference:Landroid/preference/ListPreference;

    iget-object v7, p0, Lcom/meizu/settings/accessibility/FlymeSmartTouchFragment;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v7, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 91
    iget-object v0, p0, Lcom/meizu/settings/accessibility/FlymeSmartTouchFragment;->mLongListPreference:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/meizu/settings/accessibility/FlymeSmartTouchFragment;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 93
    iget-object v0, p0, Lcom/meizu/settings/accessibility/FlymeSmartTouchFragment;->mUpListPreference:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/meizu/settings/accessibility/FlymeSmartTouchFragment;->mResolver:Landroid/content/ContentResolver;

    const/4 v3, 0x3

    invoke-static {v2, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 95
    iget-object v0, p0, Lcom/meizu/settings/accessibility/FlymeSmartTouchFragment;->mDownListPreference:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/meizu/settings/accessibility/FlymeSmartTouchFragment;->mResolver:Landroid/content/ContentResolver;

    const/4 v3, 0x1

    invoke-static {v2, v5, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 97
    iget-object v0, p0, Lcom/meizu/settings/accessibility/FlymeSmartTouchFragment;->mLeftRightListPreference:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/meizu/settings/accessibility/FlymeSmartTouchFragment;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v2, v6, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 100
    iget-object v0, p0, Lcom/meizu/settings/accessibility/FlymeSmartTouchFragment;->mSmartTouchSwitch:Lcom/meizu/common/preference/SwitchPreference;

    iget-object v2, p0, Lcom/meizu/settings/accessibility/FlymeSmartTouchFragment;->mResolver:Landroid/content/ContentResolver;

    invoke-static {v2, p1, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_10e

    goto :goto_10f

    :cond_10e
    move v3, v1

    :goto_10f
    invoke-virtual {v0, v3}, Lcom/meizu/common/preference/SwitchPreference;->setChecked(Z)V

    .line 102
    iget-object v0, p0, Lcom/meizu/settings/accessibility/FlymeSmartTouchFragment;->mSmartTouchSwitch:Lcom/meizu/common/preference/SwitchPreference;

    new-instance v2, Lcom/meizu/settings/accessibility/FlymeSmartTouchFragment$2;

    invoke-direct {v2, p0}, Lcom/meizu/settings/accessibility/FlymeSmartTouchFragment$2;-><init>(Lcom/meizu/settings/accessibility/FlymeSmartTouchFragment;)V

    .line 103
    invoke-virtual {v0, v2}, Landroid/preference/TwoStatePreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 116
    iget-object v0, p0, Lcom/meizu/settings/accessibility/FlymeSmartTouchFragment;->mClickListPreference:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 117
    iget-object v0, p0, Lcom/meizu/settings/accessibility/FlymeSmartTouchFragment;->mDoubleClickListPreference:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 118
    iget-object v0, p0, Lcom/meizu/settings/accessibility/FlymeSmartTouchFragment;->mLongListPreference:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 119
    iget-object v0, p0, Lcom/meizu/settings/accessibility/FlymeSmartTouchFragment;->mUpListPreference:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 120
    iget-object v0, p0, Lcom/meizu/settings/accessibility/FlymeSmartTouchFragment;->mDownListPreference:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 121
    iget-object v0, p0, Lcom/meizu/settings/accessibility/FlymeSmartTouchFragment;->mLeftRightListPreference:Landroid/preference/ListPreference;

    invoke-virtual {v0, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 123
    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 124
    iget-object v0, p0, Lcom/meizu/settings/accessibility/FlymeSmartTouchFragment;->mResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/meizu/settings/accessibility/FlymeSmartTouchFragment;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 126
    invoke-direct {p0}, Lcom/meizu/settings/accessibility/FlymeSmartTouchFragment;->updateBehavior()V

    return-void
.end method

.method public onDestroy()V
    .registers 2

    .line 136
    invoke-super {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;->onDestroy()V

    .line 137
    iget-object v0, p0, Lcom/meizu/settings/accessibility/FlymeSmartTouchFragment;->mResolver:Landroid/content/ContentResolver;

    iget-object p0, p0, Lcom/meizu/settings/accessibility/FlymeSmartTouchFragment;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .registers 5

    .line 142
    instance-of v0, p1, Landroid/preference/ListPreference;

    const/4 v1, 0x1

    if-eqz v0, :cond_2d

    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_2d

    .line 143
    move-object v0, p1

    check-cast v0, Landroid/preference/ListPreference;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v0, p2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 144
    iget-object p2, p0, Lcom/meizu/settings/accessibility/FlymeSmartTouchFragment;->mResolver:Landroid/content/ContentResolver;

    .line 145
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 144
    invoke-static {p2, p1, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 146
    invoke-direct {p0}, Lcom/meizu/settings/accessibility/FlymeSmartTouchFragment;->updateBehavior()V

    .line 147
    invoke-direct {p0}, Lcom/meizu/settings/accessibility/FlymeSmartTouchFragment;->notifySmartTouchChange()V

    return v1

    .line 150
    :cond_2d
    iget-object v0, p0, Lcom/meizu/settings/accessibility/FlymeSmartTouchFragment;->mOpacitySeekbarPreference:Lcom/meizu/settings/widget/SeekBarPreference;

    if-ne p1, v0, :cond_56

    instance-of p1, p2, Ljava/lang/Integer;

    if-eqz p1, :cond_56

    .line 151
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 152
    iget-object p2, p0, Lcom/meizu/settings/accessibility/FlymeSmartTouchFragment;->mOpacitySeekbarPreference:Lcom/meizu/settings/widget/SeekBarPreference;

    invoke-direct {p0, p1}, Lcom/meizu/settings/accessibility/FlymeSmartTouchFragment;->getOpactityString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 153
    iget-object p2, p0, Lcom/meizu/settings/accessibility/FlymeSmartTouchFragment;->mOpacitySeekbarPreference:Lcom/meizu/settings/widget/SeekBarPreference;

    invoke-virtual {p2, p1}, Lcom/meizu/settings/widget/SeekBarPreference;->setProgress(I)V

    rsub-int p1, p1, 0xff

    .line 155
    iget-object p2, p0, Lcom/meizu/settings/accessibility/FlymeSmartTouchFragment;->mResolver:Landroid/content/ContentResolver;

    const-string v0, "mz_smart_touch_behavior_alpha"

    invoke-static {p2, v0, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 158
    invoke-direct {p0}, Lcom/meizu/settings/accessibility/FlymeSmartTouchFragment;->notifySmartTouchChange()V

    return v1

    :cond_56
    const/4 p0, 0x0

    return p0
.end method
