.class Lcom/android/server/connectivity/Vpn$3;
.super Landroid/os/Handler;
.source "Vpn.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/connectivity/Vpn;->initFlymeChange()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/connectivity/Vpn;


# direct methods
.method constructor <init>(Lcom/android/server/connectivity/Vpn;)V
    .registers 2
    .param p1, "this$0"  # Lcom/android/server/connectivity/Vpn;

    .line 2680
    iput-object p1, p0, Lcom/android/server/connectivity/Vpn$3;->this$0:Lcom/android/server/connectivity/Vpn;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .param p1, "msg"  # Landroid/os/Message;

    .line 2683
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_20

    goto :goto_1f

    .line 2692
    :pswitch_6  #0x67
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$3;->this$0:Lcom/android/server/connectivity/Vpn;

    invoke-static {v0}, Lcom/android/server/connectivity/Vpn;->access$2100(Lcom/android/server/connectivity/Vpn;)V

    goto :goto_1f

    .line 2688
    :pswitch_c  #0x66
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$3;->this$0:Lcom/android/server/connectivity/Vpn;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/connectivity/Vpn;->access$1902(Lcom/android/server/connectivity/Vpn;Lcom/android/internal/net/LegacyVpnInfo;)Lcom/android/internal/net/LegacyVpnInfo;

    .line 2689
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$3;->this$0:Lcom/android/server/connectivity/Vpn;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/connectivity/Vpn;->access$2000(Lcom/android/server/connectivity/Vpn;I)V

    .line 2690
    goto :goto_1f

    .line 2685
    :pswitch_19  #0x65
    iget-object v0, p0, Lcom/android/server/connectivity/Vpn$3;->this$0:Lcom/android/server/connectivity/Vpn;

    invoke-static {v0}, Lcom/android/server/connectivity/Vpn;->access$1800(Lcom/android/server/connectivity/Vpn;)V

    .line 2686
    nop

    .line 2695
    :goto_1f
    return-void

    :pswitch_data_20
    .packed-switch 0x65
        :pswitch_19  #00000065
        :pswitch_c  #00000066
        :pswitch_6  #00000067
    .end packed-switch
.end method
