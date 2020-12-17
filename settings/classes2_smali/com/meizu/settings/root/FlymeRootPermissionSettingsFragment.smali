.class public Lcom/meizu/settings/root/FlymeRootPermissionSettingsFragment;
.super Lcom/meizu/settings/RestrictedSettingsFragment;
.source "FlymeRootPermissionSettingsFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/settings/root/FlymeRootPermissionSettingsFragment$EmptyPreference;,
        Lcom/meizu/settings/root/FlymeRootPermissionSettingsFragment$AppItemPreference;
    }
.end annotation


# instance fields
.field private mAllAppHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mAllowedCategory:Landroid/preference/PreferenceCategory;

.field private mAllowedOrDisallowedAppHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected mAppIconFetcher:Lcom/meizu/settings/utils/cache/AppIconFetcher;

.field private mAskCategory:Landroid/preference/PreferenceCategory;

.field protected mDefaultIcon:Landroid/graphics/Bitmap;

.field private mDisallowedCategory:Landroid/preference/PreferenceCategory;

.field private mEmptyView:Landroid/preference/Preference;

.field mEntrieValues:[Ljava/lang/String;

.field mEntries:[Ljava/lang/String;

.field private mSelectedAppItemPreference:Lcom/meizu/settings/root/FlymeRootPermissionSettingsFragment$AppItemPreference;


# direct methods
.method public constructor <init>()V
    .registers 4

    const/4 v0, 0x0

    .line 82
    invoke-direct {p0, v0}, Lcom/meizu/settings/RestrictedSettingsFragment;-><init>(Ljava/lang/String;)V

    .line 40
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/meizu/settings/root/FlymeRootPermissionSettingsFragment;->mAllAppHashMap:Ljava/util/HashMap;

    .line 43
    iput-object v0, p0, Lcom/meizu/settings/root/FlymeRootPermissionSettingsFragment;->mAllowedCategory:Landroid/preference/PreferenceCategory;

    .line 44
    iput-object v0, p0, Lcom/meizu/settings/root/FlymeRootPermissionSettingsFragment;->mDisallowedCategory:Landroid/preference/PreferenceCategory;

    .line 45
    iput-object v0, p0, Lcom/meizu/settings/root/FlymeRootPermissionSettingsFragment;->mAskCategory:Landroid/preference/PreferenceCategory;

    .line 46
    iput-object v0, p0, Lcom/meizu/settings/root/FlymeRootPermissionSettingsFragment;->mEmptyView:Landroid/preference/Preference;

    .line 48
    iput-object v0, p0, Lcom/meizu/settings/root/FlymeRootPermissionSettingsFragment;->mAppIconFetcher:Lcom/meizu/settings/utils/cache/AppIconFetcher;

    const-string v0, "0"

    const-string v1, "1"

    const-string v2, "2"

    .line 58
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/root/FlymeRootPermissionSettingsFragment;->mEntrieValues:[Ljava/lang/String;

    return-void
.end method

.method private addPreferences(Landroid/preference/PreferenceCategory;I)V
    .registers 8

    .line 114
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 115
    iget-object v1, p0, Lcom/meizu/settings/root/FlymeRootPermissionSettingsFragment;->mAllAppHashMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    .line 116
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 117
    :catch_12
    :cond_12
    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_73

    .line 118
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 119
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, p2, :cond_12

    .line 123
    :try_start_2a
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/16 v3, 0x80

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2
    :try_end_36
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2a .. :try_end_36} :catch_12

    .line 129
    new-instance v3, Lcom/meizu/settings/root/FlymeRootPermissionSettingsFragment$AppItemPreference;

    .line 130
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lcom/meizu/settings/root/FlymeRootPermissionSettingsFragment$AppItemPreference;-><init>(Lcom/meizu/settings/root/FlymeRootPermissionSettingsFragment;Landroid/content/Context;)V

    .line 131
    invoke-virtual {v2, v0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/preference/ListPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 135
    iget-object v4, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/meizu/settings/root/FlymeRootPermissionSettingsFragment$AppItemPreference;->setPkgName(Ljava/lang/String;)V

    .line 137
    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v2}, Landroid/preference/ListPreference;->setKey(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 139
    invoke-virtual {v3, v2}, Landroid/preference/ListPreference;->setPersistent(Z)V

    .line 140
    iget-object v2, p0, Lcom/meizu/settings/root/FlymeRootPermissionSettingsFragment;->mEntries:[Ljava/lang/String;

    invoke-virtual {v3, v2}, Landroid/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 141
    iget-object v2, p0, Lcom/meizu/settings/root/FlymeRootPermissionSettingsFragment;->mEntrieValues:[Ljava/lang/String;

    invoke-virtual {v3, v2}, Landroid/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 142
    iget-object v2, p0, Lcom/meizu/settings/root/FlymeRootPermissionSettingsFragment;->mEntrieValues:[Ljava/lang/String;

    aget-object v2, v2, p2

    invoke-virtual {v3, v2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 143
    iget-object v2, p0, Lcom/meizu/settings/root/FlymeRootPermissionSettingsFragment;->mEntries:[Ljava/lang/String;

    aget-object v2, v2, p2

    invoke-virtual {v3, v2}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 144
    invoke-virtual {v3, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 145
    invoke-virtual {p1, v3}, Landroid/preference/PreferenceCategory;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_12

    :cond_73
    return-void
.end method

.method static drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .registers 6

    const/4 v0, 0x0

    .line 411
    :try_start_1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_b

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    goto :goto_d

    .line 412
    :cond_b
    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 413
    :goto_d
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    .line 414
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    .line 413
    invoke-static {v2, v3, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 415
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 417
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    .line 418
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    const/4 v4, 0x0

    .line 417
    invoke-virtual {p0, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 419
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_2d} :catch_2d

    :catch_2d
    return-object v0
.end method

.method private initAppIconFether(Landroid/content/Context;)V
    .registers 3

    .line 391
    iget-object v0, p0, Lcom/meizu/settings/root/FlymeRootPermissionSettingsFragment;->mDefaultIcon:Landroid/graphics/Bitmap;

    if-nez v0, :cond_12

    .line 392
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 393
    invoke-static {v0}, Lcom/meizu/settings/root/FlymeRootPermissionSettingsFragment;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/root/FlymeRootPermissionSettingsFragment;->mDefaultIcon:Landroid/graphics/Bitmap;

    .line 396
    :cond_12
    new-instance v0, Lcom/meizu/settings/utils/cache/AppIconFetcher;

    invoke-direct {v0, p1}, Lcom/meizu/settings/utils/cache/AppIconFetcher;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/meizu/settings/root/FlymeRootPermissionSettingsFragment;->mAppIconFetcher:Lcom/meizu/settings/utils/cache/AppIconFetcher;

    .line 397
    new-instance p1, Lcom/meizu/settings/utils/cache/ImageCache$ImageCacheParams;

    invoke-direct {p1}, Lcom/meizu/settings/utils/cache/ImageCache$ImageCacheParams;-><init>()V

    const v0, 0x3e4ccccd  # 0.2f

    .line 398
    invoke-virtual {p1, v0}, Lcom/meizu/settings/utils/cache/ImageCache$ImageCacheParams;->setMemCacheSizePercent(F)V

    .line 399
    iget-object v0, p0, Lcom/meizu/settings/root/FlymeRootPermissionSettingsFragment;->mAppIconFetcher:Lcom/meizu/settings/utils/cache/AppIconFetcher;

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Lcom/meizu/settings/utils/cache/ImageWorker;->addImageCache(Landroid/app/FragmentManager;Lcom/meizu/settings/utils/cache/ImageCache$ImageCacheParams;)V

    return-void
.end method

.method private initView()V
    .registers 14

    .line 236
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/meizu/settings/root/FlymeRootPermissionDataHelper;->getStorePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 235
    invoke-static {v0}, Lcom/meizu/settings/root/FlymeRootPermissionDataHelper;->loadHashMap(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/settings/root/FlymeRootPermissionSettingsFragment;->mAllowedOrDisallowedAppHashMap:Ljava/util/HashMap;

    .line 238
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 239
    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 240
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/16 v2, 0x80

    .line 242
    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v2

    .line 248
    iget-object v3, p0, Lcom/meizu/settings/root/FlymeRootPermissionSettingsFragment;->mAllAppHashMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    move v6, v5

    move v7, v6

    .line 249
    :goto_2b
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v8

    const/4 v9, 0x2

    const/4 v10, 0x1

    if-ge v4, v8, :cond_74

    .line 250
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ApplicationInfo;

    .line 253
    iget v11, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v1, v11}, Lcom/meizu/settings/root/FlymeRootPermissionSettingsFragment;->isSystemApp(Landroid/content/pm/PackageManager;I)Z

    move-result v11

    if-eqz v11, :cond_42

    goto :goto_71

    .line 257
    :cond_42
    iget-object v11, p0, Lcom/meizu/settings/root/FlymeRootPermissionSettingsFragment;->mAllowedOrDisallowedAppHashMap:Ljava/util/HashMap;

    iget-object v12, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 258
    invoke-virtual {v11, v12}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_64

    .line 259
    iget-object v10, p0, Lcom/meizu/settings/root/FlymeRootPermissionSettingsFragment;->mAllowedOrDisallowedAppHashMap:Ljava/util/HashMap;

    iget-object v11, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 260
    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-ne v10, v9, :cond_5f

    add-int/lit8 v5, v5, 0x1

    goto :goto_66

    :cond_5f
    if-nez v10, :cond_66

    add-int/lit8 v7, v7, 0x1

    goto :goto_66

    :cond_64
    add-int/lit8 v6, v6, 0x1

    .line 269
    :cond_66
    :goto_66
    iget-object v9, p0, Lcom/meizu/settings/root/FlymeRootPermissionSettingsFragment;->mAllAppHashMap:Ljava/util/HashMap;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v8, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_71
    add-int/lit8 v4, v4, 0x1

    goto :goto_2b

    .line 272
    :cond_74
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1}, Landroid/preference/PreferenceScreen;->removeAll()V

    .line 273
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v10}, Landroid/preference/PreferenceScreen;->setOrderingAsAdded(Z)V

    .line 276
    iget-object v1, p0, Lcom/meizu/settings/root/FlymeRootPermissionSettingsFragment;->mAllowedCategory:Landroid/preference/PreferenceCategory;

    if-nez v1, :cond_a6

    .line 277
    new-instance v1, Landroid/preference/PreferenceCategory;

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/meizu/settings/root/FlymeRootPermissionSettingsFragment;->mAllowedCategory:Landroid/preference/PreferenceCategory;

    .line 279
    iget-object v1, p0, Lcom/meizu/settings/root/FlymeRootPermissionSettingsFragment;->mAllowedCategory:Landroid/preference/PreferenceCategory;

    const-string v2, "key_allowed"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->setKey(Ljava/lang/String;)V

    .line 280
    iget-object v1, p0, Lcom/meizu/settings/root/FlymeRootPermissionSettingsFragment;->mAllowedCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v1, v10}, Landroid/preference/PreferenceCategory;->setEnabled(Z)V

    .line 281
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/settings/root/FlymeRootPermissionSettingsFragment;->mAllowedCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    :cond_a6
    if-lez v5, :cond_d4

    .line 286
    iget-object v1, p0, Lcom/meizu/settings/root/FlymeRootPermissionSettingsFragment;->mAllowedCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f1211ee

    new-array v8, v10, [Ljava/lang/Object;

    .line 287
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v8, v3

    .line 286
    invoke-virtual {v2, v4, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->setTitle(Ljava/lang/CharSequence;)V

    .line 288
    iget-object v1, p0, Lcom/meizu/settings/root/FlymeRootPermissionSettingsFragment;->mAllowedCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v1}, Landroid/preference/PreferenceCategory;->removeAll()V

    .line 289
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/settings/root/FlymeRootPermissionSettingsFragment;->mAllowedCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 290
    iget-object v1, p0, Lcom/meizu/settings/root/FlymeRootPermissionSettingsFragment;->mAllowedCategory:Landroid/preference/PreferenceCategory;

    invoke-direct {p0, v1, v9}, Lcom/meizu/settings/root/FlymeRootPermissionSettingsFragment;->addPreferences(Landroid/preference/PreferenceCategory;I)V

    goto :goto_dd

    .line 293
    :cond_d4
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/settings/root/FlymeRootPermissionSettingsFragment;->mAllowedCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 297
    :goto_dd
    iget-object v1, p0, Lcom/meizu/settings/root/FlymeRootPermissionSettingsFragment;->mDisallowedCategory:Landroid/preference/PreferenceCategory;

    if-nez v1, :cond_fd

    .line 298
    new-instance v1, Landroid/preference/PreferenceCategory;

    invoke-direct {v1, v0}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/meizu/settings/root/FlymeRootPermissionSettingsFragment;->mDisallowedCategory:Landroid/preference/PreferenceCategory;

    .line 299
    iget-object v1, p0, Lcom/meizu/settings/root/FlymeRootPermissionSettingsFragment;->mDisallowedCategory:Landroid/preference/PreferenceCategory;

    const-string v2, "key_disallowed"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->setKey(Ljava/lang/String;)V

    .line 300
    iget-object v1, p0, Lcom/meizu/settings/root/FlymeRootPermissionSettingsFragment;->mDisallowedCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v1, v10}, Landroid/preference/PreferenceCategory;->setEnabled(Z)V

    .line 301
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/settings/root/FlymeRootPermissionSettingsFragment;->mDisallowedCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    :cond_fd
    if-lez v7, :cond_12b

    .line 304
    iget-object v1, p0, Lcom/meizu/settings/root/FlymeRootPermissionSettingsFragment;->mDisallowedCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f1211f0

    new-array v8, v10, [Ljava/lang/Object;

    .line 305
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v3

    .line 304
    invoke-virtual {v2, v4, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->setTitle(Ljava/lang/CharSequence;)V

    .line 306
    iget-object v1, p0, Lcom/meizu/settings/root/FlymeRootPermissionSettingsFragment;->mDisallowedCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v1}, Landroid/preference/PreferenceCategory;->removeAll()V

    .line 307
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/settings/root/FlymeRootPermissionSettingsFragment;->mDisallowedCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 308
    iget-object v1, p0, Lcom/meizu/settings/root/FlymeRootPermissionSettingsFragment;->mDisallowedCategory:Landroid/preference/PreferenceCategory;

    invoke-direct {p0, v1, v3}, Lcom/meizu/settings/root/FlymeRootPermissionSettingsFragment;->addPreferences(Landroid/preference/PreferenceCategory;I)V

    goto :goto_134

    .line 311
    :cond_12b
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/settings/root/FlymeRootPermissionSettingsFragment;->mDisallowedCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 315
    :goto_134
    iget-object v1, p0, Lcom/meizu/settings/root/FlymeRootPermissionSettingsFragment;->mAskCategory:Landroid/preference/PreferenceCategory;

    if-nez v1, :cond_154

    .line 316
    new-instance v1, Landroid/preference/PreferenceCategory;

    invoke-direct {v1, v0}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/meizu/settings/root/FlymeRootPermissionSettingsFragment;->mAskCategory:Landroid/preference/PreferenceCategory;

    .line 317
    iget-object v1, p0, Lcom/meizu/settings/root/FlymeRootPermissionSettingsFragment;->mAskCategory:Landroid/preference/PreferenceCategory;

    const-string v2, "key_ask"

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->setKey(Ljava/lang/String;)V

    .line 318
    iget-object v1, p0, Lcom/meizu/settings/root/FlymeRootPermissionSettingsFragment;->mAskCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v1, v10}, Landroid/preference/PreferenceCategory;->setEnabled(Z)V

    .line 319
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/settings/root/FlymeRootPermissionSettingsFragment;->mAskCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    :cond_154
    if-lez v6, :cond_182

    .line 322
    iget-object v1, p0, Lcom/meizu/settings/root/FlymeRootPermissionSettingsFragment;->mAskCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f1211ef

    new-array v8, v10, [Ljava/lang/Object;

    .line 323
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v3

    .line 322
    invoke-virtual {v2, v4, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceCategory;->setTitle(Ljava/lang/CharSequence;)V

    .line 324
    iget-object v1, p0, Lcom/meizu/settings/root/FlymeRootPermissionSettingsFragment;->mAskCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v1}, Landroid/preference/PreferenceCategory;->removeAll()V

    .line 325
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/settings/root/FlymeRootPermissionSettingsFragment;->mAskCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 326
    iget-object v1, p0, Lcom/meizu/settings/root/FlymeRootPermissionSettingsFragment;->mAskCategory:Landroid/preference/PreferenceCategory;

    invoke-direct {p0, v1, v10}, Lcom/meizu/settings/root/FlymeRootPermissionSettingsFragment;->addPreferences(Landroid/preference/PreferenceCategory;I)V

    goto :goto_18b

    .line 329
    :cond_182
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/settings/root/FlymeRootPermissionSettingsFragment;->mAskCategory:Landroid/preference/PreferenceCategory;

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :goto_18b
    if-gtz v5, :cond_1b4

    if-gtz v7, :cond_1b4

    if-gtz v6, :cond_1b4

    .line 334
    iget-object v1, p0, Lcom/meizu/settings/root/FlymeRootPermissionSettingsFragment;->mEmptyView:Landroid/preference/Preference;

    if-nez v1, :cond_1a3

    .line 335
    new-instance v1, Lcom/meizu/settings/root/FlymeRootPermissionSettingsFragment$EmptyPreference;

    invoke-direct {v1, p0, v0}, Lcom/meizu/settings/root/FlymeRootPermissionSettingsFragment$EmptyPreference;-><init>(Lcom/meizu/settings/root/FlymeRootPermissionSettingsFragment;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/meizu/settings/root/FlymeRootPermissionSettingsFragment;->mEmptyView:Landroid/preference/Preference;

    .line 336
    iget-object v0, p0, Lcom/meizu/settings/root/FlymeRootPermissionSettingsFragment;->mEmptyView:Landroid/preference/Preference;

    const-string v1, "key_empty"

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 338
    :cond_1a3
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/settings/root/FlymeRootPermissionSettingsFragment;->mEmptyView:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    .line 340
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object p0

    invoke-static {p0, v3}, Lcom/meizu/settings/utils/MzUtils;->showPreferenceScreenBottomDivider(Landroid/preference/PreferenceScreen;Z)V

    goto :goto_1c1

    .line 343
    :cond_1b4
    iget-object v0, p0, Lcom/meizu/settings/root/FlymeRootPermissionSettingsFragment;->mEmptyView:Landroid/preference/Preference;

    if-eqz v0, :cond_1c1

    .line 344
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object p0, p0, Lcom/meizu/settings/root/FlymeRootPermissionSettingsFragment;->mEmptyView:Landroid/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :cond_1c1
    :goto_1c1
    return-void
.end method

.method public static isSystemApp(Landroid/content/pm/PackageManager;I)Z
    .registers 9

    const/4 v0, 0x1

    const/16 v1, 0x3e8

    if-eq p1, v1, :cond_3c

    const/4 v1, -0x4

    if-eq p1, v1, :cond_3c

    const/4 v1, -0x5

    if-ne p1, v1, :cond_c

    goto :goto_3c

    .line 356
    :cond_c
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    if-eqz p1, :cond_3b

    .line 357
    array-length v2, p1

    if-lez v2, :cond_3b

    .line 358
    array-length v2, p1

    move v3, v1

    :goto_18
    if-ge v3, v2, :cond_3b

    aget-object v4, p1, v3

    const/16 v5, 0x80

    .line 361
    :try_start_1e
    invoke-virtual {p0, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4
    :try_end_22
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1e .. :try_end_22} :catch_23

    goto :goto_24

    :catch_23
    const/4 v4, 0x0

    :goto_24
    if-eqz v4, :cond_38

    .line 367
    iget v5, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v6, v5, 0x1

    if-nez v6, :cond_37

    and-int/lit16 v5, v5, 0x80

    if-nez v5, :cond_37

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    const/high16 v5, -0x80000000

    and-int/2addr v4, v5

    if-eqz v4, :cond_38

    :cond_37
    return v0

    :cond_38
    add-int/lit8 v3, v3, 0x1

    goto :goto_18

    :cond_3b
    return v1

    :cond_3c
    :goto_3c
    return v0
.end method

.method private uninitAppIconFetcher()V
    .registers 1

    .line 403
    iget-object p0, p0, Lcom/meizu/settings/root/FlymeRootPermissionSettingsFragment;->mAppIconFetcher:Lcom/meizu/settings/utils/cache/AppIconFetcher;

    if-eqz p0, :cond_7

    .line 404
    invoke-virtual {p0}, Lcom/meizu/settings/utils/cache/ImageWorker;->clearCache()V

    :cond_7
    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 4

    .line 153
    invoke-super {p0, p1, p2, p3}, Lcom/meizu/settings/RestrictedSettingsFragment;->onActivityResult(IILandroid/content/Intent;)V

    const/4 p1, -0x1

    if-ne p2, p1, :cond_32

    .line 155
    iget-object p1, p0, Lcom/meizu/settings/root/FlymeRootPermissionSettingsFragment;->mSelectedAppItemPreference:Lcom/meizu/settings/root/FlymeRootPermissionSettingsFragment$AppItemPreference;

    if-eqz p1, :cond_4d

    .line 160
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1}, Lcom/meizu/settings/root/FlymeRootPermissionDataHelper;->getStorePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 159
    invoke-static {p1}, Lcom/meizu/settings/root/FlymeRootPermissionDataHelper;->loadHashMap(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p1

    iput-object p1, p0, Lcom/meizu/settings/root/FlymeRootPermissionSettingsFragment;->mAllowedOrDisallowedAppHashMap:Ljava/util/HashMap;

    .line 161
    iget-object p1, p0, Lcom/meizu/settings/root/FlymeRootPermissionSettingsFragment;->mSelectedAppItemPreference:Lcom/meizu/settings/root/FlymeRootPermissionSettingsFragment$AppItemPreference;

    iget-object p2, p0, Lcom/meizu/settings/root/FlymeRootPermissionSettingsFragment;->mEntrieValues:[Ljava/lang/String;

    iget-object p0, p0, Lcom/meizu/settings/root/FlymeRootPermissionSettingsFragment;->mAllowedOrDisallowedAppHashMap:Ljava/util/HashMap;

    .line 163
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getKey()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    aget-object p0, p2, p0

    .line 162
    invoke-virtual {p1, p0}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_4d

    .line 166
    :cond_32
    iget-object p1, p0, Lcom/meizu/settings/root/FlymeRootPermissionSettingsFragment;->mSelectedAppItemPreference:Lcom/meizu/settings/root/FlymeRootPermissionSettingsFragment$AppItemPreference;

    if-eqz p1, :cond_4d

    .line 167
    iget-object p2, p0, Lcom/meizu/settings/root/FlymeRootPermissionSettingsFragment;->mEntrieValues:[Ljava/lang/String;

    iget-object p0, p0, Lcom/meizu/settings/root/FlymeRootPermissionSettingsFragment;->mAllAppHashMap:Ljava/util/HashMap;

    .line 169
    invoke-virtual {p1}, Landroid/preference/ListPreference;->getKey()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    aget-object p0, p2, p0

    .line 168
    invoke-virtual {p1, p0}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    :cond_4d
    :goto_4d
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 6

    .line 91
    invoke-super {p0, p1}, Lcom/meizu/settings/RestrictedSettingsFragment;->onCreate(Landroid/os/Bundle;)V

    .line 92
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    if-nez p1, :cond_a

    return-void

    .line 97
    :cond_a
    invoke-direct {p0, p1}, Lcom/meizu/settings/root/FlymeRootPermissionSettingsFragment;->initAppIconFether(Landroid/content/Context;)V

    const v0, 0x7f1600d7

    .line 99
    invoke-virtual {p0, v0}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    .line 100
    new-instance v0, Landroid/preference/PreferenceCategory;

    invoke-direct {v0, p1}, Landroid/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 101
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    .line 103
    iput-object v0, p0, Lcom/meizu/settings/root/FlymeRootPermissionSettingsFragment;->mEntries:[Ljava/lang/String;

    .line 104
    iget-object v0, p0, Lcom/meizu/settings/root/FlymeRootPermissionSettingsFragment;->mEntries:[Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f1211f3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 106
    iget-object v0, p0, Lcom/meizu/settings/root/FlymeRootPermissionSettingsFragment;->mEntries:[Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f1211f2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 108
    iget-object p0, p0, Lcom/meizu/settings/root/FlymeRootPermissionSettingsFragment;->mEntries:[Ljava/lang/String;

    const/4 v0, 0x2

    invoke-virtual {p1}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f1211f1

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, p0, v0

    return-void
.end method

.method public onDestroy()V
    .registers 1

    .line 386
    invoke-super {p0}, Lcom/meizu/settings/RestrictedSettingsFragment;->onDestroy()V

    .line 387
    invoke-direct {p0}, Lcom/meizu/settings/root/FlymeRootPermissionSettingsFragment;->uninitAppIconFetcher()V

    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .registers 9

    .line 178
    instance-of v0, p1, Lcom/meizu/settings/root/FlymeRootPermissionSettingsFragment$AppItemPreference;

    const/4 v1, 0x1

    if-nez v0, :cond_6

    return v1

    .line 182
    :cond_6
    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    .line 183
    iget-object v0, p0, Lcom/meizu/settings/root/FlymeRootPermissionSettingsFragment;->mAllAppHashMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, p2, :cond_1f

    return v1

    .line 188
    :cond_1f
    move-object v0, p1

    check-cast v0, Lcom/meizu/settings/root/FlymeRootPermissionSettingsFragment$AppItemPreference;

    iput-object v0, p0, Lcom/meizu/settings/root/FlymeRootPermissionSettingsFragment;->mSelectedAppItemPreference:Lcom/meizu/settings/root/FlymeRootPermissionSettingsFragment$AppItemPreference;

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-ne p2, v2, :cond_6f

    .line 192
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    .line 193
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-class v2, Lcom/meizu/settings/root/FlymeRootRequestActivity;

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const/high16 v0, 0x800000

    .line 194
    invoke-virtual {p2, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 196
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 199
    :try_start_43
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    const/16 v2, 0x80

    invoke-virtual {v0, p1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p1
    :try_end_4d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_43 .. :try_end_4d} :catch_4e

    goto :goto_4f

    :catch_4e
    const/4 p1, 0x0

    :goto_4f
    if-eqz p1, :cond_6e

    .line 206
    iget v0, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    const-string v2, "uid"

    invoke-virtual {p2, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/16 v0, 0x3e8

    const-string v2, "pid"

    .line 207
    invoke-virtual {p2, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 208
    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v0, "package_name"

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "is_edit"

    .line 210
    invoke-virtual {p2, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 211
    invoke-virtual {p0, p2, v3}, Landroid/preference/PreferenceFragment;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_6e
    return v1

    :cond_6f
    if-nez p2, :cond_82

    .line 215
    iget-object v2, p0, Lcom/meizu/settings/root/FlymeRootPermissionSettingsFragment;->mAllowedOrDisallowedAppHashMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    invoke-virtual {v0, v3}, Landroid/preference/ListPreference;->setValueIndex(I)V

    goto :goto_90

    :cond_82
    if-ne p2, v1, :cond_90

    .line 219
    iget-object v2, p0, Lcom/meizu/settings/root/FlymeRootPermissionSettingsFragment;->mAllowedOrDisallowedAppHashMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValueIndex(I)V

    .line 223
    :cond_90
    :goto_90
    iget-object v0, p0, Lcom/meizu/settings/root/FlymeRootPermissionSettingsFragment;->mAllAppHashMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    iget-object p1, p0, Lcom/meizu/settings/root/FlymeRootPermissionSettingsFragment;->mAllowedOrDisallowedAppHashMap:Ljava/util/HashMap;

    .line 226
    invoke-virtual {p0}, Landroid/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-static {p2}, Lcom/meizu/settings/root/FlymeRootPermissionDataHelper;->getStorePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    .line 224
    invoke-static {p1, p2}, Lcom/meizu/settings/root/FlymeRootPermissionDataHelper;->saveHashMap(Ljava/util/HashMap;Ljava/lang/String;)V

    .line 229
    invoke-direct {p0}, Lcom/meizu/settings/root/FlymeRootPermissionSettingsFragment;->initView()V

    return v1
.end method

.method public onResume()V
    .registers 1

    .line 380
    invoke-super {p0}, Lcom/meizu/settings/RestrictedSettingsFragment;->onResume()V

    .line 381
    invoke-direct {p0}, Lcom/meizu/settings/root/FlymeRootPermissionSettingsFragment;->initView()V

    return-void
.end method
