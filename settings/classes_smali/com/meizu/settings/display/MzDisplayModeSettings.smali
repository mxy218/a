.class public abstract Lcom/meizu/settings/display/MzDisplayModeSettings;
.super Lcom/meizu/settings/SettingsPreferenceFragment;
.source "MzDisplayModeSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/settings/display/MzDisplayModeSettings$DisplayModeUtils;
    }
.end annotation


# static fields
.field private static final EMPTY_STR:Ljava/lang/String;


# instance fields
.field protected mContext:Landroid/content/Context;

.field private mModeList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/meizu/settings/widget/ChecktextPreference;",
            ">;"
        }
    .end annotation
.end field

.field private mResources:Landroid/content/res/Resources;

.field private mScreen:Landroid/preference/PreferenceScreen;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 27
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    sput-object v0, Lcom/meizu/settings/display/MzDisplayModeSettings;->EMPTY_STR:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 24
    invoke-direct {p0}, Lcom/meizu/settings/SettingsPreferenceFragment;-><init>()V

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/meizu/settings/display/MzDisplayModeSettings;->mModeList:Ljava/util/ArrayList;

    return-void
.end method

.method public static getNameByValue(Landroid/content/Context;I)Ljava/lang/String;
    .registers 7

    if-nez p0, :cond_5

    .line 112
    sget-object p0, Lcom/meizu/settings/display/MzDisplayModeSettings;->EMPTY_STR:Ljava/lang/String;

    return-object p0

    .line 114
    :cond_5
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const/4 v0, -0x1

    const v1, 0x7f030070

    .line 116
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 117
    invoke-static {}, Lcom/meizu/settings/display/MzDisplayModeSettings$DisplayModeUtils;->getDisplayModeValuesArray()I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x0

    .line 118
    :goto_1a
    array-length v3, p0

    if-ge v2, v3, :cond_2e

    .line 119
    aget-object v3, p0, v2

    .line 120
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2b

    move v0, v2

    goto :goto_2e

    :cond_2b
    add-int/lit8 v2, v2, 0x1

    goto :goto_1a

    :cond_2e
    :goto_2e
    if-ltz v0, :cond_38

    .line 125
    array-length p0, v1

    add-int/lit8 p0, p0, -0x1

    if-gt v0, p0, :cond_38

    .line 126
    aget-object p0, v1, v0

    return-object p0

    .line 128
    :cond_38
    sget-object p0, Lcom/meizu/settings/display/MzDisplayModeSettings;->EMPTY_STR:Ljava/lang/String;

    return-object p0
.end method

.method private initModeList()V
    .registers 10

    .line 57
    new-instance v0, Landroid/preference/Preference;

    iget-object v1, p0, Lcom/meizu/settings/display/MzDisplayModeSettings;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 58
    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setPersistent(Z)V

    .line 59
    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSelectable(Z)V

    const v2, 0x7f0d01cd

    .line 60
    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setLayoutResource(I)V

    .line 61
    iget-object v2, p0, Lcom/meizu/settings/display/MzDisplayModeSettings;->mScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v2, v0}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 63
    iget-object v0, p0, Lcom/meizu/settings/display/MzDisplayModeSettings;->mResources:Landroid/content/res/Resources;

    invoke-virtual {p0}, Lcom/meizu/settings/display/MzDisplayModeSettings;->getDisplayModeEntries()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 64
    iget-object v2, p0, Lcom/meizu/settings/display/MzDisplayModeSettings;->mResources:Landroid/content/res/Resources;

    invoke-virtual {p0}, Lcom/meizu/settings/display/MzDisplayModeSettings;->getDisplayModeValues()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    if-eqz v0, :cond_5b

    if-eqz v2, :cond_5b

    .line 66
    array-length v3, v0

    array-length v4, v2

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    move v4, v1

    :goto_38
    if-ge v4, v3, :cond_5b

    .line 68
    aget-object v5, v0, v4

    .line 69
    aget-object v6, v2, v4

    .line 70
    new-instance v7, Lcom/meizu/settings/widget/ChecktextPreference;

    iget-object v8, p0, Lcom/meizu/settings/display/MzDisplayModeSettings;->mContext:Landroid/content/Context;

    invoke-direct {v7, v8}, Lcom/meizu/settings/widget/ChecktextPreference;-><init>(Landroid/content/Context;)V

    .line 71
    invoke-virtual {v7, v1}, Landroid/preference/Preference;->setPersistent(Z)V

    .line 72
    invoke-virtual {v7, v5}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 73
    invoke-virtual {v7, v6}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 74
    iget-object v5, p0, Lcom/meizu/settings/display/MzDisplayModeSettings;->mModeList:Ljava/util/ArrayList;

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    iget-object v5, p0, Lcom/meizu/settings/display/MzDisplayModeSettings;->mScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {v5, v7}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_38

    .line 78
    :cond_5b
    new-instance v0, Landroid/preference/Preference;

    iget-object v2, p0, Lcom/meizu/settings/display/MzDisplayModeSettings;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    const v2, 0x7f12071a

    .line 79
    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setSummary(I)V

    .line 80
    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setPersistent(Z)V

    .line 81
    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSelectable(Z)V

    .line 82
    iget-object p0, p0, Lcom/meizu/settings/display/MzDisplayModeSettings;->mScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {p0, v0}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    return-void
.end method

.method private updateModeList(Z)V
    .registers 8

    .line 87
    invoke-virtual {p0}, Lcom/meizu/settings/display/MzDisplayModeSettings;->getDisplayMode()I

    move-result v0

    .line 89
    iget-object v1, p0, Lcom/meizu/settings/display/MzDisplayModeSettings;->mModeList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_41

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/meizu/settings/widget/ChecktextPreference;

    .line 90
    invoke-virtual {v2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    .line 92
    :try_start_1b
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-eqz p1, :cond_2a

    .line 95
    iget-object v5, p0, Lcom/meizu/settings/display/MzDisplayModeSettings;->mContext:Landroid/content/Context;

    invoke-static {v5, v3}, Lcom/meizu/settings/display/MzDisplayModeSettings;->getNameByValue(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v5

    .line 96
    invoke-virtual {v2, v5}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    :cond_2a
    if-ne v3, v0, :cond_31

    const/4 v3, 0x1

    .line 99
    invoke-virtual {v2, v3, v3, v3}, Lcom/meizu/settings/widget/ChecktextPreference;->setChecked(ZZZ)V

    goto :goto_a

    .line 101
    :cond_31
    invoke-virtual {v2, v4, v4, v4}, Lcom/meizu/settings/widget/ChecktextPreference;->setChecked(ZZZ)V
    :try_end_34
    .catch Ljava/lang/NumberFormatException; {:try_start_1b .. :try_end_34} :catch_35

    goto :goto_a

    .line 104
    :catch_35
    invoke-virtual {v2, v4, v4, v4}, Lcom/meizu/settings/widget/ChecktextPreference;->setChecked(ZZZ)V

    const-string v2, "MzDisplayModeSettings"

    const-string/jumbo v3, "updateMode error"

    .line 105
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    :cond_41
    return-void
.end method


# virtual methods
.method protected abstract getDisplayMode()I
.end method

.method protected getDisplayModeEntries()I
    .registers 1

    const p0, 0x7f030070

    return p0
.end method

.method protected abstract getDisplayModeValues()I
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 3

    .line 37
    invoke-super {p0, p1}, Lcom/meizu/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 38
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/display/MzDisplayModeSettings;->mContext:Landroid/content/Context;

    .line 39
    iget-object p1, p0, Lcom/meizu/settings/display/MzDisplayModeSettings;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/display/MzDisplayModeSettings;->mResources:Landroid/content/res/Resources;

    .line 42
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object p1

    iget-object v0, p0, Lcom/meizu/settings/display/MzDisplayModeSettings;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/preference/PreferenceScreen;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/display/MzDisplayModeSettings;->mScreen:Landroid/preference/PreferenceScreen;

    .line 43
    iget-object p1, p0, Lcom/meizu/settings/display/MzDisplayModeSettings;->mScreen:Landroid/preference/PreferenceScreen;

    invoke-virtual {p0, p1}, Lcom/meizu/settings/core/lifecycle/ObservablePreferenceFragment;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    .line 44
    iget-object p1, p0, Lcom/meizu/settings/display/MzDisplayModeSettings;->mScreen:Landroid/preference/PreferenceScreen;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->setOrderingAsAdded(Z)V

    .line 45
    iget-object p1, p0, Lcom/meizu/settings/display/MzDisplayModeSettings;->mScreen:Landroid/preference/PreferenceScreen;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/meizu/settings/utils/MzUtils;->showPreferenceScreenBottomDivider(Landroid/preference/PreferenceScreen;Z)V

    .line 47
    invoke-direct {p0}, Lcom/meizu/settings/display/MzDisplayModeSettings;->initModeList()V

    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .registers 5

    .line 133
    instance-of v0, p2, Lcom/meizu/settings/widget/ChecktextPreference;

    if-eqz v0, :cond_20

    .line 134
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 136
    :try_start_8
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 137
    invoke-virtual {p0, v0}, Lcom/meizu/settings/display/MzDisplayModeSettings;->setDisplayMode(I)V

    const/4 v0, 0x0

    .line 138
    invoke-direct {p0, v0}, Lcom/meizu/settings/display/MzDisplayModeSettings;->updateModeList(Z)V
    :try_end_17
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_17} :catch_18

    goto :goto_20

    :catch_18
    const-string v0, "MzDisplayModeSettings"

    const-string/jumbo v1, "onPreferenceTreeClick set mode error"

    .line 140
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    :cond_20
    :goto_20
    invoke-super {p0, p1, p2}, Lcom/meizu/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public onStart()V
    .registers 2

    .line 52
    invoke-super {p0}, Lcom/meizu/settings/core/lifecycle/ObservablePreferenceFragment;->onStart()V

    const/4 v0, 0x1

    .line 53
    invoke-direct {p0, v0}, Lcom/meizu/settings/display/MzDisplayModeSettings;->updateModeList(Z)V

    return-void
.end method

.method protected abstract setDisplayMode(I)V
.end method
