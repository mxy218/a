.class Lcom/android/server/appbinding/AppBindingService$AppServiceConnection;
.super Lcom/android/server/am/PersistentConnection;
.source "AppBindingService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/appbinding/AppBindingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AppServiceConnection"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/am/PersistentConnection<",
        "Landroid/os/IInterface;",
        ">;"
    }
.end annotation


# instance fields
.field private final mConstants:Lcom/android/server/appbinding/AppBindingConstants;

.field private final mFinder:Lcom/android/server/appbinding/finders/AppServiceFinder;


# direct methods
.method constructor <init>(Landroid/content/Context;ILcom/android/server/appbinding/AppBindingConstants;Landroid/os/Handler;Lcom/android/server/appbinding/finders/AppServiceFinder;Landroid/content/ComponentName;)V
    .registers 23

    .line 432
    move-object/from16 v14, p0

    move-object/from16 v15, p3

    iget-wide v6, v15, Lcom/android/server/appbinding/AppBindingConstants;->SERVICE_RECONNECT_BACKOFF_SEC:J

    iget-wide v8, v15, Lcom/android/server/appbinding/AppBindingConstants;->SERVICE_RECONNECT_BACKOFF_INCREASE:D

    iget-wide v10, v15, Lcom/android/server/appbinding/AppBindingConstants;->SERVICE_RECONNECT_MAX_BACKOFF_SEC:J

    iget-wide v12, v15, Lcom/android/server/appbinding/AppBindingConstants;->SERVICE_STABLE_CONNECTION_THRESHOLD_SEC:J

    const-string v1, "AppBindingService"

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p4

    move/from16 v4, p2

    move-object/from16 v5, p6

    invoke-direct/range {v0 .. v13}, Lcom/android/server/am/PersistentConnection;-><init>(Ljava/lang/String;Landroid/content/Context;Landroid/os/Handler;ILandroid/content/ComponentName;JDJJ)V

    .line 437
    move-object/from16 v0, p5

    iput-object v0, v14, Lcom/android/server/appbinding/AppBindingService$AppServiceConnection;->mFinder:Lcom/android/server/appbinding/finders/AppServiceFinder;

    .line 438
    iput-object v15, v14, Lcom/android/server/appbinding/AppBindingService$AppServiceConnection;->mConstants:Lcom/android/server/appbinding/AppBindingConstants;

    .line 439
    return-void
.end method


# virtual methods
.method protected asInterface(Landroid/os/IBinder;)Landroid/os/IInterface;
    .registers 3

    .line 448
    iget-object v0, p0, Lcom/android/server/appbinding/AppBindingService$AppServiceConnection;->mFinder:Lcom/android/server/appbinding/finders/AppServiceFinder;

    invoke-virtual {v0, p1}, Lcom/android/server/appbinding/finders/AppServiceFinder;->asInterface(Landroid/os/IBinder;)Landroid/os/IInterface;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic asInterface(Landroid/os/IBinder;)Ljava/lang/Object;
    .registers 2

    .line 425
    invoke-virtual {p0, p1}, Lcom/android/server/appbinding/AppBindingService$AppServiceConnection;->asInterface(Landroid/os/IBinder;)Landroid/os/IInterface;

    move-result-object p1

    return-object p1
.end method

.method protected getBindFlags()I
    .registers 3

    .line 443
    iget-object v0, p0, Lcom/android/server/appbinding/AppBindingService$AppServiceConnection;->mFinder:Lcom/android/server/appbinding/finders/AppServiceFinder;

    iget-object v1, p0, Lcom/android/server/appbinding/AppBindingService$AppServiceConnection;->mConstants:Lcom/android/server/appbinding/AppBindingConstants;

    invoke-virtual {v0, v1}, Lcom/android/server/appbinding/finders/AppServiceFinder;->getBindFlags(Lcom/android/server/appbinding/AppBindingConstants;)I

    move-result v0

    return v0
.end method

.method public getFinder()Lcom/android/server/appbinding/finders/AppServiceFinder;
    .registers 2

    .line 452
    iget-object v0, p0, Lcom/android/server/appbinding/AppBindingService$AppServiceConnection;->mFinder:Lcom/android/server/appbinding/finders/AppServiceFinder;

    return-object v0
.end method