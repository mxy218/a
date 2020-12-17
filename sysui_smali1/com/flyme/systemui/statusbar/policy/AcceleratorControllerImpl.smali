.class public Lcom/flyme/systemui/statusbar/policy/AcceleratorControllerImpl;
.super Ljava/lang/Object;
.source "AcceleratorControllerImpl.java"

# interfaces
.implements Lcom/flyme/systemui/statusbar/policy/AcceleratorController;


# annotations
.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field private final mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/flyme/systemui/statusbar/policy/AcceleratorController$AcceleratorControllerCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mIntent:Landroid/content/Intent;

.field private mUserInitiated:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/flyme/systemui/statusbar/policy/AcceleratorControllerImpl;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v0, 0x0

    .line 21
    iput-boolean v0, p0, Lcom/flyme/systemui/statusbar/policy/AcceleratorControllerImpl;->mUserInitiated:Z

    .line 22
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/flyme/systemui/statusbar/policy/AcceleratorControllerImpl;->mHandler:Landroid/os/Handler;

    .line 23
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.meizu.systemui.accelerator.executing"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/flyme/systemui/statusbar/policy/AcceleratorControllerImpl;->mIntent:Landroid/content/Intent;

    .line 27
    iput-object p1, p0, Lcom/flyme/systemui/statusbar/policy/AcceleratorControllerImpl;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/flyme/systemui/statusbar/policy/AcceleratorControllerImpl;)Landroid/content/Intent;
    .registers 1

    .line 15
    iget-object p0, p0, Lcom/flyme/systemui/statusbar/policy/AcceleratorControllerImpl;->mIntent:Landroid/content/Intent;

    return-object p0
.end method

.method static synthetic access$100(Lcom/flyme/systemui/statusbar/policy/AcceleratorControllerImpl;)Landroid/content/Context;
    .registers 1

    .line 15
    iget-object p0, p0, Lcom/flyme/systemui/statusbar/policy/AcceleratorControllerImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$202(Lcom/flyme/systemui/statusbar/policy/AcceleratorControllerImpl;Z)Z
    .registers 2

    .line 15
    iput-boolean p1, p0, Lcom/flyme/systemui/statusbar/policy/AcceleratorControllerImpl;->mUserInitiated:Z

    return p1
.end method

.method static synthetic access$300(Lcom/flyme/systemui/statusbar/policy/AcceleratorControllerImpl;)V
    .registers 1

    .line 15
    invoke-direct {p0}, Lcom/flyme/systemui/statusbar/policy/AcceleratorControllerImpl;->notifyChanged()V

    return-void
.end method

.method private notifyChanged()V
    .registers 3

    .line 66
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/AcceleratorControllerImpl;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/flyme/systemui/statusbar/policy/AcceleratorController$AcceleratorControllerCallback;

    .line 67
    invoke-direct {p0, v1}, Lcom/flyme/systemui/statusbar/policy/AcceleratorControllerImpl;->notifyChanged(Lcom/flyme/systemui/statusbar/policy/AcceleratorController$AcceleratorControllerCallback;)V

    goto :goto_6

    :cond_16
    return-void
.end method

.method private notifyChanged(Lcom/flyme/systemui/statusbar/policy/AcceleratorController$AcceleratorControllerCallback;)V
    .registers 2

    .line 72
    invoke-interface {p1}, Lcom/flyme/systemui/statusbar/policy/AcceleratorController$AcceleratorControllerCallback;->onAcceleratorChanged()V

    return-void
.end method


# virtual methods
.method public addCallback(Lcom/flyme/systemui/statusbar/policy/AcceleratorController$AcceleratorControllerCallback;)V
    .registers 3

    .line 56
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/AcceleratorControllerImpl;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 57
    invoke-direct {p0, p1}, Lcom/flyme/systemui/statusbar/policy/AcceleratorControllerImpl;->notifyChanged(Lcom/flyme/systemui/statusbar/policy/AcceleratorController$AcceleratorControllerCallback;)V

    return-void
.end method

.method public bridge synthetic addCallback(Ljava/lang/Object;)V
    .registers 2

    .line 14
    check-cast p1, Lcom/flyme/systemui/statusbar/policy/AcceleratorController$AcceleratorControllerCallback;

    invoke-virtual {p0, p1}, Lcom/flyme/systemui/statusbar/policy/AcceleratorControllerImpl;->addCallback(Lcom/flyme/systemui/statusbar/policy/AcceleratorController$AcceleratorControllerCallback;)V

    return-void
.end method

.method public isAcceleratorEnabled()Z
    .registers 1

    .line 32
    iget-boolean p0, p0, Lcom/flyme/systemui/statusbar/policy/AcceleratorControllerImpl;->mUserInitiated:Z

    return p0
.end method

.method public isAcceleratorSupported()Z
    .registers 1

    .line 37
    invoke-static {}, Lcom/flyme/systemui/statusbar/utils/UserManagerUtils;->isGuestUser()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public removeCallback(Lcom/flyme/systemui/statusbar/policy/AcceleratorController$AcceleratorControllerCallback;)V
    .registers 2

    .line 62
    iget-object p0, p0, Lcom/flyme/systemui/statusbar/policy/AcceleratorControllerImpl;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public bridge synthetic removeCallback(Ljava/lang/Object;)V
    .registers 2

    .line 14
    check-cast p1, Lcom/flyme/systemui/statusbar/policy/AcceleratorController$AcceleratorControllerCallback;

    invoke-virtual {p0, p1}, Lcom/flyme/systemui/statusbar/policy/AcceleratorControllerImpl;->removeCallback(Lcom/flyme/systemui/statusbar/policy/AcceleratorController$AcceleratorControllerCallback;)V

    return-void
.end method

.method public setAcceleratorEnabled()V
    .registers 5

    const/4 v0, 0x1

    .line 42
    iput-boolean v0, p0, Lcom/flyme/systemui/statusbar/policy/AcceleratorControllerImpl;->mUserInitiated:Z

    .line 43
    invoke-direct {p0}, Lcom/flyme/systemui/statusbar/policy/AcceleratorControllerImpl;->notifyChanged()V

    .line 44
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/AcceleratorControllerImpl;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/flyme/systemui/statusbar/policy/AcceleratorControllerImpl$1;

    invoke-direct {v1, p0}, Lcom/flyme/systemui/statusbar/policy/AcceleratorControllerImpl$1;-><init>(Lcom/flyme/systemui/statusbar/policy/AcceleratorControllerImpl;)V

    const-wide/16 v2, 0x514

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
