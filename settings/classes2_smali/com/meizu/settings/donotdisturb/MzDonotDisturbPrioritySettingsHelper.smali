.class public Lcom/meizu/settings/donotdisturb/MzDonotDisturbPrioritySettingsHelper;
.super Ljava/lang/Object;
.source "MzDonotDisturbPrioritySettingsHelper.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mPolicy:Landroid/app/NotificationManager$Policy;

.field private mPriorityAlarm:Lcom/meizu/common/preference/SwitchPreference;

.field private mPriorityCall:Landroid/preference/ListPreference;

.field private mPriorityContact:Landroid/preference/Preference;

.field private mPrioritySms:Landroid/preference/ListPreference;

.field private mRepeatCall:Lcom/meizu/common/preference/SwitchPreference;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbPrioritySettingsHelper;->mContext:Landroid/content/Context;

    return-void
.end method

.method private getNewPriorityCategories(ZI)I
    .registers 3

    .line 128
    iget-object p0, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbPrioritySettingsHelper;->mPolicy:Landroid/app/NotificationManager$Policy;

    iget p0, p0, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    if-eqz p1, :cond_8

    or-int/2addr p0, p2

    goto :goto_a

    :cond_8
    not-int p1, p2

    and-int/2addr p0, p1

    :goto_a
    return p0
.end method

.method private isPriorityCategoryEnabled(I)Z
    .registers 2

    .line 124
    iget-object p0, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbPrioritySettingsHelper;->mPolicy:Landroid/app/NotificationManager$Policy;

    iget p0, p0, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    and-int/2addr p0, p1

    if-eqz p0, :cond_9

    const/4 p0, 0x1

    goto :goto_a

    :cond_9
    const/4 p0, 0x0

    :goto_a
    return p0
.end method

.method private savePolicy(IIII)V
    .registers 6

    .line 139
    new-instance v0, Landroid/app/NotificationManager$Policy;

    invoke-direct {v0, p1, p2, p3, p4}, Landroid/app/NotificationManager$Policy;-><init>(IIII)V

    iput-object v0, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbPrioritySettingsHelper;->mPolicy:Landroid/app/NotificationManager$Policy;

    .line 141
    iget-object p1, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbPrioritySettingsHelper;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object p1

    iget-object p0, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbPrioritySettingsHelper;->mPolicy:Landroid/app/NotificationManager$Policy;

    invoke-virtual {p1, p0}, Landroid/app/NotificationManager;->setNotificationPolicy(Landroid/app/NotificationManager$Policy;)V

    return-void
.end method

.method private updatePreference()V
    .registers 4

    .line 62
    iget-object v0, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbPrioritySettingsHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/NotificationManager;->getNotificationPolicy()Landroid/app/NotificationManager$Policy;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbPrioritySettingsHelper;->mPolicy:Landroid/app/NotificationManager$Policy;

    .line 64
    iget-object v0, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbPrioritySettingsHelper;->mPriorityAlarm:Lcom/meizu/common/preference/SwitchPreference;

    const/16 v1, 0x20

    .line 65
    invoke-direct {p0, v1}, Lcom/meizu/settings/donotdisturb/MzDonotDisturbPrioritySettingsHelper;->isPriorityCategoryEnabled(I)Z

    move-result v1

    .line 64
    invoke-virtual {v0, v1}, Lcom/meizu/common/preference/SwitchPreference;->setChecked(Z)V

    const/4 v0, 0x4

    .line 67
    invoke-direct {p0, v0}, Lcom/meizu/settings/donotdisturb/MzDonotDisturbPrioritySettingsHelper;->isPriorityCategoryEnabled(I)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_24

    .line 68
    iget-object v0, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbPrioritySettingsHelper;->mPolicy:Landroid/app/NotificationManager$Policy;

    iget v0, v0, Landroid/app/NotificationManager$Policy;->priorityMessageSenders:I

    goto :goto_25

    :cond_24
    move v0, v1

    .line 69
    :goto_25
    iget-object v2, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbPrioritySettingsHelper;->mPrioritySms:Landroid/preference/ListPreference;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 70
    iget-object v0, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbPrioritySettingsHelper;->mPrioritySms:Landroid/preference/ListPreference;

    invoke-virtual {v0}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    const/16 v0, 0x8

    .line 72
    invoke-direct {p0, v0}, Lcom/meizu/settings/donotdisturb/MzDonotDisturbPrioritySettingsHelper;->isPriorityCategoryEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_43

    .line 73
    iget-object v0, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbPrioritySettingsHelper;->mPolicy:Landroid/app/NotificationManager$Policy;

    iget v1, v0, Landroid/app/NotificationManager$Policy;->priorityCallSenders:I

    .line 74
    :cond_43
    iget-object v0, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbPrioritySettingsHelper;->mPriorityCall:Landroid/preference/ListPreference;

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 75
    iget-object v0, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbPrioritySettingsHelper;->mPriorityCall:Landroid/preference/ListPreference;

    invoke-virtual {v0}, Landroid/preference/ListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 76
    iget-object v0, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbPrioritySettingsHelper;->mPriorityContact:Landroid/preference/Preference;

    const/16 v2, 0x64

    if-ne v1, v2, :cond_5d

    const/4 v1, 0x1

    goto :goto_5e

    :cond_5d
    const/4 v1, 0x0

    .line 77
    :goto_5e
    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 79
    iget-object v0, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbPrioritySettingsHelper;->mRepeatCall:Lcom/meizu/common/preference/SwitchPreference;

    const/16 v1, 0x10

    .line 80
    invoke-direct {p0, v1}, Lcom/meizu/settings/donotdisturb/MzDonotDisturbPrioritySettingsHelper;->isPriorityCategoryEnabled(I)Z

    move-result p0

    .line 79
    invoke-virtual {v0, p0}, Lcom/meizu/common/preference/SwitchPreference;->setChecked(Z)V

    return-void
.end method


# virtual methods
.method public initPreferences(Landroid/preference/PreferenceScreen;Landroid/preference/Preference$OnPreferenceChangeListener;)V
    .registers 4

    const-string v0, "dnd_priority_alarms"

    .line 42
    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/meizu/common/preference/SwitchPreference;

    iput-object v0, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbPrioritySettingsHelper;->mPriorityAlarm:Lcom/meizu/common/preference/SwitchPreference;

    .line 43
    iget-object v0, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbPrioritySettingsHelper;->mPriorityAlarm:Lcom/meizu/common/preference/SwitchPreference;

    invoke-virtual {v0, p2}, Landroid/preference/TwoStatePreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string v0, "dnd_priority_sms"

    .line 45
    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbPrioritySettingsHelper;->mPrioritySms:Landroid/preference/ListPreference;

    .line 46
    iget-object v0, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbPrioritySettingsHelper;->mPrioritySms:Landroid/preference/ListPreference;

    invoke-virtual {v0, p2}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string v0, "dnd_priority_call"

    .line 48
    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/ListPreference;

    iput-object v0, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbPrioritySettingsHelper;->mPriorityCall:Landroid/preference/ListPreference;

    .line 49
    iget-object v0, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbPrioritySettingsHelper;->mPriorityCall:Landroid/preference/ListPreference;

    invoke-virtual {v0, p2}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string v0, "dnd_priority_contact"

    .line 50
    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbPrioritySettingsHelper;->mPriorityContact:Landroid/preference/Preference;

    const-string v0, "dnd_priority_repeat_call"

    .line 52
    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/meizu/common/preference/SwitchPreference;

    iput-object p1, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbPrioritySettingsHelper;->mRepeatCall:Lcom/meizu/common/preference/SwitchPreference;

    .line 53
    iget-object p0, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbPrioritySettingsHelper;->mRepeatCall:Lcom/meizu/common/preference/SwitchPreference;

    invoke-virtual {p0, p2}, Landroid/preference/TwoStatePreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .registers 7

    .line 85
    iget-object v0, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbPrioritySettingsHelper;->mPrioritySms:Landroid/preference/ListPreference;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-eqz v0, :cond_29

    .line 86
    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    if-eq p1, v2, :cond_14

    move v1, v3

    :cond_14
    if-ne p1, v2, :cond_1a

    .line 88
    iget-object p1, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbPrioritySettingsHelper;->mPolicy:Landroid/app/NotificationManager$Policy;

    iget p1, p1, Landroid/app/NotificationManager$Policy;->priorityMessageSenders:I

    :cond_1a
    const/4 p2, 0x4

    .line 90
    invoke-direct {p0, v1, p2}, Lcom/meizu/settings/donotdisturb/MzDonotDisturbPrioritySettingsHelper;->getNewPriorityCategories(ZI)I

    move-result p2

    iget-object v0, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbPrioritySettingsHelper;->mPolicy:Landroid/app/NotificationManager$Policy;

    iget v1, v0, Landroid/app/NotificationManager$Policy;->priorityCallSenders:I

    iget v0, v0, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    .line 89
    invoke-direct {p0, p2, v1, p1, v0}, Lcom/meizu/settings/donotdisturb/MzDonotDisturbPrioritySettingsHelper;->savePolicy(IIII)V

    goto :goto_91

    .line 94
    :cond_29
    iget-object v0, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbPrioritySettingsHelper;->mPriorityCall:Landroid/preference/ListPreference;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_50

    .line 95
    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    if-eq p1, v2, :cond_3a

    move v1, v3

    :cond_3a
    if-ne p1, v2, :cond_40

    .line 97
    iget-object p1, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbPrioritySettingsHelper;->mPolicy:Landroid/app/NotificationManager$Policy;

    iget p1, p1, Landroid/app/NotificationManager$Policy;->priorityCallSenders:I

    :cond_40
    const/16 p2, 0x8

    .line 98
    invoke-direct {p0, v1, p2}, Lcom/meizu/settings/donotdisturb/MzDonotDisturbPrioritySettingsHelper;->getNewPriorityCategories(ZI)I

    move-result p2

    iget-object v0, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbPrioritySettingsHelper;->mPolicy:Landroid/app/NotificationManager$Policy;

    iget v1, v0, Landroid/app/NotificationManager$Policy;->priorityMessageSenders:I

    iget v0, v0, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    invoke-direct {p0, p2, p1, v1, v0}, Lcom/meizu/settings/donotdisturb/MzDonotDisturbPrioritySettingsHelper;->savePolicy(IIII)V

    goto :goto_91

    .line 102
    :cond_50
    iget-object v0, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbPrioritySettingsHelper;->mRepeatCall:Lcom/meizu/common/preference/SwitchPreference;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_70

    .line 103
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/16 p2, 0x10

    .line 104
    invoke-direct {p0, p1, p2}, Lcom/meizu/settings/donotdisturb/MzDonotDisturbPrioritySettingsHelper;->getNewPriorityCategories(ZI)I

    move-result p1

    .line 106
    iget-object p2, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbPrioritySettingsHelper;->mPolicy:Landroid/app/NotificationManager$Policy;

    iget v0, p2, Landroid/app/NotificationManager$Policy;->priorityCallSenders:I

    iget v1, p2, Landroid/app/NotificationManager$Policy;->priorityMessageSenders:I

    iget p2, p2, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/meizu/settings/donotdisturb/MzDonotDisturbPrioritySettingsHelper;->savePolicy(IIII)V

    goto :goto_91

    .line 109
    :cond_70
    iget-object v0, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbPrioritySettingsHelper;->mPriorityAlarm:Lcom/meizu/common/preference/SwitchPreference;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_90

    .line 110
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/16 p2, 0x20

    .line 111
    invoke-direct {p0, p1, p2}, Lcom/meizu/settings/donotdisturb/MzDonotDisturbPrioritySettingsHelper;->getNewPriorityCategories(ZI)I

    move-result p1

    .line 113
    iget-object p2, p0, Lcom/meizu/settings/donotdisturb/MzDonotDisturbPrioritySettingsHelper;->mPolicy:Landroid/app/NotificationManager$Policy;

    iget v0, p2, Landroid/app/NotificationManager$Policy;->priorityCallSenders:I

    iget v1, p2, Landroid/app/NotificationManager$Policy;->priorityMessageSenders:I

    iget p2, p2, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/meizu/settings/donotdisturb/MzDonotDisturbPrioritySettingsHelper;->savePolicy(IIII)V

    goto :goto_91

    :cond_90
    move v3, v1

    :goto_91
    if-eqz v3, :cond_96

    .line 118
    invoke-direct {p0}, Lcom/meizu/settings/donotdisturb/MzDonotDisturbPrioritySettingsHelper;->updatePreference()V

    :cond_96
    return v3
.end method

.method public onResume()V
    .registers 1

    .line 58
    invoke-direct {p0}, Lcom/meizu/settings/donotdisturb/MzDonotDisturbPrioritySettingsHelper;->updatePreference()V

    return-void
.end method
