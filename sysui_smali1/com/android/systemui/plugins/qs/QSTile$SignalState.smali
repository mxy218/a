.class public final Lcom/android/systemui/plugins/qs/QSTile$SignalState;
.super Lcom/android/systemui/plugins/qs/QSTile$BooleanState;
.source "QSTile.java"


# annotations
.annotation runtime Lcom/android/systemui/plugins/annotations/ProvidesInterface;
    version = 0x1
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/plugins/qs/QSTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SignalState"
.end annotation


# static fields
.field public static final VERSION:I = 0x1


# instance fields
.field public activityIn:Z

.field public activityOut:Z

.field public isOverlayIconWide:Z

.field public overlayIconId:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 224
    invoke-direct {p0}, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;-><init>()V

    return-void
.end method


# virtual methods
.method public copy()Lcom/android/systemui/plugins/qs/QSTile$State;
    .registers 2

    .line 255
    new-instance v0, Lcom/android/systemui/plugins/qs/QSTile$SignalState;

    invoke-direct {v0}, Lcom/android/systemui/plugins/qs/QSTile$SignalState;-><init>()V

    .line 256
    invoke-virtual {p0, v0}, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->copyTo(Lcom/android/systemui/plugins/qs/QSTile$State;)Z

    return-object v0
.end method

.method public copyTo(Lcom/android/systemui/plugins/qs/QSTile$State;)Z
    .registers 7

    .line 233
    move-object v0, p1

    check-cast v0, Lcom/android/systemui/plugins/qs/QSTile$SignalState;

    .line 234
    iget-boolean v1, v0, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->activityIn:Z

    iget-boolean v2, p0, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->activityIn:Z

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v1, v2, :cond_20

    iget-boolean v1, v0, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->activityOut:Z

    iget-boolean v2, p0, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->activityOut:Z

    if-ne v1, v2, :cond_20

    iget-boolean v1, v0, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->isOverlayIconWide:Z

    iget-boolean v2, p0, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->isOverlayIconWide:Z

    if-ne v1, v2, :cond_20

    iget v1, v0, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->overlayIconId:I

    iget v2, p0, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->overlayIconId:I

    if-eq v1, v2, :cond_1e

    goto :goto_20

    :cond_1e
    move v1, v3

    goto :goto_21

    :cond_20
    :goto_20
    move v1, v4

    .line 238
    :goto_21
    iget-boolean v2, p0, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->activityIn:Z

    iput-boolean v2, v0, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->activityIn:Z

    .line 239
    iget-boolean v2, p0, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->activityOut:Z

    iput-boolean v2, v0, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->activityOut:Z

    .line 240
    iget-boolean v2, p0, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->isOverlayIconWide:Z

    iput-boolean v2, v0, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->isOverlayIconWide:Z

    .line 241
    iget v2, p0, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->overlayIconId:I

    iput v2, v0, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->overlayIconId:I

    .line 242
    invoke-super {p0, p1}, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->copyTo(Lcom/android/systemui/plugins/qs/QSTile$State;)Z

    move-result p0

    if-nez p0, :cond_39

    if-eqz v1, :cond_3a

    :cond_39
    move v3, v4

    :cond_3a
    return v3
.end method

.method protected toStringBuilder()Ljava/lang/StringBuilder;
    .registers 5

    .line 247
    invoke-super {p0}, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->toStringBuilder()Ljava/lang/StringBuilder;

    move-result-object v0

    .line 248
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ",activityIn="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->activityIn:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ",activityOut="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->activityOut:Z

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    return-object v0
.end method
