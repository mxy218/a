.class public Lcom/flyme/systemui/statusbar/policy/SignalCallbackAdapter;
.super Ljava/lang/Object;
.source "SignalCallbackAdapter.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/NetworkController$SignalCallback;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setEthernetIndicators(Lcom/android/systemui/statusbar/policy/NetworkController$IconState;)V
    .registers 2

    return-void
.end method

.method public setSubs(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;)V"
        }
    .end annotation

    return-void
.end method
