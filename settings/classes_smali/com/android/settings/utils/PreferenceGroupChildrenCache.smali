.class public Lcom/android/settings/utils/PreferenceGroupChildrenCache;
.super Ljava/lang/Object;
.source "PreferenceGroupChildrenCache.java"


# instance fields
.field private mPreferenceCache:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroidx/preference/Preference;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cacheRemoveAllPrefs(Landroidx/preference/PreferenceGroup;)V
    .registers 7

    .line 34
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/utils/PreferenceGroupChildrenCache;->mPreferenceCache:Landroid/util/ArrayMap;

    .line 35
    invoke-virtual {p1}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_c
    if-ge v1, v0, :cond_29

    .line 37
    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v2

    .line 38
    invoke-virtual {v2}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1d

    goto :goto_26

    .line 41
    :cond_1d
    iget-object v3, p0, Lcom/android/settings/utils/PreferenceGroupChildrenCache;->mPreferenceCache:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_26
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_29
    return-void
.end method

.method public getCachedPreference(Ljava/lang/String;)Landroidx/preference/Preference;
    .registers 2

    .line 53
    iget-object p0, p0, Lcom/android/settings/utils/PreferenceGroupChildrenCache;->mPreferenceCache:Landroid/util/ArrayMap;

    if-eqz p0, :cond_b

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/preference/Preference;

    goto :goto_c

    :cond_b
    const/4 p0, 0x0

    :goto_c
    return-object p0
.end method

.method public removeCachedPrefs(Landroidx/preference/PreferenceGroup;)V
    .registers 4

    .line 46
    iget-object v0, p0, Lcom/android/settings/utils/PreferenceGroupChildrenCache;->mPreferenceCache:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/preference/Preference;

    .line 47
    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    goto :goto_a

    :cond_1a
    const/4 p1, 0x0

    .line 49
    iput-object p1, p0, Lcom/android/settings/utils/PreferenceGroupChildrenCache;->mPreferenceCache:Landroid/util/ArrayMap;

    return-void
.end method
