.class Lcom/android/server/display/WifiDisplayController$2;
.super Ljava/lang/Object;
.source "WifiDisplayController.java"

# interfaces
.implements Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/display/WifiDisplayController;->updateWfdEnableState()V
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

    .line 303
    iput-object p1, p0, Lcom/android/server/display/WifiDisplayController$2;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(I)V
    .registers 3

    .line 322
    iget-object p1, p0, Lcom/android/server/display/WifiDisplayController$2;->this$0:Lcom/android/server/display/WifiDisplayController;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/server/display/WifiDisplayController;->access$102(Lcom/android/server/display/WifiDisplayController;Z)Z

    .line 323
    return-void
.end method

.method public onSuccess()V
    .registers 3

    .line 309
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$2;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayController;->access$100(Lcom/android/server/display/WifiDisplayController;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 310
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$2;->this$0:Lcom/android/server/display/WifiDisplayController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/display/WifiDisplayController;->access$102(Lcom/android/server/display/WifiDisplayController;Z)Z

    .line 311
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$2;->this$0:Lcom/android/server/display/WifiDisplayController;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/display/WifiDisplayController;->access$202(Lcom/android/server/display/WifiDisplayController;Z)Z

    .line 312
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$2;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayController;->access$300(Lcom/android/server/display/WifiDisplayController;)V

    .line 313
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$2;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayController;->access$400(Lcom/android/server/display/WifiDisplayController;)V

    .line 315
    :cond_1e
    return-void
.end method
