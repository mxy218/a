.class public Lcom/android/settings/display/ColorModePreferenceFragment;
.super Lcom/android/settings/widget/RadioButtonPickerFragment;
.source "ColorModePreferenceFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/display/ColorModePreferenceFragment$ColorModeCandidateInfo;
    }
.end annotation


# static fields
.field static final KEY_COLOR_MODE_AUTOMATIC:Ljava/lang/String; = "color_mode_automatic"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final KEY_COLOR_MODE_BOOSTED:Ljava/lang/String; = "color_mode_boosted"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final KEY_COLOR_MODE_NATURAL:Ljava/lang/String; = "color_mode_natural"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final KEY_COLOR_MODE_SATURATED:Ljava/lang/String; = "color_mode_saturated"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field private mColorDisplayManager:Landroid/hardware/display/ColorDisplayManager;

.field private mContentObserver:Landroid/database/ContentObserver;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 207
    new-instance v0, Lcom/android/settings/display/ColorModePreferenceFragment$2;

    invoke-direct {v0}, Lcom/android/settings/display/ColorModePreferenceFragment$2;-><init>()V

    sput-object v0, Lcom/android/settings/display/ColorModePreferenceFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 45
    invoke-direct {p0}, Lcom/android/settings/widget/RadioButtonPickerFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected addStaticPreferences(Landroidx/preference/PreferenceScreen;)V
    .registers 5

    .line 107
    new-instance v0, Lcom/android/settingslib/widget/LayoutPreference;

    invoke-virtual {p1}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0d0078

    invoke-direct {v0, v1, v2}, Lcom/android/settingslib/widget/LayoutPreference;-><init>(Landroid/content/Context;I)V

    .line 109
    invoke-virtual {p0, v0, p1}, Lcom/android/settings/display/ColorModePreferenceFragment;->configureAndInstallPreview(Lcom/android/settingslib/widget/LayoutPreference;Landroidx/preference/PreferenceScreen;)V

    return-void
.end method

.method configureAndInstallPreview(Lcom/android/settingslib/widget/LayoutPreference;Landroidx/preference/PreferenceScreen;)V
    .registers 3
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    const/4 p0, 0x0

    .line 101
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setSelectable(Z)V

    .line 102
    invoke-virtual {p2, p1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    return-void
.end method

.method protected getCandidates()Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/android/settingslib/widget/CandidateInfo;",
            ">;"
        }
    .end annotation

    .line 114
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    .line 115
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1070017

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    .line 118
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz v0, :cond_71

    .line 120
    array-length v2, v0

    const/4 v3, 0x0

    :goto_18
    if-ge v3, v2, :cond_71

    aget v4, v0, v3

    const/4 v5, 0x1

    if-nez v4, :cond_31

    .line 122
    new-instance v4, Lcom/android/settings/display/ColorModePreferenceFragment$ColorModeCandidateInfo;

    const v6, 0x7f120501

    .line 123
    invoke-virtual {p0, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    const-string v7, "color_mode_natural"

    invoke-direct {v4, v6, v7, v5}, Lcom/android/settings/display/ColorModePreferenceFragment$ColorModeCandidateInfo;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;Z)V

    .line 122
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6e

    :cond_31
    if-ne v4, v5, :cond_45

    .line 126
    new-instance v4, Lcom/android/settings/display/ColorModePreferenceFragment$ColorModeCandidateInfo;

    const v6, 0x7f120500

    .line 127
    invoke-virtual {p0, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    const-string v7, "color_mode_boosted"

    invoke-direct {v4, v6, v7, v5}, Lcom/android/settings/display/ColorModePreferenceFragment$ColorModeCandidateInfo;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;Z)V

    .line 126
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6e

    :cond_45
    const/4 v6, 0x2

    if-ne v4, v6, :cond_5a

    .line 130
    new-instance v4, Lcom/android/settings/display/ColorModePreferenceFragment$ColorModeCandidateInfo;

    const v6, 0x7f120502

    .line 131
    invoke-virtual {p0, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    const-string v7, "color_mode_saturated"

    invoke-direct {v4, v6, v7, v5}, Lcom/android/settings/display/ColorModePreferenceFragment$ColorModeCandidateInfo;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;Z)V

    .line 130
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6e

    :cond_5a
    const/4 v6, 0x3

    if-ne v4, v6, :cond_6e

    .line 134
    new-instance v4, Lcom/android/settings/display/ColorModePreferenceFragment$ColorModeCandidateInfo;

    const v6, 0x7f1204ff

    .line 135
    invoke-virtual {p0, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    const-string v7, "color_mode_automatic"

    invoke-direct {v4, v6, v7, v5}, Lcom/android/settings/display/ColorModePreferenceFragment$ColorModeCandidateInfo;-><init>(Ljava/lang/CharSequence;Ljava/lang/String;Z)V

    .line 134
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6e
    :goto_6e
    add-int/lit8 v3, v3, 0x1

    goto :goto_18

    :cond_71
    return-object v1
.end method

.method protected getDefaultKey()Ljava/lang/String;
    .registers 2

    .line 145
    iget-object p0, p0, Lcom/android/settings/display/ColorModePreferenceFragment;->mColorDisplayManager:Landroid/hardware/display/ColorDisplayManager;

    invoke-virtual {p0}, Landroid/hardware/display/ColorDisplayManager;->getColorMode()I

    move-result p0

    const/4 v0, 0x3

    if-ne p0, v0, :cond_c

    const-string p0, "color_mode_automatic"

    return-object p0

    :cond_c
    const/4 v0, 0x2

    if-ne p0, v0, :cond_12

    const-string p0, "color_mode_saturated"

    return-object p0

    :cond_12
    const/4 v0, 0x1

    if-ne p0, v0, :cond_18

    const-string p0, "color_mode_boosted"

    return-object p0

    :cond_18
    const-string p0, "color_mode_natural"

    return-object p0
.end method

.method public getMetricsCategory()I
    .registers 1

    const/16 p0, 0x477

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .registers 1

    const p0, 0x7f16003c

    return p0
.end method

.method public onAttach(Landroid/content/Context;)V
    .registers 6

    .line 61
    invoke-super {p0, p1}, Lcom/android/settings/widget/RadioButtonPickerFragment;->onAttach(Landroid/content/Context;)V

    .line 63
    const-class v0, Landroid/hardware/display/ColorDisplayManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/ColorDisplayManager;

    iput-object v0, p0, Lcom/android/settings/display/ColorModePreferenceFragment;->mColorDisplayManager:Landroid/hardware/display/ColorDisplayManager;

    .line 65
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    .line 66
    new-instance v0, Lcom/android/settings/display/ColorModePreferenceFragment$1;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/display/ColorModePreferenceFragment$1;-><init>(Lcom/android/settings/display/ColorModePreferenceFragment;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/display/ColorModePreferenceFragment;->mContentObserver:Landroid/database/ContentObserver;

    const-string v0, "accessibility_display_inversion_enabled"

    .line 78
    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/display/ColorModePreferenceFragment;->mContentObserver:Landroid/database/ContentObserver;

    iget v2, p0, Lcom/android/settings/widget/RadioButtonPickerFragment;->mUserId:I

    const/4 v3, 0x0

    .line 77
    invoke-virtual {p1, v0, v3, v1, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string v0, "accessibility_display_daltonizer_enabled"

    .line 81
    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/display/ColorModePreferenceFragment;->mContentObserver:Landroid/database/ContentObserver;

    iget p0, p0, Lcom/android/settings/widget/RadioButtonPickerFragment;->mUserId:I

    .line 80
    invoke-virtual {p1, v0, v3, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method

.method public onDetach()V
    .registers 3

    .line 87
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDetach()V

    .line 88
    iget-object v0, p0, Lcom/android/settings/display/ColorModePreferenceFragment;->mContentObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_17

    .line 89
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/display/ColorModePreferenceFragment;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    const/4 v0, 0x0

    .line 90
    iput-object v0, p0, Lcom/android/settings/display/ColorModePreferenceFragment;->mContentObserver:Landroid/database/ContentObserver;

    :cond_17
    return-void
.end method

.method protected setDefaultKey(Ljava/lang/String;)Z
    .registers 7

    .line 158
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    sparse-switch v0, :sswitch_data_56

    goto :goto_34

    :sswitch_c
    const-string v0, "color_mode_saturated"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_34

    move p1, v3

    goto :goto_35

    :sswitch_16
    const-string v0, "color_mode_natural"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_34

    move p1, v1

    goto :goto_35

    :sswitch_20
    const-string v0, "color_mode_automatic"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_34

    move p1, v2

    goto :goto_35

    :sswitch_2a
    const-string v0, "color_mode_boosted"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_34

    move p1, v4

    goto :goto_35

    :cond_34
    :goto_34
    const/4 p1, -0x1

    :goto_35
    if-eqz p1, :cond_50

    if-eq p1, v4, :cond_4a

    if-eq p1, v3, :cond_44

    if-eq p1, v2, :cond_3e

    goto :goto_55

    .line 169
    :cond_3e
    iget-object p0, p0, Lcom/android/settings/display/ColorModePreferenceFragment;->mColorDisplayManager:Landroid/hardware/display/ColorDisplayManager;

    invoke-virtual {p0, v2}, Landroid/hardware/display/ColorDisplayManager;->setColorMode(I)V

    goto :goto_55

    .line 166
    :cond_44
    iget-object p0, p0, Lcom/android/settings/display/ColorModePreferenceFragment;->mColorDisplayManager:Landroid/hardware/display/ColorDisplayManager;

    invoke-virtual {p0, v3}, Landroid/hardware/display/ColorDisplayManager;->setColorMode(I)V

    goto :goto_55

    .line 163
    :cond_4a
    iget-object p0, p0, Lcom/android/settings/display/ColorModePreferenceFragment;->mColorDisplayManager:Landroid/hardware/display/ColorDisplayManager;

    invoke-virtual {p0, v4}, Landroid/hardware/display/ColorDisplayManager;->setColorMode(I)V

    goto :goto_55

    .line 160
    :cond_50
    iget-object p0, p0, Lcom/android/settings/display/ColorModePreferenceFragment;->mColorDisplayManager:Landroid/hardware/display/ColorDisplayManager;

    invoke-virtual {p0, v1}, Landroid/hardware/display/ColorDisplayManager;->setColorMode(I)V

    :goto_55
    return v4

    :sswitch_data_56
    .sparse-switch
        -0x78f30bbe -> :sswitch_2a
        -0x2c14dd15 -> :sswitch_20
        -0x15c4c717 -> :sswitch_16
        0x2da6f855 -> :sswitch_c
    .end sparse-switch
.end method
