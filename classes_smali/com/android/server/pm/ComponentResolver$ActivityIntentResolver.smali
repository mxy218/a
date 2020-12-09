.class final Lcom/android/server/pm/ComponentResolver$ActivityIntentResolver;
.super Lcom/android/server/IntentResolver;
.source "ComponentResolver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/ComponentResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ActivityIntentResolver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/IntentResolver<",
        "Landroid/content/pm/PackageParser$ActivityIntentInfo;",
        "Landroid/content/pm/ResolveInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private final mActivities:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/content/ComponentName;",
            "Landroid/content/pm/PackageParser$Activity;",
            ">;"
        }
    .end annotation
.end field

.field private mFlags:I


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 1067
    invoke-direct {p0}, Lcom/android/server/IntentResolver;-><init>()V

    .line 1344
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/ComponentResolver$ActivityIntentResolver;->mActivities:Landroid/util/ArrayMap;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/pm/ComponentResolver$1;)V
    .registers 2

    .line 1067
    invoke-direct {p0}, Lcom/android/server/pm/ComponentResolver$ActivityIntentResolver;-><init>()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/pm/ComponentResolver$ActivityIntentResolver;)Landroid/util/ArrayMap;
    .registers 1

    .line 1067
    iget-object p0, p0, Lcom/android/server/pm/ComponentResolver$ActivityIntentResolver;->mActivities:Landroid/util/ArrayMap;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/server/pm/ComponentResolver$ActivityIntentResolver;Landroid/content/pm/PackageParser$Activity;Ljava/lang/String;Ljava/util/List;)V
    .registers 4

    .line 1067
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/pm/ComponentResolver$ActivityIntentResolver;->addActivity(Landroid/content/pm/PackageParser$Activity;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/pm/ComponentResolver$ActivityIntentResolver;Landroid/content/pm/PackageParser$Activity;Ljava/lang/String;)V
    .registers 3

    .line 1067
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/ComponentResolver$ActivityIntentResolver;->removeActivity(Landroid/content/pm/PackageParser$Activity;Ljava/lang/String;)V

    return-void
.end method

.method private addActivity(Landroid/content/pm/PackageParser$Activity;Ljava/lang/String;Ljava/util/List;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageParser$Activity;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageParser$ActivityIntentInfo;",
            ">;)V"
        }
    .end annotation

    .line 1116
    iget-object v0, p0, Lcom/android/server/pm/ComponentResolver$ActivityIntentResolver;->mActivities:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/content/pm/PackageParser$Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1126
    iget-object v0, p1, Landroid/content/pm/PackageParser$Activity;->intents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1127
    const/4 v1, 0x0

    :goto_10
    if-ge v1, v0, :cond_4d

    .line 1128
    iget-object v2, p1, Landroid/content/pm/PackageParser$Activity;->intents:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageParser$ActivityIntentInfo;

    .line 1129
    if-eqz p3, :cond_27

    const-string v3, "activity"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_27

    .line 1130
    invoke-interface {p3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1136
    :cond_27
    invoke-virtual {v2}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->debugCheck()Z

    move-result v3

    if-nez v3, :cond_47

    .line 1137
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "==> For Activity "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "PackageManager"

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1139
    :cond_47
    invoke-virtual {p0, v2}, Lcom/android/server/pm/ComponentResolver$ActivityIntentResolver;->addFilter(Landroid/content/IntentFilter;)V

    .line 1127
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 1141
    :cond_4d
    return-void
.end method

.method private log(Ljava/lang/String;Landroid/content/pm/PackageParser$ActivityIntentInfo;II)V
    .registers 7

    .line 1205
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "; match: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class p1, Landroid/content/IntentFilter;

    .line 1207
    const-string v1, "MATCH_"

    invoke-static {p1, v1, p3}, Landroid/util/DebugUtils;->flagsToString(Ljava/lang/Class;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "; userId: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "; intent info: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1205
    const-string p2, "PackageManager"

    invoke-static {p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1210
    return-void
.end method

.method private removeActivity(Landroid/content/pm/PackageParser$Activity;Ljava/lang/String;)V
    .registers 5

    .line 1144
    iget-object p2, p0, Lcom/android/server/pm/ComponentResolver$ActivityIntentResolver;->mActivities:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/content/pm/PackageParser$Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1151
    iget-object p2, p1, Landroid/content/pm/PackageParser$Activity;->intents:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    .line 1152
    const/4 v0, 0x0

    :goto_10
    if-ge v0, p2, :cond_20

    .line 1153
    iget-object v1, p1, Landroid/content/pm/PackageParser$Activity;->intents:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageParser$ActivityIntentInfo;

    .line 1158
    invoke-virtual {p0, v1}, Lcom/android/server/pm/ComponentResolver$ActivityIntentResolver;->removeFilter(Landroid/content/IntentFilter;)V

    .line 1152
    add-int/lit8 v0, v0, 0x1

    goto :goto_10

    .line 1160
    :cond_20
    return-void
.end method


# virtual methods
.method protected bridge synthetic allowFilterResult(Landroid/content/IntentFilter;Ljava/util/List;)Z
    .registers 3

    .line 1067
    check-cast p1, Landroid/content/pm/PackageParser$ActivityIntentInfo;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/ComponentResolver$ActivityIntentResolver;->allowFilterResult(Landroid/content/pm/PackageParser$ActivityIntentInfo;Ljava/util/List;)Z

    move-result p1

    return p1
.end method

.method protected allowFilterResult(Landroid/content/pm/PackageParser$ActivityIntentInfo;Ljava/util/List;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageParser$ActivityIntentInfo;",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)Z"
        }
    .end annotation

    .line 1165
    iget-object p1, p1, Landroid/content/pm/PackageParser$ActivityIntentInfo;->activity:Landroid/content/pm/PackageParser$Activity;

    iget-object p1, p1, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    .line 1166
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_a
    if-ltz v0, :cond_25

    .line 1167
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 1168
    iget-object v3, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object v4, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    if-ne v3, v4, :cond_22

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v3, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    if-ne v2, v3, :cond_22

    .line 1169
    const/4 p1, 0x0

    return p1

    .line 1166
    :cond_22
    add-int/lit8 v0, v0, -0x1

    goto :goto_a

    .line 1172
    :cond_25
    return v1
.end method

.method protected bridge synthetic dumpFilter(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/content/IntentFilter;)V
    .registers 4

    .line 1067
    check-cast p3, Landroid/content/pm/PackageParser$ActivityIntentInfo;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/ComponentResolver$ActivityIntentResolver;->dumpFilter(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/content/pm/PackageParser$ActivityIntentInfo;)V

    return-void
.end method

.method protected dumpFilter(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/content/pm/PackageParser$ActivityIntentInfo;)V
    .registers 4

    .line 1318
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1319
    iget-object p2, p3, Landroid/content/pm/PackageParser$ActivityIntentInfo;->activity:Landroid/content/pm/PackageParser$Activity;

    invoke-static {p2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1320
    const/16 p2, 0x20

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(C)V

    .line 1321
    iget-object p2, p3, Landroid/content/pm/PackageParser$ActivityIntentInfo;->activity:Landroid/content/pm/PackageParser$Activity;

    invoke-virtual {p2, p1}, Landroid/content/pm/PackageParser$Activity;->printComponentShortName(Ljava/io/PrintWriter;)V

    .line 1322
    const-string p2, " filter "

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1323
    invoke-static {p3}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1324
    return-void
.end method

.method protected dumpFilterLabel(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/Object;I)V
    .registers 5

    .line 1332
    check-cast p3, Landroid/content/pm/PackageParser$Activity;

    .line 1333
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1334
    invoke-static {p3}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1335
    const/16 p2, 0x20

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(C)V

    .line 1336
    invoke-virtual {p3, p1}, Landroid/content/pm/PackageParser$Activity;->printComponentShortName(Ljava/io/PrintWriter;)V

    .line 1337
    const/4 p2, 0x1

    if-le p4, p2, :cond_28

    .line 1338
    const-string p2, " ("

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->print(I)V

    const-string p2, " filters)"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1340
    :cond_28
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1341
    return-void
.end method

.method protected bridge synthetic filterToLabel(Landroid/content/IntentFilter;)Ljava/lang/Object;
    .registers 2

    .line 1067
    check-cast p1, Landroid/content/pm/PackageParser$ActivityIntentInfo;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/ComponentResolver$ActivityIntentResolver;->filterToLabel(Landroid/content/pm/PackageParser$ActivityIntentInfo;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected filterToLabel(Landroid/content/pm/PackageParser$ActivityIntentInfo;)Ljava/lang/Object;
    .registers 2

    .line 1328
    iget-object p1, p1, Landroid/content/pm/PackageParser$ActivityIntentInfo;->activity:Landroid/content/pm/PackageParser$Activity;

    return-object p1
.end method

.method protected bridge synthetic isFilterStopped(Landroid/content/IntentFilter;I)Z
    .registers 3

    .line 1067
    check-cast p1, Landroid/content/pm/PackageParser$ActivityIntentInfo;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/ComponentResolver$ActivityIntentResolver;->isFilterStopped(Landroid/content/pm/PackageParser$ActivityIntentInfo;I)Z

    move-result p1

    return p1
.end method

.method protected isFilterStopped(Landroid/content/pm/PackageParser$ActivityIntentInfo;I)Z
    .registers 6

    .line 1182
    invoke-static {}, Lcom/android/server/pm/ComponentResolver;->access$800()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_c

    return v1

    .line 1183
    :cond_c
    iget-object p1, p1, Landroid/content/pm/PackageParser$ActivityIntentInfo;->activity:Landroid/content/pm/PackageParser$Activity;

    iget-object p1, p1, Landroid/content/pm/PackageParser$Activity;->owner:Landroid/content/pm/PackageParser$Package;

    .line 1184
    const/4 v0, 0x0

    if-eqz p1, :cond_28

    .line 1185
    iget-object p1, p1, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/pm/PackageSetting;

    .line 1186
    if-eqz p1, :cond_28

    .line 1190
    iget v2, p1, Lcom/android/server/pm/PackageSetting;->pkgFlags:I

    and-int/2addr v2, v1

    if-nez v2, :cond_26

    .line 1191
    invoke-virtual {p1, p2}, Lcom/android/server/pm/PackageSetting;->getStopped(I)Z

    move-result p1

    if-eqz p1, :cond_26

    move v0, v1

    goto :goto_27

    :cond_26
    nop

    .line 1190
    :goto_27
    return v0

    .line 1194
    :cond_28
    return v0
.end method

.method protected bridge synthetic isPackageForFilter(Ljava/lang/String;Landroid/content/IntentFilter;)Z
    .registers 3

    .line 1067
    check-cast p2, Landroid/content/pm/PackageParser$ActivityIntentInfo;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/ComponentResolver$ActivityIntentResolver;->isPackageForFilter(Ljava/lang/String;Landroid/content/pm/PackageParser$ActivityIntentInfo;)Z

    move-result p1

    return p1
.end method

.method protected isPackageForFilter(Ljava/lang/String;Landroid/content/pm/PackageParser$ActivityIntentInfo;)Z
    .registers 3

    .line 1200
    iget-object p2, p2, Landroid/content/pm/PackageParser$ActivityIntentInfo;->activity:Landroid/content/pm/PackageParser$Activity;

    iget-object p2, p2, Landroid/content/pm/PackageParser$Activity;->owner:Landroid/content/pm/PackageParser$Package;

    iget-object p2, p2, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method protected bridge synthetic newArray(I)[Landroid/content/IntentFilter;
    .registers 2

    .line 1067
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ComponentResolver$ActivityIntentResolver;->newArray(I)[Landroid/content/pm/PackageParser$ActivityIntentInfo;

    move-result-object p1

    return-object p1
.end method

.method protected newArray(I)[Landroid/content/pm/PackageParser$ActivityIntentInfo;
    .registers 2

    .line 1177
    new-array p1, p1, [Landroid/content/pm/PackageParser$ActivityIntentInfo;

    return-object p1
.end method

.method protected newResult(Landroid/content/pm/PackageParser$ActivityIntentInfo;II)Landroid/content/pm/ResolveInfo;
    .registers 15

    .line 1215
    invoke-static {}, Lcom/android/server/pm/ComponentResolver;->access$800()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_c

    .line 1219
    return-object v1

    .line 1221
    :cond_c
    invoke-static {}, Lcom/android/server/pm/ComponentResolver;->access$900()Landroid/content/pm/PackageManagerInternal;

    move-result-object v0

    iget-object v2, p1, Landroid/content/pm/PackageParser$ActivityIntentInfo;->activity:Landroid/content/pm/PackageParser$Activity;

    iget-object v2, v2, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    iget v3, p0, Lcom/android/server/pm/ComponentResolver$ActivityIntentResolver;->mFlags:I

    invoke-virtual {v0, v2, v3, p3}, Landroid/content/pm/PackageManagerInternal;->isEnabledAndMatches(Landroid/content/pm/ComponentInfo;II)Z

    move-result v0

    if-nez v0, :cond_1d

    .line 1227
    return-object v1

    .line 1229
    :cond_1d
    iget-object v0, p1, Landroid/content/pm/PackageParser$ActivityIntentInfo;->activity:Landroid/content/pm/PackageParser$Activity;

    .line 1230
    iget-object v2, v0, Landroid/content/pm/PackageParser$Activity;->owner:Landroid/content/pm/PackageParser$Package;

    iget-object v2, v2, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/pm/PackageSetting;

    .line 1231
    if-nez v2, :cond_28

    .line 1235
    return-object v1

    .line 1237
    :cond_28
    invoke-virtual {v2, p3}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v3

    .line 1238
    iget v4, p0, Lcom/android/server/pm/ComponentResolver$ActivityIntentResolver;->mFlags:I

    .line 1239
    invoke-static {v0, v4, v3, p3}, Landroid/content/pm/PackageParser;->generateActivityInfo(Landroid/content/pm/PackageParser$Activity;ILandroid/content/pm/PackageUserState;I)Landroid/content/pm/ActivityInfo;

    move-result-object v4

    .line 1240
    if-nez v4, :cond_35

    .line 1245
    return-object v1

    .line 1247
    :cond_35
    iget v5, p0, Lcom/android/server/pm/ComponentResolver$ActivityIntentResolver;->mFlags:I

    const/high16 v6, 0x2000000

    and-int/2addr v5, v6

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v5, :cond_40

    move v5, v7

    goto :goto_41

    :cond_40
    move v5, v6

    .line 1249
    :goto_41
    iget v8, p0, Lcom/android/server/pm/ComponentResolver$ActivityIntentResolver;->mFlags:I

    const/high16 v9, 0x1000000

    and-int/2addr v8, v9

    if-eqz v8, :cond_4a

    move v8, v7

    goto :goto_4b

    :cond_4a
    move v8, v6

    .line 1251
    :goto_4b
    if-eqz v8, :cond_5d

    .line 1253
    invoke-virtual {p1}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->isVisibleToInstantApp()Z

    move-result v9

    if-eqz v9, :cond_5d

    if-eqz v5, :cond_5b

    .line 1254
    invoke-virtual {p1}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->isExplicitlyVisibleToInstantApp()Z

    move-result v5

    if-eqz v5, :cond_5d

    :cond_5b
    move v5, v7

    goto :goto_5e

    :cond_5d
    move v5, v6

    .line 1255
    :goto_5e
    iget v9, p0, Lcom/android/server/pm/ComponentResolver$ActivityIntentResolver;->mFlags:I

    const/high16 v10, 0x800000

    and-int/2addr v9, v10

    if-eqz v9, :cond_66

    move v6, v7

    .line 1257
    :cond_66
    if-eqz v8, :cond_6f

    if-nez v5, :cond_6f

    iget-boolean v5, v3, Landroid/content/pm/PackageUserState;->instantApp:Z

    if-nez v5, :cond_6f

    .line 1268
    return-object v1

    .line 1271
    :cond_6f
    if-nez v6, :cond_76

    iget-boolean v5, v3, Landroid/content/pm/PackageUserState;->instantApp:Z

    if-eqz v5, :cond_76

    .line 1275
    return-object v1

    .line 1279
    :cond_76
    iget-boolean v5, v3, Landroid/content/pm/PackageUserState;->instantApp:Z

    if-eqz v5, :cond_81

    invoke-virtual {v2}, Lcom/android/server/pm/PackageSetting;->isUpdateAvailable()Z

    move-result v2

    if-eqz v2, :cond_81

    .line 1283
    return-object v1

    .line 1285
    :cond_81
    new-instance v1, Landroid/content/pm/ResolveInfo;

    invoke-direct {v1}, Landroid/content/pm/ResolveInfo;-><init>()V

    .line 1286
    iput-object v4, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 1287
    iget v2, p0, Lcom/android/server/pm/ComponentResolver$ActivityIntentResolver;->mFlags:I

    and-int/lit8 v2, v2, 0x40

    if-eqz v2, :cond_90

    .line 1288
    iput-object p1, v1, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    .line 1290
    :cond_90
    invoke-virtual {p1}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->handleAllWebDataURI()Z

    move-result v2

    iput-boolean v2, v1, Landroid/content/pm/ResolveInfo;->handleAllWebDataURI:Z

    .line 1291
    invoke-virtual {p1}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->getPriority()I

    move-result v2

    iput v2, v1, Landroid/content/pm/ResolveInfo;->priority:I

    .line 1292
    iget-object v0, v0, Landroid/content/pm/PackageParser$Activity;->owner:Landroid/content/pm/PackageParser$Package;

    iget v0, v0, Landroid/content/pm/PackageParser$Package;->mPreferredOrder:I

    iput v0, v1, Landroid/content/pm/ResolveInfo;->preferredOrder:I

    .line 1295
    iput p2, v1, Landroid/content/pm/ResolveInfo;->match:I

    .line 1296
    iget-boolean p2, p1, Landroid/content/pm/PackageParser$ActivityIntentInfo;->hasDefault:Z

    iput-boolean p2, v1, Landroid/content/pm/ResolveInfo;->isDefault:Z

    .line 1297
    iget p2, p1, Landroid/content/pm/PackageParser$ActivityIntentInfo;->labelRes:I

    iput p2, v1, Landroid/content/pm/ResolveInfo;->labelRes:I

    .line 1298
    iget-object p2, p1, Landroid/content/pm/PackageParser$ActivityIntentInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    iput-object p2, v1, Landroid/content/pm/ResolveInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 1299
    invoke-static {}, Lcom/android/server/pm/ComponentResolver;->access$900()Landroid/content/pm/PackageManagerInternal;

    move-result-object p2

    invoke-virtual {p2, p3}, Landroid/content/pm/PackageManagerInternal;->userNeedsBadging(I)Z

    move-result p2

    if-eqz p2, :cond_bd

    .line 1300
    iput-boolean v7, v1, Landroid/content/pm/ResolveInfo;->noResourceId:Z

    goto :goto_c1

    .line 1302
    :cond_bd
    iget p2, p1, Landroid/content/pm/PackageParser$ActivityIntentInfo;->icon:I

    iput p2, v1, Landroid/content/pm/ResolveInfo;->icon:I

    .line 1304
    :goto_c1
    iget p1, p1, Landroid/content/pm/PackageParser$ActivityIntentInfo;->icon:I

    iput p1, v1, Landroid/content/pm/ResolveInfo;->iconResourceId:I

    .line 1305
    iget-object p1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p1}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result p1

    iput-boolean p1, v1, Landroid/content/pm/ResolveInfo;->system:Z

    .line 1306
    iget-boolean p1, v3, Landroid/content/pm/PackageUserState;->instantApp:Z

    iput-boolean p1, v1, Landroid/content/pm/ResolveInfo;->isInstantAppAvailable:Z

    .line 1307
    return-object v1
.end method

.method protected bridge synthetic newResult(Landroid/content/IntentFilter;II)Ljava/lang/Object;
    .registers 4

    .line 1067
    check-cast p1, Landroid/content/pm/PackageParser$ActivityIntentInfo;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/ComponentResolver$ActivityIntentResolver;->newResult(Landroid/content/pm/PackageParser$ActivityIntentInfo;II)Landroid/content/pm/ResolveInfo;

    move-result-object p1

    return-object p1
.end method

.method queryIntent(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 1079
    invoke-static {}, Lcom/android/server/pm/ComponentResolver;->access$800()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v0

    if-nez v0, :cond_c

    .line 1080
    const/4 p1, 0x0

    return-object p1

    .line 1082
    :cond_c
    iput p3, p0, Lcom/android/server/pm/ComponentResolver$ActivityIntentResolver;->mFlags:I

    .line 1083
    const/high16 v0, 0x10000

    and-int/2addr p3, v0

    if-eqz p3, :cond_15

    const/4 p3, 0x1

    goto :goto_16

    :cond_15
    const/4 p3, 0x0

    :goto_16
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/server/IntentResolver;->queryIntent(Landroid/content/Intent;Ljava/lang/String;ZI)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public queryIntent(Landroid/content/Intent;Ljava/lang/String;ZI)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "ZI)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 1072
    invoke-static {}, Lcom/android/server/pm/ComponentResolver;->access$800()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v0

    if-nez v0, :cond_c

    const/4 p1, 0x0

    return-object p1

    .line 1073
    :cond_c
    if-eqz p3, :cond_11

    const/high16 v0, 0x10000

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    :goto_12
    iput v0, p0, Lcom/android/server/pm/ComponentResolver$ActivityIntentResolver;->mFlags:I

    .line 1074
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/server/IntentResolver;->queryIntent(Landroid/content/Intent;Ljava/lang/String;ZI)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method queryIntentForPackage(Landroid/content/Intent;Ljava/lang/String;ILjava/util/List;I)Ljava/util/List;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageParser$Activity;",
            ">;I)",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 1090
    invoke-static {}, Lcom/android/server/pm/ComponentResolver;->access$800()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    invoke-virtual {v0, p5}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_c

    .line 1091
    return-object v1

    .line 1093
    :cond_c
    if-nez p4, :cond_f

    .line 1094
    return-object v1

    .line 1096
    :cond_f
    iput p3, p0, Lcom/android/server/pm/ComponentResolver$ActivityIntentResolver;->mFlags:I

    .line 1097
    const/high16 v0, 0x10000

    and-int/2addr p3, v0

    const/4 v0, 0x0

    if-eqz p3, :cond_1a

    const/4 p3, 0x1

    move v4, p3

    goto :goto_1b

    :cond_1a
    move v4, v0

    .line 1098
    :goto_1b
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p3

    .line 1099
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, p3}, Ljava/util/ArrayList;-><init>(I)V

    .line 1102
    nop

    :goto_25
    if-ge v0, p3, :cond_47

    .line 1103
    invoke-interface {p4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageParser$Activity;

    iget-object v1, v1, Landroid/content/pm/PackageParser$Activity;->intents:Ljava/util/ArrayList;

    .line 1104
    if-eqz v1, :cond_44

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_44

    .line 1105
    nop

    .line 1106
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Landroid/content/pm/PackageParser$ActivityIntentInfo;

    .line 1107
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 1108
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1102
    :cond_44
    add-int/lit8 v0, v0, 0x1

    goto :goto_25

    .line 1111
    :cond_47
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v6, p5

    invoke-super/range {v1 .. v6}, Lcom/android/server/IntentResolver;->queryIntentFromList(Landroid/content/Intent;Ljava/lang/String;ZLjava/util/ArrayList;I)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method protected sortResults(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)V"
        }
    .end annotation

    .line 1312
    sget-object v0, Lcom/android/server/pm/ComponentResolver;->RESOLVE_PRIORITY_SORTER:Ljava/util/Comparator;

    invoke-interface {p1, v0}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    .line 1313
    return-void
.end method
