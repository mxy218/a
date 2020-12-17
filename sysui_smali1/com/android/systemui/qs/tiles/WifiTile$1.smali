.class Lcom/android/systemui/qs/tiles/WifiTile$1;
.super Ljava/lang/Object;
.source "WifiTile.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/NetworkController$DualWifiChangeCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/WifiTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/WifiTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/WifiTile;)V
    .registers 2

    .line 620
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/WifiTile$1;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setDualWifiConnectionState(Landroid/net/NetworkInfo$State;)V
    .registers 2

    .line 630
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/WifiTile$1;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    invoke-static {p1}, Lcom/android/systemui/qs/tiles/WifiTile;->access$1800(Lcom/android/systemui/qs/tiles/WifiTile;)Z

    move-result p1

    if-eqz p1, :cond_11

    .line 631
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/WifiTile$1;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    invoke-static {p0}, Lcom/android/systemui/qs/tiles/WifiTile;->access$100(Lcom/android/systemui/qs/tiles/WifiTile;)Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;

    move-result-object p0

    invoke-static {p0}, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->access$200(Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;)V

    :cond_11
    return-void
.end method

.method public setDualWifiEnabled(Z)V
    .registers 2

    .line 623
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/WifiTile$1;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    invoke-static {p1}, Lcom/android/systemui/qs/tiles/WifiTile;->access$1700(Lcom/android/systemui/qs/tiles/WifiTile;)Z

    move-result p1

    if-eqz p1, :cond_11

    .line 624
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/WifiTile$1;->this$0:Lcom/android/systemui/qs/tiles/WifiTile;

    invoke-static {p0}, Lcom/android/systemui/qs/tiles/WifiTile;->access$100(Lcom/android/systemui/qs/tiles/WifiTile;)Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;

    move-result-object p0

    invoke-static {p0}, Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;->access$200(Lcom/android/systemui/qs/tiles/WifiTile$WifiDetailAdapter;)V

    :cond_11
    return-void
.end method
