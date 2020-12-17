.class public Lcom/android/systemui/DockedStackExistsListener;
.super Ljava/lang/Object;
.source "DockedStackExistsListener.java"


# static fields
.field private static mLastExists:Z

.field private static sCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/ref/WeakReference<",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/systemui/DockedStackExistsListener;->sCallbacks:Ljava/util/ArrayList;

    .line 39
    :try_start_7
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/DockedStackExistsListener$1;

    invoke-direct {v1}, Lcom/android/systemui/DockedStackExistsListener$1;-><init>()V

    invoke-interface {v0, v1}, Landroid/view/IWindowManager;->registerDockedStackListener(Landroid/view/IDockedStackListener;)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_13} :catch_14

    goto :goto_1c

    :catch_14
    move-exception v0

    const-string v1, "DockedStackExistsListener"

    const-string v2, "Failed registering docked stack exists listener"

    .line 70
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1c
    return-void
.end method

.method static synthetic access$000(Z)V
    .registers 1

    .line 30
    invoke-static {p0}, Lcom/android/systemui/DockedStackExistsListener;->onDockedStackExistsChanged(Z)V

    return-void
.end method

.method static synthetic lambda$onDockedStackExistsChanged$0(ZLjava/lang/ref/WeakReference;)Z
    .registers 2

    .line 79
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/function/Consumer;

    if-eqz p1, :cond_f

    .line 80
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_f
    if-nez p1, :cond_13

    const/4 p0, 0x1

    goto :goto_14

    :cond_13
    const/4 p0, 0x0

    :goto_14
    return p0
.end method

.method private static onDockedStackExistsChanged(Z)V
    .registers 4

    .line 76
    sput-boolean p0, Lcom/android/systemui/DockedStackExistsListener;->mLastExists:Z

    .line 77
    sget-object v0, Lcom/android/systemui/DockedStackExistsListener;->sCallbacks:Ljava/util/ArrayList;

    monitor-enter v0

    .line 78
    :try_start_5
    sget-object v1, Lcom/android/systemui/DockedStackExistsListener;->sCallbacks:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/systemui/-$$Lambda$DockedStackExistsListener$fsI9l50cYy8em3Xlw9NfoEH95Z8;

    invoke-direct {v2, p0}, Lcom/android/systemui/-$$Lambda$DockedStackExistsListener$fsI9l50cYy8em3Xlw9NfoEH95Z8;-><init>(Z)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->removeIf(Ljava/util/function/Predicate;)Z

    .line 83
    monitor-exit v0

    return-void

    :catchall_11
    move-exception p0

    monitor-exit v0
    :try_end_13
    .catchall {:try_start_5 .. :try_end_13} :catchall_11

    throw p0
.end method

.method public static register(Ljava/util/function/Consumer;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 87
    sget-boolean v0, Lcom/android/systemui/DockedStackExistsListener;->mLastExists:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 88
    sget-object v0, Lcom/android/systemui/DockedStackExistsListener;->sCallbacks:Ljava/util/ArrayList;

    monitor-enter v0

    .line 89
    :try_start_c
    sget-object v1, Lcom/android/systemui/DockedStackExistsListener;->sCallbacks:Ljava/util/ArrayList;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    monitor-exit v0

    return-void

    :catchall_18
    move-exception p0

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_c .. :try_end_1a} :catchall_18

    throw p0
.end method
