.class public Lcom/flyme/systemui/statusbar/policy/SmartTouchControllerImpl;
.super Ljava/lang/Object;
.source "SmartTouchControllerImpl.java"

# interfaces
.implements Lcom/flyme/systemui/statusbar/policy/SmartTouchController;


# annotations
.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field private final mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/flyme/systemui/statusbar/policy/SmartTouchController$SmartTouchControllerCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mIsInitialized:Z

.field private mIsSmartTouchOn:Z

.field mSmartTouchComponent:Lcom/flyme/systemui/smarttouch/SmartTouchComponent;

.field private mSmartTouchObserver:Landroid/database/ContentObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 6
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/flyme/systemui/statusbar/policy/SmartTouchControllerImpl;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 31
    new-instance v0, Lcom/flyme/systemui/statusbar/policy/SmartTouchControllerImpl$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/flyme/systemui/statusbar/policy/SmartTouchControllerImpl$1;-><init>(Lcom/flyme/systemui/statusbar/policy/SmartTouchControllerImpl;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/flyme/systemui/statusbar/policy/SmartTouchControllerImpl;->mSmartTouchObserver:Landroid/database/ContentObserver;

    .line 45
    iput-object p1, p0, Lcom/flyme/systemui/statusbar/policy/SmartTouchControllerImpl;->mContext:Landroid/content/Context;

    .line 46
    new-instance v0, Lcom/flyme/systemui/statusbar/policy/SmartTouchControllerImpl$2;

    invoke-direct {v0, p0, p1}, Lcom/flyme/systemui/statusbar/policy/SmartTouchControllerImpl$2;-><init>(Lcom/flyme/systemui/statusbar/policy/SmartTouchControllerImpl;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/flyme/systemui/statusbar/policy/SmartTouchControllerImpl;->mSmartTouchComponent:Lcom/flyme/systemui/smarttouch/SmartTouchComponent;

    const-string p1, "mz_smart_touch_switch"

    .line 53
    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 54
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/SmartTouchControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/flyme/systemui/statusbar/policy/SmartTouchControllerImpl;->mSmartTouchObserver:Landroid/database/ContentObserver;

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-virtual {v0, p1, v2, v1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 55
    iget-object p0, p0, Lcom/flyme/systemui/statusbar/policy/SmartTouchControllerImpl;->mSmartTouchObserver:Landroid/database/ContentObserver;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    return-void
.end method

.method static synthetic access$002(Lcom/flyme/systemui/statusbar/policy/SmartTouchControllerImpl;Z)Z
    .registers 2

    .line 20
    iput-boolean p1, p0, Lcom/flyme/systemui/statusbar/policy/SmartTouchControllerImpl;->mIsSmartTouchOn:Z

    return p1
.end method

.method static synthetic access$100(Lcom/flyme/systemui/statusbar/policy/SmartTouchControllerImpl;)Landroid/content/Context;
    .registers 1

    .line 20
    iget-object p0, p0, Lcom/flyme/systemui/statusbar/policy/SmartTouchControllerImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$200(Lcom/flyme/systemui/statusbar/policy/SmartTouchControllerImpl;)V
    .registers 1

    .line 20
    invoke-direct {p0}, Lcom/flyme/systemui/statusbar/policy/SmartTouchControllerImpl;->notifyChanged()V

    return-void
.end method

.method private notifyChanged()V
    .registers 3

    .line 77
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/SmartTouchControllerImpl;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/flyme/systemui/statusbar/policy/SmartTouchController$SmartTouchControllerCallback;

    .line 78
    invoke-direct {p0, v1}, Lcom/flyme/systemui/statusbar/policy/SmartTouchControllerImpl;->notifyChanged(Lcom/flyme/systemui/statusbar/policy/SmartTouchController$SmartTouchControllerCallback;)V

    goto :goto_6

    :cond_16
    return-void
.end method

.method private notifyChanged(Lcom/flyme/systemui/statusbar/policy/SmartTouchController$SmartTouchControllerCallback;)V
    .registers 2

    .line 83
    invoke-virtual {p0}, Lcom/flyme/systemui/statusbar/policy/SmartTouchControllerImpl;->isSmartTouchOn()Z

    move-result p0

    invoke-interface {p1, p0}, Lcom/flyme/systemui/statusbar/policy/SmartTouchController$SmartTouchControllerCallback;->onSmartTouchChanged(Z)V

    return-void
.end method


# virtual methods
.method public addCallback(Lcom/flyme/systemui/statusbar/policy/SmartTouchController$SmartTouchControllerCallback;)V
    .registers 3

    .line 92
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/SmartTouchControllerImpl;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    invoke-direct {p0, p1}, Lcom/flyme/systemui/statusbar/policy/SmartTouchControllerImpl;->notifyChanged(Lcom/flyme/systemui/statusbar/policy/SmartTouchController$SmartTouchControllerCallback;)V

    return-void
.end method

.method public bridge synthetic addCallback(Ljava/lang/Object;)V
    .registers 2

    .line 19
    check-cast p1, Lcom/flyme/systemui/statusbar/policy/SmartTouchController$SmartTouchControllerCallback;

    invoke-virtual {p0, p1}, Lcom/flyme/systemui/statusbar/policy/SmartTouchControllerImpl;->addCallback(Lcom/flyme/systemui/statusbar/policy/SmartTouchController$SmartTouchControllerCallback;)V

    return-void
.end method

.method public isSmartTouchOn()Z
    .registers 5

    .line 60
    iget-boolean v0, p0, Lcom/flyme/systemui/statusbar/policy/SmartTouchControllerImpl;->mIsInitialized:Z

    if-nez v0, :cond_1a

    .line 61
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/SmartTouchControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, -0x2

    const/4 v2, 0x0

    const-string v3, "mz_smart_touch_switch"

    invoke-static {v0, v3, v2, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_16

    move v2, v1

    :cond_16
    iput-boolean v2, p0, Lcom/flyme/systemui/statusbar/policy/SmartTouchControllerImpl;->mIsSmartTouchOn:Z

    .line 64
    iput-boolean v1, p0, Lcom/flyme/systemui/statusbar/policy/SmartTouchControllerImpl;->mIsInitialized:Z

    .line 66
    :cond_1a
    iget-boolean p0, p0, Lcom/flyme/systemui/statusbar/policy/SmartTouchControllerImpl;->mIsSmartTouchOn:Z

    return p0
.end method

.method public onNotificationsPanelExpand(Z)V
    .registers 2

    .line 87
    iget-object p0, p0, Lcom/flyme/systemui/statusbar/policy/SmartTouchControllerImpl;->mSmartTouchComponent:Lcom/flyme/systemui/smarttouch/SmartTouchComponent;

    invoke-virtual {p0, p1}, Lcom/flyme/systemui/smarttouch/SmartTouchComponent;->onNotificationsPanelExpand(Z)V

    return-void
.end method

.method public removeCallback(Lcom/flyme/systemui/statusbar/policy/SmartTouchController$SmartTouchControllerCallback;)V
    .registers 2

    .line 98
    iget-object p0, p0, Lcom/flyme/systemui/statusbar/policy/SmartTouchControllerImpl;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public bridge synthetic removeCallback(Ljava/lang/Object;)V
    .registers 2

    .line 19
    check-cast p1, Lcom/flyme/systemui/statusbar/policy/SmartTouchController$SmartTouchControllerCallback;

    invoke-virtual {p0, p1}, Lcom/flyme/systemui/statusbar/policy/SmartTouchControllerImpl;->removeCallback(Lcom/flyme/systemui/statusbar/policy/SmartTouchController$SmartTouchControllerCallback;)V

    return-void
.end method

.method public setSmartTouchOn(Z)V
    .registers 4

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setSmartTouchOn = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SmartTouchControllerImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    iget-object p0, p0, Lcom/flyme/systemui/statusbar/policy/SmartTouchControllerImpl;->mSmartTouchComponent:Lcom/flyme/systemui/smarttouch/SmartTouchComponent;

    invoke-virtual {p0, p1}, Lcom/flyme/systemui/smarttouch/SmartTouchComponent;->setSmartTouchOn(Z)V

    return-void
.end method
