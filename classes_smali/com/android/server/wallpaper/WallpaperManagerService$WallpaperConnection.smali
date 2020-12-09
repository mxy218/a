.class Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;
.super Landroid/service/wallpaper/IWallpaperConnection$Stub;
.source "WallpaperManagerService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wallpaper/WallpaperManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WallpaperConnection"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;
    }
.end annotation


# static fields
.field private static final WALLPAPER_RECONNECT_TIMEOUT_MS:J = 0x2710L


# instance fields
.field final mClientUid:I

.field private mDisplayConnector:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;",
            ">;"
        }
    .end annotation
.end field

.field final mInfo:Landroid/app/WallpaperInfo;

.field mReply:Landroid/os/IRemoteCallback;

.field private mResetRunnable:Ljava/lang/Runnable;

.field mService:Landroid/service/wallpaper/IWallpaperService;

.field private mTryToRebindRunnable:Ljava/lang/Runnable;

.field mWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

.field final synthetic this$0:Lcom/android/server/wallpaper/WallpaperManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/wallpaper/WallpaperManagerService;Landroid/app/WallpaperInfo;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;I)V
    .registers 5

    .line 1187
    iput-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-direct {p0}, Landroid/service/wallpaper/IWallpaperConnection$Stub;-><init>()V

    .line 1151
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mDisplayConnector:Landroid/util/SparseArray;

    .line 1163
    new-instance p1, Lcom/android/server/wallpaper/-$$Lambda$WallpaperManagerService$WallpaperConnection$QhODF3v-swnwSYvDbeEhU85gOBw;

    invoke-direct {p1, p0}, Lcom/android/server/wallpaper/-$$Lambda$WallpaperManagerService$WallpaperConnection$QhODF3v-swnwSYvDbeEhU85gOBw;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;)V

    iput-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mResetRunnable:Ljava/lang/Runnable;

    .line 1183
    new-instance p1, Lcom/android/server/wallpaper/-$$Lambda$WallpaperManagerService$WallpaperConnection$d7gUC6mQx1Xv_Bvlwss1NEF5PwU;

    invoke-direct {p1, p0}, Lcom/android/server/wallpaper/-$$Lambda$WallpaperManagerService$WallpaperConnection$d7gUC6mQx1Xv_Bvlwss1NEF5PwU;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;)V

    iput-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mTryToRebindRunnable:Ljava/lang/Runnable;

    .line 1188
    iput-object p2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mInfo:Landroid/app/WallpaperInfo;

    .line 1189
    iput-object p3, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 1190
    iput p4, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mClientUid:I

    .line 1191
    invoke-direct {p0}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->initDisplayState()V

    .line 1192
    return-void
.end method

.method static synthetic access$1600(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;)Landroid/util/SparseArray;
    .registers 1

    .line 1066
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mDisplayConnector:Landroid/util/SparseArray;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;Ljava/util/function/Predicate;)V
    .registers 2

    .line 1066
    invoke-direct {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->appendConnectorWithCondition(Ljava/util/function/Predicate;)V

    return-void
.end method

.method static synthetic access$3100(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;)Ljava/lang/Runnable;
    .registers 1

    .line 1066
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mResetRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$3600(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;Landroid/view/Display;)Z
    .registers 2

    .line 1066
    invoke-direct {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->isUsableDisplay(Landroid/view/Display;)Z

    move-result p0

    return p0
.end method

.method private appendConnectorWithCondition(Ljava/util/function/Predicate;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Landroid/view/Display;",
            ">;)V"
        }
    .end annotation

    .line 1210
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->access$2100(Lcom/android/server/wallpaper/WallpaperManagerService;)Landroid/hardware/display/DisplayManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->getDisplays()[Landroid/view/Display;

    move-result-object v0

    .line 1211
    array-length v1, v0

    const/4 v2, 0x0

    :goto_c
    if-ge v2, v1, :cond_31

    aget-object v3, v0, v2

    .line 1212
    invoke-interface {p1, v3}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2e

    .line 1213
    invoke-virtual {v3}, Landroid/view/Display;->getDisplayId()I

    move-result v3

    .line 1214
    iget-object v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mDisplayConnector:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;

    .line 1215
    if-nez v4, :cond_2e

    .line 1216
    iget-object v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mDisplayConnector:Landroid/util/SparseArray;

    new-instance v5, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;

    invoke-direct {v5, p0, v3}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;I)V

    invoke-virtual {v4, v3, v5}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1211
    :cond_2e
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 1221
    :cond_31
    return-void
.end method

.method private initDisplayState()V
    .registers 4

    .line 1196
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->access$1300(Lcom/android/server/wallpaper/WallpaperManagerService;)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2a

    .line 1197
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {v0, p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->access$2000(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 1199
    new-instance v0, Lcom/android/server/wallpaper/-$$Lambda$WallpaperManagerService$WallpaperConnection$NrNkceFJLqjCb8eAxErUhpLd5c8;

    invoke-direct {v0, p0}, Lcom/android/server/wallpaper/-$$Lambda$WallpaperManagerService$WallpaperConnection$NrNkceFJLqjCb8eAxErUhpLd5c8;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;)V

    invoke-direct {p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->appendConnectorWithCondition(Ljava/util/function/Predicate;)V

    goto :goto_2a

    .line 1203
    :cond_1f
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mDisplayConnector:Landroid/util/SparseArray;

    new-instance v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;I)V

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1207
    :cond_2a
    :goto_2a
    return-void
.end method

.method private isUsableDisplay(Landroid/view/Display;)Z
    .registers 5

    .line 1224
    if-eqz p1, :cond_2a

    iget v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mClientUid:I

    invoke-virtual {p1, v0}, Landroid/view/Display;->hasAccess(I)Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_2a

    .line 1227
    :cond_b
    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    move-result p1

    .line 1228
    if-nez p1, :cond_13

    .line 1229
    const/4 p1, 0x1

    return p1

    .line 1232
    :cond_13
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1234
    :try_start_17
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->access$2200(Lcom/android/server/wallpaper/WallpaperManagerService;)Lcom/android/server/wm/WindowManagerInternal;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/server/wm/WindowManagerInternal;->shouldShowSystemDecorOnDisplay(I)Z

    move-result p1
    :try_end_21
    .catchall {:try_start_17 .. :try_end_21} :catchall_25

    .line 1236
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1234
    return p1

    .line 1236
    :catchall_25
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    .line 1225
    :cond_2a
    :goto_2a
    const/4 p1, 0x0

    return p1
.end method

.method public static synthetic lambda$NrNkceFJLqjCb8eAxErUhpLd5c8(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;Landroid/view/Display;)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->isUsableDisplay(Landroid/view/Display;)Z

    move-result p0

    return p0
.end method

.method static synthetic lambda$onServiceDisconnected$2(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;)V
    .registers 2

    .line 1307
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    return-void
.end method

.method private processDisconnect(Landroid/content/ServiceConnection;)V
    .registers 7

    .line 1365
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->access$100(Lcom/android/server/wallpaper/WallpaperManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1368
    :try_start_7
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iget-object v1, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    if-ne p1, v1, :cond_73

    .line 1369
    iget-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iget-object p1, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    .line 1370
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iget-boolean v1, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperUpdating:Z

    if-nez v1, :cond_72

    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iget v1, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 1371
    invoke-static {v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->access$2500(Lcom/android/server/wallpaper/WallpaperManagerService;)I

    move-result v2

    if-ne v1, v2, :cond_72

    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 1372
    invoke-static {v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->access$2600(Lcom/android/server/wallpaper/WallpaperManagerService;)Landroid/content/ComponentName;

    move-result-object v1

    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_72

    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 1373
    invoke-static {v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->access$900(Lcom/android/server/wallpaper/WallpaperManagerService;)Landroid/content/ComponentName;

    move-result-object v1

    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_72

    .line 1380
    iget-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iget-wide v1, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->lastDiedTime:J

    const-wide/16 v3, 0x0

    cmp-long p1, v1, v3

    if-eqz p1, :cond_67

    iget-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iget-wide v1, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->lastDiedTime:J

    const-wide/16 v3, 0x2710

    add-long/2addr v1, v3

    .line 1382
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    cmp-long p1, v1, v3

    if-lez p1, :cond_67

    .line 1383
    const-string p1, "WallpaperManagerService"

    const-string v1, "Reverting to built-in wallpaper!"

    invoke-static {p1, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1384
    iget-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iget v1, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {p1, v3, v3, v1, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->clearWallpaperLocked(ZIILandroid/os/IRemoteCallback;)V

    goto :goto_72

    .line 1386
    :cond_67
    iget-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->lastDiedTime:J

    .line 1387
    invoke-direct {p0}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->tryToRebind()V

    .line 1390
    :cond_72
    :goto_72
    goto :goto_7a

    .line 1392
    :cond_73
    const-string p1, "WallpaperManagerService"

    const-string v1, "Wallpaper changed during disconnect tracking; ignoring"

    invoke-static {p1, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1395
    :goto_7a
    monitor-exit v0

    .line 1396
    return-void

    .line 1395
    :catchall_7c
    move-exception p1

    monitor-exit v0
    :try_end_7e
    .catchall {:try_start_7 .. :try_end_7e} :catchall_7c

    throw p1
.end method

.method private tryToRebind()V
    .registers 9

    .line 1337
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->access$100(Lcom/android/server/wallpaper/WallpaperManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1338
    :try_start_7
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iget-boolean v1, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperUpdating:Z

    if-eqz v1, :cond_f

    .line 1339
    monitor-exit v0

    return-void

    .line 1341
    :cond_f
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iget-object v1, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    .line 1344
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    const/4 v4, 0x1

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    const/4 v7, 0x0

    move-object v3, v1

    invoke-static/range {v2 .. v7}, Lcom/android/server/wallpaper/WallpaperManagerService;->access$1000(Lcom/android/server/wallpaper/WallpaperManagerService;Landroid/content/ComponentName;ZZLcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)Z

    move-result v2

    if-eqz v2, :cond_29

    .line 1346
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iget-object v1, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    invoke-virtual {v1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->scheduleTimeoutLocked()V

    goto :goto_7c

    .line 1347
    :cond_29
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iget-wide v4, v4, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->lastDiedTime:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x2710

    cmp-long v2, v2, v4

    if-gez v2, :cond_51

    .line 1350
    const-string v1, "WallpaperManagerService"

    const-string v2, "Rebind fail! Try again later"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1351
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->access$2400(Lcom/android/server/wallpaper/WallpaperManagerService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mTryToRebindRunnable:Ljava/lang/Runnable;

    const-wide/16 v3, 0x3e8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_7c

    .line 1354
    :cond_51
    const-string v2, "WallpaperManagerService"

    const-string v3, "Reverting to built-in wallpaper!"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1355
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iget v3, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {v2, v5, v5, v3, v4}, Lcom/android/server/wallpaper/WallpaperManagerService;->clearWallpaperLocked(ZIILandroid/os/IRemoteCallback;)V

    .line 1356
    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v1

    .line 1357
    const v2, 0x80e8

    const/4 v3, 0x0

    .line 1358
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x80

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 1357
    invoke-static {v2, v1}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 1361
    :goto_7c
    monitor-exit v0

    .line 1362
    return-void

    .line 1361
    :catchall_7e
    move-exception v1

    monitor-exit v0
    :try_end_80
    .catchall {:try_start_7 .. :try_end_80} :catchall_7e

    throw v1
.end method


# virtual methods
.method public attachEngine(Landroid/service/wallpaper/IWallpaperEngine;I)V
    .registers 7

    .line 1432
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->access$100(Lcom/android/server/wallpaper/WallpaperManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1433
    :try_start_7
    invoke-virtual {p0, p2}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->getDisplayConnectorOrCreate(I)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;

    move-result-object v1
    :try_end_b
    .catchall {:try_start_7 .. :try_end_b} :catchall_54

    .line 1434
    if-nez v1, :cond_1b

    .line 1436
    :try_start_d
    invoke-interface {p1}, Landroid/service/wallpaper/IWallpaperEngine;->destroy()V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_10} :catch_11
    .catchall {:try_start_d .. :try_end_10} :catchall_54

    .line 1439
    goto :goto_19

    .line 1437
    :catch_11
    move-exception p1

    .line 1438
    :try_start_12
    const-string p2, "WallpaperManagerService"

    const-string v1, "Failed to destroy engine"

    invoke-static {p2, v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1440
    :goto_19
    monitor-exit v0

    return-void

    .line 1442
    :cond_1b
    iput-object p1, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    .line 1443
    invoke-virtual {v1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;->ensureStatusHandled()V

    .line 1446
    iget-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mInfo:Landroid/app/WallpaperInfo;

    if-eqz p1, :cond_44

    iget-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mInfo:Landroid/app/WallpaperInfo;

    invoke-virtual {p1}, Landroid/app/WallpaperInfo;->supportsAmbientMode()Z

    move-result p1
    :try_end_2a
    .catchall {:try_start_12 .. :try_end_2a} :catchall_54

    if-eqz p1, :cond_44

    if-nez p2, :cond_44

    .line 1448
    :try_start_2e
    iget-object p1, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    iget-object p2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->access$2800(Lcom/android/server/wallpaper/WallpaperManagerService;)Z

    move-result p2

    const-wide/16 v2, 0x0

    invoke-interface {p1, p2, v2, v3}, Landroid/service/wallpaper/IWallpaperEngine;->setInAmbientMode(ZJ)V
    :try_end_3b
    .catch Landroid/os/RemoteException; {:try_start_2e .. :try_end_3b} :catch_3c
    .catchall {:try_start_2e .. :try_end_3b} :catchall_54

    .line 1451
    goto :goto_44

    .line 1449
    :catch_3c
    move-exception p1

    .line 1450
    :try_start_3d
    const-string p2, "WallpaperManagerService"

    const-string v2, "Failed to set ambient mode state"

    invoke-static {p2, v2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_44
    .catchall {:try_start_3d .. :try_end_44} :catchall_54

    .line 1456
    :cond_44
    :goto_44
    :try_start_44
    iget-object p1, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    invoke-interface {p1}, Landroid/service/wallpaper/IWallpaperEngine;->requestWallpaperColors()V
    :try_end_49
    .catch Landroid/os/RemoteException; {:try_start_44 .. :try_end_49} :catch_4a
    .catchall {:try_start_44 .. :try_end_49} :catchall_54

    .line 1459
    goto :goto_52

    .line 1457
    :catch_4a
    move-exception p1

    .line 1458
    :try_start_4b
    const-string p2, "WallpaperManagerService"

    const-string v1, "Failed to request wallpaper colors"

    invoke-static {p2, v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1460
    :goto_52
    monitor-exit v0

    .line 1461
    return-void

    .line 1460
    :catchall_54
    move-exception p1

    monitor-exit v0
    :try_end_56
    .catchall {:try_start_4b .. :try_end_56} :catchall_54

    throw p1
.end method

.method containsDisplay(I)Z
    .registers 3

    .line 1269
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mDisplayConnector:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_a

    const/4 p1, 0x1

    goto :goto_b

    :cond_a
    const/4 p1, 0x0

    :goto_b
    return p1
.end method

.method public engineShown(Landroid/service/wallpaper/IWallpaperEngine;)V
    .registers 6

    .line 1465
    iget-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->access$100(Lcom/android/server/wallpaper/WallpaperManagerService;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 1466
    :try_start_7
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mReply:Landroid/os/IRemoteCallback;

    if-eqz v0, :cond_1c

    .line 1467
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0
    :try_end_f
    .catchall {:try_start_7 .. :try_end_f} :catchall_1e

    .line 1469
    const/4 v2, 0x0

    :try_start_10
    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mReply:Landroid/os/IRemoteCallback;

    invoke-interface {v3, v2}, Landroid/os/IRemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_15} :catch_16
    .catchall {:try_start_10 .. :try_end_15} :catchall_1e

    .line 1472
    goto :goto_1a

    .line 1470
    :catch_16
    move-exception v3

    .line 1471
    :try_start_17
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1473
    :goto_1a
    iput-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mReply:Landroid/os/IRemoteCallback;

    .line 1475
    :cond_1c
    monitor-exit p1

    .line 1476
    return-void

    .line 1475
    :catchall_1e
    move-exception v0

    monitor-exit p1
    :try_end_20
    .catchall {:try_start_17 .. :try_end_20} :catchall_1e

    throw v0
.end method

.method forEachDisplayConnector(Ljava/util/function/Consumer;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;",
            ">;)V"
        }
    .end annotation

    .line 1241
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mDisplayConnector:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    if-ltz v0, :cond_18

    .line 1242
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mDisplayConnector:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;

    .line 1243
    invoke-interface {p1, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1241
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 1245
    :cond_18
    return-void
.end method

.method getConnectedEngineSize()I
    .registers 4

    .line 1248
    nop

    .line 1249
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mDisplayConnector:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    :goto_a
    if-ltz v0, :cond_1d

    .line 1250
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mDisplayConnector:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;

    .line 1251
    iget-object v2, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    if-eqz v2, :cond_1a

    add-int/lit8 v1, v1, 0x1

    .line 1249
    :cond_1a
    add-int/lit8 v0, v0, -0x1

    goto :goto_a

    .line 1253
    :cond_1d
    return v1
.end method

.method getDisplayConnectorOrCreate(I)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;
    .registers 4

    .line 1257
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mDisplayConnector:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;

    .line 1258
    if-nez v0, :cond_24

    .line 1259
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->access$2100(Lcom/android/server/wallpaper/WallpaperManagerService;)Landroid/hardware/display/DisplayManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v1

    .line 1260
    invoke-direct {p0, v1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->isUsableDisplay(Landroid/view/Display;)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 1261
    new-instance v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;

    invoke-direct {v0, p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;I)V

    .line 1262
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mDisplayConnector:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 1265
    :cond_24
    return-object v0
.end method

.method public synthetic lambda$new$0$WallpaperManagerService$WallpaperConnection()V
    .registers 6

    .line 1164
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->access$100(Lcom/android/server/wallpaper/WallpaperManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1165
    :try_start_7
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->access$2900(Lcom/android/server/wallpaper/WallpaperManagerService;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 1168
    const-string v1, "WallpaperManagerService"

    const-string v2, "Ignoring relaunch timeout during shutdown"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1170
    monitor-exit v0

    return-void

    .line 1173
    :cond_18
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iget-boolean v1, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperUpdating:Z

    if-nez v1, :cond_54

    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iget v1, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    .line 1174
    invoke-static {v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->access$2500(Lcom/android/server/wallpaper/WallpaperManagerService;)I

    move-result v2

    if-ne v1, v2, :cond_54

    .line 1175
    const-string v1, "WallpaperManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Wallpaper reconnect timed out for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iget-object v3, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", reverting to built-in wallpaper!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1177
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iget v2, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v1, v4, v4, v2, v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->clearWallpaperLocked(ZIILandroid/os/IRemoteCallback;)V

    .line 1180
    :cond_54
    monitor-exit v0

    .line 1181
    return-void

    .line 1180
    :catchall_56
    move-exception v1

    monitor-exit v0
    :try_end_58
    .catchall {:try_start_7 .. :try_end_58} :catchall_56

    throw v1
.end method

.method public synthetic lambda$new$1$WallpaperManagerService$WallpaperConnection()V
    .registers 1

    .line 1184
    invoke-direct {p0}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->tryToRebind()V

    .line 1185
    return-void
.end method

.method public synthetic lambda$onServiceDisconnected$3$WallpaperManagerService$WallpaperConnection()V
    .registers 1

    .line 1317
    invoke-direct {p0, p0}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->processDisconnect(Landroid/content/ServiceConnection;)V

    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 4

    .line 1281
    iget-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->access$100(Lcom/android/server/wallpaper/WallpaperManagerService;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 1282
    :try_start_7
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    if-ne v0, p0, :cond_49

    .line 1283
    invoke-static {p2}, Landroid/service/wallpaper/IWallpaperService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/wallpaper/IWallpaperService;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mService:Landroid/service/wallpaper/IWallpaperService;

    .line 1284
    iget-object p2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    invoke-static {p2, p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->access$2300(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    .line 1289
    iget-object p2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->access$1300(Lcom/android/server/wallpaper/WallpaperManagerService;)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_31

    .line 1290
    iget-object p2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iget v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    invoke-static {p2, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->access$1100(Lcom/android/server/wallpaper/WallpaperManagerService;I)V

    .line 1292
    :cond_31
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object p2

    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mResetRunnable:Ljava/lang/Runnable;

    invoke-virtual {p2, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1293
    iget-object p2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->access$2400(Lcom/android/server/wallpaper/WallpaperManagerService;)Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object p2

    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mTryToRebindRunnable:Ljava/lang/Runnable;

    invoke-virtual {p2, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1295
    :cond_49
    monitor-exit p1

    .line 1296
    return-void

    .line 1295
    :catchall_4b
    move-exception p2

    monitor-exit p1
    :try_end_4d
    .catchall {:try_start_7 .. :try_end_4d} :catchall_4b

    throw p2
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 6

    .line 1300
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->access$100(Lcom/android/server/wallpaper/WallpaperManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1301
    :try_start_7
    const-string v1, "WallpaperManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Wallpaper service gone: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1302
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iget-object v1, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    invoke-static {p1, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_41

    .line 1303
    const-string p1, "WallpaperManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Does not match expected wallpaper component "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iget-object v2, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1306
    :cond_41
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mService:Landroid/service/wallpaper/IWallpaperService;

    .line 1307
    sget-object p1, Lcom/android/server/wallpaper/-$$Lambda$WallpaperManagerService$WallpaperConnection$pf_7EcVpbLQlQnQ4nGnqzkGUhqg;->INSTANCE:Lcom/android/server/wallpaper/-$$Lambda$WallpaperManagerService$WallpaperConnection$pf_7EcVpbLQlQnQ4nGnqzkGUhqg;

    invoke-virtual {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->forEachDisplayConnector(Ljava/util/function/Consumer;)V

    .line 1308
    iget-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iget-object p1, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    if-ne p1, p0, :cond_69

    .line 1316
    iget-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iget-boolean p1, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperUpdating:Z

    if-nez p1, :cond_69

    .line 1317
    iget-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->access$2400(Lcom/android/server/wallpaper/WallpaperManagerService;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance v1, Lcom/android/server/wallpaper/-$$Lambda$WallpaperManagerService$WallpaperConnection$zdJsFydiwYuUG4WFwlznTvMvYfw;

    invoke-direct {v1, p0}, Lcom/android/server/wallpaper/-$$Lambda$WallpaperManagerService$WallpaperConnection$zdJsFydiwYuUG4WFwlznTvMvYfw;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1321
    :cond_69
    monitor-exit v0

    .line 1322
    return-void

    .line 1321
    :catchall_6b
    move-exception p1

    monitor-exit v0
    :try_end_6d
    .catchall {:try_start_7 .. :try_end_6d} :catchall_6b

    throw p1
.end method

.method public onWallpaperColorsChanged(Landroid/app/WallpaperColors;I)V
    .registers 6

    .line 1406
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->access$100(Lcom/android/server/wallpaper/WallpaperManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1409
    :try_start_7
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->access$900(Lcom/android/server/wallpaper/WallpaperManagerService;)Landroid/content/ComponentName;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iget-object v2, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 1410
    monitor-exit v0

    return-void

    .line 1413
    :cond_19
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iput-object p1, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->primaryColors:Landroid/app/WallpaperColors;

    .line 1416
    const/4 p1, 0x1

    .line 1418
    if-nez p2, :cond_33

    .line 1419
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->access$200(Lcom/android/server/wallpaper/WallpaperManagerService;)Landroid/util/SparseArray;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iget v2, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    .line 1420
    if-nez v1, :cond_33

    .line 1421
    const/4 p1, 0x3

    .line 1424
    :cond_33
    monitor-exit v0
    :try_end_34
    .catchall {:try_start_7 .. :try_end_34} :catchall_3e

    .line 1425
    if-eqz p1, :cond_3d

    .line 1426
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    invoke-static {v0, v1, p1, p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->access$2700(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;II)V

    .line 1428
    :cond_3d
    return-void

    .line 1424
    :catchall_3e
    move-exception p1

    :try_start_3f
    monitor-exit v0
    :try_end_40
    .catchall {:try_start_3f .. :try_end_40} :catchall_3e

    throw p1
.end method

.method removeDisplayConnector(I)V
    .registers 3

    .line 1273
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mDisplayConnector:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;

    .line 1274
    if-eqz v0, :cond_f

    .line 1275
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mDisplayConnector:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 1277
    :cond_f
    return-void
.end method

.method public scheduleTimeoutLocked()V
    .registers 5

    .line 1327
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 1328
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mResetRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1329
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mResetRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1331
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Started wallpaper reconnect timeout for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iget-object v1, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WallpaperManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1334
    return-void
.end method

.method public setWallpaper(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .registers 6

    .line 1480
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    invoke-static {v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->access$100(Lcom/android/server/wallpaper/WallpaperManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1481
    :try_start_7
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iget-object v1, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    const/4 v2, 0x0

    if-ne v1, p0, :cond_18

    .line 1482
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->this$0:Lcom/android/server/wallpaper/WallpaperManagerService;

    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    invoke-virtual {v1, p1, v3, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->updateWallpaperBitmapLocked(Ljava/lang/String;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Landroid/os/Bundle;)Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    monitor-exit v0

    return-object p1

    .line 1484
    :cond_18
    monitor-exit v0

    return-object v2

    .line 1485
    :catchall_1a
    move-exception p1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_7 .. :try_end_1c} :catchall_1a

    throw p1
.end method
