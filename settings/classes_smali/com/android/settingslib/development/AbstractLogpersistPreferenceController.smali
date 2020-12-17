.class public abstract Lcom/android/settingslib/development/AbstractLogpersistPreferenceController;
.super Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;
.source "AbstractLogpersistPreferenceController.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnCreate;
.implements Lcom/android/settingslib/core/lifecycle/events/OnDestroy;
.implements Lcom/android/settingslib/core/ConfirmationDialogController;


# static fields
.field static final ACTUAL_LOGPERSIST_PROPERTY:Ljava/lang/String; = "logd.logpersistd"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final ACTUAL_LOGPERSIST_PROPERTY_BUFFER:Ljava/lang/String; = "logd.logpersistd.buffer"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final SELECT_LOGPERSIST_PROPERTY_SERVICE:Ljava/lang/String; = "logcatd"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field private mLogpersist:Landroidx/preference/ListPreference;

.field private mLogpersistCleared:Z

.field private final mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .registers 3

    .line 71
    invoke-direct {p0, p1}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;-><init>(Landroid/content/Context;)V

    .line 61
    new-instance p1, Lcom/android/settingslib/development/AbstractLogpersistPreferenceController$1;

    invoke-direct {p1, p0}, Lcom/android/settingslib/development/AbstractLogpersistPreferenceController$1;-><init>(Lcom/android/settingslib/development/AbstractLogpersistPreferenceController;)V

    iput-object p1, p0, Lcom/android/settingslib/development/AbstractLogpersistPreferenceController;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 72
    invoke-virtual {p0}, Lcom/android/settingslib/development/AbstractLogpersistPreferenceController;->isAvailable()Z

    move-result p1

    if-eqz p1, :cond_15

    if-eqz p2, :cond_15

    .line 73
    invoke-virtual {p2, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    :cond_15
    return-void
.end method

.method static synthetic access$000(Lcom/android/settingslib/development/AbstractLogpersistPreferenceController;Ljava/lang/String;)V
    .registers 2

    .line 40
    invoke-direct {p0, p1}, Lcom/android/settingslib/development/AbstractLogpersistPreferenceController;->onLogdSizeSettingUpdate(Ljava/lang/String;)V

    return-void
.end method

.method private onLogdSizeSettingUpdate(Ljava/lang/String;)V
    .registers 5

    .line 123
    iget-object v0, p0, Lcom/android/settingslib/development/AbstractLogpersistPreferenceController;->mLogpersist:Landroidx/preference/ListPreference;

    if-eqz v0, :cond_37

    const-string v0, "logd.logpersistd.enable"

    .line 125
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2d

    const-string/jumbo v2, "true"

    .line 127
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    const-string v0, "32768"

    .line 128
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1f

    goto :goto_2d

    .line 132
    :cond_1f
    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/settingslib/development/DevelopmentSettingsEnabler;->isDevelopmentSettingsEnabled(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_37

    .line 133
    iget-object p0, p0, Lcom/android/settingslib/development/AbstractLogpersistPreferenceController;->mLogpersist:Landroidx/preference/ListPreference;

    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_37

    :cond_2d
    :goto_2d
    const/4 p1, 0x0

    .line 130
    invoke-virtual {p0, p1, v1}, Lcom/android/settingslib/development/AbstractLogpersistPreferenceController;->writeLogpersistOption(Ljava/lang/Object;Z)V

    .line 131
    iget-object p0, p0, Lcom/android/settingslib/development/AbstractLogpersistPreferenceController;->mLogpersist:Landroidx/preference/ListPreference;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_37
    :goto_37
    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .registers 3

    .line 89
    invoke-super {p0, p1}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 90
    invoke-virtual {p0}, Lcom/android/settingslib/development/AbstractLogpersistPreferenceController;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_14

    const-string/jumbo v0, "select_logpersist"

    .line 91
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/ListPreference;

    iput-object p1, p0, Lcom/android/settingslib/development/AbstractLogpersistPreferenceController;->mLogpersist:Landroidx/preference/ListPreference;

    :cond_14
    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .registers 1

    const-string/jumbo p0, "select_logpersist"

    return-object p0
.end method

.method public isAvailable()Z
    .registers 2

    const-string/jumbo p0, "ro.debuggable"

    const-string v0, "0"

    .line 79
    invoke-static {p0, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "1"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4

    .line 107
    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settingslib/development/AbstractLogpersistPreferenceController;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.android.settingslib.development.AbstractLogdSizePreferenceController.LOGD_SIZE_UPDATED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method

.method public onDestroy()V
    .registers 2

    .line 113
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settingslib/development/AbstractLogpersistPreferenceController;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .registers 5

    .line 97
    iget-object v0, p0, Lcom/android/settingslib/development/AbstractLogpersistPreferenceController;->mLogpersist:Landroidx/preference/ListPreference;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_a

    .line 98
    invoke-virtual {p0, p2, v1}, Lcom/android/settingslib/development/AbstractLogpersistPreferenceController;->writeLogpersistOption(Ljava/lang/Object;Z)V

    const/4 p0, 0x1

    return p0

    :cond_a
    return v1
.end method

.method protected setLogpersistOff(Z)V
    .registers 7

    const-string v0, ""

    const-string/jumbo v1, "persist.logd.logpersistd.buffer"

    .line 186
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "logd.logpersistd.buffer"

    .line 188
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "persist.logd.logpersistd"

    .line 189
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_17

    move-object v1, v0

    goto :goto_1a

    :cond_17
    const-string/jumbo v1, "stop"

    :goto_1a
    const-string v2, "logd.logpersistd"

    .line 190
    invoke-static {v2, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    invoke-static {}, Lcom/android/settingslib/development/SystemPropPoker;->getInstance()Lcom/android/settingslib/development/SystemPropPoker;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settingslib/development/SystemPropPoker;->poke()V

    if-eqz p1, :cond_2c

    .line 194
    invoke-virtual {p0}, Lcom/android/settingslib/development/AbstractLogpersistPreferenceController;->updateLogpersistValues()V

    goto :goto_45

    :cond_2c
    const/4 p0, 0x0

    :goto_2d
    const/4 p1, 0x3

    if-ge p0, p1, :cond_45

    .line 197
    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_45

    .line 198
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3d

    goto :goto_45

    :cond_3d
    const-wide/16 v3, 0x64

    .line 202
    :try_start_3f
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_42
    .catch Ljava/lang/InterruptedException; {:try_start_3f .. :try_end_42} :catch_42

    :catch_42
    add-int/lit8 p0, p0, 0x1

    goto :goto_2d

    :cond_45
    :goto_45
    return-void
.end method

.method public updateLogpersistValues()V
    .registers 10

    .line 139
    iget-object v0, p0, Lcom/android/settingslib/development/AbstractLogpersistPreferenceController;->mLogpersist:Landroidx/preference/ListPreference;

    if-nez v0, :cond_5

    return-void

    :cond_5
    const-string v0, "logd.logpersistd"

    .line 142
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_f

    const-string v1, ""

    :cond_f
    const-string v2, "logd.logpersistd.buffer"

    .line 146
    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "all"

    if-eqz v2, :cond_1f

    .line 147
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_20

    :cond_1f
    move-object v2, v3

    :cond_20
    const-string v4, "logcatd"

    .line 151
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v1, :cond_7a

    const-string v1, "kernel"

    .line 153
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_34

    const/4 v1, 0x3

    goto :goto_7b

    .line 155
    :cond_34
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_78

    const-string/jumbo v3, "radio"

    .line 156
    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_78

    const-string/jumbo v3, "security"

    .line 157
    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_78

    .line 158
    invoke-virtual {v2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_78

    const/4 v1, 0x2

    const-string v3, "default"

    .line 160
    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_7b

    const-string v3, "main"

    const-string v6, "events"

    const-string/jumbo v7, "system"

    const-string v8, "crash"

    .line 161
    filled-new-array {v3, v6, v7, v8}, [Ljava/lang/String;

    move-result-object v3

    .line 162
    array-length v6, v3

    move v7, v4

    :goto_6a
    if-ge v7, v6, :cond_7b

    aget-object v8, v3, v7

    .line 163
    invoke-virtual {v2, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_75

    goto :goto_78

    :cond_75
    add-int/lit8 v7, v7, 0x1

    goto :goto_6a

    :cond_78
    :goto_78
    move v1, v5

    goto :goto_7b

    :cond_7a
    move v1, v4

    .line 171
    :cond_7b
    :goto_7b
    iget-object v2, p0, Lcom/android/settingslib/development/AbstractLogpersistPreferenceController;->mLogpersist:Landroidx/preference/ListPreference;

    iget-object v3, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    .line 172
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v6, Lcom/android/settingslib/R$array;->select_logpersist_values:I

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v1

    .line 171
    invoke-virtual {v2, v3}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 173
    iget-object v2, p0, Lcom/android/settingslib/development/AbstractLogpersistPreferenceController;->mLogpersist:Landroidx/preference/ListPreference;

    iget-object v3, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    .line 174
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v6, Lcom/android/settingslib/R$array;->select_logpersist_summaries:I

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v1

    .line 173
    invoke-virtual {v2, v3}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    if-eqz v1, :cond_a6

    .line 176
    iput-boolean v4, p0, Lcom/android/settingslib/development/AbstractLogpersistPreferenceController;->mLogpersistCleared:Z

    goto :goto_b8

    .line 177
    :cond_a6
    iget-boolean v1, p0, Lcom/android/settingslib/development/AbstractLogpersistPreferenceController;->mLogpersistCleared:Z

    if-nez v1, :cond_b8

    const-string v1, "clear"

    .line 179
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    invoke-static {}, Lcom/android/settingslib/development/SystemPropPoker;->getInstance()Lcom/android/settingslib/development/SystemPropPoker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settingslib/development/SystemPropPoker;->poke()V

    .line 181
    iput-boolean v5, p0, Lcom/android/settingslib/development/AbstractLogpersistPreferenceController;->mLogpersistCleared:Z

    :cond_b8
    :goto_b8
    return-void
.end method

.method public writeLogpersistOption(Ljava/lang/Object;Z)V
    .registers 9

    .line 211
    iget-object v0, p0, Lcom/android/settingslib/development/AbstractLogpersistPreferenceController;->mLogpersist:Landroidx/preference/ListPreference;

    if-nez v0, :cond_5

    return-void

    :cond_5
    const-string/jumbo v0, "persist.log.tag"

    .line 214
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_19

    const-string v2, "Settings"

    .line 216
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    const/4 p1, 0x0

    move p2, v1

    :cond_19
    const-string v0, "logd.logpersistd"

    const-string v2, "logcatd"

    const/4 v3, 0x0

    if-eqz p1, :cond_75

    .line 222
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2d

    goto :goto_75

    :cond_2d
    const-string p2, "logd.logpersistd.buffer"

    .line 238
    invoke-static {p2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_42

    .line 239
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_42

    .line 240
    invoke-virtual {p0, v3}, Lcom/android/settingslib/development/AbstractLogpersistPreferenceController;->setLogpersistOff(Z)V

    .line 242
    :cond_42
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "persist.logd.logpersistd.buffer"

    invoke-static {p2, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p1, "persist.logd.logpersistd"

    .line 243
    invoke-static {p1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    invoke-static {}, Lcom/android/settingslib/development/SystemPropPoker;->getInstance()Lcom/android/settingslib/development/SystemPropPoker;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/settingslib/development/SystemPropPoker;->poke()V

    :goto_59
    const/4 p1, 0x3

    if-ge v3, p1, :cond_71

    .line 246
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_69

    .line 248
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_69

    goto :goto_71

    :cond_69
    const-wide/16 p1, 0x64

    .line 252
    :try_start_6b
    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_6e
    .catch Ljava/lang/InterruptedException; {:try_start_6b .. :try_end_6e} :catch_6e

    :catch_6e
    add-int/lit8 v3, v3, 0x1

    goto :goto_59

    .line 257
    :cond_71
    :goto_71
    invoke-virtual {p0}, Lcom/android/settingslib/development/AbstractLogpersistPreferenceController;->updateLogpersistValues()V

    return-void

    :cond_75
    :goto_75
    if-eqz p2, :cond_7a

    .line 224
    iput-boolean v3, p0, Lcom/android/settingslib/development/AbstractLogpersistPreferenceController;->mLogpersistCleared:Z

    goto :goto_90

    .line 225
    :cond_7a
    iget-boolean p1, p0, Lcom/android/settingslib/development/AbstractLogpersistPreferenceController;->mLogpersistCleared:Z

    if-nez p1, :cond_90

    .line 227
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_90

    .line 229
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_90

    .line 230
    iget-object p1, p0, Lcom/android/settingslib/development/AbstractLogpersistPreferenceController;->mLogpersist:Landroidx/preference/ListPreference;

    invoke-interface {p0, p1}, Lcom/android/settingslib/core/ConfirmationDialogController;->showConfirmationDialog(Landroidx/preference/Preference;)V

    return-void

    .line 234
    :cond_90
    :goto_90
    invoke-virtual {p0, v1}, Lcom/android/settingslib/development/AbstractLogpersistPreferenceController;->setLogpersistOff(Z)V

    return-void
.end method
