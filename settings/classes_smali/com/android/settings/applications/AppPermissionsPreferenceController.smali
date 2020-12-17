.class public Lcom/android/settings/applications/AppPermissionsPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "AppPermissionsPreferenceController.java"


# static fields
.field private static NUM_PACKAGE_TO_CHECK:I = 0x3

.field static NUM_PERMISSIONS_TO_SHOW:I = 0x3
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "AppPermissionPrefCtrl"


# instance fields
.field mNumPackageChecked:I
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private final mPackageManager:Landroid/content/pm/PackageManager;

.field private final mPermissionGroups:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private final mPermissionsCallback:Lcom/android/settingslib/applications/PermissionsSummaryHelper$PermissionsResultCallback;

.field private mPreference:Landroidx/preference/Preference;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    .line 60
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 44
    new-instance p2, Lcom/android/settings/applications/AppPermissionsPreferenceController$1;

    invoke-direct {p2, p0}, Lcom/android/settings/applications/AppPermissionsPreferenceController$1;-><init>(Lcom/android/settings/applications/AppPermissionsPreferenceController;)V

    iput-object p2, p0, Lcom/android/settings/applications/AppPermissionsPreferenceController;->mPermissionsCallback:Lcom/android/settingslib/applications/PermissionsSummaryHelper$PermissionsResultCallback;

    .line 61
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/applications/AppPermissionsPreferenceController;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 62
    new-instance p1, Landroid/util/ArraySet;

    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    iput-object p1, p0, Lcom/android/settings/applications/AppPermissionsPreferenceController;->mPermissionGroups:Ljava/util/Set;

    return-void
.end method

.method static synthetic lambda$queryPermissionSummary$0(Landroid/content/pm/PackageInfo;)Z
    .registers 1

    .line 83
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->permissions:[Landroid/content/pm/PermissionInfo;

    if-eqz p0, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method queryPermissionSummary()V
    .registers 5
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 79
    iget-object v0, p0, Lcom/android/settings/applications/AppPermissionsPreferenceController;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v1, 0x1000

    .line 80
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v0

    .line 82
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/android/settings/applications/-$$Lambda$AppPermissionsPreferenceController$V5FV8sM4sykbVAV6lAvbDY5J6b0;->INSTANCE:Lcom/android/settings/applications/-$$Lambda$AppPermissionsPreferenceController$V5FV8sM4sykbVAV6lAvbDY5J6b0;

    .line 83
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    sget v1, Lcom/android/settings/applications/AppPermissionsPreferenceController;->NUM_PACKAGE_TO_CHECK:I

    int-to-long v1, v1

    .line 84
    invoke-interface {v0, v1, v2}, Ljava/util/stream/Stream;->limit(J)Ljava/util/stream/Stream;

    move-result-object v0

    .line 85
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 87
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_27
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageInfo;

    .line 88
    iget-object v2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/applications/AppPermissionsPreferenceController;->mPermissionsCallback:Lcom/android/settingslib/applications/PermissionsSummaryHelper$PermissionsResultCallback;

    invoke-static {v2, v1, v3}, Lcom/android/settingslib/applications/PermissionsSummaryHelper;->getPermissionSummary(Landroid/content/Context;Ljava/lang/String;Lcom/android/settingslib/applications/PermissionsSummaryHelper$PermissionsResultCallback;)V

    goto :goto_27

    :cond_3d
    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .registers 2

    .line 72
    iput-object p1, p0, Lcom/android/settings/applications/AppPermissionsPreferenceController;->mPreference:Landroidx/preference/Preference;

    const/4 p1, 0x0

    .line 73
    iput p1, p0, Lcom/android/settings/applications/AppPermissionsPreferenceController;->mNumPackageChecked:I

    .line 74
    invoke-virtual {p0}, Lcom/android/settings/applications/AppPermissionsPreferenceController;->queryPermissionSummary()V

    return-void
.end method

.method updateSummary(Ljava/util/List;)V
    .registers 7
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation

    .line 95
    iget-object v0, p0, Lcom/android/settings/applications/AppPermissionsPreferenceController;->mPermissionGroups:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 96
    iget p1, p0, Lcom/android/settings/applications/AppPermissionsPreferenceController;->mNumPackageChecked:I

    const/4 v0, 0x1

    add-int/2addr p1, v0

    iput p1, p0, Lcom/android/settings/applications/AppPermissionsPreferenceController;->mNumPackageChecked:I

    .line 98
    iget p1, p0, Lcom/android/settings/applications/AppPermissionsPreferenceController;->mNumPackageChecked:I

    sget v1, Lcom/android/settings/applications/AppPermissionsPreferenceController;->NUM_PACKAGE_TO_CHECK:I

    if-ge p1, v1, :cond_12

    return-void

    .line 102
    :cond_12
    iget-object p1, p0, Lcom/android/settings/applications/AppPermissionsPreferenceController;->mPermissionGroups:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    sget v1, Lcom/android/settings/applications/AppPermissionsPreferenceController;->NUM_PERMISSIONS_TO_SHOW:I

    int-to-long v1, v1

    .line 103
    invoke-interface {p1, v1, v2}, Ljava/util/stream/Stream;->limit(J)Ljava/util/stream/Stream;

    move-result-object p1

    .line 104
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 105
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4a

    .line 106
    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const v2, 0x7f1201a7

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 107
    invoke-static {}, Landroid/icu/text/ListFormatter;->getInstance()Landroid/icu/text/ListFormatter;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/icu/text/ListFormatter;->format(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v3

    .line 106
    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_4b

    :cond_4a
    const/4 p1, 0x0

    .line 109
    :goto_4b
    iget-object p0, p0, Lcom/android/settings/applications/AppPermissionsPreferenceController;->mPreference:Landroidx/preference/Preference;

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method
