.class Lcom/android/server/display/WifiDisplayController$31;
.super Ljava/lang/Object;
.source "WifiDisplayController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/WifiDisplayController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/WifiDisplayController;


# direct methods
.method constructor <init>(Lcom/android/server/display/WifiDisplayController;)V
    .registers 2
    .param p1, "this$0"  # Lcom/android/server/display/WifiDisplayController;

    .line 1580
    iput-object p1, p0, Lcom/android/server/display/WifiDisplayController$31;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1583
    const-string v0, "WifiDisplayController"

    const-string v1, "Enable wifi automatically."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1584
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$31;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayController;->access$4700(Lcom/android/server/display/WifiDisplayController;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v0

    .line 1585
    .local v0, "wifiApState":I
    const/16 v1, 0xc

    if-eq v0, v1, :cond_19

    const/16 v1, 0xd

    if-ne v0, v1, :cond_22

    .line 1587
    :cond_19
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController$31;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v1}, Lcom/android/server/display/WifiDisplayController;->access$4700(Lcom/android/server/display/WifiDisplayController;)Landroid/net/wifi/WifiManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->stopSoftAp()Z

    .line 1589
    :cond_22
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController$31;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v1}, Lcom/android/server/display/WifiDisplayController;->access$4700(Lcom/android/server/display/WifiDisplayController;)Landroid/net/wifi/WifiManager;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 1590
    return-void
.end method
