.class final Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;
.super Lcom/android/internal/content/PackageMonitor;
.source "InputMethodManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/inputmethod/InputMethodManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "MyPackageMonitor"
.end annotation


# instance fields
.field private final mChangedPackages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mImePackageAppeared:Z

.field private final mKnownImePackageNames:Landroid/util/ArraySet;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mMethodMap"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/inputmethod/InputMethodManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/inputmethod/InputMethodManagerService;)V
    .registers 2

    .line 1107
    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    .line 1116
    new-instance p1, Landroid/util/ArraySet;

    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;->mKnownImePackageNames:Landroid/util/ArraySet;

    .line 1129
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;->mChangedPackages:Ljava/util/ArrayList;

    .line 1137
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;->mImePackageAppeared:Z

    return-void
.end method

.method private clearPackageChangeState()V
    .registers 2

    .line 1247
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;->mChangedPackages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1248
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;->mImePackageAppeared:Z

    .line 1249
    return-void
.end method

.method private isChangingPackagesOfCurrentUserLocked()Z
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mMethodMap"
        }
    .end annotation

    .line 1151
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;->getChangingUserId()I

    move-result v0

    .line 1152
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object v1, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v1}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v1

    if-ne v0, v1, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    .line 1158
    :goto_11
    return v0
.end method

.method private onFinishPackageChangesInternal()V
    .registers 15

    .line 1275
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object v0, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 1276
    :try_start_5
    invoke-direct {p0}, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;->isChangingPackagesOfCurrentUserLocked()Z

    move-result v1

    if-nez v1, :cond_d

    .line 1277
    monitor-exit v0

    return-void

    .line 1279
    :cond_d
    invoke-direct {p0}, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;->shouldRebuildInputMethodListLocked()Z

    move-result v1

    if-nez v1, :cond_15

    .line 1280
    monitor-exit v0

    return-void

    .line 1283
    :cond_15
    nop

    .line 1284
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object v1, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v1}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getSelectedInputMethod()Ljava/lang/String;

    move-result-object v1

    .line 1285
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object v2, v2, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1286
    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x0

    if-eqz v1, :cond_a3

    .line 1287
    move-object v8, v5

    move v7, v6

    :goto_2e
    if-ge v7, v2, :cond_a4

    .line 1288
    iget-object v9, p0, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object v9, v9, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodList:Ljava/util/ArrayList;

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/inputmethod/InputMethodInfo;

    .line 1289
    invoke-virtual {v9}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v10

    .line 1290
    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_45

    .line 1291
    move-object v8, v9

    .line 1294
    :cond_45
    invoke-virtual {v9}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;->isPackageDisappearing(Ljava/lang/String;)I

    move-result v10

    .line 1295
    invoke-virtual {v9}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;->isPackageModified(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_79

    .line 1296
    iget-object v11, p0, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-static {v11}, Lcom/android/server/inputmethod/InputMethodManagerService;->access$800(Lcom/android/server/inputmethod/InputMethodManagerService;)Landroid/util/ArrayMap;

    move-result-object v11

    invoke-virtual {v9}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1297
    iget-object v11, p0, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-static {v11}, Lcom/android/server/inputmethod/InputMethodManagerService;->access$800(Lcom/android/server/inputmethod/InputMethodManagerService;)Landroid/util/ArrayMap;

    move-result-object v11

    iget-object v12, p0, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object v12, v12, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    iget-object v13, p0, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object v13, v13, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    .line 1298
    invoke-virtual {v13}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v13

    .line 1297
    invoke-static {v11, v12, v13}, Lcom/android/server/inputmethod/AdditionalSubtypeUtils;->save(Landroid/util/ArrayMap;Landroid/util/ArrayMap;I)V

    .line 1300
    :cond_79
    if-eq v10, v4, :cond_7d

    if-ne v10, v3, :cond_a0

    .line 1302
    :cond_7d
    const-string v10, "InputMethodManagerService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Input method uninstalled, disabling: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1303
    invoke-virtual {v9}, Landroid/view/inputmethod/InputMethodInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 1302
    invoke-static {v10, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1304
    iget-object v10, p0, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-virtual {v9}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v9

    invoke-static {v10, v9, v6}, Lcom/android/server/inputmethod/InputMethodManagerService;->access$900(Lcom/android/server/inputmethod/InputMethodManagerService;Ljava/lang/String;Z)Z

    .line 1287
    :cond_a0
    add-int/lit8 v7, v7, 0x1

    goto :goto_2e

    .line 1286
    :cond_a3
    move-object v8, v5

    .line 1309
    :cond_a4
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-virtual {v2, v6}, Lcom/android/server/inputmethod/InputMethodManagerService;->buildInputMethodListLocked(Z)V

    .line 1311
    nop

    .line 1313
    const/4 v2, 0x1

    if-eqz v8, :cond_10e

    .line 1314
    invoke-virtual {v8}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;->isPackageDisappearing(Ljava/lang/String;)I

    move-result v7
    :try_end_b5
    .catchall {:try_start_5 .. :try_end_b5} :catchall_130

    .line 1315
    if-eq v7, v4, :cond_b9

    if-ne v7, v3, :cond_10e

    .line 1317
    :cond_b9
    nop

    .line 1319
    :try_start_ba
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-static {v3}, Lcom/android/server/inputmethod/InputMethodManagerService;->access$1000(Lcom/android/server/inputmethod/InputMethodManagerService;)Landroid/content/pm/IPackageManager;

    move-result-object v3

    .line 1320
    invoke-virtual {v8}, Landroid/view/inputmethod/InputMethodInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    iget-object v7, p0, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object v7, v7, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v7}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v7

    .line 1319
    invoke-interface {v3, v4, v6, v7}, Landroid/content/pm/IPackageManager;->getServiceInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ServiceInfo;

    move-result-object v3
    :try_end_d0
    .catch Landroid/os/RemoteException; {:try_start_ba .. :try_end_d0} :catch_d1
    .catchall {:try_start_ba .. :try_end_d0} :catchall_130

    .line 1322
    goto :goto_d3

    .line 1321
    :catch_d1
    move-exception v3

    move-object v3, v5

    .line 1323
    :goto_d3
    if-nez v3, :cond_10e

    .line 1326
    :try_start_d5
    const-string v3, "InputMethodManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Current input method removed: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1327
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget v3, v3, Lcom/android/server/inputmethod/InputMethodManagerService;->mBackDisposition:I

    invoke-static {v1, v6, v3}, Lcom/android/server/inputmethod/InputMethodManagerService;->access$1100(Lcom/android/server/inputmethod/InputMethodManagerService;II)V

    .line 1328
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-static {v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->access$700(Lcom/android/server/inputmethod/InputMethodManagerService;)Z

    move-result v1

    if-nez v1, :cond_10e

    .line 1329
    nop

    .line 1330
    nop

    .line 1331
    const-string v1, "InputMethodManagerService"

    const-string v3, "Unsetting current input method"

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1332
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    const-string v3, ""

    invoke-static {v1, v3}, Lcom/android/server/inputmethod/InputMethodManagerService;->access$600(Lcom/android/server/inputmethod/InputMethodManagerService;Ljava/lang/String;)V

    move v1, v2

    goto :goto_110

    .line 1338
    :cond_10e
    move v1, v6

    move-object v5, v8

    :goto_110
    if-nez v5, :cond_119

    .line 1341
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-static {v1}, Lcom/android/server/inputmethod/InputMethodManagerService;->access$700(Lcom/android/server/inputmethod/InputMethodManagerService;)Z

    move-result v2

    goto :goto_127

    .line 1342
    :cond_119
    if-nez v1, :cond_126

    invoke-virtual {v5}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;->isPackageModified(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_126

    .line 1345
    goto :goto_127

    .line 1348
    :cond_126
    move v2, v1

    :goto_127
    if-eqz v2, :cond_12e

    .line 1349
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-virtual {v1, v6}, Lcom/android/server/inputmethod/InputMethodManagerService;->updateFromSettingsLocked(Z)V

    .line 1351
    :cond_12e
    monitor-exit v0

    .line 1352
    return-void

    .line 1351
    :catchall_130
    move-exception v1

    monitor-exit v0
    :try_end_132
    .catchall {:try_start_d5 .. :try_end_132} :catchall_130

    throw v1
.end method

.method private shouldRebuildInputMethodListLocked()Z
    .registers 7
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mMethodMap"
        }
    .end annotation

    .line 1257
    iget-boolean v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;->mImePackageAppeared:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    .line 1258
    return v1

    .line 1264
    :cond_6
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;->mChangedPackages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1265
    const/4 v2, 0x0

    move v3, v2

    :goto_e
    if-ge v3, v0, :cond_24

    .line 1266
    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;->mChangedPackages:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1267
    iget-object v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;->mKnownImePackageNames:Landroid/util/ArraySet;

    invoke-virtual {v5, v4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_21

    .line 1268
    return v1

    .line 1265
    :cond_21
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    .line 1271
    :cond_24
    return v2
.end method


# virtual methods
.method final addKnownImePackageNameLocked(Ljava/lang/String;)V
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mMethodMap"
        }
    .end annotation

    .line 1146
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;->mKnownImePackageNames:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1147
    return-void
.end method

.method clearKnownImePackageNamesLocked()V
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mMethodMap"
        }
    .end annotation

    .line 1141
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;->mKnownImePackageNames:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 1142
    return-void
.end method

.method public onBeginPackageChanges()V
    .registers 1

    .line 1192
    invoke-direct {p0}, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;->clearPackageChangeState()V

    .line 1193
    return-void
.end method

.method public onFinishPackageChanges()V
    .registers 1

    .line 1241
    invoke-direct {p0}, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;->onFinishPackageChangesInternal()V

    .line 1242
    invoke-direct {p0}, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;->clearPackageChangeState()V

    .line 1243
    return-void
.end method

.method public onHandleForceStop(Landroid/content/Intent;[Ljava/lang/String;IZ)Z
    .registers 13

    .line 1163
    iget-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object p1, p1, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    monitor-enter p1

    .line 1164
    :try_start_5
    invoke-direct {p0}, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;->isChangingPackagesOfCurrentUserLocked()Z

    move-result p3

    const/4 v0, 0x0

    if-nez p3, :cond_e

    .line 1165
    monitor-exit p1

    return v0

    .line 1167
    :cond_e
    iget-object p3, p0, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object p3, p3, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {p3}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getSelectedInputMethod()Ljava/lang/String;

    move-result-object p3

    .line 1168
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object v1, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1169
    if-eqz p3, :cond_60

    .line 1170
    move v2, v0

    :goto_21
    if-ge v2, v1, :cond_60

    .line 1171
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object v3, v3, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodList:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodInfo;

    .line 1172
    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5d

    .line 1173
    array-length v4, p2

    move v5, v0

    :goto_39
    if-ge v5, v4, :cond_5d

    aget-object v6, p2, v5

    .line 1174
    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5a

    .line 1175
    const/4 p2, 0x1

    if-nez p4, :cond_4c

    .line 1176
    monitor-exit p1

    return p2

    .line 1178
    :cond_4c
    iget-object p3, p0, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    const-string p4, ""

    invoke-static {p3, p4}, Lcom/android/server/inputmethod/InputMethodManagerService;->access$600(Lcom/android/server/inputmethod/InputMethodManagerService;Ljava/lang/String;)V

    .line 1179
    iget-object p3, p0, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-static {p3}, Lcom/android/server/inputmethod/InputMethodManagerService;->access$700(Lcom/android/server/inputmethod/InputMethodManagerService;)Z

    .line 1180
    monitor-exit p1

    return p2

    .line 1173
    :cond_5a
    add-int/lit8 v5, v5, 0x1

    goto :goto_39

    .line 1170
    :cond_5d
    add-int/lit8 v2, v2, 0x1

    goto :goto_21

    .line 1186
    :cond_60
    monitor-exit p1

    .line 1187
    return v0

    .line 1186
    :catchall_62
    move-exception p2

    monitor-exit p1
    :try_end_64
    .catchall {:try_start_5 .. :try_end_64} :catchall_62

    throw p2
.end method

.method public onPackageAppeared(Ljava/lang/String;I)V
    .registers 6

    .line 1197
    iget-boolean p2, p0, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;->mImePackageAppeared:Z

    if-nez p2, :cond_2a

    .line 1198
    iget-object p2, p0, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object p2, p2, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    .line 1199
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.view.InputMethod"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1200
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/16 v1, 0x200

    .line 1201
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;->getChangingUserId()I

    move-result v2

    .line 1199
    invoke-virtual {p2, v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object p2

    .line 1203
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_2a

    .line 1204
    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;->mImePackageAppeared:Z

    .line 1208
    :cond_2a
    iget-object p2, p0, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;->mChangedPackages:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1209
    return-void
.end method

.method public onPackageDisappeared(Ljava/lang/String;I)V
    .registers 3

    .line 1214
    iget-object p2, p0, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;->mChangedPackages:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1215
    return-void
.end method

.method public onPackageModified(Ljava/lang/String;)V
    .registers 3

    .line 1220
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;->mChangedPackages:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1221
    return-void
.end method

.method public onPackagesSuspended([Ljava/lang/String;)V
    .registers 6

    .line 1226
    array-length v0, p1

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_e

    aget-object v2, p1, v1

    .line 1227
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;->mChangedPackages:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1226
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1229
    :cond_e
    return-void
.end method

.method public onPackagesUnsuspended([Ljava/lang/String;)V
    .registers 6

    .line 1234
    array-length v0, p1

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_e

    aget-object v2, p1, v1

    .line 1235
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;->mChangedPackages:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1234
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1237
    :cond_e
    return-void
.end method
