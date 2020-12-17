.class Lcom/android/server/wm/ActivityStarter$DefaultFactory;
.super Ljava/lang/Object;
.source "ActivityStarter.java"

# interfaces
.implements Lcom/android/server/wm/ActivityStarter$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/ActivityStarter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DefaultFactory"
.end annotation


# instance fields
.field private final MAX_STARTER_COUNT:I

.field private mController:Lcom/android/server/wm/ActivityStartController;

.field private mInterceptor:Lcom/android/server/wm/ActivityStartInterceptor;

.field private mService:Lcom/android/server/wm/ActivityTaskManagerService;

.field private mStarterPool:Landroid/util/Pools$SynchronizedPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pools$SynchronizedPool<",
            "Lcom/android/server/wm/ActivityStarter;",
            ">;"
        }
    .end annotation
.end field

.field private mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;


# direct methods
.method constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/ActivityStackSupervisor;Lcom/android/server/wm/ActivityStartInterceptor;)V
    .registers 6
    .param p1, "service"  # Lcom/android/server/wm/ActivityTaskManagerService;
    .param p2, "supervisor"  # Lcom/android/server/wm/ActivityStackSupervisor;
    .param p3, "interceptor"  # Lcom/android/server/wm/ActivityStartInterceptor;

    .line 284
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 273
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/server/wm/ActivityStarter$DefaultFactory;->MAX_STARTER_COUNT:I

    .line 280
    new-instance v1, Landroid/util/Pools$SynchronizedPool;

    invoke-direct {v1, v0}, Landroid/util/Pools$SynchronizedPool;-><init>(I)V

    iput-object v1, p0, Lcom/android/server/wm/ActivityStarter$DefaultFactory;->mStarterPool:Landroid/util/Pools$SynchronizedPool;

    .line 285
    iput-object p1, p0, Lcom/android/server/wm/ActivityStarter$DefaultFactory;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 286
    iput-object p2, p0, Lcom/android/server/wm/ActivityStarter$DefaultFactory;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    .line 287
    iput-object p3, p0, Lcom/android/server/wm/ActivityStarter$DefaultFactory;->mInterceptor:Lcom/android/server/wm/ActivityStartInterceptor;

    .line 288
    return-void
.end method


# virtual methods
.method public obtain()Lcom/android/server/wm/ActivityStarter;
    .registers 7

    .line 297
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter$DefaultFactory;->mStarterPool:Landroid/util/Pools$SynchronizedPool;

    invoke-virtual {v0}, Landroid/util/Pools$SynchronizedPool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/ActivityStarter;

    .line 299
    .local v0, "starter":Lcom/android/server/wm/ActivityStarter;
    if-nez v0, :cond_18

    .line 300
    new-instance v1, Lcom/android/server/wm/ActivityStarter;

    iget-object v2, p0, Lcom/android/server/wm/ActivityStarter$DefaultFactory;->mController:Lcom/android/server/wm/ActivityStartController;

    iget-object v3, p0, Lcom/android/server/wm/ActivityStarter$DefaultFactory;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v4, p0, Lcom/android/server/wm/ActivityStarter$DefaultFactory;->mSupervisor:Lcom/android/server/wm/ActivityStackSupervisor;

    iget-object v5, p0, Lcom/android/server/wm/ActivityStarter$DefaultFactory;->mInterceptor:Lcom/android/server/wm/ActivityStartInterceptor;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/server/wm/ActivityStarter;-><init>(Lcom/android/server/wm/ActivityStartController;Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/ActivityStackSupervisor;Lcom/android/server/wm/ActivityStartInterceptor;)V

    move-object v0, v1

    .line 303
    :cond_18
    return-object v0
.end method

.method public recycle(Lcom/android/server/wm/ActivityStarter;)V
    .registers 3
    .param p1, "starter"  # Lcom/android/server/wm/ActivityStarter;

    .line 308
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/server/wm/ActivityStarter;->reset(Z)V

    .line 309
    iget-object v0, p0, Lcom/android/server/wm/ActivityStarter$DefaultFactory;->mStarterPool:Landroid/util/Pools$SynchronizedPool;

    invoke-virtual {v0, p1}, Landroid/util/Pools$SynchronizedPool;->release(Ljava/lang/Object;)Z

    .line 310
    return-void
.end method

.method public setController(Lcom/android/server/wm/ActivityStartController;)V
    .registers 2
    .param p1, "controller"  # Lcom/android/server/wm/ActivityStartController;

    .line 292
    iput-object p1, p0, Lcom/android/server/wm/ActivityStarter$DefaultFactory;->mController:Lcom/android/server/wm/ActivityStartController;

    .line 293
    return-void
.end method
