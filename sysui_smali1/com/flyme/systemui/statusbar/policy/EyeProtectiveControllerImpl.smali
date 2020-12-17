.class public Lcom/flyme/systemui/statusbar/policy/EyeProtectiveControllerImpl;
.super Ljava/lang/Object;
.source "EyeProtectiveControllerImpl.java"

# interfaces
.implements Lcom/flyme/systemui/statusbar/policy/EyeProtectiveController;


# annotations
.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field private final mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/flyme/systemui/statusbar/policy/EyeProtectiveController$EyeProtectiveControllerCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mEyeProtectiveObserver:Landroid/database/ContentObserver;

.field private mUserInitiated:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/flyme/systemui/statusbar/policy/EyeProtectiveControllerImpl;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v0, 0x0

    .line 28
    iput-boolean v0, p0, Lcom/flyme/systemui/statusbar/policy/EyeProtectiveControllerImpl;->mUserInitiated:Z

    .line 95
    new-instance v1, Lcom/flyme/systemui/statusbar/policy/EyeProtectiveControllerImpl$1;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v2}, Lcom/flyme/systemui/statusbar/policy/EyeProtectiveControllerImpl$1;-><init>(Lcom/flyme/systemui/statusbar/policy/EyeProtectiveControllerImpl;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/flyme/systemui/statusbar/policy/EyeProtectiveControllerImpl;->mEyeProtectiveObserver:Landroid/database/ContentObserver;

    .line 32
    iput-object p1, p0, Lcom/flyme/systemui/statusbar/policy/EyeProtectiveControllerImpl;->mContext:Landroid/content/Context;

    .line 33
    iget-object p1, p0, Lcom/flyme/systemui/statusbar/policy/EyeProtectiveControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v1, "immediately_on_or_off"

    invoke-static {p1, v1, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_2b

    move v0, v1

    :cond_2b
    iput-boolean v0, p0, Lcom/flyme/systemui/statusbar/policy/EyeProtectiveControllerImpl;->mUserInitiated:Z

    .line 34
    invoke-direct {p0, v1}, Lcom/flyme/systemui/statusbar/policy/EyeProtectiveControllerImpl;->setListening(Z)V

    return-void
.end method

.method static synthetic access$000(Lcom/flyme/systemui/statusbar/policy/EyeProtectiveControllerImpl;)Z
    .registers 1

    .line 22
    iget-boolean p0, p0, Lcom/flyme/systemui/statusbar/policy/EyeProtectiveControllerImpl;->mUserInitiated:Z

    return p0
.end method

.method static synthetic access$002(Lcom/flyme/systemui/statusbar/policy/EyeProtectiveControllerImpl;Z)Z
    .registers 2

    .line 22
    iput-boolean p1, p0, Lcom/flyme/systemui/statusbar/policy/EyeProtectiveControllerImpl;->mUserInitiated:Z

    return p1
.end method

.method static synthetic access$100(Lcom/flyme/systemui/statusbar/policy/EyeProtectiveControllerImpl;)Landroid/content/Context;
    .registers 1

    .line 22
    iget-object p0, p0, Lcom/flyme/systemui/statusbar/policy/EyeProtectiveControllerImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$200(Lcom/flyme/systemui/statusbar/policy/EyeProtectiveControllerImpl;)V
    .registers 1

    .line 22
    invoke-direct {p0}, Lcom/flyme/systemui/statusbar/policy/EyeProtectiveControllerImpl;->notifyChanged()V

    return-void
.end method

.method private notifyChanged()V
    .registers 3

    .line 77
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/EyeProtectiveControllerImpl;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/flyme/systemui/statusbar/policy/EyeProtectiveController$EyeProtectiveControllerCallback;

    .line 78
    invoke-direct {p0, v1}, Lcom/flyme/systemui/statusbar/policy/EyeProtectiveControllerImpl;->notifyChanged(Lcom/flyme/systemui/statusbar/policy/EyeProtectiveController$EyeProtectiveControllerCallback;)V

    goto :goto_6

    :cond_16
    return-void
.end method

.method private notifyChanged(Lcom/flyme/systemui/statusbar/policy/EyeProtectiveController$EyeProtectiveControllerCallback;)V
    .registers 2

    .line 83
    invoke-interface {p1}, Lcom/flyme/systemui/statusbar/policy/EyeProtectiveController$EyeProtectiveControllerCallback;->onEyeProtectiveChanged()V

    return-void
.end method

.method private sendBlueLightBroadcast(Z)V
    .registers 4

    .line 56
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "flyme.intent.action.bluelight_change"

    .line 57
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "bluelight_enable"

    .line 58
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p1, "bluelight_enable_by_user"

    const/4 v1, 0x1

    .line 59
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 p1, 0x10000000

    .line 60
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 p1, 0x1000000

    .line 61
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 62
    iget-object p0, p0, Lcom/flyme/systemui/statusbar/policy/EyeProtectiveControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private setListening(Z)V
    .registers 5

    if-eqz p1, :cond_16

    const-string p1, "immediately_on_or_off"

    .line 88
    invoke-static {p1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 89
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/EyeProtectiveControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    iget-object p0, p0, Lcom/flyme/systemui/statusbar/policy/EyeProtectiveControllerImpl;->mEyeProtectiveObserver:Landroid/database/ContentObserver;

    const/4 v2, -0x2

    invoke-virtual {v0, p1, v1, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    goto :goto_21

    .line 91
    :cond_16
    iget-object p1, p0, Lcom/flyme/systemui/statusbar/policy/EyeProtectiveControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object p0, p0, Lcom/flyme/systemui/statusbar/policy/EyeProtectiveControllerImpl;->mEyeProtectiveObserver:Landroid/database/ContentObserver;

    invoke-virtual {p1, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :goto_21
    return-void
.end method


# virtual methods
.method public addCallback(Lcom/flyme/systemui/statusbar/policy/EyeProtectiveController$EyeProtectiveControllerCallback;)V
    .registers 3

    .line 67
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/EyeProtectiveControllerImpl;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    invoke-direct {p0, p1}, Lcom/flyme/systemui/statusbar/policy/EyeProtectiveControllerImpl;->notifyChanged(Lcom/flyme/systemui/statusbar/policy/EyeProtectiveController$EyeProtectiveControllerCallback;)V

    return-void
.end method

.method public bridge synthetic addCallback(Ljava/lang/Object;)V
    .registers 2

    .line 21
    check-cast p1, Lcom/flyme/systemui/statusbar/policy/EyeProtectiveController$EyeProtectiveControllerCallback;

    invoke-virtual {p0, p1}, Lcom/flyme/systemui/statusbar/policy/EyeProtectiveControllerImpl;->addCallback(Lcom/flyme/systemui/statusbar/policy/EyeProtectiveController$EyeProtectiveControllerCallback;)V

    return-void
.end method

.method public isEyeProtectiveEnabled()Z
    .registers 1

    .line 39
    iget-boolean p0, p0, Lcom/flyme/systemui/statusbar/policy/EyeProtectiveControllerImpl;->mUserInitiated:Z

    return p0
.end method

.method public isEyeProtectiveSupported()Z
    .registers 2

    .line 44
    invoke-static {}, Lcom/flyme/systemui/statusbar/utils/UserManagerUtils;->isGuestUser()Z

    move-result v0

    if-nez v0, :cond_10

    iget-object p0, p0, Lcom/flyme/systemui/statusbar/policy/EyeProtectiveControllerImpl;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/flyme/systemui/statusbar/utils/QSTileUtils;->isFingerPrintRunning(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_10

    const/4 p0, 0x1

    goto :goto_11

    :cond_10
    const/4 p0, 0x0

    :goto_11
    return p0
.end method

.method public removeCallback(Lcom/flyme/systemui/statusbar/policy/EyeProtectiveController$EyeProtectiveControllerCallback;)V
    .registers 2

    .line 73
    iget-object p0, p0, Lcom/flyme/systemui/statusbar/policy/EyeProtectiveControllerImpl;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public bridge synthetic removeCallback(Ljava/lang/Object;)V
    .registers 2

    .line 21
    check-cast p1, Lcom/flyme/systemui/statusbar/policy/EyeProtectiveController$EyeProtectiveControllerCallback;

    invoke-virtual {p0, p1}, Lcom/flyme/systemui/statusbar/policy/EyeProtectiveControllerImpl;->removeCallback(Lcom/flyme/systemui/statusbar/policy/EyeProtectiveController$EyeProtectiveControllerCallback;)V

    return-void
.end method

.method public setEyeProtectiveEnabled(Z)V
    .registers 2

    .line 49
    iput-boolean p1, p0, Lcom/flyme/systemui/statusbar/policy/EyeProtectiveControllerImpl;->mUserInitiated:Z

    .line 51
    invoke-direct {p0, p1}, Lcom/flyme/systemui/statusbar/policy/EyeProtectiveControllerImpl;->sendBlueLightBroadcast(Z)V

    .line 52
    invoke-direct {p0}, Lcom/flyme/systemui/statusbar/policy/EyeProtectiveControllerImpl;->notifyChanged()V

    return-void
.end method
