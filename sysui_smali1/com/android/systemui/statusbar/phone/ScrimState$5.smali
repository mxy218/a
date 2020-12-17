.class final enum Lcom/android/systemui/statusbar/phone/ScrimState$5;
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

    .line 99
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/statusbar/phone/ScrimState;-><init>(Ljava/lang/String;IILcom/android/systemui/statusbar/phone/ScrimState$1;)V

    return-void
.end method


# virtual methods
.method public getBehindAlpha()F
    .registers 2

    .line 115
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mWallpaperSupportsAmbientMode:Z

    if-eqz v0, :cond_a

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mHasBackdrop:Z

    if-nez p0, :cond_a

    const/4 p0, 0x0

    goto :goto_c

    :cond_a
    const/high16 p0, 0x3f800000  # 1.0f

    :goto_c
    return p0
.end method

.method public isLowPowerState()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public prepare(Lcom/android/systemui/statusbar/phone/ScrimState;)V
    .registers 4

    .line 102
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getAlwaysOn()Z

    move-result p1

    .line 103
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mDisplayRequiresBlanking:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mBlankScreen:Z

    if-eqz p1, :cond_f

    .line 104
    iget p1, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mAodFrontScrimAlpha:F

    goto :goto_11

    :cond_f
    const/high16 p1, 0x3f800000  # 1.0f

    :goto_11
    iput p1, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mCurrentInFrontAlpha:F

    const/high16 p1, -0x1000000

    .line 105
    iput p1, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mCurrentInFrontTint:I

    .line 106
    iput p1, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mCurrentBehindTint:I

    const-wide/16 v0, 0x3e8

    .line 107
    iput-wide v0, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mAnimationDuration:J

    .line 110
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/DozeParameters;->shouldControlScreenOff()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/ScrimState;->mAnimateChange:Z

    return-void
.end method
