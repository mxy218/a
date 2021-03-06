.class public Lcom/android/settingslib/location/RecentLocationApps;
.super Ljava/lang/Object;
.source "RecentLocationApps.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/location/RecentLocationApps$Request;
    }
.end annotation


# static fields
.field static final ANDROID_SYSTEM_PACKAGE_NAME:Ljava/lang/String; = "android"
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final LOCATION_PERMISSION_OPS:[I
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final LOCATION_REQUEST_OPS:[I
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "RecentLocationApps"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDrawableFactory:Landroid/util/IconDrawableFactory;

.field private final mPackageManager:Landroid/content/pm/PackageManager;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 51
    fill-array-data v1, :array_10

    sput-object v1, Lcom/android/settingslib/location/RecentLocationApps;->LOCATION_REQUEST_OPS:[I

    new-array v0, v0, [I

    .line 56
    fill-array-data v0, :array_18

    sput-object v0, Lcom/android/settingslib/location/RecentLocationApps;->LOCATION_PERMISSION_OPS:[I

    return-void

    :array_10
    .array-data 4
        0x29
        0x2a
    .end array-data

    :array_18
    .array-data 4
        0x1
        0x0
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lcom/android/settingslib/location/RecentLocationApps;->mContext:Landroid/content/Context;

    .line 67
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/location/RecentLocationApps;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 68
    invoke-static {p1}, Landroid/util/IconDrawableFactory;->newInstance(Landroid/content/Context;)Landroid/util/IconDrawableFactory;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settingslib/location/RecentLocationApps;->mDrawableFactory:Landroid/util/IconDrawableFactory;

    return-void
.end method

.method private getRequestFromOps(JLandroid/app/AppOpsManager$PackageOps;)Lcom/android/settingslib/location/RecentLocationApps$Request;
    .registers 19

    move-object v0, p0

    const-string v1, ", userId "

    .line 164
    invoke-virtual/range {p3 .. p3}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v12

    .line 165
    invoke-virtual/range {p3 .. p3}, Landroid/app/AppOpsManager$PackageOps;->getOps()Ljava/util/List;

    move-result-object v2

    const-wide/32 v3, 0x5265c00

    sub-long v3, p1, v3

    .line 171
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    move-wide v9, v6

    move v7, v5

    :cond_19
    :goto_19
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/AppOpsManager$OpEntry;

    .line 172
    invoke-virtual {v6}, Landroid/app/AppOpsManager$OpEntry;->isRunning()Z

    move-result v8

    const/4 v11, 0x1

    if-nez v8, :cond_34

    invoke-virtual {v6}, Landroid/app/AppOpsManager$OpEntry;->getTime()J

    move-result-wide v13

    cmp-long v8, v13, v3

    if-ltz v8, :cond_19

    .line 173
    :cond_34
    invoke-virtual {v6}, Landroid/app/AppOpsManager$OpEntry;->getTime()J

    move-result-wide v8

    invoke-virtual {v6}, Landroid/app/AppOpsManager$OpEntry;->getDuration()J

    move-result-wide v13

    add-long v9, v8, v13

    .line 174
    invoke-virtual {v6}, Landroid/app/AppOpsManager$OpEntry;->getOp()I

    move-result v6

    const/16 v8, 0x29

    if-eq v6, v8, :cond_4d

    const/16 v8, 0x2a

    if-eq v6, v8, :cond_4b

    goto :goto_19

    :cond_4b
    move v7, v11

    goto :goto_19

    :cond_4d
    move v5, v11

    goto :goto_19

    :cond_4f
    const/4 v13, 0x0

    if-nez v7, :cond_74

    if-nez v5, :cond_74

    .line 188
    sget-object v0, Lcom/android/settingslib/location/RecentLocationApps;->TAG:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_73

    .line 189
    sget-object v0, Lcom/android/settingslib/location/RecentLocationApps;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " hadn\'t used location within the time interval."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_73
    return-object v13

    .line 195
    :cond_74
    invoke-virtual/range {p3 .. p3}, Landroid/app/AppOpsManager$PackageOps;->getUid()I

    move-result v2

    .line 196
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v14

    .line 200
    :try_start_7c
    iget-object v2, v0, Lcom/android/settingslib/location/RecentLocationApps;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v3, 0x80

    invoke-virtual {v2, v12, v3, v14}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    if-nez v2, :cond_a3

    .line 203
    sget-object v0, Lcom/android/settingslib/location/RecentLocationApps;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Null application info retrieved for package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v13

    .line 208
    :cond_a3
    new-instance v4, Landroid/os/UserHandle;

    invoke-direct {v4, v14}, Landroid/os/UserHandle;-><init>(I)V

    .line 209
    iget-object v3, v0, Lcom/android/settingslib/location/RecentLocationApps;->mDrawableFactory:Landroid/util/IconDrawableFactory;

    invoke-virtual {v3, v2, v14}, Landroid/util/IconDrawableFactory;->getBadgedIcon(Landroid/content/pm/ApplicationInfo;I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 210
    iget-object v3, v0, Lcom/android/settingslib/location/RecentLocationApps;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, v2}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v6

    .line 211
    iget-object v0, v0, Lcom/android/settingslib/location/RecentLocationApps;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v6, v4}, Landroid/content/pm/PackageManager;->getUserBadgedLabel(Ljava/lang/CharSequence;Landroid/os/UserHandle;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 212
    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_c6

    move-object v8, v13

    goto :goto_c7

    :cond_c6
    move-object v8, v0

    .line 217
    :goto_c7
    new-instance v0, Lcom/android/settingslib/location/RecentLocationApps$Request;

    const/4 v11, 0x0

    move-object v2, v0

    move-object v3, v12

    invoke-direct/range {v2 .. v11}, Lcom/android/settingslib/location/RecentLocationApps$Request;-><init>(Ljava/lang/String;Landroid/os/UserHandle;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;ZLjava/lang/CharSequence;JLcom/android/settingslib/location/RecentLocationApps$1;)V
    :try_end_cf
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7c .. :try_end_cf} :catch_d1

    move-object v13, v0

    goto :goto_ee

    .line 220
    :catch_d1
    sget-object v0, Lcom/android/settingslib/location/RecentLocationApps;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "package name not found for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_ee
    return-object v13
.end method


# virtual methods
.method public getAppList(Z)Ljava/util/List;
    .registers 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Lcom/android/settingslib/location/RecentLocationApps$Request;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 77
    iget-object v1, v0, Lcom/android/settingslib/location/RecentLocationApps;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 79
    iget-object v2, v0, Lcom/android/settingslib/location/RecentLocationApps;->mContext:Landroid/content/Context;

    const-string v3, "appops"

    .line 80
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AppOpsManager;

    .line 81
    sget-object v3, Lcom/android/settingslib/location/RecentLocationApps;->LOCATION_REQUEST_OPS:[I

    invoke-virtual {v2, v3}, Landroid/app/AppOpsManager;->getPackagesForOps([I)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1f

    .line 83
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    goto :goto_20

    :cond_1f
    const/4 v4, 0x0

    .line 86
    :goto_20
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 87
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 88
    iget-object v8, v0, Lcom/android/settingslib/location/RecentLocationApps;->mContext:Landroid/content/Context;

    const-string/jumbo v9, "user"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/UserManager;

    .line 89
    invoke-virtual {v8}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v8

    const/4 v9, 0x0

    :goto_39
    if-ge v9, v4, :cond_b4

    .line 92
    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/AppOpsManager$PackageOps;

    .line 93
    invoke-virtual {v10}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v11

    .line 94
    invoke-virtual {v10}, Landroid/app/AppOpsManager$PackageOps;->getUid()I

    move-result v12

    .line 95
    invoke-static {v12}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v13

    .line 98
    invoke-interface {v8, v13}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_5c

    move-object/from16 v18, v1

    move-object/from16 v17, v2

    move/from16 v16, v4

    move-object/from16 v19, v8

    goto :goto_a9

    :cond_5c
    if-nez p1, :cond_95

    .line 105
    sget-object v14, Lcom/android/settingslib/location/RecentLocationApps;->LOCATION_PERMISSION_OPS:[I

    array-length v15, v14

    const/4 v3, 0x0

    :goto_62
    if-ge v3, v15, :cond_95

    aget v16, v14, v3

    move-object/from16 v17, v2

    .line 106
    invoke-static/range {v16 .. v16}, Landroid/app/AppOpsManager;->opToPermission(I)Ljava/lang/String;

    move-result-object v2

    move/from16 v16, v4

    .line 107
    invoke-virtual {v1, v2, v11, v13}, Landroid/content/pm/PackageManager;->getPermissionFlags(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)I

    move-result v4

    move-object/from16 v18, v1

    .line 109
    iget-object v1, v0, Lcom/android/settingslib/location/RecentLocationApps;->mContext:Landroid/content/Context;

    move-object/from16 v19, v8

    const/4 v8, -0x1

    invoke-static {v1, v2, v8, v12, v11}, Landroid/content/PermissionChecker;->checkPermissionForPreflight(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;)I

    move-result v1

    if-nez v1, :cond_84

    and-int/lit16 v1, v4, 0x100

    if-nez v1, :cond_8a

    goto :goto_88

    :cond_84
    and-int/lit16 v1, v4, 0x200

    if-nez v1, :cond_8a

    :goto_88
    const/4 v3, 0x0

    goto :goto_9e

    :cond_8a
    add-int/lit8 v3, v3, 0x1

    move/from16 v4, v16

    move-object/from16 v2, v17

    move-object/from16 v1, v18

    move-object/from16 v8, v19

    goto :goto_62

    :cond_95
    move-object/from16 v18, v1

    move-object/from16 v17, v2

    move/from16 v16, v4

    move-object/from16 v19, v8

    const/4 v3, 0x1

    :goto_9e
    if-eqz v3, :cond_a9

    .line 128
    invoke-direct {v0, v6, v7, v10}, Lcom/android/settingslib/location/RecentLocationApps;->getRequestFromOps(JLandroid/app/AppOpsManager$PackageOps;)Lcom/android/settingslib/location/RecentLocationApps$Request;

    move-result-object v1

    if-eqz v1, :cond_a9

    .line 130
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a9
    :goto_a9
    add-int/lit8 v9, v9, 0x1

    move/from16 v4, v16

    move-object/from16 v2, v17

    move-object/from16 v1, v18

    move-object/from16 v8, v19

    goto :goto_39

    :cond_b4
    return-object v5
.end method

.method public getAppListSorted(Z)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Lcom/android/settingslib/location/RecentLocationApps$Request;",
            ">;"
        }
    .end annotation

    .line 144
    invoke-virtual {p0, p1}, Lcom/android/settingslib/location/RecentLocationApps;->getAppList(Z)Ljava/util/List;

    move-result-object p1

    .line 146
    new-instance v0, Lcom/android/settingslib/location/RecentLocationApps$1;

    invoke-direct {v0, p0}, Lcom/android/settingslib/location/RecentLocationApps$1;-><init>(Lcom/android/settingslib/location/RecentLocationApps;)V

    invoke-static {v0}, Ljava/util/Collections;->reverseOrder(Ljava/util/Comparator;)Ljava/util/Comparator;

    move-result-object p0

    invoke-static {p1, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object p1
.end method
