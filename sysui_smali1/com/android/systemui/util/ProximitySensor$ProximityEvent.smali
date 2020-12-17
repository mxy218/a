.class public Lcom/android/systemui/util/ProximitySensor$ProximityEvent;
.super Ljava/lang/Object;
.source "ProximitySensor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/util/ProximitySensor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ProximityEvent"
.end annotation


# instance fields
.field private final mNear:Z

.field private final mTimestampNs:J


# direct methods
.method public constructor <init>(ZJ)V
    .registers 4

    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 168
    iput-boolean p1, p0, Lcom/android/systemui/util/ProximitySensor$ProximityEvent;->mNear:Z

    .line 169
    iput-wide p2, p0, Lcom/android/systemui/util/ProximitySensor$ProximityEvent;->mTimestampNs:J

    return-void
.end method


# virtual methods
.method public getNear()Z
    .registers 1

    .line 173
    iget-boolean p0, p0, Lcom/android/systemui/util/ProximitySensor$ProximityEvent;->mNear:Z

    return p0
.end method

.method public getTimestampNs()J
    .registers 3

    .line 177
    iget-wide v0, p0, Lcom/android/systemui/util/ProximitySensor$ProximityEvent;->mTimestampNs:J

    return-wide v0
.end method
