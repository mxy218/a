.class Lcom/android/server/media/MediaResourceMonitorService$MediaResourceMonitorImpl;
.super Landroid/media/IMediaResourceMonitor$Stub;
.source "MediaResourceMonitorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/media/MediaResourceMonitorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MediaResourceMonitorImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/media/MediaResourceMonitorService;


# direct methods
.method constructor <init>(Lcom/android/server/media/MediaResourceMonitorService;)V
    .registers 2

    .line 52
    iput-object p1, p0, Lcom/android/server/media/MediaResourceMonitorService$MediaResourceMonitorImpl;->this$0:Lcom/android/server/media/MediaResourceMonitorService;

    invoke-direct {p0}, Landroid/media/IMediaResourceMonitor$Stub;-><init>()V

    return-void
.end method

.method private getPackageNamesFromPid(I)[Ljava/lang/String;
    .registers 5

    .line 86
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 87
    iget v2, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v2, p1, :cond_1f

    .line 88
    iget-object p1, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_1e} :catch_21

    return-object p1

    .line 90
    :cond_1f
    goto :goto_c

    .line 93
    :cond_20
    goto :goto_29

    .line 91
    :catch_21
    move-exception p1

    .line 92
    const-string p1, "MediaResourceMonitor"

    const-string v0, "ActivityManager.getRunningAppProcesses() failed"

    invoke-static {p1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    :goto_29
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public notifyResourceGranted(II)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 56
    invoke-static {}, Lcom/android/server/media/MediaResourceMonitorService;->access$000()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "notifyResourceGranted(pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaResourceMonitor"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    :cond_2a
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 61
    :try_start_2e
    invoke-direct {p0, p1}, Lcom/android/server/media/MediaResourceMonitorService$MediaResourceMonitorImpl;->getPackageNamesFromPid(I)[Ljava/lang/String;

    move-result-object p1
    :try_end_32
    .catchall {:try_start_2e .. :try_end_32} :catchall_87

    .line 62
    if-nez p1, :cond_38

    .line 79
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 63
    return-void

    .line 65
    :cond_38
    :try_start_38
    iget-object v2, p0, Lcom/android/server/media/MediaResourceMonitorService$MediaResourceMonitorImpl;->this$0:Lcom/android/server/media/MediaResourceMonitorService;

    invoke-virtual {v2}, Lcom/android/server/media/MediaResourceMonitorService;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "user"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    .line 67
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/os/UserManager;->getEnabledProfileIds(I)[I

    move-result-object v2

    .line 68
    if-eqz v2, :cond_83

    array-length v3, v2

    if-nez v3, :cond_55

    goto :goto_83

    .line 71
    :cond_55
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.MEDIA_RESOURCE_GRANTED"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 72
    const-string v4, "android.intent.extra.PACKAGES"

    invoke-virtual {v3, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 73
    const-string p1, "android.intent.extra.MEDIA_RESOURCE_TYPE"

    invoke-virtual {v3, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 74
    array-length p1, v2

    const/4 p2, 0x0

    :goto_68
    if-ge p2, p1, :cond_7e

    aget v4, v2, p2

    .line 75
    iget-object v5, p0, Lcom/android/server/media/MediaResourceMonitorService$MediaResourceMonitorImpl;->this$0:Lcom/android/server/media/MediaResourceMonitorService;

    invoke-virtual {v5}, Lcom/android/server/media/MediaResourceMonitorService;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v4}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v4

    const-string v6, "android.permission.RECEIVE_MEDIA_RESOURCE_USAGE"

    invoke-virtual {v5, v3, v4, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V
    :try_end_7b
    .catchall {:try_start_38 .. :try_end_7b} :catchall_87

    .line 74
    add-int/lit8 p2, p2, 0x1

    goto :goto_68

    .line 79
    :cond_7e
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 80
    nop

    .line 81
    return-void

    .line 79
    :cond_83
    :goto_83
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 69
    return-void

    .line 79
    :catchall_87
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
.end method
