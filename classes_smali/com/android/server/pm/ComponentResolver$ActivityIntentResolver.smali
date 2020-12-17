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
    .param p1, "x0"  # Lcom/android/server/pm/ComponentResolver$1;

    .line 1067
    invoke-direct {p0}, Lcom/android/server/pm/ComponentResolver$ActivityIntentResolver;-><init>()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/pm/ComponentResolver$ActivityIntentResolver;)Landroid/util/ArrayMap;
    .registers 2
    .param p0, "x0"  # Lcom/android/server/pm/ComponentResolver$ActivityIntentResolver;

    .line 1067
    iget-object v0, p0, Lcom/android/server/pm/ComponentResolver$ActivityIntentResolver;->mActivities:Landroid/util/ArrayMap;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/pm/ComponentResolver$ActivityIntentResolver;Landroid/content/pm/PackageParser$Activity;Ljava/lang/String;Ljava/util/List;)V
    .registers 4
    .param p0, "x0"  # Lcom/android/server/pm/ComponentResolver$ActivityIntentResolver;
    .param p1, "x1"  # Landroid/content/pm/PackageParser$Activity;
    .param p2, "x2"  # Ljava/lang/String;
    .param p3, "x3"  # Ljava/util/List;

    .line 1067
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/pm/ComponentResolver$ActivityIntentResolver;->addActivity(Landroid/content/pm/PackageParser$Activity;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/pm/ComponentResolver$ActivityIntentResolver;Landroid/content/pm/PackageParser$Activity;Ljava/lang/String;)V
    .registers 3
    .param p0, "x0"  # Lcom/android/server/pm/ComponentResolver$ActivityIntentResolver;
    .param p1, "x1"  # Landroid/content/pm/PackageParser$Activity;
    .param p2, "x2"  # Ljava/lang/String;

    .line 1067
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/ComponentResolver$ActivityIntentResolver;->removeActivity(Landroid/content/pm/PackageParser$Activity;Ljava/lang/String;)V

    return-void
.end method

.method private addActivity(Landroid/content/pm/PackageParser$Activity;Ljava/lang/String;Ljava/util/List;)V
    .registers 9
    .param p1, "a"  # Landroid/content/pm/PackageParser$Activity;
    .param p2, "type"  # Ljava/lang/String;
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
    .local p3, "newIntents":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageParser$ActivityIntentInfo;>;"
    iget-object v0, p0, Lcom/android/server/pm/ComponentResolver$ActivityIntentResolver;->mActivities:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/content/pm/PackageParser$Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1126
    iget-object v0, p1, Landroid/content/pm/PackageParser$Activity;->intents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1127
    .local v0, "intentsSize":I
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_10
    if-ge v1, v0, :cond_4d

    .line 1128
    iget-object v2, p1, Landroid/content/pm/PackageParser$Activity;->intents:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageParser$ActivityIntentInfo;

    .line 1129
    .local v2, "intent":Landroid/content/pm/PackageParser$ActivityIntentInfo;
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
    .end local v2  # "intent":Landroid/content/pm/PackageParser$ActivityIntentInfo;
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 1141
    .end local v1  # "j":I
    :cond_4d
    return-void
.end method

.method private log(Ljava/lang/String;Landroid/content/pm/PackageParser$ActivityIntentInfo;II)V
    .registers 8
    .param p1, "reason"  # Ljava/lang/String;
    .param p2, "info"  # Landroid/content/pm/PackageParser$ActivityIntentInfo;
    .param p3, "match"  # I
    .param p4, "userId"  # I

    .line 1205
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "; match: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Landroid/content/IntentFilter;

    .line 1207
    const-string v2, "MATCH_"

    invoke-static {v1, v2, p3}, Landroid/util/DebugUtils;->flagsToString(Ljava/lang/Class;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "; userId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "; intent info: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1205
    const-string v1, "PackageManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1210
    return-void
.end method

.method private removeActivity(Landroid/content/pm/PackageParser$Activity;Ljava/lang/String;)V
    .registers 6
    .param p1, "a"  # Landroid/content/pm/PackageParser$Activity;
    .param p2, "type"  # Ljava/lang/String;

    .line 1144
    iget-object v0, p0, Lcom/android/server/pm/ComponentResolver$ActivityIntentResolver;->mActivities:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/content/pm/PackageParser$Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1151
    iget-object v0, p1, Landroid/content/pm/PackageParser$Activity;->intents:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1152
    .local v0, "intentsSize":I
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_10
    if-ge v1, v0, :cond_20

    .line 1153
    iget-object v2, p1, Landroid/content/pm/PackageParser$Activity;->intents:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageParser$ActivityIntentInfo;

    .line 1158
    .local v2, "intent":Landroid/content/pm/PackageParser$ActivityIntentInfo;
    invoke-virtual {p0, v2}, Lcom/android/server/pm/ComponentResolver$ActivityIntentResolver;->removeFilter(Landroid/content/IntentFilter;)V

    .line 1152
    .end local v2  # "intent":Landroid/content/pm/PackageParser$ActivityIntentInfo;
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 1160
    .end local v1  # "j":I
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
    .registers 9
    .param p1, "filter"  # Landroid/content/pm/PackageParser$ActivityIntentInfo;
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
    .local p2, "dest":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    iget-object v0, p1, Landroid/content/pm/PackageParser$ActivityIntentInfo;->activity:Landroid/content/pm/PackageParser$Activity;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Activity;->info:Landroid/content/pm/ActivityInfo;

    .line 1166
    .local v0, "filterAi":Landroid/content/pm/ActivityInfo;
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .local v1, "i":I
    :goto_a
    if-ltz v1, :cond_25

    .line 1167
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 1168
    .local v3, "destAi":Landroid/content/pm/ActivityInfo;
    iget-object v4, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object v5, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    if-ne v4, v5, :cond_22

    iget-object v4, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v5, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    if-ne v4, v5, :cond_22

    .line 1169
    const/4 v2, 0x0

    return v2

    .line 1166
    .end local v3  # "destAi":Landroid/content/pm/ActivityInfo;
    :cond_22
    add-int/lit8 v1, v1, -0x1

    goto :goto_a

    .line 1172
    .end local v1  # "i":I
    :cond_25
    return v2
.end method

.method protected bridge synthetic dumpFilter(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/content/IntentFilter;)V
    .registers 4

    .line 1067
    check-cast p3, Landroid/content/pm/PackageParser$ActivityIntentInfo;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/ComponentResolver$ActivityIntentResolver;->dumpFilter(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/content/pm/PackageParser$ActivityIntentInfo;)V

    return-void
.end method

.method protected dumpFilter(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/content/pm/PackageParser$ActivityIntentInfo;)V
    .registers 5
    .param p1, "out"  # Ljava/io/PrintWriter;
    .param p2, "prefix"  # Ljava/lang/String;
    .param p3, "filter"  # Landroid/content/pm/PackageParser$ActivityIntentInfo;

    .line 1318
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1319
    iget-object v0, p3, Landroid/content/pm/PackageParser$ActivityIntentInfo;->activity:Landroid/content/pm/PackageParser$Activity;

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1320
    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 1321
    iget-object v0, p3, Landroid/content/pm/PackageParser$ActivityIntentInfo;->activity:Landroid/content/pm/PackageParser$Activity;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageParser$Activity;->printComponentShortName(Ljava/io/PrintWriter;)V

    .line 1322
    const-string v0, " filter "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1323
    invoke-static {p3}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1324
    return-void
.end method

.method protected dumpFilterLabel(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/Object;I)V
    .registers 7
    .param p1, "out"  # Ljava/io/PrintWriter;
    .param p2, "prefix"  # Ljava/lang/String;
    .param p3, "label"  # Ljava/lang/Object;
    .param p4, "count"  # I

    .line 1332
    move-object v0, p3

    check-cast v0, Landroid/content/pm/PackageParser$Activity;

    .line 1333
    .local v0, "activity":Landroid/content/pm/PackageParser$Activity;
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1334
    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1335
    const/16 v1, 0x20

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 1336
    invoke-virtual {v0, p1}, Landroid/content/pm/PackageParser$Activity;->printComponentShortName(Ljava/io/PrintWriter;)V

    .line 1337
    const/4 v1, 0x1

    if-le p4, v1, :cond_29

    .line 1338
    const-string v1, " ("

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->print(I)V

    const-string v1, " filters)"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1340
    :cond_29
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
    .registers 3
    .param p1, "filter"  # Landroid/content/pm/PackageParser$ActivityIntentInfo;

    .line 1328
    iget-object v0, p1, Landroid/content/pm/PackageParser$ActivityIntentInfo;->activity:Landroid/content/pm/PackageParser$Activity;

    return-object v0
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
    .registers 8
    .param p1, "filter"  # Landroid/content/pm/PackageParser$ActivityIntentInfo;
    .param p2, "userId"  # I

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
    iget-object v0, p1, Landroid/content/pm/PackageParser$ActivityIntentInfo;->activity:Landroid/content/pm/PackageParser$Activity;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Activity;->owner:Landroid/content/pm/PackageParser$Package;

    .line 1184
    .local v0, "p":Landroid/content/pm/PackageParser$Package;
    const/4 v2, 0x0

    if-eqz v0, :cond_27

    .line 1185
    iget-object v3, v0, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    check-cast v3, Lcom/android/server/pm/PackageSetting;

    .line 1186
    .local v3, "ps":Lcom/android/server/pm/PackageSetting;
    if-eqz v3, :cond_27

    .line 1190
    iget v4, v3, Lcom/android/server/pm/PackageSetting;->pkgFlags:I

    and-int/2addr v4, v1

    if-nez v4, :cond_25

    .line 1191
    invoke-virtual {v3, p2}, Lcom/android/server/pm/PackageSetting;->getStopped(I)Z

    move-result v4

    if-eqz v4, :cond_25

    goto :goto_26

    :cond_25
    move v1, v2

    .line 1190
    :goto_26
    return v1

    .line 1194
    .end local v3  # "ps":Lcom/android/server/pm/PackageSetting;
    :cond_27
    return v2
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
    .registers 4
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "info"  # Landroid/content/pm/PackageParser$ActivityIntentInfo;

    .line 1200
    iget-object v0, p2, Landroid/content/pm/PackageParser$ActivityIntentInfo;->activity:Landroid/content/pm/PackageParser$Activity;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Activity;->owner:Landroid/content/pm/PackageParser$Package;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic newArray(I)[Landroid/content/IntentFilter;
    .registers 2

    .line 1067
    invoke-virtual {p0, p1}, Lcom/android/server/pm/ComponentResolver$ActivityIntentResolver;->newArray(I)[Landroid/content/pm/PackageParser$ActivityIntentInfo;

    move-result-object p1

    return-object p1
.end method

.method protected newArray(I)[Landroid/content/pm/PackageParser$ActivityIntentInfo;
    .registers 3
    .param p1, "size"  # I

    .line 1177
    new-array v0, p1, [Landroid/content/pm/PackageParser$ActivityIntentInfo;

    return-object v0
.end method

.method protected newResult(Landroid/content/pm/PackageParser$ActivityIntentInfo;II)Landroid/content/pm/ResolveInfo;
    .registers 16
    .param p1, "info"  # Landroid/content/pm/PackageParser$ActivityIntentInfo;
    .param p2, "match"  # I
    .param p3, "userId"  # I

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
    .local v0, "activity":Landroid/content/pm/PackageParser$Activity;
    iget-object v2, v0, Landroid/content/pm/PackageParser$Activity;->owner:Landroid/content/pm/PackageParser$Package;

    iget-object v2, v2, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/pm/PackageSetting;

    .line 1231
    .local v2, "ps":Lcom/android/server/pm/PackageSetting;
    if-nez v2, :cond_28

    .line 1235
    return-object v1

    .line 1237
    :cond_28
    invoke-virtual {v2, p3}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v3

    .line 1238
    .local v3, "userState":Landroid/content/pm/PackageUserState;
    iget v4, p0, Lcom/android/server/pm/ComponentResolver$ActivityIntentResolver;->mFlags:I

    .line 1239
    invoke-static {v0, v4, v3, p3}, Landroid/content/pm/PackageParser;->generateActivityInfo(Landroid/content/pm/PackageParser$Activity;ILandroid/content/pm/PackageUserState;I)Landroid/content/pm/ActivityInfo;

    move-result-object v4

    .line 1240
    .local v4, "ai":Landroid/content/pm/ActivityInfo;
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
    .local v5, "matchExplicitlyVisibleOnly":Z
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
    .local v8, "matchVisibleToInstantApp":Z
    :goto_4b
    if-eqz v8, :cond_5d

    .line 1253
    invoke-virtual {p1}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->isVisibleToInstantApp()Z

    move-result v9

    if-eqz v9, :cond_5d

    if-eqz v5, :cond_5b

    .line 1254
    invoke-virtual {p1}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->isExplicitlyVisibleToInstantApp()Z

    move-result v9

    if-eqz v9, :cond_5d

    :cond_5b
    move v9, v7

    goto :goto_5e

    :cond_5d
    move v9, v6

    .line 1255
    .local v9, "componentVisible":Z
    :goto_5e
    iget v10, p0, Lcom/android/server/pm/ComponentResolver$ActivityIntentResolver;->mFlags:I

    const/high16 v11, 0x800000

    and-int/2addr v10, v11

    if-eqz v10, :cond_66

    move v6, v7

    .line 1257
    .local v6, "matchInstantApp":Z
    :cond_66
    if-eqz v8, :cond_6f

    if-nez v9, :cond_6f

    iget-boolean v10, v3, Landroid/content/pm/PackageUserState;->instantApp:Z

    if-nez v10, :cond_6f

    .line 1268
    return-object v1

    .line 1271
    :cond_6f
    if-nez v6, :cond_76

    iget-boolean v10, v3, Landroid/content/pm/PackageUserState;->instantApp:Z

    if-eqz v10, :cond_76

    .line 1275
    return-object v1

    .line 1279
    :cond_76
    iget-boolean v10, v3, Landroid/content/pm/PackageUserState;->instantApp:Z

    if-eqz v10, :cond_81

    invoke-virtual {v2}, Lcom/android/server/pm/PackageSetting;->isUpdateAvailable()Z

    move-result v10

    if-eqz v10, :cond_81

    .line 1283
    return-object v1

    .line 1285
    :cond_81
    new-instance v1, Landroid/content/pm/ResolveInfo;

    invoke-direct {v1}, Landroid/content/pm/ResolveInfo;-><init>()V

    .line 1286
    .local v1, "res":Landroid/content/pm/ResolveInfo;
    iput-object v4, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 1287
    iget v10, p0, Lcom/android/server/pm/ComponentResolver$ActivityIntentResolver;->mFlags:I

    and-int/lit8 v10, v10, 0x40

    if-eqz v10, :cond_90

    .line 1288
    iput-object p1, v1, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    .line 1290
    :cond_90
    invoke-virtual {p1}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->handleAllWebDataURI()Z

    move-result v10

    iput-boolean v10, v1, Landroid/content/pm/ResolveInfo;->handleAllWebDataURI:Z

    .line 1291
    invoke-virtual {p1}, Landroid/content/pm/PackageParser$ActivityIntentInfo;->getPriority()I

    move-result v10

    iput v10, v1, Landroid/content/pm/ResolveInfo;->priority:I

    .line 1292
    iget-object v10, v0, Landroid/content/pm/PackageParser$Activity;->owner:Landroid/content/pm/PackageParser$Package;

    iget v10, v10, Landroid/content/pm/PackageParser$Package;->mPreferredOrder:I

    iput v10, v1, Landroid/content/pm/ResolveInfo;->preferredOrder:I

    .line 1295
    iput p2, v1, Landroid/content/pm/ResolveInfo;->match:I

    .line 1296
    iget-boolean v10, p1, Landroid/content/pm/PackageParser$ActivityIntentInfo;->hasDefault:Z

    iput-boolean v10, v1, Landroid/content/pm/ResolveInfo;->isDefault:Z

    .line 1297
    iget v10, p1, Landroid/content/pm/PackageParser$ActivityIntentInfo;->labelRes:I

    iput v10, v1, Landroid/content/pm/ResolveInfo;->labelRes:I

    .line 1298
    iget-object v10, p1, Landroid/content/pm/PackageParser$ActivityIntentInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    iput-object v10, v1, Landroid/content/pm/ResolveInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 1299
    invoke-static {}, Lcom/android/server/pm/ComponentResolver;->access$900()Landroid/content/pm/PackageManagerInternal;

    move-result-object v10

    invoke-virtual {v10, p3}, Landroid/content/pm/PackageManagerInternal;->userNeedsBadging(I)Z

    move-result v10

    if-eqz v10, :cond_bd

    .line 1300
    iput-boolean v7, v1, Landroid/content/pm/ResolveInfo;->noResourceId:Z

    goto :goto_c1

    .line 1302
    :cond_bd
    iget v7, p1, Landroid/content/pm/PackageParser$ActivityIntentInfo;->icon:I

    iput v7, v1, Landroid/content/pm/ResolveInfo;->icon:I

    .line 1304
    :goto_c1
    iget v7, p1, Landroid/content/pm/PackageParser$ActivityIntentInfo;->icon:I

    iput v7, v1, Landroid/content/pm/ResolveInfo;->iconResourceId:I

    .line 1305
    iget-object v7, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v7}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v7

    iput-boolean v7, v1, Landroid/content/pm/ResolveInfo;->system:Z

    .line 1306
    iget-boolean v7, v3, Landroid/content/pm/PackageUserState;->instantApp:Z

    iput-boolean v7, v1, Landroid/content/pm/ResolveInfo;->isInstantAppAvailable:Z

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
    .param p1, "intent"  # Landroid/content/Intent;
    .param p2, "resolvedType"  # Ljava/lang/String;
    .param p3, "flags"  # I
    .param p4, "userId"  # I
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
    const/4 v0, 0x0

    return-object v0

    .line 1082
    :cond_c
    iput p3, p0, Lcom/android/server/pm/ComponentResolver$ActivityIntentResolver;->mFlags:I

    .line 1083
    const/high16 v0, 0x10000

    and-int/2addr v0, p3

    if-eqz v0, :cond_15

    const/4 v0, 0x1

    goto :goto_16

    :cond_15
    const/4 v0, 0x0

    :goto_16
    invoke-super {p0, p1, p2, v0, p4}, Lcom/android/server/IntentResolver;->queryIntent(Landroid/content/Intent;Ljava/lang/String;ZI)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public queryIntent(Landroid/content/Intent;Ljava/lang/String;ZI)Ljava/util/List;
    .registers 6
    .param p1, "intent"  # Landroid/content/Intent;
    .param p2, "resolvedType"  # Ljava/lang/String;
    .param p3, "defaultOnly"  # Z
    .param p4, "userId"  # I
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

    const/4 v0, 0x0

    return-object v0

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

    move-result-object v0

    return-object v0
.end method

.method queryIntentForPackage(Landroid/content/Intent;Ljava/lang/String;ILjava/util/List;I)Ljava/util/List;
    .registers 14
    .param p1, "intent"  # Landroid/content/Intent;
    .param p2, "resolvedType"  # Ljava/lang/String;
    .param p3, "flags"  # I
    .param p5, "userId"  # I
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
    .local p4, "packageActivities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageParser$Activity;>;"
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

    and-int/2addr v0, p3

    if-eqz v0, :cond_18

    const/4 v0, 0x1

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    :goto_19
    move v4, v0

    .line 1098
    .local v4, "defaultOnly":Z
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v0

    .line 1099
    .local v0, "activitiesSize":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    move-object v7, v1

    .line 1102
    .local v7, "listCut":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[Landroid/content/pm/PackageParser$ActivityIntentInfo;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_25
    if-ge v1, v0, :cond_47

    .line 1103
    invoke-interface {p4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageParser$Activity;

    iget-object v2, v2, Landroid/content/pm/PackageParser$Activity;->intents:Ljava/util/ArrayList;

    .line 1104
    .local v2, "intentFilters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageParser$ActivityIntentInfo;>;"
    if-eqz v2, :cond_44

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_44

    .line 1105
    nop

    .line 1106
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Landroid/content/pm/PackageParser$ActivityIntentInfo;

    .line 1107
    .local v3, "array":[Landroid/content/pm/PackageParser$ActivityIntentInfo;
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 1108
    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1102
    .end local v3  # "array":[Landroid/content/pm/PackageParser$ActivityIntentInfo;
    :cond_44
    add-int/lit8 v1, v1, 0x1

    goto :goto_25

    .line 1111
    .end local v1  # "i":I
    .end local v2  # "intentFilters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageParser$ActivityIntentInfo;>;"
    :cond_47
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, v7

    move v6, p5

    invoke-super/range {v1 .. v6}, Lcom/android/server/IntentResolver;->queryIntentFromList(Landroid/content/Intent;Ljava/lang/String;ZLjava/util/ArrayList;I)Ljava/util/List;

    move-result-object v1

    return-object v1
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
    .local p1, "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    sget-object v0, Lcom/android/server/pm/ComponentResolver;->RESOLVE_PRIORITY_SORTER:Ljava/util/Comparator;

    invoke-interface {p1, v0}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    .line 1313
    return-void
.end method
