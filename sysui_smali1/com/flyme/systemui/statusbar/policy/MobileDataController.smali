.class public interface abstract Lcom/flyme/systemui/statusbar/policy/MobileDataController;
.super Ljava/lang/Object;
.source "MobileDataController.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/CallbackController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flyme/systemui/statusbar/policy/MobileDataController$Callback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/systemui/statusbar/policy/CallbackController<",
        "Lcom/flyme/systemui/statusbar/policy/MobileDataController$Callback;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract canConfigSubId()Z
.end method

.method public abstract getActiveSubscriptionInfoList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract isDualEnabled()Z
.end method

.method public abstract isMobileDataEnabled()Z
.end method

.method public abstract isMobileDataSupported()Z
.end method

.method public abstract isSimSwitching()Z
.end method

.method public abstract setDefaultDataSubId(I)V
.end method

.method public abstract setMobileDataEnabled(Z)V
.end method
