.class public interface abstract Lcom/flyme/systemuitools/aod/model/IAODModel;
.super Ljava/lang/Object;
.source "IAODModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flyme/systemuitools/aod/model/IAODModel$Callback;
    }
.end annotation


# virtual methods
.method public abstract getBatteryInfo()Lcom/flyme/systemuitools/aod/model/BatteryStatus;
.end method

.method public abstract onCreate()V
.end method

.method public abstract registerCallback(Lcom/flyme/systemuitools/aod/model/IAODModel$Callback;)V
.end method

.method public abstract removeCallback(Lcom/flyme/systemuitools/aod/model/IAODModel$Callback;)V
.end method
