.class public Lcom/flyme/systemui/statusbar/policy/DriveModeControllerImpl;
.super Ljava/lang/Object;
.source "DriveModeControllerImpl.java"

# interfaces
.implements Lcom/flyme/systemui/statusbar/policy/DriveModeController;


# annotations
.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field private final mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/flyme/systemui/statusbar/policy/DriveModeController$DriveModeControllerCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mDriveMode:Lcom/flyme/systemui/drivemode/DriveMode;

.field private mDriveModeObserver:Landroid/database/ContentObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 8
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/flyme/systemui/statusbar/policy/DriveModeControllerImpl;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 83
    new-instance v0, Lcom/flyme/systemui/statusbar/policy/DriveModeControllerImpl$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/flyme/systemui/statusbar/policy/DriveModeControllerImpl$1;-><init>(Lcom/flyme/systemui/statusbar/policy/DriveModeControllerImpl;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/flyme/systemui/statusbar/policy/DriveModeControllerImpl;->mDriveModeObserver:Landroid/database/ContentObserver;

    .line 32
    iput-object p1, p0, Lcom/flyme/systemui/statusbar/policy/DriveModeControllerImpl;->mContext:Landroid/content/Context;

    const-string v0, "mz_drive_mode"

    .line 35
    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 36
    iget-object v2, p0, Lcom/flyme/systemui/statusbar/policy/DriveModeControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/flyme/systemui/statusbar/policy/DriveModeControllerImpl;->mDriveModeObserver:Landroid/database/ContentObserver;

    const/4 v4, 0x0

    const/4 v5, -0x2

    invoke-virtual {v2, v1, v4, v3, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 38
    new-instance v1, Lcom/flyme/systemui/drivemode/DriveMode;

    invoke-direct {v1, p1}, Lcom/flyme/systemui/drivemode/DriveMode;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/flyme/systemui/statusbar/policy/DriveModeControllerImpl;->mDriveMode:Lcom/flyme/systemui/drivemode/DriveMode;

    .line 40
    iget-object p1, p0, Lcom/flyme/systemui/statusbar/policy/DriveModeControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, v0, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_45

    .line 41
    iget-object p0, p0, Lcom/flyme/systemui/statusbar/policy/DriveModeControllerImpl;->mDriveMode:Lcom/flyme/systemui/drivemode/DriveMode;

    invoke-virtual {p0}, Lcom/flyme/systemui/drivemode/DriveMode;->onStart()V

    goto :goto_4a

    .line 43
    :cond_45
    iget-object p0, p0, Lcom/flyme/systemui/statusbar/policy/DriveModeControllerImpl;->mDriveMode:Lcom/flyme/systemui/drivemode/DriveMode;

    invoke-virtual {p0}, Lcom/flyme/systemui/drivemode/DriveMode;->onStop()V

    :goto_4a
    return-void
.end method

.method static synthetic access$000(Lcom/flyme/systemui/statusbar/policy/DriveModeControllerImpl;)Landroid/content/Context;
    .registers 1

    .line 21
    iget-object p0, p0, Lcom/flyme/systemui/statusbar/policy/DriveModeControllerImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/flyme/systemui/statusbar/policy/DriveModeControllerImpl;)Lcom/flyme/systemui/drivemode/DriveMode;
    .registers 1

    .line 21
    iget-object p0, p0, Lcom/flyme/systemui/statusbar/policy/DriveModeControllerImpl;->mDriveMode:Lcom/flyme/systemui/drivemode/DriveMode;

    return-object p0
.end method

.method static synthetic access$200(Lcom/flyme/systemui/statusbar/policy/DriveModeControllerImpl;)V
    .registers 1

    .line 21
    invoke-direct {p0}, Lcom/flyme/systemui/statusbar/policy/DriveModeControllerImpl;->notifyChanged()V

    return-void
.end method

.method private notifyChanged()V
    .registers 3

    .line 74
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/DriveModeControllerImpl;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/flyme/systemui/statusbar/policy/DriveModeController$DriveModeControllerCallback;

    .line 75
    invoke-direct {p0, v1}, Lcom/flyme/systemui/statusbar/policy/DriveModeControllerImpl;->notifyChanged(Lcom/flyme/systemui/statusbar/policy/DriveModeController$DriveModeControllerCallback;)V

    goto :goto_6

    :cond_16
    return-void
.end method

.method private notifyChanged(Lcom/flyme/systemui/statusbar/policy/DriveModeController$DriveModeControllerCallback;)V
    .registers 2

    .line 80
    invoke-interface {p1}, Lcom/flyme/systemui/statusbar/policy/DriveModeController$DriveModeControllerCallback;->onDriveModeChanged()V

    return-void
.end method


# virtual methods
.method public addCallback(Lcom/flyme/systemui/statusbar/policy/DriveModeController$DriveModeControllerCallback;)V
    .registers 3

    .line 64
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/DriveModeControllerImpl;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    invoke-direct {p0, p1}, Lcom/flyme/systemui/statusbar/policy/DriveModeControllerImpl;->notifyChanged(Lcom/flyme/systemui/statusbar/policy/DriveModeController$DriveModeControllerCallback;)V

    return-void
.end method

.method public bridge synthetic addCallback(Ljava/lang/Object;)V
    .registers 2

    .line 20
    check-cast p1, Lcom/flyme/systemui/statusbar/policy/DriveModeController$DriveModeControllerCallback;

    invoke-virtual {p0, p1}, Lcom/flyme/systemui/statusbar/policy/DriveModeControllerImpl;->addCallback(Lcom/flyme/systemui/statusbar/policy/DriveModeController$DriveModeControllerCallback;)V

    return-void
.end method

.method public isDriveModeEnabled()Z
    .registers 1

    .line 49
    sget-boolean p0, Lcom/flyme/systemui/drivemode/DriveMode;->modeOn:Z

    return p0
.end method

.method public isDriveModeSupported()Z
    .registers 1

    .line 54
    invoke-static {}, Lcom/flyme/systemui/statusbar/utils/UserManagerUtils;->isGuestUser()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public removeCallback(Lcom/flyme/systemui/statusbar/policy/DriveModeController$DriveModeControllerCallback;)V
    .registers 2

    .line 70
    iget-object p0, p0, Lcom/flyme/systemui/statusbar/policy/DriveModeControllerImpl;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public bridge synthetic removeCallback(Ljava/lang/Object;)V
    .registers 2

    .line 20
    check-cast p1, Lcom/flyme/systemui/statusbar/policy/DriveModeController$DriveModeControllerCallback;

    invoke-virtual {p0, p1}, Lcom/flyme/systemui/statusbar/policy/DriveModeControllerImpl;->removeCallback(Lcom/flyme/systemui/statusbar/policy/DriveModeController$DriveModeControllerCallback;)V

    return-void
.end method

.method public setDriveModeEnabled(Z)V
    .registers 2

    .line 59
    iget-object p0, p0, Lcom/flyme/systemui/statusbar/policy/DriveModeControllerImpl;->mDriveMode:Lcom/flyme/systemui/drivemode/DriveMode;

    invoke-virtual {p0}, Lcom/flyme/systemui/drivemode/DriveMode;->onTileClick()V

    return-void
.end method
