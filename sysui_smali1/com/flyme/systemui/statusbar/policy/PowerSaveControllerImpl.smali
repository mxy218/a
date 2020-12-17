.class public Lcom/flyme/systemui/statusbar/policy/PowerSaveControllerImpl;
.super Ljava/lang/Object;
.source "PowerSaveControllerImpl.java"

# interfaces
.implements Lcom/flyme/systemui/statusbar/policy/PowerSaveController;


# annotations
.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field private final mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/flyme/systemui/statusbar/policy/PowerSaveController$PowerSaveControllerCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mIntentMode:I

.field private mMode:I

.field private mPowerSaveObserver:Landroid/database/ContentObserver;

.field private mUserManager:Landroid/os/UserManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/flyme/systemui/statusbar/policy/PowerSaveControllerImpl;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v0, -0x1

    .line 34
    iput v0, p0, Lcom/flyme/systemui/statusbar/policy/PowerSaveControllerImpl;->mMode:I

    .line 35
    iput v0, p0, Lcom/flyme/systemui/statusbar/policy/PowerSaveControllerImpl;->mIntentMode:I

    .line 37
    new-instance v0, Lcom/flyme/systemui/statusbar/policy/PowerSaveControllerImpl$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/flyme/systemui/statusbar/policy/PowerSaveControllerImpl$1;-><init>(Lcom/flyme/systemui/statusbar/policy/PowerSaveControllerImpl;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/flyme/systemui/statusbar/policy/PowerSaveControllerImpl;->mPowerSaveObserver:Landroid/database/ContentObserver;

    .line 51
    iput-object p1, p0, Lcom/flyme/systemui/statusbar/policy/PowerSaveControllerImpl;->mContext:Landroid/content/Context;

    .line 52
    iget-object p1, p0, Lcom/flyme/systemui/statusbar/policy/PowerSaveControllerImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "user"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    iput-object p1, p0, Lcom/flyme/systemui/statusbar/policy/PowerSaveControllerImpl;->mUserManager:Landroid/os/UserManager;

    return-void
.end method

.method static synthetic access$000(Lcom/flyme/systemui/statusbar/policy/PowerSaveControllerImpl;)I
    .registers 1

    .line 22
    iget p0, p0, Lcom/flyme/systemui/statusbar/policy/PowerSaveControllerImpl;->mMode:I

    return p0
.end method

.method static synthetic access$002(Lcom/flyme/systemui/statusbar/policy/PowerSaveControllerImpl;I)I
    .registers 2

    .line 22
    iput p1, p0, Lcom/flyme/systemui/statusbar/policy/PowerSaveControllerImpl;->mMode:I

    return p1
.end method

.method static synthetic access$100(Lcom/flyme/systemui/statusbar/policy/PowerSaveControllerImpl;)Landroid/content/Context;
    .registers 1

    .line 22
    iget-object p0, p0, Lcom/flyme/systemui/statusbar/policy/PowerSaveControllerImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$202(Lcom/flyme/systemui/statusbar/policy/PowerSaveControllerImpl;I)I
    .registers 2

    .line 22
    iput p1, p0, Lcom/flyme/systemui/statusbar/policy/PowerSaveControllerImpl;->mIntentMode:I

    return p1
.end method

.method static synthetic access$300(Lcom/flyme/systemui/statusbar/policy/PowerSaveControllerImpl;)V
    .registers 1

    .line 22
    invoke-direct {p0}, Lcom/flyme/systemui/statusbar/policy/PowerSaveControllerImpl;->notifyChanged()V

    return-void
.end method

.method private notifyChanged()V
    .registers 3

    .line 125
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/PowerSaveControllerImpl;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/flyme/systemui/statusbar/policy/PowerSaveController$PowerSaveControllerCallback;

    .line 126
    invoke-direct {p0, v1}, Lcom/flyme/systemui/statusbar/policy/PowerSaveControllerImpl;->notifyChanged(Lcom/flyme/systemui/statusbar/policy/PowerSaveController$PowerSaveControllerCallback;)V

    goto :goto_6

    :cond_16
    return-void
.end method

.method private notifyChanged(Lcom/flyme/systemui/statusbar/policy/PowerSaveController$PowerSaveControllerCallback;)V
    .registers 2

    .line 131
    invoke-virtual {p0}, Lcom/flyme/systemui/statusbar/policy/PowerSaveControllerImpl;->getPowerSaveMode()I

    move-result p0

    invoke-interface {p1, p0}, Lcom/flyme/systemui/statusbar/policy/PowerSaveController$PowerSaveControllerCallback;->onPowerSaveModeChanged(I)V

    return-void
.end method


# virtual methods
.method public addCallback(Lcom/flyme/systemui/statusbar/policy/PowerSaveController$PowerSaveControllerCallback;)V
    .registers 7

    const-string v0, "PowerSaveControllerImpl"

    const-string v1, "addCallback"

    .line 110
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "mz_current_power_mode"

    .line 111
    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 112
    iget-object v1, p0, Lcom/flyme/systemui/statusbar/policy/PowerSaveControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/flyme/systemui/statusbar/policy/PowerSaveControllerImpl;->mPowerSaveObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x0

    const/4 v4, -0x1

    invoke-virtual {v1, v0, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 113
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/PowerSaveControllerImpl;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 114
    invoke-direct {p0, p1}, Lcom/flyme/systemui/statusbar/policy/PowerSaveControllerImpl;->notifyChanged(Lcom/flyme/systemui/statusbar/policy/PowerSaveController$PowerSaveControllerCallback;)V

    return-void
.end method

.method public bridge synthetic addCallback(Ljava/lang/Object;)V
    .registers 2

    .line 21
    check-cast p1, Lcom/flyme/systemui/statusbar/policy/PowerSaveController$PowerSaveControllerCallback;

    invoke-virtual {p0, p1}, Lcom/flyme/systemui/statusbar/policy/PowerSaveControllerImpl;->addCallback(Lcom/flyme/systemui/statusbar/policy/PowerSaveController$PowerSaveControllerCallback;)V

    return-void
.end method

.method public getIntentMode()I
    .registers 3

    .line 82
    iget v0, p0, Lcom/flyme/systemui/statusbar/policy/PowerSaveControllerImpl;->mIntentMode:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_8

    .line 83
    iget p0, p0, Lcom/flyme/systemui/statusbar/policy/PowerSaveControllerImpl;->mMode:I

    return p0

    :cond_8
    return v0
.end method

.method public getPowerSaveMode()I
    .registers 5

    .line 76
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/PowerSaveControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mz_current_power_mode"

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Lcom/flyme/systemui/statusbar/policy/PowerSaveControllerImpl;->mMode:I

    return v0
.end method

.method public isUserUnlocked()Z
    .registers 2

    .line 68
    :try_start_0
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/PowerSaveControllerImpl;->mUserManager:Landroid/os/UserManager;

    iget-object p0, p0, Lcom/flyme/systemui/statusbar/policy/PowerSaveControllerImpl;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/os/UserManager;->isUserUnlocked(I)Z

    move-result p0
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_f} :catch_10

    return p0

    :catch_10
    const/4 p0, 0x1

    return p0
.end method

.method public removeCallback(Lcom/flyme/systemui/statusbar/policy/PowerSaveController$PowerSaveControllerCallback;)V
    .registers 4

    const-string v0, "PowerSaveControllerImpl"

    const-string v1, "removeCallback"

    .line 119
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/PowerSaveControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/flyme/systemui/statusbar/policy/PowerSaveControllerImpl;->mPowerSaveObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 121
    iget-object p0, p0, Lcom/flyme/systemui/statusbar/policy/PowerSaveControllerImpl;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public bridge synthetic removeCallback(Ljava/lang/Object;)V
    .registers 2

    .line 21
    check-cast p1, Lcom/flyme/systemui/statusbar/policy/PowerSaveController$PowerSaveControllerCallback;

    invoke-virtual {p0, p1}, Lcom/flyme/systemui/statusbar/policy/PowerSaveControllerImpl;->removeCallback(Lcom/flyme/systemui/statusbar/policy/PowerSaveController$PowerSaveControllerCallback;)V

    return-void
.end method

.method public setPowerSaveMode(I)V
    .registers 4

    .line 91
    iput p1, p0, Lcom/flyme/systemui/statusbar/policy/PowerSaveControllerImpl;->mIntentMode:I

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setPowerSaveMode() called with: mode = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PowerSaveControllerImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    if-nez p1, :cond_2b

    const-string p1, "com.meizu.power.user.out.pm"

    .line 95
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_35

    :cond_2b
    const-string v1, "com.meizu.power.user.enter.pm"

    .line 97
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "in_mode"

    .line 98
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 100
    :goto_35
    iget-object p0, p0, Lcom/flyme/systemui/statusbar/policy/PowerSaveControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method
