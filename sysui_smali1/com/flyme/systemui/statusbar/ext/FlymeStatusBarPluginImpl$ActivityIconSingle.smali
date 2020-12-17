.class public Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPluginImpl$ActivityIconSingle;
.super Ljava/lang/Object;
.source "FlymeStatusBarPluginImpl.java"

# interfaces
.implements Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPlugin$IActivityIcon;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getActivityIcon(IZZZ)I
    .registers 5

    if-eqz p1, :cond_18

    if-eqz p2, :cond_18

    if-eqz p3, :cond_b

    if-eqz p4, :cond_b

    .line 99
    sget p0, Lcom/android/systemui/R$drawable;->stat_sys_data_inout:I

    return p0

    :cond_b
    if-eqz p3, :cond_10

    .line 101
    sget p0, Lcom/android/systemui/R$drawable;->stat_sys_data_in:I

    return p0

    :cond_10
    if-eqz p4, :cond_15

    .line 103
    sget p0, Lcom/android/systemui/R$drawable;->stat_sys_data_out:I

    return p0

    .line 105
    :cond_15
    sget p0, Lcom/android/systemui/R$drawable;->stat_sys_data_in_dis:I

    return p0

    :cond_18
    const/4 p0, 0x0

    return p0
.end method
