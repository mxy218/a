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
    .registers 3
    .param p1, "this$0"  # Lcom/android/server/inputmethod/InputMethodManagerService;

    .line 1109
    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    .line 1118
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;->mKnownImePackageNames:Landroid/util/ArraySet;

    .line 1131
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;->mChangedPackages:Ljava/util/ArrayList;

    .line 1139
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;->mImePackageAppeared:Z

    return-void
.end method

.method private clearPackageChangeState()V
    .registers 2

    .line 1249
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;->mChangedPackages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1250
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;->mImePackageAppeared:Z

    .line 1251
    return-void
.end method

.method private isChangingPackagesOfCurrentUserLocked()Z
    .registers 3
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mMethodMap"
        }
    .end annotation

    .line 1153
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;->getChangingUserId()I

    move-result v0

    .line 1154
    .local v0, "userId":I
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object v1, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v1}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v1

    if-ne v0, v1, :cond_10

    const/4 v1, 0x1

    goto :goto_11

    :cond_10
    const/4 v1, 0x0

    .line 1160
    .local v1, "retval":Z
    :goto_11
    return v1
.end method

.method private onFinishPackageChangesInternal()V
    .registers 15

    .line 1277
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object v0, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 1278
    :try_start_5
    invoke-direct {p0}, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;->isChangingPackagesOfCurrentUserLocked()Z

    move-result v1

    if-nez v1, :cond_d

    .line 1279
    monitor-exit v0

    return-void

    .line 1281
    :cond_d
    invoke-direct {p0}, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;->shouldRebuildInputMethodListLocked()Z

    move-result v1

    if-nez v1, :cond_15

    .line 1282
    monitor-exit v0

    return-void

    .line 1285
    :cond_15
    const/4 v1, 0x0

    .line 1286
    .local v1, "curIm":Landroid/view/inputmethod/InputMethodInfo;
    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object v2, v2, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v2}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getSelectedInputMethod()Ljava/lang/String;

    move-result-object v2

    .line 1287
    .local v2, "curInputMethodId":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object v3, v3, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1288
    .local v3, "N":I
    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x0

    if-eqz v2, :cond_a1

    .line 1289
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_2c
    if-ge v7, v3, :cond_a1

    .line 1290
    iget-object v8, p0, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object v8, v8, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodList:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/inputmethod/InputMethodInfo;

    .line 1291
    .local v8, "imi":Landroid/view/inputmethod/InputMethodInfo;
    invoke-virtual {v8}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v9

    .line 1292
    .local v9, "imiId":Ljava/lang/String;
    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_43

    .line 1293
    move-object v1, v8

    .line 1296
    :cond_43
    invoke-virtual {v8}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;->isPackageDisappearing(Ljava/lang/String;)I

    move-result v10

    .line 1297
    .local v10, "change":I
    invoke-virtual {v8}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;->isPackageModified(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_77

    .line 1298
    iget-object v11, p0, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-static {v11}, Lcom/android/server/inputmethod/InputMethodManagerService;->access$500(Lcom/android/server/inputmethod/InputMethodManagerService;)Landroid/util/ArrayMap;

    move-result-object v11

    invoke-virtual {v8}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1299
    iget-object v11, p0, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-static {v11}, Lcom/android/server/inputmethod/InputMethodManagerService;->access$500(Lcom/android/server/inputmethod/InputMethodManagerService;)Landroid/util/ArrayMap;

    move-result-object v11

    iget-object v12, p0, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object v12, v12, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    iget-object v13, p0, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object v13, v13, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    .line 1300
    invoke-virtual {v13}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v13

    .line 1299
    invoke-static {v11, v12, v13}, Lcom/android/server/inputmethod/AdditionalSubtypeUtils;->save(Landroid/util/ArrayMap;Landroid/util/ArrayMap;I)V

    .line 1302
    :cond_77
    if-eq v10, v5, :cond_7b

    if-ne v10, v4, :cond_9e

    .line 1304
    :cond_7b
    const-string v11, "InputMethodManagerService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Input method uninstalled, disabling: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1305
    invoke-virtual {v8}, Landroid/view/inputmethod/InputMethodInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 1304
    invoke-static {v11, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1306
    iget-object v11, p0, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-virtual {v8}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12, v6}, Lcom/android/server/inputmethod/InputMethodManagerService;->access$600(Lcom/android/server/inputmethod/InputMethodManagerService;Ljava/lang/String;Z)Z

    .line 1289
    .end local v8  # "imi":Landroid/view/inputmethod/InputMethodInfo;
    .end local v9  # "imiId":Ljava/lang/String;
    .end local v10  # "change":I
    :cond_9e
    add-int/lit8 v7, v7, 0x1

    goto :goto_2c

    .line 1311
    .end local v7  # "i":I
    :cond_a1
    iget-object v7, p0, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-virtual {v7, v6}, Lcom/android/server/inputmethod/InputMethodManagerService;->buildInputMethodListLocked(Z)V

    .line 1313
    const/4 v7, 0x0

    .line 1315
    .local v7, "changed":Z
    if-eqz v1, :cond_108

    .line 1316
    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;->isPackageDisappearing(Ljava/lang/String;)I

    move-result v8
    :try_end_b1
    .catchall {:try_start_5 .. :try_end_b1} :catchall_128

    .line 1317
    .local v8, "change":I
    if-eq v8, v5, :cond_b5

    if-ne v8, v4, :cond_108

    .line 1319
    :cond_b5
    const/4 v4, 0x0

    .line 1321
    .local v4, "si":Landroid/content/pm/ServiceInfo;
    :try_start_b6
    iget-object v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-static {v5}, Lcom/android/server/inputmethod/InputMethodManagerService;->access$700(Lcom/android/server/inputmethod/InputMethodManagerService;)Landroid/content/pm/IPackageManager;

    move-result-object v5

    .line 1322
    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object v10, v10, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v10}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getCurrentUserId()I

    move-result v10

    .line 1321
    invoke-interface {v5, v9, v6, v10}, Landroid/content/pm/IPackageManager;->getServiceInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ServiceInfo;

    move-result-object v5
    :try_end_cc
    .catch Landroid/os/RemoteException; {:try_start_b6 .. :try_end_cc} :catch_ce
    .catchall {:try_start_b6 .. :try_end_cc} :catchall_128

    move-object v4, v5

    .line 1324
    goto :goto_cf

    .line 1323
    :catch_ce
    move-exception v5

    .line 1325
    :goto_cf
    if-nez v4, :cond_108

    .line 1328
    :try_start_d1
    const-string v5, "InputMethodManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Current input method removed: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v5, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1329
    iget-object v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object v9, p0, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget v9, v9, Lcom/android/server/inputmethod/InputMethodManagerService;->mBackDisposition:I

    invoke-static {v5, v6, v9}, Lcom/android/server/inputmethod/InputMethodManagerService;->access$800(Lcom/android/server/inputmethod/InputMethodManagerService;II)V

    .line 1330
    iget-object v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-static {v5}, Lcom/android/server/inputmethod/InputMethodManagerService;->access$400(Lcom/android/server/inputmethod/InputMethodManagerService;)Z

    move-result v5

    if-nez v5, :cond_108

    .line 1331
    const/4 v7, 0x1

    .line 1332
    const/4 v1, 0x0

    .line 1333
    const-string v5, "InputMethodManagerService"

    const-string v9, "Unsetting current input method"

    invoke-static {v5, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1334
    iget-object v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    const-string v9, ""

    invoke-static {v5, v9}, Lcom/android/server/inputmethod/InputMethodManagerService;->access$300(Lcom/android/server/inputmethod/InputMethodManagerService;Ljava/lang/String;)V

    .line 1340
    .end local v4  # "si":Landroid/content/pm/ServiceInfo;
    .end local v8  # "change":I
    :cond_108
    if-nez v1, :cond_112

    .line 1343
    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-static {v4}, Lcom/android/server/inputmethod/InputMethodManagerService;->access$400(Lcom/android/server/inputmethod/InputMethodManagerService;)Z

    move-result v4

    move v7, v4

    goto :goto_11f

    .line 1344
    :cond_112
    if-nez v7, :cond_11f

    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;->isPackageModified(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_11f

    .line 1347
    const/4 v7, 0x1

    .line 1350
    :cond_11f
    :goto_11f
    if-eqz v7, :cond_126

    .line 1351
    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-virtual {v4, v6}, Lcom/android/server/inputmethod/InputMethodManagerService;->updateFromSettingsLocked(Z)V

    .line 1353
    .end local v1  # "curIm":Landroid/view/inputmethod/InputMethodInfo;
    .end local v2  # "curInputMethodId":Ljava/lang/String;
    .end local v3  # "N":I
    .end local v7  # "changed":Z
    :cond_126
    monitor-exit v0

    .line 1354
    return-void

    .line 1353
    :catchall_128
    move-exception v1

    monitor-exit v0
    :try_end_12a
    .catchall {:try_start_d1 .. :try_end_12a} :catchall_128

    throw v1
.end method

.method private shouldRebuildInputMethodListLocked()Z
    .registers 6
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mMethodMap"
        }
    .end annotation

    .line 1259
    iget-boolean v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;->mImePackageAppeared:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    .line 1260
    return v1

    .line 1266
    :cond_6
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;->mChangedPackages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1267
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_d
    if-ge v2, v0, :cond_23

    .line 1268
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;->mChangedPackages:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1269
    .local v3, "packageName":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;->mKnownImePackageNames:Landroid/util/ArraySet;

    invoke-virtual {v4, v3}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_20

    .line 1270
    return v1

    .line 1267
    .end local v3  # "packageName":Ljava/lang/String;
    :cond_20
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 1273
    .end local v2  # "i":I
    :cond_23
    const/4 v1, 0x0

    return v1
.end method


# virtual methods
.method final addKnownImePackageNameLocked(Ljava/lang/String;)V
    .registers 3
    .param p1, "packageName"  # Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mMethodMap"
        }
    .end annotation

    .line 1148
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;->mKnownImePackageNames:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1149
    return-void
.end method

.method clearKnownImePackageNamesLocked()V
    .registers 2
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mMethodMap"
        }
    .end annotation

    .line 1143
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;->mKnownImePackageNames:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 1144
    return-void
.end method

.method public onBeginPackageChanges()V
    .registers 1

    .line 1194
    invoke-direct {p0}, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;->clearPackageChangeState()V

    .line 1195
    return-void
.end method

.method public onFinishPackageChanges()V
    .registers 1

    .line 1243
    invoke-direct {p0}, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;->onFinishPackageChangesInternal()V

    .line 1244
    invoke-direct {p0}, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;->clearPackageChangeState()V

    .line 1245
    return-void
.end method

.method public onHandleForceStop(Landroid/content/Intent;[Ljava/lang/String;IZ)Z
    .registers 15
    .param p1, "intent"  # Landroid/content/Intent;
    .param p2, "packages"  # [Ljava/lang/String;
    .param p3, "uid"  # I
    .param p4, "doit"  # Z

    .line 1165
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object v0, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodMap:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 1166
    :try_start_5
    invoke-direct {p0}, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;->isChangingPackagesOfCurrentUserLocked()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_e

    .line 1167
    monitor-exit v0

    return v2

    .line 1169
    :cond_e
    iget-object v1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object v1, v1, Lcom/android/server/inputmethod/InputMethodManagerService;->mSettings:Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;

    invoke-virtual {v1}, Lcom/android/server/inputmethod/InputMethodUtils$InputMethodSettings;->getSelectedInputMethod()Ljava/lang/String;

    move-result-object v1

    .line 1170
    .local v1, "curInputMethodId":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object v3, v3, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1171
    .local v3, "N":I
    if-eqz v1, :cond_60

    .line 1172
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_21
    if-ge v4, v3, :cond_60

    .line 1173
    iget-object v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object v5, v5, Lcom/android/server/inputmethod/InputMethodManagerService;->mMethodList:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/inputmethod/InputMethodInfo;

    .line 1174
    .local v5, "imi":Landroid/view/inputmethod/InputMethodInfo;
    invoke-virtual {v5}, Landroid/view/inputmethod/InputMethodInfo;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5d

    .line 1175
    array-length v6, p2

    move v7, v2

    :goto_39
    if-ge v7, v6, :cond_5d

    aget-object v8, p2, v7

    .line 1176
    .local v8, "pkg":Ljava/lang/String;
    invoke-virtual {v5}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5a

    .line 1177
    const/4 v2, 0x1

    if-nez p4, :cond_4c

    .line 1178
    monitor-exit v0

    return v2

    .line 1180
    :cond_4c
    iget-object v6, p0, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    const-string v7, ""

    invoke-static {v6, v7}, Lcom/android/server/inputmethod/InputMethodManagerService;->access$300(Lcom/android/server/inputmethod/InputMethodManagerService;Ljava/lang/String;)V

    .line 1181
    iget-object v6, p0, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    invoke-static {v6}, Lcom/android/server/inputmethod/InputMethodManagerService;->access$400(Lcom/android/server/inputmethod/InputMethodManagerService;)Z

    .line 1182
    monitor-exit v0

    return v2

    .line 1175
    .end local v8  # "pkg":Ljava/lang/String;
    :cond_5a
    add-int/lit8 v7, v7, 0x1

    goto :goto_39

    .line 1172
    .end local v5  # "imi":Landroid/view/inputmethod/InputMethodInfo;
    :cond_5d
    add-int/lit8 v4, v4, 0x1

    goto :goto_21

    .line 1188
    .end local v1  # "curInputMethodId":Ljava/lang/String;
    .end local v3  # "N":I
    .end local v4  # "i":I
    :cond_60
    monitor-exit v0

    .line 1189
    return v2

    .line 1188
    :catchall_62
    move-exception v1

    monitor-exit v0
    :try_end_64
    .catchall {:try_start_5 .. :try_end_64} :catchall_62

    throw v1
.end method

.method public onPackageAppeared(Ljava/lang/String;I)V
    .registers 7
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "reason"  # I

    .line 1199
    iget-boolean v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;->mImePackageAppeared:Z

    if-nez v0, :cond_2a

    .line 1200
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;->this$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object v0, v0, Lcom/android/server/inputmethod/InputMethodManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 1201
    .local v0, "pm":Landroid/content/pm/PackageManager;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.view.InputMethod"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1202
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const/16 v2, 0x200

    .line 1203
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;->getChangingUserId()I

    move-result v3

    .line 1201
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v1

    .line 1205
    .local v1, "services":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2a

    .line 1206
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;->mImePackageAppeared:Z

    .line 1210
    .end local v0  # "pm":Landroid/content/pm/PackageManager;
    .end local v1  # "services":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_2a
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;->mChangedPackages:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1211
    return-void
.end method

.method public onPackageDisappeared(Ljava/lang/String;I)V
    .registers 4
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "reason"  # I

    .line 1216
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;->mChangedPackages:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1217
    return-void
.end method

.method public onPackageModified(Ljava/lang/String;)V
    .registers 3
    .param p1, "packageName"  # Ljava/lang/String;

    .line 1222
    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;->mChangedPackages:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1223
    return-void
.end method

.method public onPackagesSuspended([Ljava/lang/String;)V
    .registers 6
    .param p1, "packages"  # [Ljava/lang/String;

    .line 1228
    array-length v0, p1

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_e

    aget-object v2, p1, v1

    .line 1229
    .local v2, "packageName":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;->mChangedPackages:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1228
    .end local v2  # "packageName":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1231
    :cond_e
    return-void
.end method

.method public onPackagesUnsuspended([Ljava/lang/String;)V
    .registers 6
    .param p1, "packages"  # [Ljava/lang/String;

    .line 1236
    array-length v0, p1

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_e

    aget-object v2, p1, v1

    .line 1237
    .local v2, "packageName":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService$MyPackageMonitor;->mChangedPackages:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1236
    .end local v2  # "packageName":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1239
    :cond_e
    return-void
.end method
