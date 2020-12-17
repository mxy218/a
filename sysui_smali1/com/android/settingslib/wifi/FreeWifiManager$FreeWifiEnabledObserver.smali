.class Lcom/android/settingslib/wifi/FreeWifiManager$FreeWifiEnabledObserver;
.super Landroid/database/ContentObserver;
.source "FreeWifiManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/wifi/FreeWifiManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FreeWifiEnabledObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settingslib/wifi/FreeWifiManager;


# direct methods
.method public constructor <init>(Lcom/android/settingslib/wifi/FreeWifiManager;Landroid/os/Looper;)V
    .registers 3

    .line 154
    iput-object p1, p0, Lcom/android/settingslib/wifi/FreeWifiManager$FreeWifiEnabledObserver;->this$0:Lcom/android/settingslib/wifi/FreeWifiManager;

    .line 155
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 3

    const-string p1, "FreeWifiManager"

    const-string v0, "Free wifi enabled state change."

    .line 160
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    iget-object p0, p0, Lcom/android/settingslib/wifi/FreeWifiManager$FreeWifiEnabledObserver;->this$0:Lcom/android/settingslib/wifi/FreeWifiManager;

    invoke-static {p0}, Lcom/android/settingslib/wifi/FreeWifiManager;->access$000(Lcom/android/settingslib/wifi/FreeWifiManager;)V

    return-void
.end method
