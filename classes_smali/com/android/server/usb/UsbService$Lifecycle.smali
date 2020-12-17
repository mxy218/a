.class public Lcom/android/server/usb/UsbService$Lifecycle;
.super Lcom/android/server/SystemService;
.source "UsbService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usb/UsbService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Lifecycle"
.end annotation


# instance fields
.field private mUsbService:Lcom/android/server/usb/UsbService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"  # Landroid/content/Context;

    .line 79
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 80
    return-void
.end method


# virtual methods
.method public onBootPhase(I)V
    .registers 3
    .param p1, "phase"  # I

    .line 90
    const/16 v0, 0x226

    if-ne p1, v0, :cond_a

    .line 91
    iget-object v0, p0, Lcom/android/server/usb/UsbService$Lifecycle;->mUsbService:Lcom/android/server/usb/UsbService;

    invoke-virtual {v0}, Lcom/android/server/usb/UsbService;->systemReady()V

    goto :goto_13

    .line 92
    :cond_a
    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_13

    .line 93
    iget-object v0, p0, Lcom/android/server/usb/UsbService$Lifecycle;->mUsbService:Lcom/android/server/usb/UsbService;

    invoke-virtual {v0}, Lcom/android/server/usb/UsbService;->bootCompleted()V

    .line 95
    :cond_13
    :goto_13
    return-void
.end method

.method public onStart()V
    .registers 3

    .line 84
    new-instance v0, Lcom/android/server/usb/UsbService;

    invoke-virtual {p0}, Lcom/android/server/usb/UsbService$Lifecycle;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/usb/UsbService;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/usb/UsbService$Lifecycle;->mUsbService:Lcom/android/server/usb/UsbService;

    .line 85
    iget-object v0, p0, Lcom/android/server/usb/UsbService$Lifecycle;->mUsbService:Lcom/android/server/usb/UsbService;

    const-string/jumbo v1, "usb"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/usb/UsbService$Lifecycle;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 86
    return-void
.end method

.method public onStopUser(I)V
    .registers 4
    .param p1, "userHandle"  # I

    .line 104
    iget-object v0, p0, Lcom/android/server/usb/UsbService$Lifecycle;->mUsbService:Lcom/android/server/usb/UsbService;

    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/usb/UsbService;->access$100(Lcom/android/server/usb/UsbService;Landroid/os/UserHandle;)V

    .line 105
    return-void
.end method

.method public onSwitchUser(I)V
    .registers 3
    .param p1, "newUserId"  # I

    .line 99
    iget-object v0, p0, Lcom/android/server/usb/UsbService$Lifecycle;->mUsbService:Lcom/android/server/usb/UsbService;

    invoke-static {v0, p1}, Lcom/android/server/usb/UsbService;->access$000(Lcom/android/server/usb/UsbService;I)V

    .line 100
    return-void
.end method

.method public onUnlockUser(I)V
    .registers 3
    .param p1, "userHandle"  # I

    .line 109
    iget-object v0, p0, Lcom/android/server/usb/UsbService$Lifecycle;->mUsbService:Lcom/android/server/usb/UsbService;

    invoke-virtual {v0, p1}, Lcom/android/server/usb/UsbService;->onUnlockUser(I)V

    .line 110
    return-void
.end method
