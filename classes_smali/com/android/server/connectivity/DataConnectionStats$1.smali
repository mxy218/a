.class Lcom/android/server/connectivity/DataConnectionStats$1;
.super Landroid/telephony/PhoneStateListener;
.source "DataConnectionStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/DataConnectionStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/connectivity/DataConnectionStats;


# direct methods
.method constructor <init>(Lcom/android/server/connectivity/DataConnectionStats;)V
    .registers 2

    .line 132
    iput-object p1, p0, Lcom/android/server/connectivity/DataConnectionStats$1;->this$0:Lcom/android/server/connectivity/DataConnectionStats;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataActivity(I)V
    .registers 2

    .line 152
    iget-object p1, p0, Lcom/android/server/connectivity/DataConnectionStats$1;->this$0:Lcom/android/server/connectivity/DataConnectionStats;

    invoke-static {p1}, Lcom/android/server/connectivity/DataConnectionStats;->access$200(Lcom/android/server/connectivity/DataConnectionStats;)V

    .line 153
    return-void
.end method

.method public onDataConnectionStateChanged(II)V
    .registers 3

    .line 146
    iget-object p2, p0, Lcom/android/server/connectivity/DataConnectionStats$1;->this$0:Lcom/android/server/connectivity/DataConnectionStats;

    invoke-static {p2, p1}, Lcom/android/server/connectivity/DataConnectionStats;->access$302(Lcom/android/server/connectivity/DataConnectionStats;I)I

    .line 147
    iget-object p1, p0, Lcom/android/server/connectivity/DataConnectionStats$1;->this$0:Lcom/android/server/connectivity/DataConnectionStats;

    invoke-static {p1}, Lcom/android/server/connectivity/DataConnectionStats;->access$200(Lcom/android/server/connectivity/DataConnectionStats;)V

    .line 148
    return-void
.end method

.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .registers 3

    .line 140
    iget-object v0, p0, Lcom/android/server/connectivity/DataConnectionStats$1;->this$0:Lcom/android/server/connectivity/DataConnectionStats;

    invoke-static {v0, p1}, Lcom/android/server/connectivity/DataConnectionStats;->access$102(Lcom/android/server/connectivity/DataConnectionStats;Landroid/telephony/ServiceState;)Landroid/telephony/ServiceState;

    .line 141
    iget-object p1, p0, Lcom/android/server/connectivity/DataConnectionStats$1;->this$0:Lcom/android/server/connectivity/DataConnectionStats;

    invoke-static {p1}, Lcom/android/server/connectivity/DataConnectionStats;->access$200(Lcom/android/server/connectivity/DataConnectionStats;)V

    .line 142
    return-void
.end method

.method public onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    .registers 3

    .line 135
    iget-object v0, p0, Lcom/android/server/connectivity/DataConnectionStats$1;->this$0:Lcom/android/server/connectivity/DataConnectionStats;

    invoke-static {v0, p1}, Lcom/android/server/connectivity/DataConnectionStats;->access$002(Lcom/android/server/connectivity/DataConnectionStats;Landroid/telephony/SignalStrength;)Landroid/telephony/SignalStrength;

    .line 136
    return-void
.end method
