.class Lcom/android/server/BluetoothService;
.super Lcom/android/server/SystemService;
.source "BluetoothService.java"


# instance fields
.field private mBluetoothManagerService:Lcom/android/server/BluetoothManagerService;

.field private mInitialized:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 29
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/BluetoothService;->mInitialized:Z

    .line 30
    new-instance v0, Lcom/android/server/BluetoothManagerService;

    invoke-direct {v0, p1}, Lcom/android/server/BluetoothManagerService;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/BluetoothService;->mBluetoothManagerService:Lcom/android/server/BluetoothManagerService;

    .line 31
    return-void
.end method

.method private initialize()V
    .registers 2

    .line 34
    iget-boolean v0, p0, Lcom/android/server/BluetoothService;->mInitialized:Z

    if-nez v0, :cond_c

    .line 35
    iget-object v0, p0, Lcom/android/server/BluetoothService;->mBluetoothManagerService:Lcom/android/server/BluetoothManagerService;

    invoke-virtual {v0}, Lcom/android/server/BluetoothManagerService;->handleOnBootPhase()V

    .line 36
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/BluetoothService;->mInitialized:Z

    .line 38
    :cond_c
    return-void
.end method


# virtual methods
.method public onBootPhase(I)V
    .registers 3

    .line 46
    const/16 v0, 0x1f4

    if-ne p1, v0, :cond_c

    .line 47
    iget-object p1, p0, Lcom/android/server/BluetoothService;->mBluetoothManagerService:Lcom/android/server/BluetoothManagerService;

    const-string v0, "bluetooth_manager"

    invoke-virtual {p0, v0, p1}, Lcom/android/server/BluetoothService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    goto :goto_17

    .line 49
    :cond_c
    const/16 v0, 0x226

    if-ne p1, v0, :cond_17

    sget-boolean p1, Lcom/android/internal/os/RoSystemProperties;->MULTIUSER_HEADLESS_SYSTEM_USER:Z

    if-nez p1, :cond_17

    .line 51
    invoke-direct {p0}, Lcom/android/server/BluetoothService;->initialize()V

    .line 53
    :cond_17
    :goto_17
    return-void
.end method

.method public onStart()V
    .registers 1

    .line 42
    return-void
.end method

.method public onSwitchUser(I)V
    .registers 3

    .line 57
    iget-boolean v0, p0, Lcom/android/server/BluetoothService;->mInitialized:Z

    if-nez v0, :cond_8

    .line 58
    invoke-direct {p0}, Lcom/android/server/BluetoothService;->initialize()V

    goto :goto_d

    .line 60
    :cond_8
    iget-object v0, p0, Lcom/android/server/BluetoothService;->mBluetoothManagerService:Lcom/android/server/BluetoothManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/BluetoothManagerService;->handleOnSwitchUser(I)V

    .line 62
    :goto_d
    return-void
.end method

.method public onUnlockUser(I)V
    .registers 3

    .line 66
    iget-object v0, p0, Lcom/android/server/BluetoothService;->mBluetoothManagerService:Lcom/android/server/BluetoothManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/BluetoothManagerService;->handleOnUnlockUser(I)V

    .line 67
    return-void
.end method
