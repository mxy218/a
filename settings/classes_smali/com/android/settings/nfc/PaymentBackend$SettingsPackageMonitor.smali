.class Lcom/android/settings/nfc/PaymentBackend$SettingsPackageMonitor;
.super Lcom/android/internal/content/PackageMonitor;
.source "PaymentBackend.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/nfc/PaymentBackend;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingsPackageMonitor"
.end annotation


# instance fields
.field private mHandler:Landroid/os/Handler;

.field final synthetic this$0:Lcom/android/settings/nfc/PaymentBackend;


# direct methods
.method private constructor <init>(Lcom/android/settings/nfc/PaymentBackend;)V
    .registers 2

    .line 173
    iput-object p1, p0, Lcom/android/settings/nfc/PaymentBackend$SettingsPackageMonitor;->this$0:Lcom/android/settings/nfc/PaymentBackend;

    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/nfc/PaymentBackend;Lcom/android/settings/nfc/PaymentBackend$1;)V
    .registers 3

    .line 173
    invoke-direct {p0, p1}, Lcom/android/settings/nfc/PaymentBackend$SettingsPackageMonitor;-><init>(Lcom/android/settings/nfc/PaymentBackend;)V

    return-void
.end method


# virtual methods
.method public onPackageAdded(Ljava/lang/String;I)V
    .registers 3

    .line 192
    iget-object p0, p0, Lcom/android/settings/nfc/PaymentBackend$SettingsPackageMonitor;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onPackageAppeared(Ljava/lang/String;I)V
    .registers 3

    .line 197
    iget-object p0, p0, Lcom/android/settings/nfc/PaymentBackend$SettingsPackageMonitor;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onPackageDisappeared(Ljava/lang/String;I)V
    .registers 3

    .line 202
    iget-object p0, p0, Lcom/android/settings/nfc/PaymentBackend$SettingsPackageMonitor;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onPackageRemoved(Ljava/lang/String;I)V
    .registers 3

    .line 207
    iget-object p0, p0, Lcom/android/settings/nfc/PaymentBackend$SettingsPackageMonitor;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V
    .registers 6

    .line 179
    iget-object v0, p0, Lcom/android/settings/nfc/PaymentBackend$SettingsPackageMonitor;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_b

    .line 180
    new-instance v0, Lcom/android/settings/nfc/PaymentBackend$SettingsPackageMonitor$1;

    invoke-direct {v0, p0, p2}, Lcom/android/settings/nfc/PaymentBackend$SettingsPackageMonitor$1;-><init>(Lcom/android/settings/nfc/PaymentBackend$SettingsPackageMonitor;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/settings/nfc/PaymentBackend$SettingsPackageMonitor;->mHandler:Landroid/os/Handler;

    .line 187
    :cond_b
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V

    return-void
.end method
