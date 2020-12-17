.class public Lcom/android/settings/location/AppLocationPermissionPreferenceController;
.super Lcom/android/settings/location/LocationBasePreferenceController;
.source "AppLocationPermissionPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# instance fields
.field final loadingInProgress:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final mLocationManager:Landroid/location/LocationManager;

.field mNumHasLocation:I
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private mNumHasLocationLoading:I

.field mNumTotal:I
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private mNumTotalLoading:I

.field private mPreference:Landroidx/preference/Preference;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .registers 4

    .line 44
    invoke-direct {p0, p1, p2}, Lcom/android/settings/location/LocationBasePreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    const/4 p2, -0x1

    .line 30
    iput p2, p0, Lcom/android/settings/location/AppLocationPermissionPreferenceController;->mNumTotal:I

    .line 33
    iput p2, p0, Lcom/android/settings/location/AppLocationPermissionPreferenceController;->mNumHasLocation:I

    .line 36
    new-instance p2, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v0, 0x0

    invoke-direct {p2, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p2, p0, Lcom/android/settings/location/AppLocationPermissionPreferenceController;->loadingInProgress:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 37
    iput v0, p0, Lcom/android/settings/location/AppLocationPermissionPreferenceController;->mNumTotalLoading:I

    .line 38
    iput v0, p0, Lcom/android/settings/location/AppLocationPermissionPreferenceController;->mNumHasLocationLoading:I

    const-string p2, "location"

    .line 45
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/location/LocationManager;

    iput-object p1, p0, Lcom/android/settings/location/AppLocationPermissionPreferenceController;->mLocationManager:Landroid/location/LocationManager;

    return-void
.end method

.method private setAppCounts(II)V
    .registers 3

    .line 74
    iput p1, p0, Lcom/android/settings/location/AppLocationPermissionPreferenceController;->mNumTotal:I

    .line 75
    iput p2, p0, Lcom/android/settings/location/AppLocationPermissionPreferenceController;->mNumHasLocation:I

    .line 76
    iget-object p1, p0, Lcom/android/settings/location/AppLocationPermissionPreferenceController;->mPreference:Landroidx/preference/Preference;

    invoke-virtual {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->refreshSummary(Landroidx/preference/Preference;)V

    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .registers 1

    const-string p0, "app_level_permissions"

    return-object p0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .registers 7

    .line 61
    iget-object v0, p0, Lcom/android/settings/location/AppLocationPermissionPreferenceController;->mLocationManager:Landroid/location/LocationManager;

    invoke-virtual {v0}, Landroid/location/LocationManager;->isLocationEnabled()Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 62
    iget v0, p0, Lcom/android/settings/location/AppLocationPermissionPreferenceController;->mNumTotal:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_35

    iget v0, p0, Lcom/android/settings/location/AppLocationPermissionPreferenceController;->mNumHasLocation:I

    if-ne v0, v1, :cond_12

    goto :goto_35

    .line 65
    :cond_12
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f10001e

    iget v2, p0, Lcom/android/settings/location/AppLocationPermissionPreferenceController;->mNumHasLocation:I

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 67
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget p0, p0, Lcom/android/settings/location/AppLocationPermissionPreferenceController;->mNumTotal:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v3, v4

    .line 65
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 63
    :cond_35
    :goto_35
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const v0, 0x7f120b09

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 69
    :cond_3f
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const v0, 0x7f120aee

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public isAvailable()Z
    .registers 3

    .line 55
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x1

    const-string v1, "location_settings_link_to_permissions_enabled"

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v0, :cond_10

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method public synthetic lambda$updateState$0$AppLocationPermissionPreferenceController(I)V
    .registers 3

    .line 111
    iget v0, p0, Lcom/android/settings/location/AppLocationPermissionPreferenceController;->mNumTotalLoading:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/settings/location/AppLocationPermissionPreferenceController;->mNumTotalLoading:I

    .line 112
    iget-object p1, p0, Lcom/android/settings/location/AppLocationPermissionPreferenceController;->loadingInProgress:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result p1

    if-nez p1, :cond_14

    .line 113
    iget p1, p0, Lcom/android/settings/location/AppLocationPermissionPreferenceController;->mNumTotalLoading:I

    iget v0, p0, Lcom/android/settings/location/AppLocationPermissionPreferenceController;->mNumHasLocationLoading:I

    invoke-direct {p0, p1, v0}, Lcom/android/settings/location/AppLocationPermissionPreferenceController;->setAppCounts(II)V

    :cond_14
    return-void
.end method

.method public synthetic lambda$updateState$1$AppLocationPermissionPreferenceController(I)V
    .registers 3

    .line 120
    iget v0, p0, Lcom/android/settings/location/AppLocationPermissionPreferenceController;->mNumHasLocationLoading:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/settings/location/AppLocationPermissionPreferenceController;->mNumHasLocationLoading:I

    .line 121
    iget-object p1, p0, Lcom/android/settings/location/AppLocationPermissionPreferenceController;->loadingInProgress:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result p1

    if-nez p1, :cond_14

    .line 122
    iget p1, p0, Lcom/android/settings/location/AppLocationPermissionPreferenceController;->mNumTotalLoading:I

    iget v0, p0, Lcom/android/settings/location/AppLocationPermissionPreferenceController;->mNumHasLocationLoading:I

    invoke-direct {p0, p1, v0}, Lcom/android/settings/location/AppLocationPermissionPreferenceController;->setAppCounts(II)V

    :cond_14
    return-void
.end method

.method public onLocationModeChanged(IZ)V
    .registers 3

    .line 130
    iget-object p1, p0, Lcom/android/settings/location/AppLocationPermissionPreferenceController;->mPreference:Landroidx/preference/Preference;

    if-eqz p1, :cond_7

    .line 131
    invoke-virtual {p0, p1}, Lcom/android/settings/location/AppLocationPermissionPreferenceController;->updateState(Landroidx/preference/Preference;)V

    :cond_7
    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .registers 10

    .line 81
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->updateState(Landroidx/preference/Preference;)V

    .line 82
    iput-object p1, p0, Lcom/android/settings/location/AppLocationPermissionPreferenceController;->mPreference:Landroidx/preference/Preference;

    .line 83
    invoke-virtual {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->refreshSummary(Landroidx/preference/Preference;)V

    .line 85
    iget-object p1, p0, Lcom/android/settings/location/AppLocationPermissionPreferenceController;->mLocationManager:Landroid/location/LocationManager;

    invoke-virtual {p1}, Landroid/location/LocationManager;->isLocationEnabled()Z

    move-result p1

    if-eqz p1, :cond_98

    iget-object p1, p0, Lcom/android/settings/location/AppLocationPermissionPreferenceController;->loadingInProgress:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 86
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    if-eqz p1, :cond_1a

    goto/16 :goto_98

    :cond_1a
    const/4 p1, 0x0

    .line 89
    iput p1, p0, Lcom/android/settings/location/AppLocationPermissionPreferenceController;->mNumTotalLoading:I

    .line 90
    iput p1, p0, Lcom/android/settings/location/AppLocationPermissionPreferenceController;->mNumHasLocationLoading:I

    .line 92
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/UserManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 93
    invoke-virtual {v0}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v0

    .line 94
    iget-object v1, p0, Lcom/android/settings/location/AppLocationPermissionPreferenceController;->loadingInProgress:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x2

    mul-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 95
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3c
    :goto_3c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_98

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserHandle;

    .line 96
    iget-object v2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    .line 97
    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    .line 96
    invoke-static {v2, v1}, Lcom/android/settings/Utils;->createPackageContextAsUser(Landroid/content/Context;I)Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_69

    move v1, p1

    :goto_55
    if-ge v1, v3, :cond_3c

    .line 100
    iget-object v2, p0, Lcom/android/settings/location/AppLocationPermissionPreferenceController;->loadingInProgress:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v2

    if-nez v2, :cond_66

    .line 101
    iget v2, p0, Lcom/android/settings/location/AppLocationPermissionPreferenceController;->mNumTotalLoading:I

    iget v4, p0, Lcom/android/settings/location/AppLocationPermissionPreferenceController;->mNumHasLocationLoading:I

    invoke-direct {p0, v2, v4}, Lcom/android/settings/location/AppLocationPermissionPreferenceController;->setAppCounts(II)V

    :cond_66
    add-int/lit8 v1, v1, 0x1

    goto :goto_55

    .line 106
    :cond_69
    const-class v2, Landroid/permission/PermissionControllerManager;

    .line 107
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/permission/PermissionControllerManager;

    const-string v2, "android.permission.ACCESS_COARSE_LOCATION"

    const-string v4, "android.permission.ACCESS_FINE_LOCATION"

    .line 108
    filled-new-array {v4, v2}, [Ljava/lang/String;

    move-result-object v5

    .line 109
    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    new-instance v6, Lcom/android/settings/location/-$$Lambda$AppLocationPermissionPreferenceController$e0h2CKoIhFLo3V97dQZrkPYrmvg;

    invoke-direct {v6, p0}, Lcom/android/settings/location/-$$Lambda$AppLocationPermissionPreferenceController$e0h2CKoIhFLo3V97dQZrkPYrmvg;-><init>(Lcom/android/settings/location/AppLocationPermissionPreferenceController;)V

    const/4 v7, 0x0

    .line 108
    invoke-virtual {v1, v5, p1, v6, v7}, Landroid/permission/PermissionControllerManager;->countPermissionApps(Ljava/util/List;ILandroid/permission/PermissionControllerManager$OnCountPermissionAppsResultCallback;Landroid/os/Handler;)V

    .line 116
    filled-new-array {v4, v2}, [Ljava/lang/String;

    move-result-object v2

    .line 117
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    new-instance v4, Lcom/android/settings/location/-$$Lambda$AppLocationPermissionPreferenceController$ac1yPXR6twaUXDmJsUKy3pfXzK8;

    invoke-direct {v4, p0}, Lcom/android/settings/location/-$$Lambda$AppLocationPermissionPreferenceController$ac1yPXR6twaUXDmJsUKy3pfXzK8;-><init>(Lcom/android/settings/location/AppLocationPermissionPreferenceController;)V

    const/4 v5, 0x1

    .line 116
    invoke-virtual {v1, v2, v5, v4, v7}, Landroid/permission/PermissionControllerManager;->countPermissionApps(Ljava/util/List;ILandroid/permission/PermissionControllerManager$OnCountPermissionAppsResultCallback;Landroid/os/Handler;)V

    goto :goto_3c

    :cond_98
    :goto_98
    return-void
.end method
