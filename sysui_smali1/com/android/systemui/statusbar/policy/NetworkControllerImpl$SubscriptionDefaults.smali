.class public Lcom/android/systemui/statusbar/policy/NetworkControllerImpl$SubscriptionDefaults;
.super Ljava/lang/Object;
.source "NetworkControllerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SubscriptionDefaults"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 1226
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getActiveDataSubId()I
    .registers 1

    .line 1236
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getActiveDataSubscriptionId()I

    move-result p0

    return p0
.end method

.method public getDefaultVoiceSubId()I
    .registers 1

    .line 1228
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoiceSubscriptionId()I

    move-result p0

    return p0
.end method
