.class public Lcom/android/settings/applications/AppStorageSizesController;
.super Ljava/lang/Object;
.source "AppStorageSizesController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/applications/AppStorageSizesController$Builder;
    }
.end annotation


# instance fields
.field private final mAppSize:Landroidx/preference/Preference;

.field private final mCacheSize:Landroidx/preference/Preference;

.field private mCachedCleared:Z

.field private final mComputing:I
    .annotation build Landroidx/annotation/StringRes;
    .end annotation
.end field

.field private mDataCleared:Z

.field private final mDataSize:Landroidx/preference/Preference;

.field private final mError:I
    .annotation build Landroidx/annotation/StringRes;
    .end annotation
.end field

.field private mLastCacheSize:J

.field private mLastCodeSize:J

.field private mLastDataSize:J

.field private mLastResult:Lcom/android/settingslib/applications/StorageStatsSource$AppStorageStats;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private mLastResultFailed:Z

.field private mLastTotalSize:J

.field private final mTotalSize:Landroidx/preference/Preference;


# direct methods
.method private constructor <init>(Landroidx/preference/Preference;Landroidx/preference/Preference;Landroidx/preference/Preference;Landroidx/preference/Preference;II)V
    .registers 9
    .param p5  # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param
    .param p6  # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 45
    iput-wide v0, p0, Lcom/android/settings/applications/AppStorageSizesController;->mLastCodeSize:J

    .line 46
    iput-wide v0, p0, Lcom/android/settings/applications/AppStorageSizesController;->mLastDataSize:J

    .line 47
    iput-wide v0, p0, Lcom/android/settings/applications/AppStorageSizesController;->mLastCacheSize:J

    .line 48
    iput-wide v0, p0, Lcom/android/settings/applications/AppStorageSizesController;->mLastTotalSize:J

    .line 52
    iput-object p1, p0, Lcom/android/settings/applications/AppStorageSizesController;->mTotalSize:Landroidx/preference/Preference;

    .line 53
    iput-object p2, p0, Lcom/android/settings/applications/AppStorageSizesController;->mAppSize:Landroidx/preference/Preference;

    .line 54
    iput-object p3, p0, Lcom/android/settings/applications/AppStorageSizesController;->mDataSize:Landroidx/preference/Preference;

    .line 55
    iput-object p4, p0, Lcom/android/settings/applications/AppStorageSizesController;->mCacheSize:Landroidx/preference/Preference;

    .line 56
    iput p5, p0, Lcom/android/settings/applications/AppStorageSizesController;->mComputing:I

    .line 57
    iput p6, p0, Lcom/android/settings/applications/AppStorageSizesController;->mError:I

    return-void
.end method

.method synthetic constructor <init>(Landroidx/preference/Preference;Landroidx/preference/Preference;Landroidx/preference/Preference;Landroidx/preference/Preference;IILcom/android/settings/applications/AppStorageSizesController$1;)V
    .registers 8

    .line 32
    invoke-direct/range {p0 .. p6}, Lcom/android/settings/applications/AppStorageSizesController;-><init>(Landroidx/preference/Preference;Landroidx/preference/Preference;Landroidx/preference/Preference;Landroidx/preference/Preference;II)V

    return-void
.end method

.method private getSizeStr(Landroid/content/Context;J)Ljava/lang/String;
    .registers 4

    .line 133
    invoke-static {p1, p2, p3}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getLastResult()Lcom/android/settingslib/applications/StorageStatsSource$AppStorageStats;
    .registers 1

    .line 129
    iget-object p0, p0, Lcom/android/settings/applications/AppStorageSizesController;->mLastResult:Lcom/android/settingslib/applications/StorageStatsSource$AppStorageStats;

    return-object p0
.end method

.method public setCacheCleared(Z)V
    .registers 2

    .line 113
    iput-boolean p1, p0, Lcom/android/settings/applications/AppStorageSizesController;->mCachedCleared:Z

    return-void
.end method

.method public setDataCleared(Z)V
    .registers 2

    .line 122
    iput-boolean p1, p0, Lcom/android/settings/applications/AppStorageSizesController;->mDataCleared:Z

    return-void
.end method

.method public setResult(Lcom/android/settingslib/applications/StorageStatsSource$AppStorageStats;)V
    .registers 2

    .line 103
    iput-object p1, p0, Lcom/android/settings/applications/AppStorageSizesController;->mLastResult:Lcom/android/settingslib/applications/StorageStatsSource$AppStorageStats;

    if-nez p1, :cond_6

    const/4 p1, 0x1

    goto :goto_7

    :cond_6
    const/4 p1, 0x0

    .line 104
    :goto_7
    iput-boolean p1, p0, Lcom/android/settings/applications/AppStorageSizesController;->mLastResultFailed:Z

    return-void
.end method

.method public updateUi(Landroid/content/Context;)V
    .registers 11

    .line 65
    iget-object v0, p0, Lcom/android/settings/applications/AppStorageSizesController;->mLastResult:Lcom/android/settingslib/applications/StorageStatsSource$AppStorageStats;

    if-nez v0, :cond_22

    .line 66
    iget-boolean p1, p0, Lcom/android/settings/applications/AppStorageSizesController;->mLastResultFailed:Z

    if-eqz p1, :cond_b

    iget p1, p0, Lcom/android/settings/applications/AppStorageSizesController;->mError:I

    goto :goto_d

    :cond_b
    iget p1, p0, Lcom/android/settings/applications/AppStorageSizesController;->mComputing:I

    .line 68
    :goto_d
    iget-object v0, p0, Lcom/android/settings/applications/AppStorageSizesController;->mAppSize:Landroidx/preference/Preference;

    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setSummary(I)V

    .line 69
    iget-object v0, p0, Lcom/android/settings/applications/AppStorageSizesController;->mDataSize:Landroidx/preference/Preference;

    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setSummary(I)V

    .line 70
    iget-object v0, p0, Lcom/android/settings/applications/AppStorageSizesController;->mCacheSize:Landroidx/preference/Preference;

    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setSummary(I)V

    .line 71
    iget-object p0, p0, Lcom/android/settings/applications/AppStorageSizesController;->mTotalSize:Landroidx/preference/Preference;

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setSummary(I)V

    goto :goto_90

    .line 73
    :cond_22
    invoke-interface {v0}, Lcom/android/settingslib/applications/StorageStatsSource$AppStorageStats;->getCodeBytes()J

    move-result-wide v0

    .line 75
    iget-boolean v2, p0, Lcom/android/settings/applications/AppStorageSizesController;->mDataCleared:Z

    const-wide/16 v3, 0x0

    if-eqz v2, :cond_2e

    move-wide v5, v3

    goto :goto_3b

    :cond_2e
    iget-object v2, p0, Lcom/android/settings/applications/AppStorageSizesController;->mLastResult:Lcom/android/settingslib/applications/StorageStatsSource$AppStorageStats;

    invoke-interface {v2}, Lcom/android/settingslib/applications/StorageStatsSource$AppStorageStats;->getDataBytes()J

    move-result-wide v5

    iget-object v2, p0, Lcom/android/settings/applications/AppStorageSizesController;->mLastResult:Lcom/android/settingslib/applications/StorageStatsSource$AppStorageStats;

    invoke-interface {v2}, Lcom/android/settingslib/applications/StorageStatsSource$AppStorageStats;->getCacheBytes()J

    move-result-wide v7

    sub-long/2addr v5, v7

    .line 76
    :goto_3b
    iget-wide v7, p0, Lcom/android/settings/applications/AppStorageSizesController;->mLastCodeSize:J

    cmp-long v2, v7, v0

    if-eqz v2, :cond_4c

    .line 77
    iput-wide v0, p0, Lcom/android/settings/applications/AppStorageSizesController;->mLastCodeSize:J

    .line 78
    iget-object v2, p0, Lcom/android/settings/applications/AppStorageSizesController;->mAppSize:Landroidx/preference/Preference;

    invoke-direct {p0, p1, v0, v1}, Lcom/android/settings/applications/AppStorageSizesController;->getSizeStr(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 80
    :cond_4c
    iget-wide v7, p0, Lcom/android/settings/applications/AppStorageSizesController;->mLastDataSize:J

    cmp-long v2, v7, v5

    if-eqz v2, :cond_5d

    .line 81
    iput-wide v5, p0, Lcom/android/settings/applications/AppStorageSizesController;->mLastDataSize:J

    .line 82
    iget-object v2, p0, Lcom/android/settings/applications/AppStorageSizesController;->mDataSize:Landroidx/preference/Preference;

    invoke-direct {p0, p1, v5, v6}, Lcom/android/settings/applications/AppStorageSizesController;->getSizeStr(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 84
    :cond_5d
    iget-boolean v2, p0, Lcom/android/settings/applications/AppStorageSizesController;->mDataCleared:Z

    if-nez v2, :cond_6c

    iget-boolean v2, p0, Lcom/android/settings/applications/AppStorageSizesController;->mCachedCleared:Z

    if-eqz v2, :cond_66

    goto :goto_6c

    :cond_66
    iget-object v2, p0, Lcom/android/settings/applications/AppStorageSizesController;->mLastResult:Lcom/android/settingslib/applications/StorageStatsSource$AppStorageStats;

    invoke-interface {v2}, Lcom/android/settingslib/applications/StorageStatsSource$AppStorageStats;->getCacheBytes()J

    move-result-wide v3

    .line 85
    :cond_6c
    :goto_6c
    iget-wide v7, p0, Lcom/android/settings/applications/AppStorageSizesController;->mLastCacheSize:J

    cmp-long v2, v7, v3

    if-eqz v2, :cond_7d

    .line 86
    iput-wide v3, p0, Lcom/android/settings/applications/AppStorageSizesController;->mLastCacheSize:J

    .line 87
    iget-object v2, p0, Lcom/android/settings/applications/AppStorageSizesController;->mCacheSize:Landroidx/preference/Preference;

    invoke-direct {p0, p1, v3, v4}, Lcom/android/settings/applications/AppStorageSizesController;->getSizeStr(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_7d
    add-long/2addr v0, v5

    add-long/2addr v0, v3

    .line 91
    iget-wide v2, p0, Lcom/android/settings/applications/AppStorageSizesController;->mLastTotalSize:J

    cmp-long v2, v2, v0

    if-eqz v2, :cond_90

    .line 92
    iput-wide v0, p0, Lcom/android/settings/applications/AppStorageSizesController;->mLastTotalSize:J

    .line 93
    iget-object v2, p0, Lcom/android/settings/applications/AppStorageSizesController;->mTotalSize:Landroidx/preference/Preference;

    invoke-direct {p0, p1, v0, v1}, Lcom/android/settings/applications/AppStorageSizesController;->getSizeStr(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_90
    :goto_90
    return-void
.end method
