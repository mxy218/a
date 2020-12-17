.class final Lcom/flyme/systemui/qs/tiles/MobileDataTile$Callback;
.super Lcom/flyme/systemui/statusbar/policy/SignalCallbackAdapter;
.source "MobileDataTile.java"

# interfaces
.implements Lcom/flyme/systemui/statusbar/policy/MobileDataController$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flyme/systemui/qs/tiles/MobileDataTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Callback"
.end annotation


# instance fields
.field private mInfo:Lcom/flyme/systemui/qs/tiles/MobileDataTile$CallbackInfo;

.field final synthetic this$0:Lcom/flyme/systemui/qs/tiles/MobileDataTile;


# direct methods
.method private constructor <init>(Lcom/flyme/systemui/qs/tiles/MobileDataTile;)V
    .registers 3

    .line 232
    iput-object p1, p0, Lcom/flyme/systemui/qs/tiles/MobileDataTile$Callback;->this$0:Lcom/flyme/systemui/qs/tiles/MobileDataTile;

    invoke-direct {p0}, Lcom/flyme/systemui/statusbar/policy/SignalCallbackAdapter;-><init>()V

    .line 233
    new-instance p1, Lcom/flyme/systemui/qs/tiles/MobileDataTile$CallbackInfo;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcom/flyme/systemui/qs/tiles/MobileDataTile$CallbackInfo;-><init>(Lcom/flyme/systemui/qs/tiles/MobileDataTile$1;)V

    iput-object p1, p0, Lcom/flyme/systemui/qs/tiles/MobileDataTile$Callback;->mInfo:Lcom/flyme/systemui/qs/tiles/MobileDataTile$CallbackInfo;

    return-void
.end method

.method synthetic constructor <init>(Lcom/flyme/systemui/qs/tiles/MobileDataTile;Lcom/flyme/systemui/qs/tiles/MobileDataTile$1;)V
    .registers 3

    .line 232
    invoke-direct {p0, p1}, Lcom/flyme/systemui/qs/tiles/MobileDataTile$Callback;-><init>(Lcom/flyme/systemui/qs/tiles/MobileDataTile;)V

    return-void
.end method

.method static synthetic access$100(Lcom/flyme/systemui/qs/tiles/MobileDataTile$Callback;)Lcom/flyme/systemui/qs/tiles/MobileDataTile$CallbackInfo;
    .registers 1

    .line 232
    iget-object p0, p0, Lcom/flyme/systemui/qs/tiles/MobileDataTile$Callback;->mInfo:Lcom/flyme/systemui/qs/tiles/MobileDataTile$CallbackInfo;

    return-object p0
.end method


# virtual methods
.method public onDefaultDataSubInfoChanged(Landroid/telephony/SubscriptionInfo;)V
    .registers 4

    if-eqz p1, :cond_34

    .line 294
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[foree] onDefaultDataSubInfoChanged: name = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MobileDataTile"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    iget-object v0, p0, Lcom/flyme/systemui/qs/tiles/MobileDataTile$Callback;->this$0:Lcom/flyme/systemui/qs/tiles/MobileDataTile;

    invoke-static {v0, p1}, Lcom/flyme/systemui/qs/tiles/MobileDataTile;->access$902(Lcom/flyme/systemui/qs/tiles/MobileDataTile;Landroid/telephony/SubscriptionInfo;)Landroid/telephony/SubscriptionInfo;

    .line 297
    iget-object v0, p0, Lcom/flyme/systemui/qs/tiles/MobileDataTile$Callback;->mInfo:Lcom/flyme/systemui/qs/tiles/MobileDataTile$CallbackInfo;

    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/flyme/systemui/qs/tiles/MobileDataTile$CallbackInfo;->defaultDataSimDesc:Ljava/lang/String;

    .line 298
    iget-object p1, p0, Lcom/flyme/systemui/qs/tiles/MobileDataTile$Callback;->this$0:Lcom/flyme/systemui/qs/tiles/MobileDataTile;

    iget-object p0, p0, Lcom/flyme/systemui/qs/tiles/MobileDataTile$Callback;->mInfo:Lcom/flyme/systemui/qs/tiles/MobileDataTile$CallbackInfo;

    invoke-static {p1, p0}, Lcom/flyme/systemui/qs/tiles/MobileDataTile;->access$1000(Lcom/flyme/systemui/qs/tiles/MobileDataTile;Ljava/lang/Object;)V

    :cond_34
    return-void
.end method

.method public setIsAirplaneMode(Lcom/android/systemui/statusbar/policy/NetworkController$IconState;)V
    .registers 3

    .line 276
    iget-object v0, p0, Lcom/flyme/systemui/qs/tiles/MobileDataTile$Callback;->mInfo:Lcom/flyme/systemui/qs/tiles/MobileDataTile$CallbackInfo;

    iget-boolean p1, p1, Lcom/android/systemui/statusbar/policy/NetworkController$IconState;->visible:Z

    iput-boolean p1, v0, Lcom/flyme/systemui/qs/tiles/MobileDataTile$CallbackInfo;->airplaneModeEnabled:Z

    .line 277
    iget-boolean p1, v0, Lcom/flyme/systemui/qs/tiles/MobileDataTile$CallbackInfo;->airplaneModeEnabled:Z

    if-eqz p1, :cond_11

    const/4 p1, 0x0

    .line 278
    iput p1, v0, Lcom/flyme/systemui/qs/tiles/MobileDataTile$CallbackInfo;->mobileSignalIconId:I

    .line 279
    iput p1, v0, Lcom/flyme/systemui/qs/tiles/MobileDataTile$CallbackInfo;->dataTypeIconId:I

    .line 280
    iput-boolean p1, v0, Lcom/flyme/systemui/qs/tiles/MobileDataTile$CallbackInfo;->enabled:Z

    .line 282
    :cond_11
    iget-object p1, p0, Lcom/flyme/systemui/qs/tiles/MobileDataTile$Callback;->this$0:Lcom/flyme/systemui/qs/tiles/MobileDataTile;

    iget-object p0, p0, Lcom/flyme/systemui/qs/tiles/MobileDataTile$Callback;->mInfo:Lcom/flyme/systemui/qs/tiles/MobileDataTile$CallbackInfo;

    invoke-static {p1, p0}, Lcom/flyme/systemui/qs/tiles/MobileDataTile;->access$600(Lcom/flyme/systemui/qs/tiles/MobileDataTile;Ljava/lang/Object;)V

    return-void
.end method

.method public setMobileDataEnabled(Z)V
    .registers 3

    .line 287
    iget-object v0, p0, Lcom/flyme/systemui/qs/tiles/MobileDataTile$Callback;->this$0:Lcom/flyme/systemui/qs/tiles/MobileDataTile;

    invoke-static {v0}, Lcom/flyme/systemui/qs/tiles/MobileDataTile;->access$700(Lcom/flyme/systemui/qs/tiles/MobileDataTile;)Lcom/flyme/systemui/qs/tiles/MobileDataTile$MobileDataDetailAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/flyme/systemui/qs/tiles/MobileDataTile$MobileDataDetailAdapter;->setMobileDataEnabled(Z)V

    .line 288
    iget-object p1, p0, Lcom/flyme/systemui/qs/tiles/MobileDataTile$Callback;->this$0:Lcom/flyme/systemui/qs/tiles/MobileDataTile;

    iget-object p0, p0, Lcom/flyme/systemui/qs/tiles/MobileDataTile$Callback;->mInfo:Lcom/flyme/systemui/qs/tiles/MobileDataTile$CallbackInfo;

    invoke-static {p1, p0}, Lcom/flyme/systemui/qs/tiles/MobileDataTile;->access$800(Lcom/flyme/systemui/qs/tiles/MobileDataTile;Ljava/lang/Object;)V

    return-void
.end method

.method public setNoSims(ZZ)V
    .registers 5

    .line 259
    iget-object p2, p0, Lcom/flyme/systemui/qs/tiles/MobileDataTile$Callback;->mInfo:Lcom/flyme/systemui/qs/tiles/MobileDataTile$CallbackInfo;

    iput-boolean p1, p2, Lcom/flyme/systemui/qs/tiles/MobileDataTile$CallbackInfo;->noSim:Z

    .line 260
    iget-boolean v0, p2, Lcom/flyme/systemui/qs/tiles/MobileDataTile$CallbackInfo;->noSim:Z

    if-eqz v0, :cond_2a

    const/4 v0, 0x0

    .line 262
    iput v0, p2, Lcom/flyme/systemui/qs/tiles/MobileDataTile$CallbackInfo;->mobileSignalIconId:I

    .line 263
    iput v0, p2, Lcom/flyme/systemui/qs/tiles/MobileDataTile$CallbackInfo;->dataTypeIconId:I

    .line 264
    iput-boolean v0, p2, Lcom/flyme/systemui/qs/tiles/MobileDataTile$CallbackInfo;->enabled:Z

    .line 267
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onNoSimVisibleChanged noSim="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MobileDataTile"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    iget-object p1, p0, Lcom/flyme/systemui/qs/tiles/MobileDataTile$Callback;->this$0:Lcom/flyme/systemui/qs/tiles/MobileDataTile;

    invoke-virtual {p1, v0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->showDetail(Z)V

    .line 271
    :cond_2a
    iget-object p1, p0, Lcom/flyme/systemui/qs/tiles/MobileDataTile$Callback;->this$0:Lcom/flyme/systemui/qs/tiles/MobileDataTile;

    iget-object p0, p0, Lcom/flyme/systemui/qs/tiles/MobileDataTile$Callback;->mInfo:Lcom/flyme/systemui/qs/tiles/MobileDataTile$CallbackInfo;

    invoke-static {p1, p0}, Lcom/flyme/systemui/qs/tiles/MobileDataTile;->access$500(Lcom/flyme/systemui/qs/tiles/MobileDataTile;Ljava/lang/Object;)V

    return-void
.end method
