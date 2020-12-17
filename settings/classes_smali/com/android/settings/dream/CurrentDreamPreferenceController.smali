.class public Lcom/android/settings/dream/CurrentDreamPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "CurrentDreamPreferenceController.java"


# instance fields
.field private final mBackend:Lcom/android/settingslib/dream/DreamBackend;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    .line 35
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 36
    invoke-static {p1}, Lcom/android/settingslib/dream/DreamBackend;->getInstance(Landroid/content/Context;)Lcom/android/settingslib/dream/DreamBackend;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/dream/CurrentDreamPreferenceController;->mBackend:Lcom/android/settingslib/dream/DreamBackend;

    return-void
.end method

.method private getActiveDreamInfo()Ljava/util/Optional;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/android/settingslib/dream/DreamBackend$DreamInfo;",
            ">;"
        }
    .end annotation

    .line 76
    iget-object p0, p0, Lcom/android/settings/dream/CurrentDreamPreferenceController;->mBackend:Lcom/android/settingslib/dream/DreamBackend;

    invoke-virtual {p0}, Lcom/android/settingslib/dream/DreamBackend;->getDreamInfos()Ljava/util/List;

    move-result-object p0

    .line 77
    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    sget-object v0, Lcom/android/settings/dream/-$$Lambda$CurrentDreamPreferenceController$JJd0D4Ql1FstWgOpYrMCLEB2pnU;->INSTANCE:Lcom/android/settings/dream/-$$Lambda$CurrentDreamPreferenceController$JJd0D4Ql1FstWgOpYrMCLEB2pnU;

    .line 78
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 79
    invoke-interface {p0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$getActiveDreamInfo$1(Lcom/android/settingslib/dream/DreamBackend$DreamInfo;)Z
    .registers 1

    .line 78
    iget-boolean p0, p0, Lcom/android/settingslib/dream/DreamBackend$DreamInfo;->isActive:Z

    return p0
.end method

.method private launchScreenSaverSettings()V
    .registers 3

    .line 70
    invoke-direct {p0}, Lcom/android/settings/dream/CurrentDreamPreferenceController;->getActiveDreamInfo()Ljava/util/Optional;

    move-result-object v0

    .line 71
    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-nez v1, :cond_b

    return-void

    .line 72
    :cond_b
    iget-object v1, p0, Lcom/android/settings/dream/CurrentDreamPreferenceController;->mBackend:Lcom/android/settingslib/dream/DreamBackend;

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/dream/DreamBackend$DreamInfo;

    invoke-virtual {v1, p0, v0}, Lcom/android/settingslib/dream/DreamBackend;->launchSettings(Landroid/content/Context;Lcom/android/settingslib/dream/DreamBackend$DreamInfo;)V

    return-void
.end method

.method private setGearClickListenerForPreference(Landroidx/preference/Preference;)V
    .registers 4

    .line 56
    instance-of v0, p1, Lcom/android/settings/widget/GearPreference;

    if-nez v0, :cond_5

    return-void

    .line 60
    :cond_5
    check-cast p1, Lcom/android/settings/widget/GearPreference;

    .line 61
    invoke-direct {p0}, Lcom/android/settings/dream/CurrentDreamPreferenceController;->getActiveDreamInfo()Ljava/util/Optional;

    move-result-object v0

    .line 62
    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/dream/DreamBackend$DreamInfo;

    iget-object v0, v0, Lcom/android/settingslib/dream/DreamBackend$DreamInfo;->settingsComponentName:Landroid/content/ComponentName;

    if-nez v0, :cond_1c

    goto :goto_25

    .line 66
    :cond_1c
    new-instance v0, Lcom/android/settings/dream/-$$Lambda$CurrentDreamPreferenceController$faOOwvjkeM0i38i1bxACLza6vQ4;

    invoke-direct {v0, p0}, Lcom/android/settings/dream/-$$Lambda$CurrentDreamPreferenceController$faOOwvjkeM0i38i1bxACLza6vQ4;-><init>(Lcom/android/settings/dream/CurrentDreamPreferenceController;)V

    invoke-virtual {p1, v0}, Lcom/android/settings/widget/GearPreference;->setOnGearClickListener(Lcom/android/settings/widget/GearPreference$OnGearClickListener;)V

    return-void

    :cond_25
    :goto_25
    const/4 p0, 0x0

    .line 63
    invoke-virtual {p1, p0}, Lcom/android/settings/widget/GearPreference;->setOnGearClickListener(Lcom/android/settings/widget/GearPreference$OnGearClickListener;)V

    return-void
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .registers 1

    .line 41
    iget-object p0, p0, Lcom/android/settings/dream/CurrentDreamPreferenceController;->mBackend:Lcom/android/settingslib/dream/DreamBackend;

    invoke-virtual {p0}, Lcom/android/settingslib/dream/DreamBackend;->getDreamInfos()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_e

    const/4 p0, 0x0

    goto :goto_f

    :cond_e
    const/4 p0, 0x2

    :goto_f
    return p0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .registers 1

    .line 52
    iget-object p0, p0, Lcom/android/settings/dream/CurrentDreamPreferenceController;->mBackend:Lcom/android/settingslib/dream/DreamBackend;

    invoke-virtual {p0}, Lcom/android/settingslib/dream/DreamBackend;->getActiveDreamName()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public synthetic lambda$setGearClickListenerForPreference$0$CurrentDreamPreferenceController(Lcom/android/settings/widget/GearPreference;)V
    .registers 2

    .line 66
    invoke-direct {p0}, Lcom/android/settings/dream/CurrentDreamPreferenceController;->launchScreenSaverSettings()V

    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .registers 2

    .line 46
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->updateState(Landroidx/preference/Preference;)V

    .line 47
    invoke-direct {p0, p1}, Lcom/android/settings/dream/CurrentDreamPreferenceController;->setGearClickListenerForPreference(Landroidx/preference/Preference;)V

    return-void
.end method
