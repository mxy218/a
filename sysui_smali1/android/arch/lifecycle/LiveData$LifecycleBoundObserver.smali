.class Landroid/arch/lifecycle/LiveData$LifecycleBoundObserver;
.super Landroid/arch/lifecycle/LiveData$ObserverWrapper;
.source "LiveData.java"

# interfaces
.implements Landroid/arch/lifecycle/GenericLifecycleObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/arch/lifecycle/LiveData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LifecycleBoundObserver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/arch/lifecycle/LiveData<",
        "TT;>.ObserverWrapper;",
        "Landroid/arch/lifecycle/GenericLifecycleObserver;"
    }
.end annotation


# instance fields
.field final mOwner:Landroid/arch/lifecycle/LifecycleOwner;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field final synthetic this$0:Landroid/arch/lifecycle/LiveData;


# direct methods
.method constructor <init>(Landroid/arch/lifecycle/LiveData;Landroid/arch/lifecycle/LifecycleOwner;Landroid/arch/lifecycle/Observer;)V
    .registers 4
    .param p1  # Landroid/arch/lifecycle/LiveData;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/arch/lifecycle/LifecycleOwner;",
            "Landroid/arch/lifecycle/Observer<",
            "-TT;>;)V"
        }
    .end annotation

    .line 354
    iput-object p1, p0, Landroid/arch/lifecycle/LiveData$LifecycleBoundObserver;->this$0:Landroid/arch/lifecycle/LiveData;

    .line 355
    invoke-direct {p0, p1, p3}, Landroid/arch/lifecycle/LiveData$ObserverWrapper;-><init>(Landroid/arch/lifecycle/LiveData;Landroid/arch/lifecycle/Observer;)V

    .line 356
    iput-object p2, p0, Landroid/arch/lifecycle/LiveData$LifecycleBoundObserver;->mOwner:Landroid/arch/lifecycle/LifecycleOwner;

    return-void
.end method


# virtual methods
.method detachObserver()V
    .registers 2

    .line 380
    iget-object v0, p0, Landroid/arch/lifecycle/LiveData$LifecycleBoundObserver;->mOwner:Landroid/arch/lifecycle/LifecycleOwner;

    invoke-interface {v0}, Landroid/arch/lifecycle/LifecycleOwner;->getLifecycle()Landroid/arch/lifecycle/Lifecycle;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/arch/lifecycle/Lifecycle;->removeObserver(Landroid/arch/lifecycle/LifecycleObserver;)V

    return-void
.end method

.method isAttachedTo(Landroid/arch/lifecycle/LifecycleOwner;)Z
    .registers 2

    .line 375
    iget-object p0, p0, Landroid/arch/lifecycle/LiveData$LifecycleBoundObserver;->mOwner:Landroid/arch/lifecycle/LifecycleOwner;

    if-ne p0, p1, :cond_6

    const/4 p0, 0x1

    goto :goto_7

    :cond_6
    const/4 p0, 0x0

    :goto_7
    return p0
.end method

.method public onStateChanged(Landroid/arch/lifecycle/LifecycleOwner;Landroid/arch/lifecycle/Lifecycle$Event;)V
    .registers 3

    .line 366
    iget-object p1, p0, Landroid/arch/lifecycle/LiveData$LifecycleBoundObserver;->mOwner:Landroid/arch/lifecycle/LifecycleOwner;

    invoke-interface {p1}, Landroid/arch/lifecycle/LifecycleOwner;->getLifecycle()Landroid/arch/lifecycle/Lifecycle;

    move-result-object p1

    invoke-virtual {p1}, Landroid/arch/lifecycle/Lifecycle;->getCurrentState()Landroid/arch/lifecycle/Lifecycle$State;

    move-result-object p1

    sget-object p2, Landroid/arch/lifecycle/Lifecycle$State;->DESTROYED:Landroid/arch/lifecycle/Lifecycle$State;

    if-ne p1, p2, :cond_16

    .line 367
    iget-object p1, p0, Landroid/arch/lifecycle/LiveData$LifecycleBoundObserver;->this$0:Landroid/arch/lifecycle/LiveData;

    iget-object p0, p0, Landroid/arch/lifecycle/LiveData$ObserverWrapper;->mObserver:Landroid/arch/lifecycle/Observer;

    invoke-virtual {p1, p0}, Landroid/arch/lifecycle/LiveData;->removeObserver(Landroid/arch/lifecycle/Observer;)V

    return-void

    .line 370
    :cond_16
    invoke-virtual {p0}, Landroid/arch/lifecycle/LiveData$LifecycleBoundObserver;->shouldBeActive()Z

    move-result p1

    invoke-virtual {p0, p1}, Landroid/arch/lifecycle/LiveData$ObserverWrapper;->activeStateChanged(Z)V

    return-void
.end method

.method shouldBeActive()Z
    .registers 2

    .line 361
    iget-object p0, p0, Landroid/arch/lifecycle/LiveData$LifecycleBoundObserver;->mOwner:Landroid/arch/lifecycle/LifecycleOwner;

    invoke-interface {p0}, Landroid/arch/lifecycle/LifecycleOwner;->getLifecycle()Landroid/arch/lifecycle/Lifecycle;

    move-result-object p0

    invoke-virtual {p0}, Landroid/arch/lifecycle/Lifecycle;->getCurrentState()Landroid/arch/lifecycle/Lifecycle$State;

    move-result-object p0

    sget-object v0, Landroid/arch/lifecycle/Lifecycle$State;->STARTED:Landroid/arch/lifecycle/Lifecycle$State;

    invoke-virtual {p0, v0}, Landroid/arch/lifecycle/Lifecycle$State;->isAtLeast(Landroid/arch/lifecycle/Lifecycle$State;)Z

    move-result p0

    return p0
.end method
