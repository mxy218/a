.class final Lcom/android/server/location/GnssNetworkConnectivityHandler$SubIdPhoneStateListener;
.super Landroid/telephony/PhoneStateListener;
.source "GnssNetworkConnectivityHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/GnssNetworkConnectivityHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SubIdPhoneStateListener"
.end annotation


# instance fields
.field private mSubId:Ljava/lang/Integer;

.field final synthetic this$0:Lcom/android/server/location/GnssNetworkConnectivityHandler;


# direct methods
.method constructor <init>(Lcom/android/server/location/GnssNetworkConnectivityHandler;Ljava/lang/Integer;)V
    .registers 3
    .param p2, "subId"  # Ljava/lang/Integer;

    .line 210
    iput-object p1, p0, Lcom/android/server/location/GnssNetworkConnectivityHandler$SubIdPhoneStateListener;->this$0:Lcom/android/server/location/GnssNetworkConnectivityHandler;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    .line 211
    iput-object p2, p0, Lcom/android/server/location/GnssNetworkConnectivityHandler$SubIdPhoneStateListener;->mSubId:Ljava/lang/Integer;

    .line 212
    return-void
.end method


# virtual methods
.method public onPreciseCallStateChanged(Landroid/telephony/PreciseCallState;)V
    .registers 4
    .param p1, "state"  # Landroid/telephony/PreciseCallState;

    .line 215
    invoke-virtual {p1}, Landroid/telephony/PreciseCallState;->getForegroundCallState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v1, v0, :cond_35

    .line 216
    iget-object v0, p0, Lcom/android/server/location/GnssNetworkConnectivityHandler$SubIdPhoneStateListener;->this$0:Lcom/android/server/location/GnssNetworkConnectivityHandler;

    iget-object v1, p0, Lcom/android/server/location/GnssNetworkConnectivityHandler$SubIdPhoneStateListener;->mSubId:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/location/GnssNetworkConnectivityHandler;->access$002(Lcom/android/server/location/GnssNetworkConnectivityHandler;I)I

    .line 217
    invoke-static {}, Lcom/android/server/location/GnssNetworkConnectivityHandler;->access$100()Z

    move-result v0

    if-eqz v0, :cond_35

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mActiveSubId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/location/GnssNetworkConnectivityHandler$SubIdPhoneStateListener;->this$0:Lcom/android/server/location/GnssNetworkConnectivityHandler;

    invoke-static {v1}, Lcom/android/server/location/GnssNetworkConnectivityHandler;->access$000(Lcom/android/server/location/GnssNetworkConnectivityHandler;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GnssNetworkConnectivityHandler"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    :cond_35
    return-void
.end method
