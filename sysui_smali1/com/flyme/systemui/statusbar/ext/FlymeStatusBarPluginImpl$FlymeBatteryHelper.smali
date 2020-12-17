.class public Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPluginImpl$FlymeBatteryHelper;
.super Ljava/lang/Object;
.source "FlymeStatusBarPluginImpl.java"

# interfaces
.implements Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPlugin$IBatteryHelper;


# instance fields
.field private mOnlyNotFull:Z

.field private mShowAnimation:Z


# direct methods
.method public constructor <init>(ZZ)V
    .registers 3

    .line 676
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 677
    iput-boolean p1, p0, Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPluginImpl$FlymeBatteryHelper;->mOnlyNotFull:Z

    .line 678
    iput-boolean p2, p0, Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPluginImpl$FlymeBatteryHelper;->mShowAnimation:Z

    return-void
.end method


# virtual methods
.method public isPlugForProtection(ZII)Z
    .registers 4

    const/4 p0, 0x2

    if-ne p2, p0, :cond_5

    const/4 p0, 0x1

    goto :goto_6

    :cond_5
    const/4 p0, 0x0

    :goto_6
    return p0
.end method

.method public showChargingAnimation()Z
    .registers 1

    .line 683
    iget-boolean p0, p0, Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPluginImpl$FlymeBatteryHelper;->mShowAnimation:Z

    return p0
.end method
