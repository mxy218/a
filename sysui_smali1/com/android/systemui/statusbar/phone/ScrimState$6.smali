.class final enum Lcom/android/systemui/statusbar/phone/ScrimState$6;
.super Lcom/android/systemui/statusbar/phone/ScrimState;
.source "ScrimState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/ScrimState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4010
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;II)V
    .registers 5

    const/4 v0, 0x0

    .line 127
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/statusbar/phone/ScrimState;-><init>(Ljava/lang/String;IILcom/android/systemui/statusbar/phone/ScrimState$1;)V

    return-void
.end method


# virtual methods
.method public getBehindAlpha()F
    .registers 1

    .line 146
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mWakeLockScreenSensorActive:Z

    if-eqz p0, :cond_8

    const p0, 0x3f19999a  # 0.6f

    goto :goto_e

    .line 147
    :cond_8
    sget-object p0, Lcom/android/systemui/statusbar/phone/ScrimState;->AOD:Lcom/android/systemui/statusbar/phone/ScrimState;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ScrimState;->getBehindAlpha()F

    move-result p0

    :goto_e
    return p0
.end method

.method public prepare(Lcom/android/systemui/statusbar/phone/ScrimState;)V
    .registers 5

    .line 130
    iget v0, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mAodFrontScrimAlpha:F

    iput v0, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mCurrentInFrontAlpha:F

    const/high16 v0, -0x1000000

    .line 131
    iput v0, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mCurrentBehindTint:I

    .line 132
    iput v0, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mCurrentInFrontTint:I

    .line 133
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mDisplayRequiresBlanking:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mBlankScreen:Z

    .line 134
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mWakeLockScreenSensorActive:Z

    if-eqz v1, :cond_15

    const-wide/16 v1, 0x3e8

    goto :goto_17

    :cond_15
    const-wide/16 v1, 0xdc

    .line 135
    :goto_17
    iput-wide v1, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mAnimationDuration:J

    .line 139
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mWakeLockScreenSensorActive:Z

    if-eqz v1, :cond_28

    sget-object v1, Lcom/android/systemui/statusbar/phone/ScrimState;->AOD:Lcom/android/systemui/statusbar/phone/ScrimState;

    if-ne p1, v1, :cond_28

    .line 140
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mScrimBehind:Lcom/android/systemui/statusbar/ScrimView;

    const/high16 v1, 0x3f800000  # 1.0f

    invoke-virtual {p0, p1, v1, v0}, Lcom/android/systemui/statusbar/phone/ScrimState;->updateScrimColor(Lcom/android/systemui/statusbar/ScrimView;FI)V

    :cond_28
    return-void
.end method
