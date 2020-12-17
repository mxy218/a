.class Lcom/android/server/am/ActiveServices$ForcedStandbyListener;
.super Lcom/android/server/AppStateTracker$Listener;
.source "ActiveServices.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActiveServices;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ForcedStandbyListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActiveServices;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActiveServices;)V
    .registers 2
    .param p1, "this$0"  # Lcom/android/server/am/ActiveServices;

    .line 229
    iput-object p1, p0, Lcom/android/server/am/ActiveServices$ForcedStandbyListener;->this$0:Lcom/android/server/am/ActiveServices;

    invoke-direct {p0}, Lcom/android/server/AppStateTracker$Listener;-><init>()V

    return-void
.end method


# virtual methods
.method public stopForegroundServicesForUidPackage(ILjava/lang/String;)V
    .registers 16
    .param p1, "uid"  # I
    .param p2, "packageName"  # Ljava/lang/String;

    .line 232
    iget-object v0, p0, Lcom/android/server/am/ActiveServices$ForcedStandbyListener;->this$0:Lcom/android/server/am/ActiveServices;

    iget-object v0, v0, Lcom/android/server/am/ActiveServices;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 233
    iget-object v1, p0, Lcom/android/server/am/ActiveServices$ForcedStandbyListener;->this$0:Lcom/android/server/am/ActiveServices;

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/server/am/ActiveServices;->access$000(Lcom/android/server/am/ActiveServices;I)Lcom/android/server/am/ActiveServices$ServiceMap;

    move-result-object v1

    .line 234
    .local v1, "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    iget-object v2, v1, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByInstanceName:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    .line 235
    .local v2, "N":I
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 236
    .local v3, "toStop":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ServiceRecord;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1e
    if-ge v4, v2, :cond_44

    .line 237
    iget-object v5, v1, Lcom/android/server/am/ActiveServices$ServiceMap;->mServicesByInstanceName:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ServiceRecord;

    .line 238
    .local v5, "r":Lcom/android/server/am/ServiceRecord;
    iget-object v6, v5, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v6, v6, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eq p1, v6, :cond_3a

    iget-object v6, v5, Lcom/android/server/am/ServiceRecord;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v6, v6, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 239
    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_41

    .line 240
    :cond_3a
    iget-boolean v6, v5, Lcom/android/server/am/ServiceRecord;->isForeground:Z

    if-eqz v6, :cond_41

    .line 241
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 236
    .end local v5  # "r":Lcom/android/server/am/ServiceRecord;
    :cond_41
    add-int/lit8 v4, v4, 0x1

    goto :goto_1e

    .line 247
    .end local v4  # "i":I
    :cond_44
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 248
    .local v4, "numToStop":I
    if-lez v4, :cond_71

    sget-boolean v5, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_FOREGROUND_SERVICE:Z

    if-eqz v5, :cond_71

    .line 249
    const-string v5, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Package "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " entering FAS with foreground services"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    :cond_71
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_72
    if-ge v5, v4, :cond_a1

    .line 253
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ServiceRecord;

    .line 254
    .local v6, "r":Lcom/android/server/am/ServiceRecord;
    sget-boolean v7, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_FOREGROUND_SERVICE:Z

    if-eqz v7, :cond_94

    .line 255
    const-string v7, "ActivityManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "  Stopping fg for service "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    :cond_94
    iget-object v7, p0, Lcom/android/server/am/ActiveServices$ForcedStandbyListener;->this$0:Lcom/android/server/am/ActiveServices;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v8, v6

    invoke-static/range {v7 .. v12}, Lcom/android/server/am/ActiveServices;->access$100(Lcom/android/server/am/ActiveServices;Lcom/android/server/am/ServiceRecord;ILandroid/app/Notification;II)V

    .line 252
    .end local v6  # "r":Lcom/android/server/am/ServiceRecord;
    add-int/lit8 v5, v5, 0x1

    goto :goto_72

    .line 259
    .end local v1  # "smap":Lcom/android/server/am/ActiveServices$ServiceMap;
    .end local v2  # "N":I
    .end local v3  # "toStop":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ServiceRecord;>;"
    .end local v4  # "numToStop":I
    .end local v5  # "i":I
    :cond_a1
    monitor-exit v0
    :try_end_a2
    .catchall {:try_start_5 .. :try_end_a2} :catchall_a6

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 260
    return-void

    .line 259
    :catchall_a6
    move-exception v1

    :try_start_a7
    monitor-exit v0
    :try_end_a8
    .catchall {:try_start_a7 .. :try_end_a8} :catchall_a6

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method
